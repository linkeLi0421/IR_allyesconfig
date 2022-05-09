; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/mt9v111.c_pt.bc'
source_filename = "../drivers/media/i2c/mt9v111.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt9v111_mbus_fmt = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
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
%struct.v4l2_fract = type { i32, i32 }
%struct.mt9v111_dev = type { ptr, ptr, i8, %struct.v4l2_subdev, %struct.media_pad, ptr, ptr, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_mbus_framefmt, i32, %struct.mutex, i32, %struct.mutex, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }

@__initcall__kmod_mt9v111__296_1274_mt9v111_driver_init6 = internal global ptr @mt9v111_driver_init, section ".initcall6.init", align 4
@mt9v111_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @mt9v111_remove, ptr @mt9v111_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt9v111_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt9v111_driver_exit = internal global ptr @mt9v111_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [58 x i8] c"mt9v111.description=V4L2 sensor driver for Aptina MT9V111\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [48 x i8] c"mt9v111.author=Jacopo Mondi <jacopo@jmondi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [39 x i8] c"mt9v111.file=drivers/media/i2c/mt9v111\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [23 x i8] c"mt9v111.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9v111\00", [24 x i8] zeroinitializer }, align 32
@mt9v111_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9v111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@mt9v111_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to get GPIO \22enable\22: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9v111_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/mt9v111.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt9v111_probe._entry_ptr = internal global ptr @mt9v111_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@mt9v111_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to get GPIO \22standby\22: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@mt9v111_probe._entry_ptr.10 = internal global ptr @mt9v111_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@mt9v111_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to get GPIO \22reset\22: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@mt9v111_probe._entry_ptr.14 = internal global ptr @mt9v111_probe._entry.12, section ".printk_index", align 4
@mt9v111_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mt9v111->pwr_mutex\00", [44 x i8] zeroinitializer }, align 32
@mt9v111_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mt9v111->stream_mutex\00", [41 x i8] zeroinitializer }, align 32
@mt9v111_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mt9v111:1156:(&mt9v111->ctrls)->_lock\00", [58 x i8] zeroinitializer }, align 32
@mt9v111_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mt9v111_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mt9v111_def_fmt = internal constant { %struct.v4l2_mbus_framefmt, [48 x i8] } { %struct.v4l2_mbus_framefmt { i32 640, i32 480, i32 8198, i32 1, i32 8, %union.anon.96 { i16 1 }, i16 2, i16 2, i16 0, [10 x i16] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@mt9v111_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mt9v111_core_ops, ptr null, ptr null, ptr @mt9v111_video_ops, ptr null, ptr null, ptr null, ptr @mt9v111_pad_ops }, [32 x i8] zeroinitializer }, align 32
@mt9v111_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@__mt9v111_read._entry = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, align 1
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i2c read transfer error: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__mt9v111_read\00", [17 x i8] zeroinitializer }, align 32
@__mt9v111_read._entry_ptr = internal global ptr @__mt9v111_read._entry, section ".printk_index", align 4
@__mt9v111_read.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %x=%x\0A\00", [21 x i8] zeroinitializer }, align 32
@__mt9v111_write.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__mt9v111_write\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: %x = %x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@__mt9v111_write._entry = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, align 1
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i2c write transfer error: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__mt9v111_write._entry_ptr = internal global ptr @__mt9v111_write._entry, section ".printk_index", align 4
@mt9v111_frame_intervals = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 5, i32 10, i32 15, i32 20, i32 30], [44 x i8] zeroinitializer }, align 32
@mt9v111_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9v111_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt9v111_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9v111_s_stream, ptr null, ptr @mt9v111_g_frame_interval, ptr @mt9v111_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mt9v111_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @mt9v111_init_cfg, ptr @mt9v111_enum_mbus_code, ptr @mt9v111_enum_frame_size, ptr @mt9v111_enum_frame_interval, ptr @mt9v111_get_format, ptr @mt9v111_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mt9v111_formats = internal constant { [4 x %struct.mt9v111_mbus_fmt], [16 x i8] } { [4 x %struct.mt9v111_mbus_fmt] [%struct.mt9v111_mbus_fmt { i32 8198 }, %struct.mt9v111_mbus_fmt { i32 8200 }, %struct.mt9v111_mbus_fmt { i32 8199 }, %struct.mt9v111_mbus_fmt { i32 8201 }], [16 x i8] zeroinitializer }, align 32
@mt9v111_frame_sizes = internal constant { [5 x %struct.v4l2_rect], [48 x i8] } { [5 x %struct.v4l2_rect] [%struct.v4l2_rect { i32 0, i32 0, i32 640, i32 480 }, %struct.v4l2_rect { i32 0, i32 0, i32 352, i32 288 }, %struct.v4l2_rect { i32 0, i32 0, i32 320, i32 240 }, %struct.v4l2_rect { i32 0, i32 0, i32 176, i32 144 }, %struct.v4l2_rect { i32 0, i32 0, i32 160, i32 120 }], [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mt9v111_set_format.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt9v111_set_format\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: mbus_code: %x - (%ux%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@mt9v111_chip_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 1094, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to identify MT9V111 chip: 0x%2x%2x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt9v111_chip_probe\00", [45 x i8] zeroinitializer }, align 32
@mt9v111_chip_probe._entry_ptr = internal global ptr @mt9v111_chip_probe._entry, section ".printk_index", align 4
@mt9v111_chip_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Chip identified: 0x%2x%2x\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963788, i64 10094849, i64 10356993, i64 10356994]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 160, i64 176, i64 320, i64 352, i64 640]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"mt9v111_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1265, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1267, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"mt9v111_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1260, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1129, i32 54 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1132, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1137, i32 59 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1140, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1145, i32 57 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1148, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1153, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1154, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1156, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"mt9v111_ctrl_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1072, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"mt9v111_def_fmt\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 106, i32 40 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"mt9v111_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 984, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [26 x i8] c"mt9v111_subdev_entity_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 991, i32 45 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 238, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 244, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 264, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 268, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"mt9v111_frame_intervals\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 187, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"mt9v111_core_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 965, i32 42 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"mt9v111_video_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 969, i32 43 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"mt9v111_pad_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 975, i32 41 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"mt9v111_formats\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 172, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"mt9v111_frame_sizes\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 195, i32 25 }
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 998, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 946, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1092, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [31 x i8] c"../drivers/media/i2c/mt9v111.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1099, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_mt9v111_driver_exit, ptr @__initcall__kmod_mt9v111__296_1274_mt9v111_driver_init6, ptr @__mt9v111_read._entry, ptr @__mt9v111_read._entry_ptr, ptr @__mt9v111_write._entry, ptr @__mt9v111_write._entry_ptr, ptr @mt9v111_chip_probe._entry, ptr @mt9v111_chip_probe._entry_ptr, ptr @mt9v111_driver_exit, ptr @mt9v111_probe._entry, ptr @mt9v111_probe._entry.12, ptr @mt9v111_probe._entry.8, ptr @mt9v111_probe._entry_ptr, ptr @mt9v111_probe._entry_ptr.10, ptr @mt9v111_probe._entry_ptr.14, ptr @mt9v111_driver, ptr @.str, ptr @mt9v111_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @mt9v111_probe.__key, ptr @.str.15, ptr @mt9v111_probe.__key.16, ptr @.str.17, ptr @mt9v111_probe._key, ptr @.str.18, ptr @mt9v111_ctrl_ops, ptr @mt9v111_def_fmt, ptr @mt9v111_ops, ptr @mt9v111_subdev_entity_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @mt9v111_frame_intervals, ptr @mt9v111_core_ops, ptr @mt9v111_video_ops, ptr @mt9v111_pad_ops, ptr @mt9v111_formats, ptr @mt9v111_frame_sizes, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_def_fmt to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_frame_intervals to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_frame_sizes to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_chip_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt9v111_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt9v111_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @mt9v111_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  %ctrls = getelementptr i8, ptr %1, i32 244
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #9
  %pwr_mutex = getelementptr i8, ptr %1, i32 480
  tail call void @mutex_destroy(ptr noundef %pwr_mutex) #9
  %stream_mutex = getelementptr i8, ptr %1, i32 576
  tail call void @mutex_destroy(ptr noundef %stream_mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_probe(ptr noundef %client) #2 align 64 {
entry:
  %tpf = alloca %struct.v4l2_fract, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tpf) #9
  %0 = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 704, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %client3 = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %client3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client3, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 17
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @clk_get_rate(ptr noundef %call5) #9
  %sysclk = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call13, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000000, i32 %call13)
  %cmp = icmp ugt i32 %call13, 27000000
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call18 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 3) #9
  %oe = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %oe to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %oe, align 4
  %cmp.i196 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %7) #12
  %8 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oe, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %call29 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 7) #9
  %standby = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 20
  %11 = ptrtoint ptr %standby to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %standby, align 4
  %cmp.i197 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %do.end35, label %if.end41

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %12) #12
  %13 = ptrtoint ptr %standby to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %standby, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end27
  %call43 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 3) #9
  %reset = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 21
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call43, ptr %reset, align 4
  %cmp.i198 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %do.end49, label %do.body56

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %17) #12
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

do.body56:                                        ; preds = %if.end41
  %pwr_mutex = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %pwr_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @mt9v111_probe.__key) #9
  %stream_mutex = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %stream_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @mt9v111_probe.__key.16) #9
  %ctrls = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 9
  %call62 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 5, ptr noundef nonnull @mt9v111_probe._key, ptr noundef nonnull @.str.18) #9
  %call64 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v111_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %auto_awb = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %auto_awb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call64, ptr %auto_awb, align 4
  %call66 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls, ptr noundef nonnull @mt9v111_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #9
  %auto_exp = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %auto_exp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call66, ptr %auto_exp, align 4
  %call68 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v111_ctrl_ops, i32 noundef 10356994, i64 noundef 9, i64 noundef 1023, i64 noundef 1, i64 noundef 38) #9
  %hblank = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %hblank to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call68, ptr %hblank, align 4
  %call70 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v111_ctrl_ops, i32 noundef 10356993, i64 noundef 3, i64 noundef 4095, i64 noundef 1, i64 noundef 4) #9
  %vblank = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call70, ptr %vblank, align 4
  %25 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sysclk, align 4
  %add = add i32 %26, 1
  %div74195 = lshr i32 %add, 1
  %conv = zext i32 %div74195 to i64
  %call83 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v111_ctrl_ops, i32 noundef 10422530, i64 noundef 0, i64 noundef %conv, i64 noundef 1, i64 noundef %conv) #9
  %error = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 9, i32 9
  %27 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool85.not = icmp eq i32 %28, 0
  br i1 %tobool85.not, label %if.end89, label %do.body56.error_free_ctrls_crit_edge

do.body56.error_free_ctrls_crit_edge:             ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_ctrls

if.end89:                                         ; preds = %do.body56
  %sd = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 3
  %ctrl_handler = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %fmt = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 10
  %30 = call ptr @memcpy(ptr %fmt, ptr @mt9v111_def_fmt, i32 48)
  %fps = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 11
  %31 = ptrtoint ptr %fps to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 15, ptr %fps, align 4
  %32 = ptrtoint ptr %tpf to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %tpf, align 4
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 15, ptr %0, align 4
  call fastcc void @mt9v111_calc_frame_rate(ptr noundef nonnull %call.i, ptr noundef nonnull %tpf)
  %pwr_count = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 13
  %34 = ptrtoint ptr %pwr_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %pwr_count, align 4
  %addr_space = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %addr_space to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %addr_space, align 4
  %pending = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 16
  %36 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %pending, align 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @mt9v111_ops) #9
  %flags = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 3, i32 4
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or = or i32 %38, 4
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 3, i32 0, i32 11
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mt9v111_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %40 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 4
  %flags98 = getelementptr inbounds %struct.mt9v111_dev, ptr %call.i, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %flags98 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %flags98, align 4
  %call102 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end89.error_free_ctrls_crit_edge

if.end89.error_free_ctrls_crit_edge:              ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_ctrls

if.end105:                                        ; preds = %if.end89
  %call106 = tail call fastcc i32 @mt9v111_chip_probe(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end105.error_free_ctrls_crit_edge

if.end105.error_free_ctrls_crit_edge:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_ctrls

if.end109:                                        ; preds = %if.end105
  %call111 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end109.cleanup_crit_edge, label %if.end109.error_free_ctrls_crit_edge

if.end109.error_free_ctrls_crit_edge:             ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_ctrls

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error_free_ctrls:                                 ; preds = %if.end109.error_free_ctrls_crit_edge, %if.end105.error_free_ctrls_crit_edge, %if.end89.error_free_ctrls_crit_edge, %do.body56.error_free_ctrls_crit_edge
  %ret.1 = phi i32 [ %28, %do.body56.error_free_ctrls_crit_edge ], [ %call102, %if.end89.error_free_ctrls_crit_edge ], [ %call106, %if.end105.error_free_ctrls_crit_edge ], [ %call111, %if.end109.error_free_ctrls_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #9
  tail call void @mutex_destroy(ptr noundef %pwr_mutex) #9
  tail call void @mutex_destroy(ptr noundef %stream_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %error_free_ctrls, %if.end109.cleanup_crit_edge, %do.end49, %do.end35, %do.end, %if.end11.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then8 ], [ %10, %do.end ], [ %15, %do.end35 ], [ %20, %do.end49 ], [ %ret.1, %error_free_ctrls ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ 0, %if.end109.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tpf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt9v111_calc_frame_rate(ptr nocapture noundef readonly %mt9v111, ptr nocapture noundef %tpf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %denominator2 = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %2 = ptrtoint ptr %denominator2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator2, align 4
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %3, %1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ %3, %entry.cond.end_crit_edge ]
  %sub = add i32 %cond, -5
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub.1 = add i32 %cond, -10
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %4)
  %cmp9.1 = icmp ult i32 %5, %4
  %idx.1.1 = zext i1 %cmp9.1 to i32
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %4)
  %sub.2 = add i32 %cond, -15
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %6)
  %cmp9.2 = icmp ult i32 %7, %6
  %idx.1.2 = select i1 %cmp9.2, i32 2, i32 %idx.1.1
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %6)
  %sub.3 = add i32 %cond, -20
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp9.3 = icmp ult i32 %9, %8
  %idx.1.3 = select i1 %cmp9.3, i32 3, i32 %idx.1.2
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %8)
  %sub.4 = add i32 %cond, -30
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp9.4 = icmp ult i32 %11, %10
  %idx.1.4 = select i1 %cmp9.4, i32 4, i32 %idx.1.3
  %arrayidx10 = getelementptr [5 x i32], ptr @mt9v111_frame_intervals, i32 0, i32 %idx.1.4
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %sysclk = getelementptr inbounds %struct.mt9v111_dev, ptr %mt9v111, i32 0, i32 18
  %14 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sysclk, align 4
  %add = add i32 %15, 1
  %div141 = lshr i32 %add, 1
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.inc51.for.cond18.preheader_crit_edge, %cond.end
  %best_diff.233 = phi i32 [ -1, %cond.end ], [ %best_diff.4, %for.inc51.for.cond18.preheader_crit_edge ]
  %best_fps.032 = phi i32 [ 0, %cond.end ], [ %best_fps.2, %for.inc51.for.cond18.preheader_crit_edge ]
  %vb.031 = phi i32 [ 3, %cond.end ], [ %inc52, %for.inc51.for.cond18.preheader_crit_edge ]
  %add22 = add nuw nsw i32 %vb.031, 489
  br label %for.body20

for.body20:                                       ; preds = %for.inc45.for.body20_crit_edge, %for.cond18.preheader
  %best_diff.330 = phi i32 [ %best_diff.233, %for.cond18.preheader ], [ %best_diff.4, %for.inc45.for.body20_crit_edge ]
  %best_fps.129 = phi i32 [ %best_fps.032, %for.cond18.preheader ], [ %best_fps.2, %for.inc45.for.body20_crit_edge ]
  %hb.127 = phi i32 [ 9, %for.cond18.preheader ], [ %add46, %for.inc45.for.body20_crit_edge ]
  %add21 = add nuw nsw i32 %hb.127, 761
  %mul = mul nuw nsw i32 %add21, %add22
  %div262 = lshr i32 %mul, 1
  %add27 = add nuw i32 %div262, %div141
  %div28 = udiv i32 %add27, %mul
  %sub30 = sub i32 %13, %div28
  %16 = tail call i32 @llvm.abs.i32(i32 %sub30, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %best_diff.330)
  %cmp38 = icmp ult i32 %16, %best_diff.330
  br i1 %cmp38, label %if.then39, label %for.body20.for.inc45_crit_edge

for.body20.for.inc45_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

if.then39:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div28)
  %cmp40 = icmp eq i32 %13, %div28
  br i1 %cmp40, label %if.then39.for.end53_crit_edge, label %if.then39.for.inc45_crit_edge

if.then39.for.inc45_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

if.then39.for.end53_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.inc45:                                        ; preds = %if.then39.for.inc45_crit_edge, %for.body20.for.inc45_crit_edge
  %best_fps.2 = phi i32 [ %div28, %if.then39.for.inc45_crit_edge ], [ %best_fps.129, %for.body20.for.inc45_crit_edge ]
  %best_diff.4 = phi i32 [ %16, %if.then39.for.inc45_crit_edge ], [ %best_diff.330, %for.body20.for.inc45_crit_edge ]
  %add46 = add nuw nsw i32 %hb.127, 10
  %cmp19 = icmp ult i32 %hb.127, 1013
  br i1 %cmp19, label %for.inc45.for.body20_crit_edge, label %for.end47

for.inc45.for.body20_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

for.end47:                                        ; preds = %for.inc45
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div28)
  %cmp48 = icmp eq i32 %13, %div28
  br i1 %cmp48, label %for.end47.for.end53_crit_edge, label %for.inc51

for.end47.for.end53_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.inc51:                                        ; preds = %for.end47
  %inc52 = add nuw nsw i32 %vb.031, 1
  %exitcond.not = icmp eq i32 %inc52, 4095
  br i1 %exitcond.not, label %for.inc51.for.end53_crit_edge, label %for.inc51.for.cond18.preheader_crit_edge

for.inc51.for.cond18.preheader_crit_edge:         ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond18.preheader

for.inc51.for.end53_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.end53:                                        ; preds = %for.inc51.for.end53_crit_edge, %for.end47.for.end53_crit_edge, %if.then39.for.end53_crit_edge
  %vb.023 = phi i32 [ %vb.031, %if.then39.for.end53_crit_edge ], [ 4095, %for.inc51.for.end53_crit_edge ], [ %vb.031, %for.end47.for.end53_crit_edge ]
  %hb.2 = phi i32 [ %hb.127, %if.then39.for.end53_crit_edge ], [ 1029, %for.inc51.for.end53_crit_edge ], [ 1029, %for.end47.for.end53_crit_edge ]
  %best_fps.5 = phi i32 [ %13, %if.then39.for.end53_crit_edge ], [ %best_fps.2, %for.inc51.for.end53_crit_edge ], [ %best_fps.2, %for.end47.for.end53_crit_edge ]
  %hblank = getelementptr inbounds %struct.mt9v111_dev, ptr %mt9v111, i32 0, i32 7
  %17 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hblank, align 4
  %conv = zext i32 %hb.2 to i64
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %22, i32 noundef 0) #9
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %18, i64 noundef %conv) #9
  %23 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler.i.i, align 8
  %lock.i4.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lock.i4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock.i4.i, align 4
  tail call void @mutex_unlock(ptr noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool54.not = icmp eq i32 %call.i, 0
  br i1 %tobool54.not, label %if.end56, label %for.end53.cleanup64_crit_edge

for.end53.cleanup64_crit_edge:                    ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup64

if.end56:                                         ; preds = %for.end53
  %vblank = getelementptr inbounds %struct.mt9v111_dev, ptr %mt9v111, i32 0, i32 8
  %27 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vblank, align 4
  %conv57 = zext i32 %vb.023 to i64
  %handler.i.i3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %handler.i.i3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handler.i.i3, align 8
  %lock.i.i4 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %lock.i.i4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock.i.i4, align 4
  tail call void @mutex_lock_nested(ptr noundef %32, i32 noundef 0) #9
  %call.i5 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %28, i64 noundef %conv57) #9
  %33 = ptrtoint ptr %handler.i.i3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handler.i.i3, align 8
  %lock.i4.i6 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %lock.i4.i6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lock.i4.i6, align 4
  tail call void @mutex_unlock(ptr noundef %36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool59.not = icmp eq i32 %call.i5, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.cleanup64_crit_edge

if.end56.cleanup64_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup64

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %tpf to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %tpf, align 4
  %denominator63 = getelementptr inbounds %struct.v4l2_fract, ptr %tpf, i32 0, i32 1
  %38 = ptrtoint ptr %denominator63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %best_fps.5, ptr %denominator63, align 4
  br label %cleanup64

cleanup64:                                        ; preds = %if.end61, %if.end56.cleanup64_crit_edge, %for.end53.cleanup64_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9v111_chip_probe(ptr nocapture noundef readonly %mt9v111) unnamed_addr #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.mt9v111_dev, ptr %mt9v111, i32 0, i32 3
  %call = tail call fastcc i32 @__mt9v111_power_on(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %client = getelementptr inbounds %struct.mt9v111_dev, ptr %mt9v111, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call.i = tail call fastcc i32 @__mt9v111_addr_space_select(ptr noundef %1, i16 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.power_off_crit_edge

if.end.power_off_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %power_off

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #9
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %buf.i, align 2, !annotation !106
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr.i, align 2
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %3, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr.i, ptr %buf5.i, align 4
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayidx7.i, align 4
  %flags10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags10.i, align 2
  %len12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %len12.i, align 4
  %buf14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf14.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i40 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i = icmp slt i32 %call.i40, 0
  br i1 %cmp.i, label %mt9v111_read.exit.thread53, label %if.end.i41

mt9v111_read.exit.thread53:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %call.i40) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %power_off

if.end.i41:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %buf.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mt9v111_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9v111_chip_probe, %mt9v111_read.exit.thread48)) #9
          to label %mt9v111_read.exit [label %mt9v111_read.exit.thread48], !srcloc !107

mt9v111_read.exit.thread48:                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg.addr.i, align 1
  %conv.i = zext i8 %21 to i32
  %conv21.i = zext i16 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mt9v111_read.__UNIQUE_ID_ddebug292, ptr noundef %dev20.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %conv.i, i32 noundef %conv21.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.end4

mt9v111_read.exit:                                ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %.pre = zext i16 %19 to i32
  br label %if.end4

if.end4:                                          ; preds = %mt9v111_read.exit, %mt9v111_read.exit.thread48
  %conv.pre-phi = phi i32 [ %.pre, %mt9v111_read.exit ], [ %conv21.i, %mt9v111_read.exit.thread48 ]
  %22 = lshr i32 %conv.pre-phi, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %22)
  %cmp.not = icmp eq i32 %22, 130
  br i1 %cmp.not, label %if.end4.do.body15_crit_edge, label %land.lhs.true

if.end4.do.body15_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

land.lhs.true:                                    ; preds = %if.end4
  %and = and i32 %conv.pre-phi, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %and)
  %cmp7.not = icmp eq i32 %and, 58
  br i1 %cmp7.not, label %land.lhs.true.do.body15_crit_edge, label %do.end

land.lhs.true.do.body15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %mt9v111 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mt9v111, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.28, i32 noundef %22, i32 noundef %and) #12
  br label %power_off

do.body15:                                        ; preds = %land.lhs.true.do.body15_crit_edge, %if.end4.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9v111_chip_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9v111_chip_probe, %if.then20)) #9
          to label %power_off [label %if.then20], !srcloc !107

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %mt9v111 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mt9v111, align 4
  %and25 = and i32 %conv.pre-phi, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9v111_chip_probe.__UNIQUE_ID_ddebug295, ptr noundef %26, ptr noundef nonnull @.str.30, i32 noundef %22, i32 noundef %and25) #9
  br label %power_off

power_off:                                        ; preds = %if.then20, %do.body15, %do.end, %mt9v111_read.exit.thread53, %if.end.power_off_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ 0, %if.then20 ], [ %call.i40, %mt9v111_read.exit.thread53 ], [ 0, %do.body15 ], [ %call.i, %if.end.power_off_crit_edge ]
  %oe.i = getelementptr %struct.mt9v111_dev, ptr %mt9v111, i32 0, i32 19
  %27 = ptrtoint ptr %oe.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %oe.i, align 4
  call void @gpiod_set_value(ptr noundef %28, i32 noundef 0) #9
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %standby.i = getelementptr %struct.mt9v111_dev, ptr %mt9v111, i32 0, i32 20
  %29 = ptrtoint ptr %standby.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %standby.i, align 4
  call void @gpiod_set_value(ptr noundef %30, i32 noundef 1) #9
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %clk.i = getelementptr %struct.mt9v111_dev, ptr %mt9v111, i32 0, i32 17
  %31 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %32) #9
  call void @clk_unprepare(ptr noundef %32) #9
  br label %cleanup

cleanup:                                          ; preds = %power_off, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %power_off ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %pwr_mutex = getelementptr i8, ptr %1, i32 236
  tail call void @mutex_lock_nested(ptr noundef %pwr_mutex, i32 noundef 0) #9
  %pwr_count = getelementptr i8, ptr %1, i32 328
  %2 = ptrtoint ptr %pwr_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pending = getelementptr i8, ptr %1, i32 425
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %pending, align 1
  tail call void @mutex_unlock(ptr noundef %pwr_mutex) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %pwr_mutex) #9
  %auto_exp = getelementptr i8, ptr %1, i32 -12
  %5 = ptrtoint ptr %auto_exp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %auto_exp, align 4
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %is_new, align 4
  %8 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %auto_awb = getelementptr i8, ptr %1, i32 -16
  %9 = ptrtoint ptr %auto_awb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %auto_awb, align 4
  %is_new4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %is_new4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load5 = load i32, ptr %is_new4, align 4
  %12 = and i32 %bf.load5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %land.lhs.true, label %if.then9.if.else_crit_edge

if.then9.if.else_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then9
  %auto_awb11 = getelementptr i8, ptr %1, i32 -16
  %15 = ptrtoint ptr %auto_awb11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %auto_awb11, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp13 = icmp eq i32 %18, 0
  br i1 %cmp13, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then9.if.else_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %if.else, %land.lhs.true.if.end17_crit_edge
  %.sink66 = phi i16 [ 1, %if.else ], [ 0, %land.lhs.true.if.end17_crit_edge ]
  %client15 = getelementptr i8, ptr %1, i32 -252
  %19 = ptrtoint ptr %client15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client15, align 4
  %call16 = tail call fastcc i32 @mt9v111_update(ptr noundef %20, i8 noundef zeroext 1, i8 noundef zeroext 8, i16 noundef zeroext 2048, i16 noundef zeroext %.sink66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end21:                                         ; preds = %if.end17.if.end21_crit_edge, %lor.lhs.false.if.end21_crit_edge
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end21.cleanup_crit_edge [
    i32 9963788, label %sw.bb
    i32 10094849, label %sw.bb26
    i32 10356994, label %sw.bb34
    i32 10356993, label %sw.bb39
  ]

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %client22 = getelementptr i8, ptr %1, i32 -252
  %24 = ptrtoint ptr %client22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client22, align 4
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp24 = icmp eq i32 %27, 1
  %conv = select i1 %cmp24, i16 2, i16 0
  %call25 = tail call fastcc i32 @mt9v111_update(ptr noundef %25, i8 noundef zeroext 1, i8 noundef zeroext 6, i16 noundef zeroext 2, i16 noundef zeroext %conv)
  br label %cleanup

sw.bb26:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %client27 = getelementptr i8, ptr %1, i32 -252
  %28 = ptrtoint ptr %client27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client27, align 4
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %30 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp29 = icmp eq i32 %31, 0
  %conv32 = select i1 %cmp29, i16 16384, i16 0
  %call33 = tail call fastcc i32 @mt9v111_update(ptr noundef %29, i8 noundef zeroext 1, i8 noundef zeroext 6, i16 noundef zeroext 16384, i16 noundef zeroext %conv32)
  br label %cleanup

sw.bb34:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %client35 = getelementptr i8, ptr %1, i32 -252
  %32 = ptrtoint ptr %client35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client35, align 4
  %hblank = getelementptr i8, ptr %1, i32 -8
  %34 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hblank, align 4
  %val36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %val36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val36, align 4
  %conv37 = trunc i32 %37 to i16
  %call38 = tail call fastcc i32 @mt9v111_update(ptr noundef %33, i8 noundef zeroext 4, i8 noundef zeroext 5, i16 noundef zeroext 1023, i16 noundef zeroext %conv37)
  br label %cleanup

sw.bb39:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %client40 = getelementptr i8, ptr %1, i32 -252
  %38 = ptrtoint ptr %client40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client40, align 4
  %vblank = getelementptr i8, ptr %1, i32 -4
  %40 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vblank, align 4
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val41, align 4
  %conv42 = trunc i32 %43 to i16
  %call43 = tail call fastcc i32 @mt9v111_update(ptr noundef %39, i8 noundef zeroext 4, i8 noundef zeroext 6, i16 noundef zeroext 4095, i16 noundef zeroext %conv42)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb39, %sw.bb34, %sw.bb26, %sw.bb, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call16, %if.end17.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ %call43, %sw.bb39 ], [ %call38, %sw.bb34 ], [ %call33, %sw.bb26 ], [ %call25, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9v111_update(ptr noundef %c, i8 noundef zeroext %addr_space, i8 noundef zeroext %reg, i16 noundef zeroext %mask, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg.i29 = alloca %struct.i2c_msg, align 4
  %buf.i30 = alloca [3 x i8], align 1
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %addr_space to i16
  %call = tail call fastcc i32 @__mt9v111_addr_space_select(ptr noundef %c, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #9
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %buf.i, align 2, !annotation !106
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr.i, align 2
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %1, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg.addr.i, ptr %buf5.i, align 4
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %arrayidx7.i, align 4
  %flags10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags10.i, align 2
  %len12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len12.i, align 4
  %buf14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf14.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %__mt9v111_read.exit.thread44, label %if.end.i

__mt9v111_read.exit.thread44:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %buf.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mt9v111_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9v111_update, %__mt9v111_read.exit.thread)) #9
          to label %__mt9v111_read.exit [label %__mt9v111_read.exit.thread], !srcloc !107

__mt9v111_read.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %18 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg.addr.i, align 1
  %conv.i = zext i8 %19 to i32
  %conv21.i = zext i16 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mt9v111_read.__UNIQUE_ID_ddebug292, ptr noundef %dev20.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %conv.i, i32 noundef %conv21.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.end4

__mt9v111_read.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.end4

if.end4:                                          ; preds = %__mt9v111_read.exit, %__mt9v111_read.exit.thread
  %neg = xor i16 %mask, -1
  %and = and i16 %17, %neg
  %and1027 = and i16 %val, %mask
  %or28 = or i16 %and, %and1027
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i29) #9
  %20 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262143, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i30) #9
  %22 = ptrtoint ptr %buf.i30 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %reg, ptr %buf.i30, align 1
  %23 = lshr i16 %or28, 8
  %conv1.i = trunc i16 %23 to i8
  %arrayidx2.i = getelementptr inbounds [3 x i8], ptr %buf.i30, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %conv4.i = trunc i16 %or28 to i8
  %arrayidx5.i = getelementptr inbounds [3 x i8], ptr %buf.i30, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr.i, align 2
  %28 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %msg.i29, align 4
  %flags.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i32, align 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %30 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i30, ptr %buf7.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mt9v111_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9v111_update, %if.then.i)) #9
          to label %do.end.i37 [label %if.then.i], !srcloc !107

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i34 = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %conv10.i = zext i8 %reg to i32
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2.i, align 1
  %conv12.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx5.i, align 1
  %conv14.i = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mt9v111_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i34, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #9
  br label %do.end.i37

do.end.i37:                                       ; preds = %if.then.i, %if.end4
  %35 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i, align 8
  %call15.i = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i29, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i36 = icmp slt i32 %call15.i, 0
  br i1 %cmp.i36, label %do.end20.i, label %do.end.i37.__mt9v111_write.exit_crit_edge

do.end.i37.__mt9v111_write.exit_crit_edge:        ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mt9v111_write.exit

do.end20.i:                                       ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  %dev21.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.24, i32 noundef %call15.i) #12
  br label %__mt9v111_write.exit

__mt9v111_write.exit:                             ; preds = %do.end20.i, %do.end.i37.__mt9v111_write.exit_crit_edge
  %retval.0.i38 = phi i32 [ %call15.i, %do.end20.i ], [ 0, %do.end.i37.__mt9v111_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i30) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i29) #9
  br label %cleanup

cleanup:                                          ; preds = %__mt9v111_write.exit, %__mt9v111_read.exit.thread44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i38, %__mt9v111_write.exit ], [ %call.i, %__mt9v111_read.exit.thread44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt9v111_addr_space_select(ptr noundef %c, i16 noundef zeroext %addr_space) unnamed_addr #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i31 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i32 = alloca i16, align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %addr_space1 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %addr_space1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_space1, align 4
  %4 = zext i8 %3 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %addr_space)
  %cmp = icmp eq i16 %4, %addr_space
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 262143, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #9
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %buf.i, align 1
  %8 = lshr i16 %addr_space, 8
  %conv1.i = trunc i16 %8 to i8
  %arrayidx2.i = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %conv4.i = trunc i16 %addr_space to i8
  %arrayidx5.i = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf7.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mt9v111_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mt9v111_addr_space_select, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !107

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 1
  %conv12.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.i, align 1
  %conv14.i = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mt9v111_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef %conv12.i, i32 noundef %conv14.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call15.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %__mt9v111_write.exit, label %if.end6

__mt9v111_write.exit:                             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev21.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.24, i32 noundef %call15.i) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %cleanup

if.end6:                                          ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %22 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i31) #9
  %23 = getelementptr inbounds i8, ptr %msg.i31, i32 4
  %24 = call ptr @memset(ptr %23, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i32) #9
  %25 = ptrtoint ptr %buf.i32 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %buf.i32, align 2, !annotation !106
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr.i, align 2
  %28 = ptrtoint ptr %msg.i31 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %msg.i31, align 4
  %flags.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i34, align 2
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %23, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 3
  %31 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %reg.addr.i, ptr %buf5.i, align 4
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i31, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %27, ptr %arrayidx7.i, align 4
  %flags10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i31, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %flags10.i, align 2
  %len12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i31, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %len12.i, align 4
  %buf14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i31, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i32, ptr %buf14.i, align 4
  %36 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i31, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i37 = icmp slt i32 %call.i, 0
  br i1 %cmp.i37, label %__mt9v111_read.exit.thread48, label %if.end.i

__mt9v111_read.exit.thread48:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i38 = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38, ptr noundef nonnull @.str.19, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i32) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i31) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %38 = ptrtoint ptr %buf.i32 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %buf.i32, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mt9v111_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mt9v111_addr_space_select, %__mt9v111_read.exit.thread)) #9
          to label %__mt9v111_read.exit [label %__mt9v111_read.exit.thread], !srcloc !107

__mt9v111_read.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %40 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg.addr.i, align 1
  %conv.i = zext i8 %41 to i32
  %conv21.i = zext i16 %39 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mt9v111_read.__UNIQUE_ID_ddebug292, ptr noundef %dev20.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %conv.i, i32 noundef %conv21.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i32) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i31) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.end10

__mt9v111_read.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i32) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i31) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.end10

if.end10:                                         ; preds = %__mt9v111_read.exit, %__mt9v111_read.exit.thread
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %addr_space)
  %cmp13.not = icmp eq i16 %39, %addr_space
  br i1 %cmp13.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %addr_space1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv4.i, ptr %addr_space1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %__mt9v111_read.exit.thread48, %__mt9v111_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ %call15.i, %__mt9v111_write.exit ], [ -22, %if.end10.cleanup_crit_edge ], [ %call.i, %__mt9v111_read.exit.thread48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwr_mutex = getelementptr i8, ptr %sd, i32 480
  tail call void @mutex_lock_nested(ptr noundef %pwr_mutex, i32 noundef 0) #9
  %pwr_count1 = getelementptr i8, ptr %sd, i32 572
  %0 = ptrtoint ptr %pwr_count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pwr_count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %cond = select i1 %tobool, i32 1, i32 -1
  %add = add i32 %1, %cond
  %lnot.ext = zext i1 %tobool to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %lnot.ext)
  %cmp = icmp eq i32 %add, %lnot.ext
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  br i1 %tobool, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %oe.i = getelementptr i8, ptr %sd, i32 680
  %2 = ptrtoint ptr %oe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oe.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %standby.i = getelementptr i8, ptr %sd, i32 684
  %4 = ptrtoint ptr %standby.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %standby.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %clk.i = getelementptr i8, ptr %sd, i32 672
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %cleanup.sink.split

cond.end:                                         ; preds = %if.then
  %call = tail call fastcc i32 @__mt9v111_power_on(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %cond.end.cleanup.sink.split_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %8 = icmp ugt i32 %add, 1
  br i1 %8, label %do.end, label %if.end11.cleanup.sink.split_crit_edge, !prof !108

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 676, i32 noundef 9, ptr noundef null) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.end11.cleanup.sink.split_crit_edge, %cond.end.cleanup.sink.split_crit_edge, %cond.end.thread
  %9 = ptrtoint ptr %pwr_count1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %pwr_count1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %cond.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  tail call void @mutex_unlock(ptr noundef %pwr_mutex) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt9v111_power_on(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %sd, i32 672
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %sysclk = getelementptr i8, ptr %sd, i32 676
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk, align 4
  %call2 = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef %5) #9
  %standby = getelementptr i8, ptr %sd, i32 684
  %6 = ptrtoint ptr %standby to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %standby, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %oe = getelementptr i8, ptr %sd, i32 680
  %8 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oe, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_s_stream(ptr noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_mutex = getelementptr i8, ptr %subdev, i32 576
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #9
  %streaming = getelementptr i8, ptr %subdev, i32 668
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !109
  %2 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %enable)
  %cmp = icmp eq i32 %2, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @mt9v111_s_power(ptr noundef %subdev, i32 noundef %enable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool6 = icmp ne i32 %enable, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %pending = getelementptr i8, ptr %subdev, i32 669
  %3 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pending, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end15_crit_edge, label %if.then9

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true
  %client.i = getelementptr i8, ptr %subdev, i32 -8
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %reset.i.i = getelementptr i8, ptr %subdev, i32 688
  %7 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.i, label %__mt9v111_hw_reset.exit.i

__mt9v111_hw_reset.exit.i:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %8, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %9 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #9
  br label %if.end3.i

if.then.i:                                        ; preds = %if.then9
  %call.i.i = tail call fastcc i32 @mt9v111_update(ptr noundef %6, i8 noundef zeroext 4, i8 noundef zeroext 13, i16 noundef zeroext 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i107.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i107.i, label %if.end.i108.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i108.i:                                    ; preds = %if.then.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %call1.i.i = tail call fastcc i32 @mt9v111_update(ptr noundef %6, i8 noundef zeroext 4, i8 noundef zeroext 13, i16 noundef zeroext 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i108.i.cleanup_crit_edge

if.end.i108.i.cleanup_crit_edge:                  ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i108.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %call5.i.i = tail call fastcc i32 @mt9v111_update(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 7, i16 noundef zeroext 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.cleanup_crit_edge

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end4.i.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %call9.i.i = tail call fastcc i32 @mt9v111_update(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 7, i16 noundef zeroext 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end8.i.i.if.end3.i_crit_edge, label %if.end8.i.i.cleanup_crit_edge

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i.if.end3.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end8.i.i.if.end3.i_crit_edge, %__mt9v111_hw_reset.exit.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %sysclk.i = getelementptr i8, ptr %subdev, i32 676
  %11 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sysclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %12)
  %cmp12.i = icmp ult i32 %12, 13500000
  %..i = zext i1 %cmp12.i to i16
  %call17.i = tail call fastcc i32 @mt9v111_update(ptr noundef %6, i8 noundef zeroext 4, i8 noundef zeroext 7, i16 noundef zeroext 16, i16 noundef zeroext %..i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool20.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.i:                                       ; preds = %if.end3.i
  %fmt.i = getelementptr i8, ptr %subdev, i32 428
  %code.i = getelementptr i8, ptr %subdev, i32 436
  %13 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code.i, align 4
  %switch.tableidx = add i32 %14, -8199
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i16
  %switch.offset = add i16 %switch.idx.cast, 1
  %outfmtctrl2.0.i = select i1 %15, i16 %switch.offset, i16 0
  %call26.i = tail call fastcc i32 @mt9v111_update(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 58, i16 noundef zeroext 7, i16 noundef zeroext %outfmtctrl2.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.i:                                       ; preds = %if.end22.i
  %call30.i = tail call fastcc i32 @mt9v111_write(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext -91, i16 noundef zeroext -32768) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.cleanup_crit_edge

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33.i:                                       ; preds = %if.end29.i
  %call34.i = tail call fastcc i32 @mt9v111_write(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext -88, i16 noundef zeroext -32768) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.cleanup_crit_edge

if.end33.i.cleanup_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37.i:                                       ; preds = %if.end33.i
  %call38.i = tail call fastcc i32 @mt9v111_write(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext -90, i16 noundef zeroext -32128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end37.i.cleanup_crit_edge

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41.i:                                       ; preds = %if.end37.i
  %call42.i = tail call fastcc i32 @mt9v111_write(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext -87, i16 noundef zeroext -32288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end41.i.cleanup_crit_edge

if.end41.i.cleanup_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45.i:                                       ; preds = %if.end41.i
  %16 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt.i, align 4
  %18 = trunc i32 %17 to i16
  %conv47.i = or i16 %18, -32768
  %call48.i = tail call fastcc i32 @mt9v111_write(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext -89, i16 noundef zeroext %conv47.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end45.i.cleanup_crit_edge

if.end45.i.cleanup_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51.i:                                       ; preds = %if.end45.i
  %height.i = getelementptr i8, ptr %subdev, i32 432
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %conv53.i = trunc i32 %20 to i16
  %call54.i = tail call fastcc i32 @mt9v111_write(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext -86, i16 noundef zeroext %conv53.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end51.i.cleanup_crit_edge

if.end51.i.cleanup_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57.i:                                       ; preds = %if.end51.i
  %ctrls.i = getelementptr i8, ptr %subdev, i32 244
  %call58.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %mt9v111_hw_config.exit, label %if.end57.i.cleanup_crit_edge

if.end57.i.cleanup_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mt9v111_hw_config.exit:                           ; preds = %if.end57.i
  %call62.i = tail call fastcc i32 @mt9v111_write(ptr noundef %6, i8 noundef zeroext 4, i8 noundef zeroext 9, i16 noundef zeroext 480) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool11.not = icmp eq i32 %call62.i, 0
  br i1 %tobool11.not, label %if.end13, label %mt9v111_hw_config.exit.cleanup_crit_edge

mt9v111_hw_config.exit.cleanup_crit_edge:         ; preds = %mt9v111_hw_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %mt9v111_hw_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pending, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %land.lhs.true.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %frombool = zext i1 %tobool6 to i8
  %22 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %mt9v111_hw_config.exit.cleanup_crit_edge, %if.end57.i.cleanup_crit_edge, %if.end51.i.cleanup_crit_edge, %if.end45.i.cleanup_crit_edge, %if.end41.i.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %if.end33.i.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.end.i108.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call62.i, %mt9v111_hw_config.exit.cleanup_crit_edge ], [ %call.i.i, %if.then.i.cleanup_crit_edge ], [ %call1.i.i, %if.end.i108.i.cleanup_crit_edge ], [ %call5.i.i, %if.end4.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.end8.i.i.cleanup_crit_edge ], [ %call58.i, %if.end57.i.cleanup_crit_edge ], [ %call54.i, %if.end51.i.cleanup_crit_edge ], [ %call48.i, %if.end45.i.cleanup_crit_edge ], [ %call42.i, %if.end41.i.cleanup_crit_edge ], [ %call38.i, %if.end37.i.cleanup_crit_edge ], [ %call34.i, %if.end33.i.cleanup_crit_edge ], [ %call30.i, %if.end29.i.cleanup_crit_edge ], [ %call26.i, %if.end22.i.cleanup_crit_edge ], [ %call17.i, %if.end3.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_g_frame_interval(ptr noundef %sd, ptr nocapture noundef writeonly %ival) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %stream_mutex = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #9
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %interval, align 4
  %fps = getelementptr i8, ptr %sd, i32 476
  %1 = ptrtoint ptr %fps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fps, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %denominator, align 4
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_s_frame_interval(ptr noundef %sd, ptr nocapture noundef %ival) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sd, i32 -12
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %denominator2 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %denominator2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator2, align 4
  br i1 %tobool.not, label %if.then, label %cond.end

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %3, %1
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %interval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %cond85 = phi i32 [ %3, %if.then ], [ %div, %cond.end ]
  %stream_mutex = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #9
  %streaming = getelementptr i8, ptr %sd, i32 668
  %5 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %streaming, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %fps10 = getelementptr i8, ptr %sd, i32 476
  %7 = ptrtoint ptr %fps10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fps10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cond85)
  %cmp = icmp eq i32 %8, %cond85
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %fmt = getelementptr i8, ptr %sd, i32 428
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %10)
  %cmp14 = icmp ult i32 %10, 320
  br i1 %cmp14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end13
  %height = getelementptr i8, ptr %sd, i32 432
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %12)
  %cmp16 = icmp ult i32 %12, 240
  br i1 %cmp16, label %land.lhs.true.if.end45_crit_edge, label %land.lhs.true.land.lhs.true21_crit_edge

land.lhs.true.land.lhs.true21_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true21

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %10)
  %cmp20 = icmp ult i32 %10, 352
  br i1 %cmp20, label %if.else.land.lhs.true21_crit_edge, label %if.else.if.else26_crit_edge

if.else.if.else26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else26

if.else.land.lhs.true21_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.else.land.lhs.true21_crit_edge, %land.lhs.true.land.lhs.true21_crit_edge
  %height23 = getelementptr i8, ptr %sd, i32 432
  %13 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %14)
  %cmp24 = icmp ult i32 %14, 288
  br i1 %cmp24, label %land.lhs.true21.if.end45_crit_edge, label %land.lhs.true21.if.else26_crit_edge

land.lhs.true21.if.else26_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else26

land.lhs.true21.if.end45_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.else26:                                        ; preds = %land.lhs.true21.if.else26_crit_edge, %if.else.if.else26_crit_edge
  %sysclk = getelementptr i8, ptr %sd, i32 676
  %15 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %16)
  %cmp41 = icmp ult i32 %16, 13500000
  %cond43 = select i1 %cmp41, i32 15, i32 30
  br label %if.end45

if.end45:                                         ; preds = %if.else26, %land.lhs.true21.if.end45_crit_edge, %land.lhs.true.if.end45_crit_edge
  %max_fps.0 = phi i32 [ %cond43, %if.else26 ], [ 90, %land.lhs.true.if.end45_crit_edge ], [ 60, %land.lhs.true21.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond85, i32 %max_fps.0)
  %cmp46 = icmp ugt i32 %cond85, %max_fps.0
  br i1 %cmp46, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mt9v111_calc_frame_rate(ptr noundef %add.ptr, ptr noundef %interval)
  %17 = ptrtoint ptr %fps10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond85, ptr %fps10, align 4
  %pending = getelementptr i8, ptr %sd, i32 669
  %18 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end45.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ -22, %if.end45.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9v111_write(ptr noundef %c, i8 noundef zeroext %addr_space, i8 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %addr_space to i16
  %call = tail call fastcc i32 @__mt9v111_addr_space_select(ptr noundef %c, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 262143, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #9
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %reg, ptr %buf.i, align 1
  %3 = lshr i16 %val, 8
  %conv1.i = trunc i16 %3 to i8
  %arrayidx2.i = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %conv4.i = trunc i16 %val to i8
  %arrayidx5.i = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr.i, align 2
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf.i, ptr %buf7.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mt9v111_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9v111_write, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !107

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %conv10.i = zext i8 %reg to i32
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  %conv12.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx5.i, align 1
  %conv14.i = zext i8 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mt9v111_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %call15.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %do.end20.i, label %do.end.i.__mt9v111_write.exit_crit_edge

do.end.i.__mt9v111_write.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mt9v111_write.exit

do.end20.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev21.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.24, i32 noundef %call15.i) #12
  br label %__mt9v111_write.exit

__mt9v111_write.exit:                             ; preds = %do.end20.i, %do.end.i.__mt9v111_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call15.i, %do.end20.i ], [ 0, %do.end.i.__mt9v111_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %cleanup

cleanup:                                          ; preds = %__mt9v111_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i, %__mt9v111_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9v111_init_cfg(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readonly %sd_state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_state, align 4
  %2 = call ptr @memcpy(ptr %1, ptr @mt9v111_def_fmt, i32 48)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9v111_enum_mbus_code(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [4 x %struct.mt9v111_mbus_fmt], ptr @mt9v111_formats, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9v111_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %width = getelementptr [5 x %struct.v4l2_rect], ptr @mt9v111_frame_sizes, i32 0, i32 %3, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %7 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %max_width, align 4
  %height = getelementptr [5 x %struct.v4l2_rect], ptr @mt9v111_frame_sizes, i32 0, i32 %3, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %10 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %11 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %max_height, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_enum_frame_interval(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %5, label %for.cond.preheader.cleanup_crit_edge [
    i32 640, label %land.lhs.true
    i32 352, label %land.lhs.true.1
    i32 320, label %land.lhs.true.2
    i32 176, label %land.lhs.true.3
    i32 160, label %land.lhs.true.4
  ]

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond.preheader
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %8)
  %cmp6 = icmp eq i32 %8, 480
  br i1 %cmp6, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true.1:                                  ; preds = %for.cond.preheader
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %10)
  %cmp6.1 = icmp eq i32 %10, 288
  br i1 %cmp6.1, label %land.lhs.true.1.if.end11_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.1.if.end11_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true.2:                                  ; preds = %for.cond.preheader
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %12)
  %cmp6.2 = icmp eq i32 %12, 240
  br i1 %cmp6.2, label %land.lhs.true.2.if.end11_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.2.if.end11_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true.3:                                  ; preds = %for.cond.preheader
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %14)
  %cmp6.3 = icmp eq i32 %14, 144
  br i1 %cmp6.3, label %land.lhs.true.3.if.end11_crit_edge, label %land.lhs.true.3.cleanup_crit_edge

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.3.if.end11_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true.4:                                  ; preds = %for.cond.preheader
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %16)
  %cmp6.4 = icmp eq i32 %16, 120
  br i1 %cmp6.4, label %land.lhs.true.4.if.end11_crit_edge, label %land.lhs.true.4.cleanup_crit_edge

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.4.if.end11_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.4.if.end11_crit_edge, %land.lhs.true.3.if.end11_crit_edge, %land.lhs.true.2.if.end11_crit_edge, %land.lhs.true.1.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %17 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %interval, align 4
  %arrayidx13 = getelementptr [5 x i32], ptr @mt9v111_frame_intervals, i32 0, i32 %3
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.4.cleanup_crit_edge ], [ -22, %land.lhs.true.3.cleanup_crit_edge ], [ -22, %land.lhs.true.2.cleanup_crit_edge ], [ -22, %land.lhs.true.1.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_get_format(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
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
  %stream_mutex = getelementptr i8, ptr %subdev, i32 576
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #9
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %if.end.__mt9v111_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__mt9v111_get_pad_format.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mt9v111_get_pad_format.exit

sw.bb.i:                                          ; preds = %if.end
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %7 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %6, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !110

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %6, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i
  br label %__mt9v111_get_pad_format.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fmt.i = getelementptr i8, ptr %subdev, i32 428
  br label %__mt9v111_get_pad_format.exit

__mt9v111_get_pad_format.exit:                    ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %if.end.__mt9v111_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %fmt.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.end.__mt9v111_get_pad_format.exit_crit_edge ]
  %11 = call ptr @memcpy(ptr %format1, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %__mt9v111_get_pad_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__mt9v111_get_pad_format.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v111_set_format(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -12
  %stream_mutex = getelementptr i8, ptr %subdev, i32 576
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #9
  %streaming = getelementptr i8, ptr %subdev, i32 668
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup89_crit_edge

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.cleanup89_crit_edge

if.end.cleanup89_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

for.cond.preheader:                               ; preds = %if.end
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %switch.tableidx = add i32 %5, -8199
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  %spec.select155 = select i1 %6, i32 %5, i32 8198
  %format22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %7 = ptrtoint ptr %format22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %format22, align 4
  %height30 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height30, align 4
  %sub = sub i32 640, %8
  %11 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub31 = sub i32 480, %10
  %12 = tail call i32 @llvm.abs.i32(i32 %sub31, i1 false)
  %add = add i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cond = icmp eq i32 %add, 0
  br i1 %cond, label %for.cond.preheader.for.end47_crit_edge, label %for.inc45

for.cond.preheader.for.end47_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end47

for.inc45:                                        ; preds = %for.cond.preheader
  %sub.1 = sub i32 352, %8
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  %sub31.1 = sub i32 288, %10
  %14 = tail call i32 @llvm.abs.i32(i32 %sub31.1, i1 false)
  %add.1 = add i32 %14, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %add)
  %cmp39.1 = icmp ult i32 %add.1, %add
  br i1 %cmp39.1, label %if.then40.1, label %for.inc45.for.inc45.1_crit_edge

for.inc45.for.inc45.1_crit_edge:                  ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.1

if.then40.1:                                      ; preds = %for.inc45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.1)
  %cmp41.1 = icmp eq i32 %add.1, 0
  br i1 %cmp41.1, label %if.then40.1.for.end47_crit_edge, label %if.then40.1.for.inc45.1_crit_edge

if.then40.1.for.inc45.1_crit_edge:                ; preds = %if.then40.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.1

if.then40.1.for.end47_crit_edge:                  ; preds = %if.then40.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end47

for.inc45.1:                                      ; preds = %if.then40.1.for.inc45.1_crit_edge, %for.inc45.for.inc45.1_crit_edge
  %best_fit.1.1 = phi i32 [ %add.1, %if.then40.1.for.inc45.1_crit_edge ], [ %add, %for.inc45.for.inc45.1_crit_edge ]
  %idx.1.1 = phi i32 [ 1, %if.then40.1.for.inc45.1_crit_edge ], [ 0, %for.inc45.for.inc45.1_crit_edge ]
  %sub.2 = sub i32 320, %8
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  %sub31.2 = sub i32 240, %10
  %16 = tail call i32 @llvm.abs.i32(i32 %sub31.2, i1 false)
  %add.2 = add i32 %16, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %best_fit.1.1)
  %cmp39.2 = icmp ult i32 %add.2, %best_fit.1.1
  br i1 %cmp39.2, label %if.then40.2, label %for.inc45.1.for.inc45.2_crit_edge

for.inc45.1.for.inc45.2_crit_edge:                ; preds = %for.inc45.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.2

if.then40.2:                                      ; preds = %for.inc45.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.2)
  %cmp41.2 = icmp eq i32 %add.2, 0
  br i1 %cmp41.2, label %if.then40.2.for.end47_crit_edge, label %if.then40.2.for.inc45.2_crit_edge

if.then40.2.for.inc45.2_crit_edge:                ; preds = %if.then40.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.2

if.then40.2.for.end47_crit_edge:                  ; preds = %if.then40.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end47

for.inc45.2:                                      ; preds = %if.then40.2.for.inc45.2_crit_edge, %for.inc45.1.for.inc45.2_crit_edge
  %best_fit.1.2 = phi i32 [ %add.2, %if.then40.2.for.inc45.2_crit_edge ], [ %best_fit.1.1, %for.inc45.1.for.inc45.2_crit_edge ]
  %idx.1.2 = phi i32 [ 2, %if.then40.2.for.inc45.2_crit_edge ], [ %idx.1.1, %for.inc45.1.for.inc45.2_crit_edge ]
  %sub.3 = sub i32 176, %8
  %17 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  %sub31.3 = sub i32 144, %10
  %18 = tail call i32 @llvm.abs.i32(i32 %sub31.3, i1 false)
  %add.3 = add i32 %18, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %best_fit.1.2)
  %cmp39.3 = icmp ult i32 %add.3, %best_fit.1.2
  br i1 %cmp39.3, label %if.then40.3, label %for.inc45.2.for.inc45.3_crit_edge

for.inc45.2.for.inc45.3_crit_edge:                ; preds = %for.inc45.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.3

if.then40.3:                                      ; preds = %for.inc45.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.3)
  %cmp41.3 = icmp eq i32 %add.3, 0
  br i1 %cmp41.3, label %if.then40.3.for.end47_crit_edge, label %if.then40.3.for.inc45.3_crit_edge

if.then40.3.for.inc45.3_crit_edge:                ; preds = %if.then40.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.3

if.then40.3.for.end47_crit_edge:                  ; preds = %if.then40.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end47

for.inc45.3:                                      ; preds = %if.then40.3.for.inc45.3_crit_edge, %for.inc45.2.for.inc45.3_crit_edge
  %best_fit.1.3 = phi i32 [ %add.3, %if.then40.3.for.inc45.3_crit_edge ], [ %best_fit.1.2, %for.inc45.2.for.inc45.3_crit_edge ]
  %idx.1.3 = phi i32 [ 3, %if.then40.3.for.inc45.3_crit_edge ], [ %idx.1.2, %for.inc45.2.for.inc45.3_crit_edge ]
  %sub.4 = sub i32 160, %8
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  %sub31.4 = sub i32 120, %10
  %20 = tail call i32 @llvm.abs.i32(i32 %sub31.4, i1 false)
  %add.4 = add i32 %20, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add.4, i32 %best_fit.1.3)
  %cmp39.4 = icmp ult i32 %add.4, %best_fit.1.3
  %spec.select = select i1 %cmp39.4, i32 4, i32 %idx.1.3
  br label %for.end47

for.end47:                                        ; preds = %for.inc45.3, %if.then40.3.for.end47_crit_edge, %if.then40.2.for.end47_crit_edge, %if.then40.1.for.end47_crit_edge, %for.cond.preheader.for.end47_crit_edge
  %idx.3 = phi i32 [ 1, %if.then40.1.for.end47_crit_edge ], [ 2, %if.then40.2.for.end47_crit_edge ], [ 3, %if.then40.3.for.end47_crit_edge ], [ 0, %for.cond.preheader.for.end47_crit_edge ], [ %spec.select, %for.inc45.3 ]
  %width49 = getelementptr [5 x %struct.v4l2_rect], ptr @mt9v111_frame_sizes, i32 0, i32 %idx.3, i32 2
  %21 = ptrtoint ptr %width49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width49, align 4
  %height52 = getelementptr [5 x %struct.v4l2_rect], ptr @mt9v111_frame_sizes, i32 0, i32 %idx.3, i32 3
  %23 = ptrtoint ptr %height52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height52, align 4
  %25 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %26, label %for.end47.__mt9v111_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

for.end47.__mt9v111_get_pad_format.exit_crit_edge: ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mt9v111_get_pad_format.exit

sw.bb.i:                                          ; preds = %for.end47
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %28 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i.i.not = icmp eq i16 %29, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !108

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  br label %__mt9v111_get_pad_format.exit

sw.bb1.i:                                         ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #11
  %fmt.i = getelementptr i8, ptr %subdev, i32 428
  br label %__mt9v111_get_pad_format.exit

__mt9v111_get_pad_format.exit:                    ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %for.end47.__mt9v111_get_pad_format.exit_crit_edge
  %retval.0.i140 = phi ptr [ %fmt.i, %sw.bb1.i ], [ %31, %v4l2_subdev_get_try_format.exit.i ], [ null, %for.end47.__mt9v111_get_pad_format.exit_crit_edge ]
  %code55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i140, i32 0, i32 2
  %32 = ptrtoint ptr %code55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %code55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %spec.select155)
  %cmp57 = icmp eq i32 %33, %spec.select155
  br i1 %cmp57, label %land.lhs.true, label %__mt9v111_get_pad_format.exit.if.end66_crit_edge

__mt9v111_get_pad_format.exit.if.end66_crit_edge: ; preds = %__mt9v111_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true:                                    ; preds = %__mt9v111_get_pad_format.exit
  %34 = ptrtoint ptr %retval.0.i140 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %retval.0.i140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %22)
  %cmp60 = icmp eq i32 %35, %22
  br i1 %cmp60, label %land.lhs.true61, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true61:                                  ; preds = %land.lhs.true
  %height62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i140, i32 0, i32 1
  %36 = ptrtoint ptr %height62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %24)
  %cmp64 = icmp eq i32 %37, %24
  br i1 %cmp64, label %land.lhs.true61.done_crit_edge, label %land.lhs.true61.if.end66_crit_edge

land.lhs.true61.if.end66_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true61.done_crit_edge:                   ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end66:                                         ; preds = %land.lhs.true61.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge, %__mt9v111_get_pad_format.exit.if.end66_crit_edge
  %38 = ptrtoint ptr %code55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select155, ptr %code55, align 4
  %39 = ptrtoint ptr %retval.0.i140 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %22, ptr %retval.0.i140, align 4
  %height72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i140, i32 0, i32 1
  %40 = ptrtoint ptr %height72 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %24, ptr %height72, align 4
  %41 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp74 = icmp eq i32 %42, 1
  br i1 %cmp74, label %if.then75, label %if.end66.do.body_crit_edge

if.end66.do.body_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then75:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %pending = getelementptr i8, ptr %subdev, i32 669
  %43 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %pending, align 1
  br label %do.body

do.body:                                          ; preds = %if.then75, %if.end66.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9v111_set_format.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9v111_set_format, %if.then82)) #9
          to label %done [label %if.then82], !srcloc !107

if.then82:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  %46 = ptrtoint ptr %code55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %code55, align 4
  %48 = ptrtoint ptr %retval.0.i140 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %retval.0.i140, align 4
  %50 = ptrtoint ptr %height72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9v111_set_format.__UNIQUE_ID_ddebug294, ptr noundef %45, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %47, i32 noundef %49, i32 noundef %51) #9
  br label %done

done:                                             ; preds = %if.then82, %do.body, %land.lhs.true61.done_crit_edge
  %52 = call ptr @memcpy(ptr %format22, ptr %retval.0.i140, i32 48)
  br label %cleanup89

cleanup89:                                        ; preds = %done, %if.end.cleanup89_crit_edge, %entry.cleanup89_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ -16, %entry.cleanup89_crit_edge ], [ -22, %if.end.cleanup89_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_mt9v111__296_1274_mt9v111_driver_init6, !1, !"__initcall__kmod_mt9v111__296_1274_mt9v111_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/mt9v111.c", i32 1274, i32 1}
!2 = !{ptr @__exitcall_mt9v111_driver_exit, !1, !"__exitcall_mt9v111_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/mt9v111.c", i32 1276, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/mt9v111.c", i32 1277, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/mt9v111.c", i32 1278, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/mt9v111.c", i32 1267, i32 11}
!12 = !{ptr @mt9v111_driver, !13, !"mt9v111_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/mt9v111.c", i32 1265, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/mt9v111.c", i32 1129, i32 54}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/mt9v111.c", i32 1132, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mt9v111_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mt9v111_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/mt9v111.c", i32 1137, i32 59}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/mt9v111.c", i32 1140, i32 3}
!28 = !{ptr @mt9v111_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt9v111_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/mt9v111.c", i32 1145, i32 57}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/mt9v111.c", i32 1148, i32 3}
!34 = !{ptr @mt9v111_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mt9v111_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mt9v111_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/mt9v111.c", i32 1153, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mt9v111_probe.__key.16, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/mt9v111.c", i32 1154, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mt9v111_probe._key, !43, !"_key", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/mt9v111.c", i32 1156, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mt9v111_ctrl_ops, !46, !"mt9v111_ctrl_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/mt9v111.c", i32 1072, i32 35}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/mt9v111.c", i32 238, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__mt9v111_read._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @__mt9v111_read._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/mt9v111.c", i32 244, i32 2}
!54 = !{ptr @__mt9v111_read.__UNIQUE_ID_ddebug292, !53, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/mt9v111.c", i32 264, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__mt9v111_write.__UNIQUE_ID_ddebug293, !56, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/mt9v111.c", i32 268, i32 3}
!61 = !{ptr @__mt9v111_write._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @__mt9v111_write._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mt9v111_def_fmt, !64, !"mt9v111_def_fmt", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/mt9v111.c", i32 106, i32 40}
!65 = !{ptr @mt9v111_frame_intervals, !66, !"mt9v111_frame_intervals", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/mt9v111.c", i32 187, i32 12}
!67 = !{ptr @mt9v111_ops, !68, !"mt9v111_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/mt9v111.c", i32 984, i32 37}
!69 = !{ptr @mt9v111_core_ops, !70, !"mt9v111_core_ops", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/mt9v111.c", i32 965, i32 42}
!71 = !{ptr @mt9v111_video_ops, !72, !"mt9v111_video_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/mt9v111.c", i32 969, i32 43}
!73 = !{ptr @mt9v111_pad_ops, !74, !"mt9v111_pad_ops", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/mt9v111.c", i32 975, i32 41}
!75 = !{ptr @mt9v111_formats, !76, !"mt9v111_formats", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/mt9v111.c", i32 172, i32 3}
!77 = !{ptr @mt9v111_frame_sizes, !78, !"mt9v111_frame_sizes", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/mt9v111.c", i32 195, i32 25}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/mt9v111.c", i32 946, i32 2}
!83 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mt9v111_set_format.__UNIQUE_ID_ddebug294, !82, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!85 = !{ptr @mt9v111_subdev_entity_ops, !86, !"mt9v111_subdev_entity_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/mt9v111.c", i32 991, i32 45}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/mt9v111.c", i32 1092, i32 3}
!89 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mt9v111_chip_probe._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mt9v111_chip_probe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/mt9v111.c", i32 1099, i32 2}
!94 = !{ptr @mt9v111_chip_probe.__UNIQUE_ID_ddebug295, !93, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!95 = !{ptr @mt9v111_of_match, !96, !"mt9v111_of_match", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/mt9v111.c", i32 1260, i32 34}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{i64 2148752109, i64 2148752114, i64 2148752127, i64 2148752171, i64 2148752205, i64 2148752226}
!108 = !{!"branch_weights", i32 1, i32 2000}
!109 = !{i8 0, i8 2}
!110 = !{!"branch_weights", i32 2000, i32 1}
