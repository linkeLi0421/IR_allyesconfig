; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov772x.c_pt.bc'
source_filename = "../drivers/media/i2c/ov772x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.ov772x_color_format = type { i32, i32, i8, i8, i8, i8 }
%struct.ov772x_win_size = type { ptr, i8, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ov772x_priv = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.mutex, i32, i32, %struct.media_pad, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.102, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.102 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.ov772x_camera_info = type { i32, %struct.ov772x_edge_ctrl }
%struct.ov772x_edge_ctrl = type { i8, i8, i8, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__initcall__kmod_ov772x__293_1562_ov772x_i2c_driver_init6 = internal global ptr @ov772x_i2c_driver_init, section ".initcall6.init", align 4
@ov772x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov772x_remove, ptr @ov772x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov772x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ov772x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov772x_i2c_driver_exit = internal global ptr @ov772x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [55 x i8] c"ov772x.description=V4L2 driver for OV772x image sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [32 x i8] c"ov772x.author=Kuninori Morimoto\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"ov772x.file=drivers/media/i2c/ov772x\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"ov772x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov772x\00", [25 x i8] zeroinitializer }, align 32
@ov772x_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov7725\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov7720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ov772x_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov772x\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov772x_probe.ov772x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 172, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ov772x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Missing ov772x platform data for non-DT device\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov772x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov772x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov772x_probe._entry_ptr = internal global ptr @ov772x_probe._entry, section ".printk_index", align 4
@ov772x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ov772x:1436:(&ov772x_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@ov772x_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@ov772x_probe._entry_ptr.9 = internal global ptr @ov772x_probe._entry.7, section ".printk_index", align 4
@ov772x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@ov772x_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov772x_subdev_core_ops, ptr null, ptr null, ptr @ov772x_subdev_video_ops, ptr null, ptr null, ptr null, ptr @ov772x_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov772x_probe._key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ov772x:1448:(&priv->hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@ov772x_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov772x_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov772x_test_pattern_menu = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.28, ptr @.str.29], [24 x i8] zeroinitializer }, align 32
@ov772x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to get xclk clock\0A\00", [38 x i8] zeroinitializer }, align 32
@ov772x_probe._entry_ptr.15 = internal global ptr @ov772x_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@ov772x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1478, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to get GPIO \22powerdown\22\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov772x_probe._entry_ptr.20 = internal global ptr @ov772x_probe._entry.17, section ".printk_index", align 4
@ov772x_cfmts = internal constant { [8 x %struct.ov772x_color_format], [32 x i8] } { [8 x %struct.ov772x_color_format] [%struct.ov772x_color_format { i32 8200, i32 8, i8 0, i8 0, i8 16, i8 0 }, %struct.ov772x_color_format { i32 8201, i32 8, i8 -128, i8 0, i8 16, i8 0 }, %struct.ov772x_color_format { i32 8198, i32 8, i8 0, i8 0, i8 0, i8 0 }, %struct.ov772x_color_format { i32 4100, i32 8, i8 0, i8 0, i8 32, i8 10 }, %struct.ov772x_color_format { i32 4099, i32 8, i8 0, i8 0, i8 0, i8 10 }, %struct.ov772x_color_format { i32 4104, i32 8, i8 0, i8 0, i8 32, i8 6 }, %struct.ov772x_color_format { i32 4103, i32 8, i8 0, i8 0, i8 0, i8 6 }, %struct.ov772x_color_format { i32 12295, i32 8, i8 0, i8 3, i8 0, i8 19 }], [32 x i8] zeroinitializer }, align 32
@ov772x_win_sizes = internal constant { [2 x %struct.ov772x_win_size], [40 x i8] } { [2 x %struct.ov772x_win_size] [%struct.ov772x_win_size { ptr @.str.39, i8 0, i32 381480, %struct.v4l2_rect { i32 140, i32 14, i32 640, i32 480 } }, %struct.ov772x_win_size { ptr @.str.40, i8 64, i32 160128, %struct.v4l2_rect { i32 252, i32 6, i32 320, i32 240 } }], [40 x i8] zeroinitializer }, align 32
@ov772x_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov772x_g_register, ptr @ov772x_s_register, ptr @ov772x_s_power, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov772x_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov772x_s_stream, ptr null, ptr @ov772x_g_frame_interval, ptr @ov772x_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov772x_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov772x_enum_mbus_code, ptr null, ptr @ov772x_enum_frame_interval, ptr @ov772x_get_fmt, ptr @ov772x_set_fmt, ptr @ov772x_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unbalanced power count\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Duplicated s_power call\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov772x_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 886, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to get GPIO \22reset\22\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov772x_power_on\00", [16 x i8] zeroinitializer }, align 32
@ov772x_power_on._entry_ptr = internal global ptr @ov772x_power_on._entry, section ".printk_index", align 4
@ov772x_s_stream.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov772x_s_stream\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"format %d, win %s\0A\00", [45 x i8] zeroinitializer }, align 32
@ov772x_frame_intervals = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 5, i32 10, i32 15, i32 20, i32 30, i32 60], [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 1\00", [38 x i8] zeroinitializer }, align 32
@ov772x_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Endpoint node not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov772x_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@ov772x_parse_dt._entry_ptr = internal global ptr @ov772x_parse_dt._entry, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov7720\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov7725\00", [25 x i8] zeroinitializer }, align 32
@ov772x_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Product ID error %x:%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov772x_video_probe\00", [45 x i8] zeroinitializer }, align 32
@ov772x_video_probe._entry_ptr = internal global ptr @ov772x_video_probe._entry, section ".printk_index", align 4
@ov772x_video_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 1297, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s Product ID %0x:%0x Manufacturer ID %x:%x\0A\00", [51 x i8] zeroinitializer }, align 32
@ov772x_video_probe._entry_ptr.38 = internal global ptr @ov772x_video_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VGA\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QVGA\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 30496, i64 30497]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 320, i64 640]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 240, i64 480]
@__sancov_gen_cov_switch_values.43 = internal global [9 x i64] [i64 7, i64 32, i64 4099, i64 4100, i64 4103, i64 4104, i64 8198, i64 8201, i64 12295]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 9963796, i64 9963797, i64 9963809, i64 10422531]
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"ov772x_i2c_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1552, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1554, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"ov772x_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1545, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"ov772x_id\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1539, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"ov772x_regmap_config\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1420, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1427, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1436, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1438, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1443, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"ov772x_subdev_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1366, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1448, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"ov772x_ctrl_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1307, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"ov772x_test_pattern_menu\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 544, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1470, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1475, i32 53 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1478, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"ov772x_cfmts\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 445, i32 41 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"ov772x_win_sizes\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 520, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant [23 x i8] c"ov772x_subdev_core_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1311, i32 42 }
@___asan_gen_.139 = private unnamed_addr constant [24 x i8] c"ov772x_subdev_video_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1352, i32 43 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"ov772x_subdev_pad_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1358, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 947, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 948, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 883, i32 53 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 886, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 606, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"ov772x_frame_intervals\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 552, i32 27 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 545, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 546, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1383, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1276, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1279, i32 17 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1282, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1295, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 522, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [30 x i8] c"../drivers/media/i2c/ov772x.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 532, i32 12 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ov772x_i2c_driver_exit, ptr @__initcall__kmod_ov772x__293_1562_ov772x_i2c_driver_init6, ptr @ov772x_i2c_driver_exit, ptr @ov772x_parse_dt._entry, ptr @ov772x_parse_dt._entry_ptr, ptr @ov772x_power_on._entry, ptr @ov772x_power_on._entry_ptr, ptr @ov772x_probe._entry, ptr @ov772x_probe._entry.13, ptr @ov772x_probe._entry.17, ptr @ov772x_probe._entry.7, ptr @ov772x_probe._entry_ptr, ptr @ov772x_probe._entry_ptr.15, ptr @ov772x_probe._entry_ptr.20, ptr @ov772x_probe._entry_ptr.9, ptr @ov772x_video_probe._entry, ptr @ov772x_video_probe._entry.36, ptr @ov772x_video_probe._entry_ptr, ptr @ov772x_video_probe._entry_ptr.38, ptr @ov772x_i2c_driver, ptr @.str, ptr @ov772x_of_match, ptr @ov772x_id, ptr @ov772x_probe.ov772x_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ov772x_probe._key, ptr @.str.6, ptr @.str.8, ptr @ov772x_probe.__key, ptr @.str.10, ptr @ov772x_subdev_ops, ptr @ov772x_probe._key.11, ptr @.str.12, ptr @ov772x_ctrl_ops, ptr @ov772x_test_pattern_menu, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @ov772x_cfmts, ptr @ov772x_win_sizes, ptr @ov772x_subdev_core_ops, ptr @ov772x_subdev_video_ops, ptr @ov772x_subdev_pad_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ov772x_frame_intervals, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_probe.ov772x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_probe._key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_test_pattern_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_cfmts to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_win_sizes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_frame_intervals to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_video_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov772x_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov772x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov772x_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.ov772x_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %3) #8
  %pwdn_gpio = getelementptr inbounds %struct.ov772x_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwdn_gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_put(ptr noundef nonnull %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %hdl = getelementptr inbounds %struct.ov772x_priv, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  %lock = getelementptr inbounds %struct.ov772x_priv, ptr %1, i32 0, i32 14
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_probe(ptr noundef %client) #2 align 64 {
entry:
  %pid.i = alloca i32, align 4
  %ver.i = alloca i32, align 4
  %midh.i = alloca i32, align 4
  %midl.i = alloca i32, align 4
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 564, i32 noundef 3520) #8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @__devm_regmap_init_sccb(ptr noundef %client, ptr noundef nonnull @ov772x_probe.ov772x_regmap_config, ptr noundef nonnull @ov772x_probe._key, ptr noundef nonnull @.str.6) #8
  %regmap = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end18

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %platform_data20 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %8 = ptrtoint ptr %platform_data20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data20, align 8
  %info = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %info, align 4
  %lock = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @ov772x_probe.__key) #8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ov772x_subdev_ops) #8
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %or = or i32 %12, 12
  store i32 %or, ptr %flags, align 4
  %hdl = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 1
  %call26 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 3, ptr noundef nonnull @ov772x_probe._key.11, ptr noundef nonnull @.str.12) #8
  %lock29 = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %lock29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lock, ptr %lock29, align 4
  %call31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov772x_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %vflip_ctrl = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %vflip_ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call31, ptr %vflip_ctrl, align 4
  %call33 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov772x_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %hflip_ctrl = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %hflip_ctrl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call33, ptr %hflip_ctrl, align 4
  %call35 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov772x_ctrl_ops, i32 noundef 9963809, i64 noundef 0, i64 noundef 256, i64 noundef 1, i64 noundef 0) #8
  %band_filter_ctrl = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 12
  %16 = ptrtoint ptr %band_filter_ctrl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call35, ptr %band_filter_ctrl, align 4
  %call37 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %hdl, ptr noundef nonnull @ov772x_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov772x_test_pattern_menu) #8
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool41.not = icmp eq i32 %19, 0
  br i1 %tobool41.not, label %if.end45, label %if.end18.error_mutex_destroy_crit_edge

if.end18.error_mutex_destroy_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_mutex_destroy

if.end45:                                         ; preds = %if.end18
  %call47 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call47, ptr %clk, align 4
  %cmp.i162 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %do.end53, label %if.end57

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %error_ctrl_free

if.end57:                                         ; preds = %if.end45
  %call59 = tail call ptr @gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 3) #8
  %pwdn_gpio = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call59, ptr %pwdn_gpio, align 4
  %cmp.i163 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %do.end65, label %if.end69

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  %25 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pwdn_gpio, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %error_clk_put

if.end69:                                         ; preds = %if.end57
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  %28 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %29 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %29, align 4
  %call.i164 = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  %call1.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call.i164, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %ov772x_parse_dt.exit.thread, label %if.end.i

ov772x_parse_dt.exit.thread:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %error_clk_put

if.end.i:                                         ; preds = %if.end69
  %call3.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %bus_cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end73_crit_edge, label %if.then5.i

if.end.i.if.end73_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then5.i:                                       ; preds = %if.end.i
  %31 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 12)
  %.compoundliteral.sroa.3.0.bus_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %bus_cfg.i, i32 16
  %32 = call ptr @memset(ptr %.compoundliteral.sroa.3.0.bus_cfg.sroa_idx.i, i32 0, i32 48)
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %29, align 4
  %call6.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %bus_cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end73_crit_edge, label %ov772x_parse_dt.exit

if.then5.i.if.end73_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

ov772x_parse_dt.exit:                             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %error_clk_put

if.end73:                                         ; preds = %if.then5.i.if.end73_crit_edge, %if.end.i.if.end73_crit_edge
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %29, align 4
  %bus_type12.i = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 18
  %36 = ptrtoint ptr %bus_type12.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bus_type12.i, align 4
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %37 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pid.i) #8
  %39 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %pid.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver.i) #8
  %40 = ptrtoint ptr %ver.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %ver.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %midh.i) #8
  %41 = ptrtoint ptr %midh.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %midh.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %midl.i) #8
  %42 = ptrtoint ptr %midl.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %midl.i, align 4, !annotation !122
  %call1.i165 = call fastcc i32 @ov772x_power_on(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i165)
  %cmp.i166 = icmp slt i32 %call1.i165, 0
  br i1 %cmp.i166, label %if.end73.ov772x_video_probe.exit.thread_crit_edge, label %if.end.i167

if.end73.ov772x_video_probe.exit.thread_crit_edge: ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_video_probe.exit.thread

if.end.i167:                                      ; preds = %if.end73
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %44, i32 noundef 10, ptr noundef nonnull %pid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i167.ov772x_video_probe.exit.thread_crit_edge, label %if.end5.i

if.end.i167.ov772x_video_probe.exit.thread_crit_edge: ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_video_probe.exit.thread

if.end5.i:                                        ; preds = %if.end.i167
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call7.i = call i32 @regmap_read(ptr noundef %46, i32 noundef 11, ptr noundef nonnull %ver.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end5.i.ov772x_video_probe.exit.thread_crit_edge, label %if.end10.i168

if.end5.i.ov772x_video_probe.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_video_probe.exit.thread

if.end10.i168:                                    ; preds = %if.end5.i
  %47 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid.i, align 4
  %shl.i = shl i32 %48, 8
  %49 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ver.i, align 4
  %and.i = and i32 %50, 255
  %or.i = or i32 %and.i, %shl.i
  %51 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or.i, label %ov772x_video_probe.exit.thread179 [
    i32 30496, label %if.end10.i168.sw.epilog.i_crit_edge
    i32 30497, label %sw.bb11.i
  ]

if.end10.i168.sw.epilog.i_crit_edge:              ; preds = %if.end10.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end10.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

ov772x_video_probe.exit.thread179:                ; preds = %if.end10.i168
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i169 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i169, ptr noundef nonnull @.str.34, i32 noundef %48, i32 noundef %50) #11
  call fastcc void @ov772x_power_off(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midl.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midh.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pid.i) #8
  br label %error_gpio_put

sw.epilog.i:                                      ; preds = %sw.bb11.i, %if.end10.i168.sw.epilog.i_crit_edge
  %devname.0.i = phi ptr [ @.str.33, %sw.bb11.i ], [ @.str.32, %if.end10.i168.sw.epilog.i_crit_edge ]
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %53, i32 noundef 28, ptr noundef nonnull %midh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %sw.epilog.i.ov772x_video_probe.exit.thread_crit_edge, label %if.end16.i

sw.epilog.i.ov772x_video_probe.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_video_probe.exit.thread

if.end16.i:                                       ; preds = %sw.epilog.i
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %55, i32 noundef 29, ptr noundef nonnull %midl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end16.i.ov772x_video_probe.exit.thread_crit_edge, label %ov772x_video_probe.exit

if.end16.i.ov772x_video_probe.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_video_probe.exit.thread

ov772x_video_probe.exit.thread:                   ; preds = %if.end16.i.ov772x_video_probe.exit.thread_crit_edge, %sw.epilog.i.ov772x_video_probe.exit.thread_crit_edge, %if.end5.i.ov772x_video_probe.exit.thread_crit_edge, %if.end.i167.ov772x_video_probe.exit.thread_crit_edge, %if.end73.ov772x_video_probe.exit.thread_crit_edge
  %retval.0.i171.ph = phi i32 [ %call18.i, %if.end16.i.ov772x_video_probe.exit.thread_crit_edge ], [ %call13.i, %sw.epilog.i.ov772x_video_probe.exit.thread_crit_edge ], [ %call7.i, %if.end5.i.ov772x_video_probe.exit.thread_crit_edge ], [ %call2.i, %if.end.i167.ov772x_video_probe.exit.thread_crit_edge ], [ %call1.i165, %if.end73.ov772x_video_probe.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midl.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midh.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pid.i) #8
  br label %error_gpio_put

ov772x_video_probe.exit:                          ; preds = %if.end16.i
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %56 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid.i, align 4
  %58 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ver.i, align 4
  %60 = ptrtoint ptr %midh.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %midh.i, align 4
  %62 = ptrtoint ptr %midl.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %midl.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25.i, ptr noundef nonnull @.str.37, ptr noundef nonnull %devname.0.i, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63) #11
  %call26.i = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #8
  call fastcc void @ov772x_power_off(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midl.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midh.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp = icmp slt i32 %call26.i, 0
  br i1 %cmp, label %ov772x_video_probe.exit.error_gpio_put_crit_edge, label %if.end76

ov772x_video_probe.exit.error_gpio_put_crit_edge: ; preds = %ov772x_video_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_gpio_put

if.end76:                                         ; preds = %ov772x_video_probe.exit
  %pad = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 17
  %flags77 = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 17, i32 4
  %64 = ptrtoint ptr %flags77 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %flags77, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %65 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 131073, ptr %function, align 4
  %call82 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end76.error_gpio_put_crit_edge, label %if.end85

if.end76.error_gpio_put_crit_edge:                ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_gpio_put

if.end85:                                         ; preds = %if.end76
  %cfmt = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 7
  %66 = ptrtoint ptr %cfmt to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ov772x_cfmts, ptr %cfmt, align 4
  %win = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 8
  %67 = ptrtoint ptr %win to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ov772x_win_sizes, ptr %win, align 4
  %fps = getelementptr inbounds %struct.ov772x_priv, ptr %call.i, i32 0, i32 13
  %68 = ptrtoint ptr %fps to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 15, ptr %fps, align 4
  %call87 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end85.cleanup_crit_edge, label %if.end85.error_gpio_put_crit_edge

if.end85.error_gpio_put_crit_edge:                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_gpio_put

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_gpio_put:                                   ; preds = %if.end85.error_gpio_put_crit_edge, %if.end76.error_gpio_put_crit_edge, %ov772x_video_probe.exit.error_gpio_put_crit_edge, %ov772x_video_probe.exit.thread, %ov772x_video_probe.exit.thread179
  %ret.0 = phi i32 [ %call26.i, %ov772x_video_probe.exit.error_gpio_put_crit_edge ], [ %call82, %if.end76.error_gpio_put_crit_edge ], [ %retval.0.i171.ph, %ov772x_video_probe.exit.thread ], [ -19, %ov772x_video_probe.exit.thread179 ], [ %call87, %if.end85.error_gpio_put_crit_edge ]
  %69 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pwdn_gpio, align 4
  %tobool94.not = icmp eq ptr %70, null
  br i1 %tobool94.not, label %error_gpio_put.error_clk_put_crit_edge, label %if.then95

error_gpio_put.error_clk_put_crit_edge:           ; preds = %error_gpio_put
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_clk_put

if.then95:                                        ; preds = %error_gpio_put
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_put(ptr noundef nonnull %70) #8
  br label %error_clk_put

error_clk_put:                                    ; preds = %if.then95, %error_gpio_put.error_clk_put_crit_edge, %ov772x_parse_dt.exit, %ov772x_parse_dt.exit.thread, %do.end65
  %ret.1 = phi i32 [ %27, %do.end65 ], [ %call6.i, %ov772x_parse_dt.exit ], [ %ret.0, %if.then95 ], [ %ret.0, %error_gpio_put.error_clk_put_crit_edge ], [ -22, %ov772x_parse_dt.exit.thread ]
  %71 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clk, align 4
  call void @clk_put(ptr noundef %72) #8
  br label %error_ctrl_free

error_ctrl_free:                                  ; preds = %error_clk_put, %do.end53
  %ret.2 = phi i32 [ %23, %do.end53 ], [ %ret.1, %error_clk_put ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  br label %error_mutex_destroy

error_mutex_destroy:                              ; preds = %error_ctrl_free, %if.end18.error_mutex_destroy_crit_edge
  %ret.3 = phi i32 [ %ret.2, %error_ctrl_free ], [ %19, %if.end18.error_mutex_destroy_crit_edge ]
  call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %error_mutex_destroy, %if.end85.cleanup_crit_edge, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %do.end14 ], [ %ret.3, %error_mutex_destroy ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sccb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !122
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 1, ptr %size, align 1
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %3)
  %cmp = icmp ugt i64 %3, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %conv = trunc i64 %3 to i32
  %call3 = call i32 @regmap_read(ptr noundef %5, i32 noundef %conv, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %conv8 = zext i32 %7 to i64
  %val9 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %8 = ptrtoint ptr %val9 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %conv8, ptr %val9, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %1)
  %cmp = icmp ugt i64 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %3)
  %cmp2 = icmp ugt i64 %3, 255
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %conv = trunc i64 %1 to i32
  %conv5 = trunc i64 %3 to i32
  %call6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %conv, i32 noundef %conv5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %power_count = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 15
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.then11_crit_edge

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = tail call fastcc i32 @ov772x_power_on(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %if.then2.if.end72_crit_edge

if.then2.if.end72_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.else:                                          ; preds = %if.then
  %clk.i = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %pwdn_gpio.i = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwdn_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.if.then11_crit_edge, label %if.then.i

if.else.if.then11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #8
  br label %if.then11

if.end9:                                          ; preds = %if.then2
  %cfmt = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 7
  %6 = ptrtoint ptr %cfmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfmt, align 4
  %win = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 8
  %8 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %win, align 4
  %call6 = tail call fastcc i32 @ov772x_set_params(ptr noundef %sd, ptr noundef %7, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool10.not = icmp eq i32 %call6, 0
  br i1 %tobool10.not, label %if.end9.if.then11_crit_edge, label %if.end9.if.end72_crit_edge

if.end9.if.end72_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.then.i, %if.else.if.then11_crit_edge, %entry.if.then11_crit_edge
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %10 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_count, align 4
  %add = add i32 %11, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp15 = icmp slt i32 %add, 0
  br i1 %cmp15, label %do.end, label %if.then11.if.end33_crit_edge, !prof !123

if.then11.if.end33_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 947, i32 noundef 9, ptr noundef nonnull @.str.21) #8
  %12 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %power_count, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.then11.if.end33_crit_edge
  %13 = phi i32 [ %.pr, %do.end ], [ %add, %if.then11.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp42 = icmp sgt i32 %13, 1
  br i1 %cmp42, label %do.end58, label %if.end33.if.end72_crit_edge, !prof !123

if.end33.if.end72_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

do.end58:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 948, i32 noundef 9, ptr noundef nonnull @.str.22) #8
  br label %if.end72

if.end72:                                         ; preds = %do.end58, %if.end33.if.end72_crit_edge, %if.end9.if.end72_crit_edge, %if.then2.if.end72_crit_edge
  %ret.092 = phi i32 [ 0, %if.end33.if.end72_crit_edge ], [ 0, %do.end58 ], [ %call6, %if.end9.if.end72_crit_edge ], [ %call3, %if.then2.if.end72_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.092
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov772x_power_on(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %clk = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %3) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %pwdn_gpio = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwdn_gpio, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call10 = tail call ptr @gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef 3) #8
  %rstb_gpio = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 6
  %6 = ptrtoint ptr %rstb_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %rstb_gpio, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24) #11
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  %9 = ptrtoint ptr %rstb_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rstb_gpio, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %tobool20.not = icmp eq ptr %call10, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %call10, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #8
  %12 = ptrtoint ptr %rstb_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rstb_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #8
  %14 = ptrtoint ptr %rstb_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rstb_gpio, align 4
  tail call void @gpiod_put(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge, %do.end, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end ], [ 0, %if.then21 ], [ 0, %if.end18.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov772x_set_params(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %cfmt, ptr nocapture noundef readonly %win) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 18, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ov772x_reset.exit_crit_edge, label %if.end.i

entry.ov772x_reset.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #8
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 9, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %ov772x_reset.exit

ov772x_reset.exit:                                ; preds = %if.end.i, %entry.ov772x_reset.exit_crit_edge
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %info.i = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %ov772x_reset.exit.if.end_crit_edge, label %if.end.i257

ov772x_reset.exit.if.end_crit_edge:               ; preds = %ov772x_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i257:                                      ; preds = %ov772x_reset.exit
  %edgectrl.i = getelementptr inbounds %struct.ov772x_camera_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %edgectrl.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %edgectrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool3.not.i = icmp sgt i8 %9, -1
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i257
  %call.i.i258 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 172, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i258)
  %cmp.i259 = icmp slt i32 %call.i.i258, 0
  br i1 %cmp.i259, label %if.then4.i.cleanup178_crit_edge, label %if.end7.i

if.then4.i.cleanup178_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup178

if.end7.i:                                        ; preds = %if.then4.i
  %10 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info.i, align 4
  %threshold.i = getelementptr inbounds %struct.ov772x_camera_info, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %threshold.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %threshold.i, align 1
  %conv10.i = zext i8 %13 to i32
  %call.i76.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 144, i32 noundef 15, i32 noundef %conv10.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %cmp12.i = icmp slt i32 %call.i76.i, 0
  br i1 %cmp12.i, label %if.end7.i.cleanup178_crit_edge, label %if.end15.i

if.end7.i.cleanup178_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup178

if.end15.i:                                       ; preds = %if.end7.i
  %14 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info.i, align 4
  %edgectrl17.i = getelementptr inbounds %struct.ov772x_camera_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %edgectrl17.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %edgectrl17.i, align 4
  %conv19.i = zext i8 %17 to i32
  %call.i77.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 143, i32 noundef 31, i32 noundef %conv19.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %cmp21.i = icmp slt i32 %call.i77.i, 0
  br i1 %cmp21.i, label %if.end15.i.cleanup178_crit_edge, label %if.end15.i.if.end_crit_edge

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end15.i.cleanup178_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup178

if.else.i:                                        ; preds = %if.end.i257
  %upper.i = getelementptr inbounds %struct.ov772x_camera_info, ptr %7, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %upper.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %upper.i, align 2
  %lower.i = getelementptr inbounds %struct.ov772x_camera_info, ptr %7, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %lower.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lower.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp31.i = icmp ugt i8 %19, %21
  br i1 %cmp31.i, label %if.then33.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then33.i:                                      ; preds = %if.else.i
  %conv27.i = zext i8 %19 to i32
  %call.i78.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 146, i32 noundef 255, i32 noundef %conv27.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %cmp39.i = icmp slt i32 %call.i78.i, 0
  br i1 %cmp39.i, label %if.then33.i.cleanup178_crit_edge, label %if.end42.i

if.then33.i.cleanup178_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup178

if.end42.i:                                       ; preds = %if.then33.i
  %22 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info.i, align 4
  %lower45.i = getelementptr inbounds %struct.ov772x_camera_info, ptr %23, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %lower45.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lower45.i, align 1
  %conv46.i = zext i8 %25 to i32
  %call.i79.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 147, i32 noundef 255, i32 noundef %conv46.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %cmp48.i = icmp slt i32 %call.i79.i, 0
  br i1 %cmp48.i, label %if.end42.i.cleanup178_crit_edge, label %if.end42.i.if.end_crit_edge

if.end42.i.if.end_crit_edge:                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end42.i.cleanup178_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup178

if.end:                                           ; preds = %if.end42.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.end15.i.if.end_crit_edge, %ov772x_reset.exit.if.end_crit_edge
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %rect = getelementptr inbounds %struct.ov772x_win_size, ptr %win, i32 0, i32 3
  %28 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rect, align 4
  %shr = ashr i32 %29, 2
  %call2 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 23, i32 noundef %shr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.ov772x_set_fmt_error_crit_edge, label %if.end5

if.end.ov772x_set_fmt_error_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end5:                                          ; preds = %if.end
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %width = getelementptr inbounds %struct.ov772x_win_size, ptr %win, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width, align 4
  %shr8 = lshr i32 %33, 2
  %call9 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 24, i32 noundef %shr8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end5.ov772x_set_fmt_error_crit_edge, label %if.end12

if.end5.ov772x_set_fmt_error_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end12:                                         ; preds = %if.end5
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %top = getelementptr inbounds %struct.ov772x_win_size, ptr %win, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %top, align 4
  %shr15 = ashr i32 %37, 1
  %call16 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 25, i32 noundef %shr15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end12.ov772x_set_fmt_error_crit_edge, label %if.end19

if.end12.ov772x_set_fmt_error_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end19:                                         ; preds = %if.end12
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %height = getelementptr inbounds %struct.ov772x_win_size, ptr %win, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %shr22 = lshr i32 %41, 1
  %call23 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 26, i32 noundef %shr22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end19.ov772x_set_fmt_error_crit_edge, label %if.end26

if.end19.ov772x_set_fmt_error_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end26:                                         ; preds = %if.end19
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %44 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width, align 4
  %shr30 = lshr i32 %45, 2
  %call31 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 41, i32 noundef %shr30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end26.ov772x_set_fmt_error_crit_edge, label %if.end34

if.end26.ov772x_set_fmt_error_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end34:                                         ; preds = %if.end26
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  %shr38 = lshr i32 %49, 1
  %call39 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 44, i32 noundef %shr38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end34.ov772x_set_fmt_error_crit_edge, label %if.end42

if.end34.ov772x_set_fmt_error_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end42:                                         ; preds = %if.end34
  %50 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i, align 4
  %52 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %top, align 4
  %and = shl i32 %53, 6
  %shl = and i32 %and, 64
  %54 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rect, align 4
  %and48 = shl i32 %55, 4
  %shl49 = and i32 %and48, 48
  %or = or i32 %shl49, %shl
  %56 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height, align 4
  %and52 = shl i32 %57, 2
  %shl53 = and i32 %and52, 4
  %or54 = or i32 %or, %shl53
  %58 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %width, align 4
  %and57 = and i32 %59, 3
  %or59 = or i32 %or54, %and57
  %call60 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 50, i32 noundef %or59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end42.ov772x_set_fmt_error_crit_edge, label %if.end63

if.end42.ov772x_set_fmt_error_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end63:                                         ; preds = %if.end42
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i, align 4
  %62 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %height, align 4
  %and67 = shl i32 %63, 2
  %shl68 = and i32 %and67, 4
  %64 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %width, align 4
  %and71 = and i32 %65, 3
  %or73 = or i32 %shl68, %and71
  %call74 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 42, i32 noundef %or73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end63.ov772x_set_fmt_error_crit_edge, label %if.end77

if.end63.ov772x_set_fmt_error_crit_edge:          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end77:                                         ; preds = %if.end63
  %dsp3 = getelementptr inbounds %struct.ov772x_color_format, ptr %cfmt, i32 0, i32 2
  %66 = ptrtoint ptr %dsp3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dsp3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not = icmp eq i8 %67, 0
  br i1 %tobool.not, label %if.end77.if.end85_crit_edge, label %if.then78

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then78:                                        ; preds = %if.end77
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %conv = zext i8 %67 to i32
  %call.i260 = tail call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 102, i32 noundef 128, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %cmp81 = icmp slt i32 %call.i260, 0
  br i1 %cmp81, label %if.then78.ov772x_set_fmt_error_crit_edge, label %if.then78.if.end85_crit_edge

if.then78.if.end85_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then78.ov772x_set_fmt_error_crit_edge:         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end85:                                         ; preds = %if.then78.if.end85_crit_edge, %if.end77.if.end85_crit_edge
  %dsp4 = getelementptr inbounds %struct.ov772x_color_format, ptr %cfmt, i32 0, i32 3
  %70 = ptrtoint ptr %dsp4 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dsp4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool86.not = icmp eq i8 %71, 0
  br i1 %tobool86.not, label %if.end85.if.end96_crit_edge, label %if.then87

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then87:                                        ; preds = %if.end85
  %72 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i, align 4
  %conv90 = zext i8 %71 to i32
  %call91 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 103, i32 noundef %conv90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then87.ov772x_set_fmt_error_crit_edge, label %if.then87.if.end96_crit_edge

if.then87.if.end96_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then87.ov772x_set_fmt_error_crit_edge:         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end96:                                         ; preds = %if.then87.if.end96_crit_edge, %if.end85.if.end96_crit_edge
  %com3 = getelementptr inbounds %struct.ov772x_color_format, ptr %cfmt, i32 0, i32 4
  %74 = ptrtoint ptr %com3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %com3, align 2
  %76 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %info.i, align 4
  %tobool97.not = icmp eq ptr %77, null
  br i1 %tobool97.not, label %if.end96.if.end117_crit_edge, label %land.lhs.true108

if.end96.if.end117_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

land.lhs.true108:                                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %80 = trunc i32 %79 to i8
  %81 = shl i8 %80, 7
  %82 = or i8 %81, %75
  %83 = shl i8 %80, 5
  %84 = and i8 %83, 64
  %85 = or i8 %82, %84
  br label %if.end117

if.end117:                                        ; preds = %land.lhs.true108, %if.end96.if.end117_crit_edge
  %val.1 = phi i8 [ %85, %land.lhs.true108 ], [ %75, %if.end96.if.end117_crit_edge ]
  %vflip_ctrl = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 9
  %86 = ptrtoint ptr %vflip_ctrl to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vflip_ctrl, align 4
  %val118 = getelementptr inbounds %struct.v4l2_ctrl, ptr %87, i32 0, i32 22
  %88 = ptrtoint ptr %val118 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool119.not = icmp eq i32 %89, 0
  %90 = xor i8 %val.1, -128
  %spec.select256 = select i1 %tobool119.not, i8 %val.1, i8 %90
  %hflip_ctrl = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 10
  %91 = ptrtoint ptr %hflip_ctrl to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hflip_ctrl, align 4
  %val124 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 22
  %93 = ptrtoint ptr %val124 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool125.not = icmp eq i32 %94, 0
  %95 = xor i8 %spec.select256, 64
  %val.3 = select i1 %tobool125.not, i8 %spec.select256, i8 %95
  %test_pattern = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 11
  %96 = ptrtoint ptr %test_pattern to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %test_pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool131.not = icmp ne i32 %97, 0
  %98 = zext i1 %tobool131.not to i8
  %val.4 = or i8 %val.3, %98
  %99 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i, align 4
  %conv138 = zext i8 %val.4 to i32
  %call.i261 = tail call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 12, i32 noundef 249, i32 noundef %conv138, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %cmp140 = icmp slt i32 %call.i261, 0
  br i1 %cmp140, label %if.end117.ov772x_set_fmt_error_crit_edge, label %if.end143

if.end117.ov772x_set_fmt_error_crit_edge:         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end143:                                        ; preds = %if.end117
  %101 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap.i, align 4
  %com7_bit = getelementptr inbounds %struct.ov772x_win_size, ptr %win, i32 0, i32 1
  %103 = ptrtoint ptr %com7_bit to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %com7_bit, align 4
  %com7 = getelementptr inbounds %struct.ov772x_color_format, ptr %cfmt, i32 0, i32 5
  %105 = ptrtoint ptr %com7 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %com7, align 1
  %or147254 = or i8 %106, %104
  %or147 = zext i8 %or147254 to i32
  %call148 = tail call i32 @regmap_write(ptr noundef %102, i32 noundef 18, i32 noundef %or147) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %if.end143.ov772x_set_fmt_error_crit_edge, label %if.end152

if.end143.ov772x_set_fmt_error_crit_edge:         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end152:                                        ; preds = %if.end143
  %fps = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 13
  %107 = ptrtoint ptr %fps to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fps, align 4
  %call153 = tail call fastcc i32 @ov772x_set_frame_rate(ptr noundef %priv, i32 noundef %108, ptr noundef %cfmt, ptr noundef %win)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %if.end152.ov772x_set_fmt_error_crit_edge, label %if.end157

if.end152.ov772x_set_fmt_error_crit_edge:         ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

if.end157:                                        ; preds = %if.end152
  %band_filter_ctrl = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 12
  %109 = ptrtoint ptr %band_filter_ctrl to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %band_filter_ctrl, align 4
  %val158 = getelementptr inbounds %struct.v4l2_ctrl, ptr %110, i32 0, i32 22
  %111 = ptrtoint ptr %val158 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool159.not = icmp eq i32 %112, 0
  br i1 %tobool159.not, label %if.end157.cleanup178_crit_edge, label %if.then160

if.end157.cleanup178_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup178

if.then160:                                       ; preds = %if.end157
  %113 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap.i, align 4
  %call.i262 = tail call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 19, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool166.not = icmp eq i32 %call.i262, 0
  br i1 %tobool166.not, label %if.then167, label %if.then160.if.end171_crit_edge

if.then160.if.end171_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then167:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap.i, align 4
  %conv169 = and i32 %112, 65535
  %sub = sub nsw i32 256, %conv169
  %call.i263 = tail call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 34, i32 noundef 255, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end171

if.end171:                                        ; preds = %if.then167, %if.then160.if.end171_crit_edge
  %ret.0 = phi i32 [ %call.i262, %if.then160.if.end171_crit_edge ], [ %call.i263, %if.then167 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp172 = icmp slt i32 %ret.0, 0
  br i1 %cmp172, label %if.end171.ov772x_set_fmt_error_crit_edge, label %if.end171.cleanup178_crit_edge

if.end171.cleanup178_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup178

if.end171.ov772x_set_fmt_error_crit_edge:         ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_set_fmt_error

ov772x_set_fmt_error:                             ; preds = %if.end171.ov772x_set_fmt_error_crit_edge, %if.end152.ov772x_set_fmt_error_crit_edge, %if.end143.ov772x_set_fmt_error_crit_edge, %if.end117.ov772x_set_fmt_error_crit_edge, %if.then87.ov772x_set_fmt_error_crit_edge, %if.then78.ov772x_set_fmt_error_crit_edge, %if.end63.ov772x_set_fmt_error_crit_edge, %if.end42.ov772x_set_fmt_error_crit_edge, %if.end34.ov772x_set_fmt_error_crit_edge, %if.end26.ov772x_set_fmt_error_crit_edge, %if.end19.ov772x_set_fmt_error_crit_edge, %if.end12.ov772x_set_fmt_error_crit_edge, %if.end5.ov772x_set_fmt_error_crit_edge, %if.end.ov772x_set_fmt_error_crit_edge
  %ret.2 = phi i32 [ %call2, %if.end.ov772x_set_fmt_error_crit_edge ], [ %call9, %if.end5.ov772x_set_fmt_error_crit_edge ], [ %call16, %if.end12.ov772x_set_fmt_error_crit_edge ], [ %call23, %if.end19.ov772x_set_fmt_error_crit_edge ], [ %call31, %if.end26.ov772x_set_fmt_error_crit_edge ], [ %call39, %if.end34.ov772x_set_fmt_error_crit_edge ], [ %call60, %if.end42.ov772x_set_fmt_error_crit_edge ], [ %call74, %if.end63.ov772x_set_fmt_error_crit_edge ], [ %call.i260, %if.then78.ov772x_set_fmt_error_crit_edge ], [ %call91, %if.then87.ov772x_set_fmt_error_crit_edge ], [ %call.i261, %if.end117.ov772x_set_fmt_error_crit_edge ], [ %call148, %if.end143.ov772x_set_fmt_error_crit_edge ], [ %call153, %if.end152.ov772x_set_fmt_error_crit_edge ], [ %ret.0, %if.end171.ov772x_set_fmt_error_crit_edge ]
  %117 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap.i, align 4
  %call.i265 = tail call i32 @regmap_write(ptr noundef %118, i32 noundef 18, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %cmp.i266 = icmp slt i32 %call.i265, 0
  br i1 %cmp.i266, label %ov772x_set_fmt_error.cleanup178_crit_edge, label %if.end.i268

ov772x_set_fmt_error.cleanup178_crit_edge:        ; preds = %ov772x_set_fmt_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup178

if.end.i268:                                      ; preds = %ov772x_set_fmt_error
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #8
  %119 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap.i, align 4
  %call.i.i267 = tail call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef 9, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup178

cleanup178:                                       ; preds = %if.end.i268, %ov772x_set_fmt_error.cleanup178_crit_edge, %if.end171.cleanup178_crit_edge, %if.end157.cleanup178_crit_edge, %if.end42.i.cleanup178_crit_edge, %if.then33.i.cleanup178_crit_edge, %if.end15.i.cleanup178_crit_edge, %if.end7.i.cleanup178_crit_edge, %if.then4.i.cleanup178_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end171.cleanup178_crit_edge ], [ %call153, %if.end157.cleanup178_crit_edge ], [ %ret.2, %ov772x_set_fmt_error.cleanup178_crit_edge ], [ %ret.2, %if.end.i268 ], [ %call.i79.i, %if.end42.i.cleanup178_crit_edge ], [ %call.i78.i, %if.then33.i.cleanup178_crit_edge ], [ %call.i77.i, %if.end15.i.cleanup178_crit_edge ], [ %call.i76.i, %if.end7.i.cleanup178_crit_edge ], [ %call.i.i258, %if.then4.i.cleanup178_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov772x_power_off(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  %pwdn_gpio = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwdn_gpio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

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
define internal fastcc i32 @ov772x_set_frame_rate(ptr nocapture noundef readonly %priv, i32 noundef %fps, ptr nocapture noundef readonly %cfmt, ptr nocapture noundef readonly %win) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %com7 = getelementptr inbounds %struct.ov772x_color_format, ptr %cfmt, i32 0, i32 5
  %2 = ptrtoint ptr %com7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %com7, align 1
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cond56 = icmp ne i8 %4, 3
  %sizeimage = getelementptr inbounds %struct.ov772x_win_size, ptr %win, i32 0, i32 2
  %5 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sizeimage, align 4
  %mul = zext i1 %cond56 to i32
  %fsize.0 = shl i32 %6, %mul
  %mul3 = mul i32 %fsize.0, %fps
  %div877 = lshr i32 %mul3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %mul3)
  %cmp6 = icmp ult i32 %call, %mul3
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.then24

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %call, %div877
  %div9 = udiv i32 %add, %mul3
  %div1478 = lshr i32 %div9, 1
  %add15 = add i32 %div1478, %call
  %div16 = udiv i32 %add15, %div9
  %sub = sub i32 %mul3, %div16
  %7 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %8 = trunc i32 %div9 to i8
  %conv26 = add i8 %8, -1
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %entry.cleanup_crit_edge
  %clkrc.2 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ %conv26, %if.then24 ]
  %best_diff.2 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %7, %if.then24 ]
  %mul5.1 = shl i32 %call, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5.1, i32 %mul3)
  %cmp6.1 = icmp ult i32 %mul5.1, %mul3
  br i1 %cmp6.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %add.1 = add i32 %mul5.1, %div877
  %div9.1 = udiv i32 %add.1, %mul3
  %div1478.1 = lshr i32 %div9.1, 1
  %add15.1 = add i32 %div1478.1, %mul5.1
  %div16.1 = udiv i32 %add15.1, %div9.1
  %sub.1 = sub i32 %mul3, %div16.1
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %best_diff.2)
  %cmp22.1 = icmp ult i32 %9, %best_diff.2
  br i1 %cmp22.1, label %if.then24.1, label %if.end.1.cleanup.1_crit_edge

if.end.1.cleanup.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.then24.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %10 = trunc i32 %div9.1 to i8
  %conv26.1 = add i8 %10, -1
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then24.1, %if.end.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %clkrc.2.1 = phi i8 [ %clkrc.2, %cleanup.cleanup.1_crit_edge ], [ %conv26.1, %if.then24.1 ], [ %clkrc.2, %if.end.1.cleanup.1_crit_edge ]
  %com4.2.1 = phi i8 [ 0, %cleanup.cleanup.1_crit_edge ], [ 64, %if.then24.1 ], [ 0, %if.end.1.cleanup.1_crit_edge ]
  %best_diff.2.1 = phi i32 [ %best_diff.2, %cleanup.cleanup.1_crit_edge ], [ %9, %if.then24.1 ], [ %best_diff.2, %if.end.1.cleanup.1_crit_edge ]
  %mul5.2 = mul i32 %call, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5.2, i32 %mul3)
  %cmp6.2 = icmp ult i32 %mul5.2, %mul3
  br i1 %cmp6.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  %add.2 = add i32 %mul5.2, %div877
  %div9.2 = udiv i32 %add.2, %mul3
  %div1478.2 = lshr i32 %div9.2, 1
  %add15.2 = add i32 %div1478.2, %mul5.2
  %div16.2 = udiv i32 %add15.2, %div9.2
  %sub.2 = sub i32 %mul3, %div16.2
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %best_diff.2.1)
  %cmp22.2 = icmp ult i32 %11, %best_diff.2.1
  br i1 %cmp22.2, label %if.then24.2, label %if.end.2.cleanup.2_crit_edge

if.end.2.cleanup.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

if.then24.2:                                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %12 = trunc i32 %div9.2 to i8
  %conv26.2 = add i8 %12, -1
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then24.2, %if.end.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %clkrc.2.2 = phi i8 [ %clkrc.2.1, %cleanup.1.cleanup.2_crit_edge ], [ %conv26.2, %if.then24.2 ], [ %clkrc.2.1, %if.end.2.cleanup.2_crit_edge ]
  %com4.2.2 = phi i8 [ %com4.2.1, %cleanup.1.cleanup.2_crit_edge ], [ -128, %if.then24.2 ], [ %com4.2.1, %if.end.2.cleanup.2_crit_edge ]
  %best_diff.2.2 = phi i32 [ %best_diff.2.1, %cleanup.1.cleanup.2_crit_edge ], [ %11, %if.then24.2 ], [ %best_diff.2.1, %if.end.2.cleanup.2_crit_edge ]
  %mul5.3 = shl i32 %call, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5.3, i32 %mul3)
  %cmp6.3 = icmp ult i32 %mul5.3, %mul3
  br i1 %cmp6.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  %add.3 = add i32 %mul5.3, %div877
  %div9.3 = udiv i32 %add.3, %mul3
  %div1478.3 = lshr i32 %div9.3, 1
  %add15.3 = add i32 %div1478.3, %mul5.3
  %div16.3 = udiv i32 %add15.3, %div9.3
  %sub.3 = sub i32 %mul3, %div16.3
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %best_diff.2.2)
  %cmp22.3 = icmp ult i32 %13, %best_diff.2.2
  br i1 %cmp22.3, label %if.then24.3, label %if.end.3.cleanup.3_crit_edge

if.end.3.cleanup.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3

if.then24.3:                                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  %14 = trunc i32 %div9.3 to i8
  %conv26.3 = add i8 %14, -1
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.then24.3, %if.end.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %clkrc.2.3 = phi i8 [ %clkrc.2.2, %cleanup.2.cleanup.3_crit_edge ], [ %conv26.3, %if.then24.3 ], [ %clkrc.2.2, %if.end.3.cleanup.3_crit_edge ]
  %com4.2.3 = phi i8 [ %com4.2.2, %cleanup.2.cleanup.3_crit_edge ], [ -64, %if.then24.3 ], [ %com4.2.2, %if.end.3.cleanup.3_crit_edge ]
  %regmap = getelementptr inbounds %struct.ov772x_priv, ptr %priv, i32 0, i32 3
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = or i8 %com4.2.3, 1
  %or = zext i8 %17 to i32
  %call34 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 13, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %cleanup.3.cleanup47_crit_edge, label %if.end38

cleanup.3.cleanup47_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup47

if.end38:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %20 = or i8 %clkrc.2.3, -128
  %or41 = zext i8 %20 to i32
  %call42 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 17, i32 noundef %or41) #8
  %21 = tail call i32 @llvm.smin.i32(i32 %call42, i32 0)
  br label %cleanup47

cleanup47:                                        ; preds = %if.end38, %cleanup.3.cleanup47_crit_edge
  %retval.0 = phi i32 [ %call34, %cleanup.3.cleanup47_crit_edge ], [ %21, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 16
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %enable)
  %cmp = icmp eq i32 %3, %enable
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %entry
  %bus_type = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 18
  %4 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2 = icmp eq i32 %5, 2
  br i1 %cmp2, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %regmap = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, i32 -33, i32 32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 18, i32 noundef 32, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.done_crit_edge

if.then3.done_crit_edge:                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %regmap9 = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 3
  %8 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool10.not = icmp eq i32 %enable, 0
  %cond11 = select i1 %tobool10.not, i32 16, i32 0
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9, i32 noundef 16, i32 noundef %cond11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool13.not = icmp eq i32 %call.i42, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.done_crit_edge

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end15:                                         ; preds = %if.end8
  br i1 %tobool10.not, label %if.end15.if.end24_crit_edge, label %do.body

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.body:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov772x_s_stream.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov772x_s_stream, %if.then22)) #8
          to label %if.end24 [label %if.then22], !srcloc !124

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %cfmt = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 7
  %10 = ptrtoint ptr %cfmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfmt, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %win = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 8
  %14 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %win, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov772x_s_stream.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %13, ptr noundef %17) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.body, %if.end15.if.end24_crit_edge
  %18 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %enable, ptr %streaming, align 4
  br label %done

done:                                             ; preds = %if.end24, %if.end8.done_crit_edge, %if.then3.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ 0, %entry.done_crit_edge ], [ %call.i, %if.then3.done_crit_edge ], [ %call.i42, %if.end8.done_crit_edge ], [ 0, %if.end24 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov772x_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %ival) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %interval, align 4
  %fps = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 13
  %1 = ptrtoint ptr %fps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fps, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %denominator, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_s_frame_interval(ptr noundef %sd, ptr nocapture noundef %ival) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %lock = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 16
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %denominator2.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %denominator2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %denominator2.i, align 4
  br i1 %tobool.not.i, label %if.end.ov772x_select_fps.exit_crit_edge, label %cond.true.i

if.end.ov772x_select_fps.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_select_fps.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 %5, %3
  br label %ov772x_select_fps.exit

ov772x_select_fps.exit:                           ; preds = %cond.true.i, %if.end.ov772x_select_fps.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ %5, %if.end.ov772x_select_fps.exit_crit_edge ]
  %sub.i = add i32 %cond.i, -5
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  %sub.1.i = add i32 %cond.i, -10
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %6)
  %cmp9.1.i = icmp ult i32 %7, %6
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %6) #8
  %idx.1.1.i = zext i1 %cmp9.1.i to i32
  %sub.2.i = add i32 %cond.i, -15
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp9.2.i = icmp ult i32 %9, %8
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %8) #8
  %idx.1.2.i = select i1 %cmp9.2.i, i32 2, i32 %idx.1.1.i
  %sub.3.i = add i32 %cond.i, -20
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp9.3.i = icmp ult i32 %11, %10
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %10) #8
  %idx.1.3.i = select i1 %cmp9.3.i, i32 3, i32 %idx.1.2.i
  %sub.4.i = add i32 %cond.i, -30
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.4.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp9.4.i = icmp ult i32 %13, %12
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %12) #8
  %idx.1.4.i = select i1 %cmp9.4.i, i32 4, i32 %idx.1.3.i
  %sub.5.i = add i32 %cond.i, -60
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.5.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %14)
  %cmp9.5.i = icmp ult i32 %15, %14
  %idx.1.5.i = select i1 %cmp9.5.i, i32 5, i32 %idx.1.4.i
  %arrayidx10.i = getelementptr [6 x i32], ptr @ov772x_frame_intervals, i32 0, i32 %idx.1.5.i
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10.i, align 4
  %power_count = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 15
  %18 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp sgt i32 %19, 0
  br i1 %cmp, label %if.then2, label %ov772x_select_fps.exit.if.end7_crit_edge

ov772x_select_fps.exit.if.end7_crit_edge:         ; preds = %ov772x_select_fps.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %ov772x_select_fps.exit
  %cfmt = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 7
  %20 = ptrtoint ptr %cfmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfmt, align 4
  %win = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 8
  %22 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %win, align 4
  %call3 = tail call fastcc i32 @ov772x_set_frame_rate(ptr noundef %sd, i32 noundef %17, ptr noundef %21, ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.error_crit_edge

if.then2.error_crit_edge:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %ov772x_select_fps.exit.if.end7_crit_edge
  %24 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %interval, align 4
  %25 = ptrtoint ptr %denominator2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %17, ptr %denominator2.i, align 4
  %fps8 = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 13
  %26 = ptrtoint ptr %fps8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %17, ptr %fps8, align 4
  br label %error

error:                                            ; preds = %if.end7, %if.then2.error_crit_edge, %entry.error_crit_edge
  %ret.1 = phi i32 [ %call3, %if.then2.error_crit_edge ], [ 0, %if.end7 ], [ -16, %entry.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov772x_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp ugt i32 %3, 7
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [8 x %struct.ov772x_color_format], ptr @ov772x_cfmts, i32 0, i32 %3
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
define internal i32 @ov772x_enum_frame_interval(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ugt i32 %3, 5
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %5, label %if.end.return_crit_edge [
    i32 640, label %if.end.if.end5_crit_edge
    i32 320, label %if.end.if.end5_crit_edge23
  ]

if.end.if.end5_crit_edge23:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.if.end5_crit_edge23
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %8, label %if.end5.return_crit_edge [
    i32 480, label %if.end5.if.end11_crit_edge
    i32 240, label %if.end5.if.end11_crit_edge24
  ]

if.end5.if.end11_crit_edge24:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11:                                         ; preds = %if.end5.if.end11_crit_edge, %if.end5.if.end11_crit_edge24
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %interval, align 4
  %arrayidx = getelementptr [6 x i32], ptr @ov772x_frame_intervals, i32 0, i32 %3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %denominator, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.end5.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov772x_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %win = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 8
  %2 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %win, align 4
  %width = getelementptr inbounds %struct.ov772x_win_size, ptr %3, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %format1, align 4
  %7 = load ptr, ptr %win, align 4
  %height = getelementptr inbounds %struct.ov772x_win_size, ptr %7, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height5, align 4
  %cfmt = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 7
  %11 = ptrtoint ptr %cfmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfmt, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %code6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %code6, align 4
  %16 = load ptr, ptr %cfmt, align 4
  %colorspace = getelementptr inbounds %struct.ov772x_color_format, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %colorspace, align 4
  %colorspace8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %colorspace8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %colorspace8, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %3, label %if.end.ov772x_select_params.exit_crit_edge [
    i32 12295, label %if.then.fold.split17.i
    i32 8201, label %if.then.fold.split.i
    i32 8198, label %if.then.fold.split12.i
    i32 4100, label %if.then.fold.split13.i
    i32 4099, label %if.then.fold.split14.i
    i32 4104, label %if.then.fold.split15.i
    i32 4103, label %if.then.fold.split16.i
  ]

if.end.ov772x_select_params.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_select_params.exit

if.then.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_select_params.exit

if.then.fold.split12.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_select_params.exit

if.then.fold.split13.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_select_params.exit

if.then.fold.split14.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_select_params.exit

if.then.fold.split15.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_select_params.exit

if.then.fold.split16.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_select_params.exit

if.then.fold.split17.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov772x_select_params.exit

ov772x_select_params.exit:                        ; preds = %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split.i, %if.end.ov772x_select_params.exit_crit_edge
  %cfmt.0 = phi ptr [ @ov772x_cfmts, %if.end.ov772x_select_params.exit_crit_edge ], [ getelementptr inbounds ([8 x %struct.ov772x_color_format], ptr @ov772x_cfmts, i32 0, i32 1), %if.then.fold.split.i ], [ getelementptr inbounds ([8 x %struct.ov772x_color_format], ptr @ov772x_cfmts, i32 0, i32 2), %if.then.fold.split12.i ], [ getelementptr inbounds ([8 x %struct.ov772x_color_format], ptr @ov772x_cfmts, i32 0, i32 3), %if.then.fold.split13.i ], [ getelementptr inbounds ([8 x %struct.ov772x_color_format], ptr @ov772x_cfmts, i32 0, i32 4), %if.then.fold.split14.i ], [ getelementptr inbounds ([8 x %struct.ov772x_color_format], ptr @ov772x_cfmts, i32 0, i32 5), %if.then.fold.split15.i ], [ getelementptr inbounds ([8 x %struct.ov772x_color_format], ptr @ov772x_cfmts, i32 0, i32 6), %if.then.fold.split16.i ], [ getelementptr inbounds ([8 x %struct.ov772x_color_format], ptr @ov772x_cfmts, i32 0, i32 7), %if.then.fold.split17.i ]
  %5 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format1, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height.i, align 4
  %sub.i.i = add i32 %6, -640
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #8
  %sub8.i.i = add i32 %8, -480
  %10 = tail call i32 @llvm.abs.i32(i32 %sub8.i.i, i1 false) #8
  %add.i.i = add i32 %10, %9
  %sub.1.i.i = add i32 %6, -320
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.1.i.i, i1 false) #8
  %sub8.1.i.i = add i32 %8, -240
  %12 = tail call i32 @llvm.abs.i32(i32 %sub8.1.i.i, i1 false) #8
  %add.1.i.i = add i32 %12, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i.i, i32 %add.i.i)
  %cmp16.1.i.i = icmp ult i32 %add.1.i.i, %add.i.i
  %win.1.1.i.i = select i1 %cmp16.1.i.i, ptr getelementptr inbounds ([2 x %struct.ov772x_win_size], ptr @ov772x_win_sizes, i32 0, i32 1), ptr @ov772x_win_sizes
  %13 = ptrtoint ptr %cfmt.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfmt.0, align 4
  %15 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %code.i, align 4
  %16 = select i1 %cmp16.1.i.i, i32 320, i32 640
  %17 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format1, align 4
  %18 = select i1 %cmp16.1.i.i, i32 240, i32 480
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height.i, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.ov772x_color_format, ptr %cfmt.0, i32 0, i32 1
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %colorspace, align 4
  %colorspace6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %colorspace6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %colorspace6, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %24, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %27 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %xfer_func, align 4
  %28 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %ov772x_select_params.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  %32 = call ptr @memcpy(ptr %31, ptr %format1, i32 48)
  br label %cleanup

if.end8:                                          ; preds = %ov772x_select_params.exit
  %lock = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 16
  %33 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool9.not = icmp eq i32 %34, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.error_crit_edge

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end11:                                         ; preds = %if.end8
  %power_count = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 15
  %35 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp12 = icmp sgt i32 %36, 0
  br i1 %cmp12, label %if.then13, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %call14 = tail call fastcc i32 @ov772x_set_params(ptr noundef %sd, ptr noundef %cfmt.0, ptr noundef %win.1.1.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then13.error_crit_edge, label %if.then13.if.end18_crit_edge

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13.error_crit_edge:                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then13.if.end18_crit_edge ], [ 0, %if.end11.if.end18_crit_edge ]
  %win19 = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 8
  %37 = ptrtoint ptr %win19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %win.1.1.i.i, ptr %win19, align 4
  %cfmt20 = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 7
  %38 = ptrtoint ptr %cfmt20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cfmt.0, ptr %cfmt20, align 4
  br label %error

error:                                            ; preds = %if.end18, %if.then13.error_crit_edge, %if.end8.error_crit_edge
  %ret.1 = phi i32 [ %call14, %if.then13.error_crit_edge ], [ %ret.0, %if.end18 ], [ -16, %if.end8.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %ret.1, %error ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov772x_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %top, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 0, label %if.end.sw.bb_crit_edge14
  ]

if.end.sw.bb_crit_edge14:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge14
  %win = getelementptr inbounds %struct.ov772x_priv, ptr %sd, i32 0, i32 8
  %7 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %win, align 4
  %width = getelementptr inbounds %struct.ov772x_win_size, ptr %8, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %width3 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width3, align 4
  %12 = load ptr, ptr %win, align 4
  %height = getelementptr inbounds %struct.ov772x_win_size, ptr %12, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height7, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov772x_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %regmap1 = getelementptr i8, ptr %1, i32 188
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %power_count = getelementptr i8, ptr %1, i32 324
  %4 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 9963797, label %sw.bb
    i32 9963796, label %sw.bb11
    i32 9963809, label %sw.bb30
    i32 10422531, label %sw.bb48
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %conv = select i1 %tobool.not, i8 0, i8 -128
  %info = getelementptr i8, ptr %1, i32 192
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %sw.bb.if.end9_crit_edge, label %land.lhs.true

sw.bb.if.end9_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %15 = xor i8 %conv, -128
  %spec.select = select i1 %tobool5.not, i8 %conv, i8 %15
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %sw.bb.if.end9_crit_edge
  %val.0 = phi i8 [ %conv, %sw.bb.if.end9_crit_edge ], [ %spec.select, %land.lhs.true ]
  %conv10 = zext i8 %val.0 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 128, i32 noundef %conv10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  %conv15 = select i1 %tobool13.not, i8 0, i8 64
  %info16 = getelementptr i8, ptr %1, i32 192
  %18 = ptrtoint ptr %info16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info16, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %sw.bb11.if.end27_crit_edge, label %land.lhs.true18

sw.bb11.if.end27_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true18:                                  ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and21 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %22 = xor i8 %conv15, 64
  %spec.select78 = select i1 %tobool22.not, i8 %conv15, i8 %22
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true18, %sw.bb11.if.end27_crit_edge
  %val.1 = phi i8 [ %conv15, %sw.bb11.if.end27_crit_edge ], [ %spec.select78, %land.lhs.true18 ]
  %conv28 = zext i8 %val.1 to i32
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 64, i32 noundef %conv28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  %val31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool32.not = icmp eq i32 %24, 0
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %sw.bb30
  %call.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 34, i32 noundef 255, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool35.not = icmp eq i32 %call.i80, 0
  br i1 %tobool35.not, label %if.then36, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %call.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 19, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.else:                                          ; preds = %sw.bb30
  %call.i82 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 19, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool42.not = icmp eq i32 %call.i82, 0
  br i1 %tobool42.not, label %if.then43, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv40 = sub i32 0, %24
  %conv44 = and i32 %conv40, 255
  %call.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 34, i32 noundef 255, i32 noundef %conv44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val49, align 4
  %test_pattern = getelementptr i8, ptr %1, i32 220
  %27 = ptrtoint ptr %test_pattern to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %test_pattern, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb48, %if.then43, %if.else.cleanup_crit_edge, %if.then36, %if.then33.cleanup_crit_edge, %if.end27, %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb48 ], [ %call.i79, %if.end27 ], [ %call.i, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i82, %if.else.cleanup_crit_edge ], [ %call.i83, %if.then43 ], [ %call.i80, %if.then33.cleanup_crit_edge ], [ %call.i81, %if.then36 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_ov772x__293_1562_ov772x_i2c_driver_init6, !1, !"__initcall__kmod_ov772x__293_1562_ov772x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov772x.c", i32 1562, i32 1}
!2 = !{ptr @__exitcall_ov772x_i2c_driver_exit, !1, !"__exitcall_ov772x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov772x.c", i32 1564, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov772x.c", i32 1565, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov772x.c", i32 1566, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov772x.c", i32 1554, i32 11}
!12 = !{ptr @ov772x_i2c_driver, !13, !"ov772x_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov772x.c", i32 1552, i32 26}
!14 = !{ptr @ov772x_probe.ov772x_regmap_config, !15, !"ov772x_regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov772x.c", i32 1420, i32 36}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov772x.c", i32 1427, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ov772x_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ov772x_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ov772x_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ov772x.c", i32 1436, i32 17}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/ov772x.c", i32 1438, i32 3}
!29 = !{ptr @ov772x_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ov772x_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @ov772x_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/ov772x.c", i32 1443, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ov772x_probe._key.11, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ov772x.c", i32 1448, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ov772x.c", i32 1470, i32 3}
!39 = !{ptr @ov772x_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ov772x_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov772x.c", i32 1475, i32 53}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ov772x.c", i32 1478, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ov772x_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ov772x_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ov772x_subdev_ops, !49, !"ov772x_subdev_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov772x.c", i32 1366, i32 37}
!50 = !{ptr @ov772x_subdev_core_ops, !51, !"ov772x_subdev_core_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov772x.c", i32 1311, i32 42}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov772x.c", i32 947, i32 3}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov772x.c", i32 948, i32 3}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov772x.c", i32 883, i32 53}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov772x.c", i32 886, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ov772x_power_on._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ov772x_power_on._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"ov772x_pll", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/ov772x.c", i32 389, i32 3}
!65 = !{ptr @ov772x_subdev_video_ops, !66, !"ov772x_subdev_video_ops", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/ov772x.c", i32 1352, i32 43}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/ov772x.c", i32 606, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ov772x_s_stream.__UNIQUE_ID_ddebug292, !68, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!71 = !{ptr @ov772x_frame_intervals, !72, !"ov772x_frame_intervals", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/ov772x.c", i32 552, i32 27}
!73 = !{ptr @ov772x_subdev_pad_ops, !74, !"ov772x_subdev_pad_ops", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/ov772x.c", i32 1358, i32 41}
!75 = !{ptr @ov772x_ctrl_ops, !76, !"ov772x_ctrl_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/ov772x.c", i32 1307, i32 35}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ov772x.c", i32 545, i32 2}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ov772x.c", i32 546, i32 2}
!81 = !{ptr @ov772x_test_pattern_menu, !82, !"ov772x_test_pattern_menu", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ov772x.c", i32 544, i32 27}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ov772x.c", i32 1383, i32 3}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ov772x_parse_dt._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ov772x_parse_dt._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov772x.c", i32 1276, i32 17}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov772x.c", i32 1279, i32 17}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov772x.c", i32 1282, i32 3}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ov772x_video_probe._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ov772x_video_probe._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov772x.c", i32 1295, i32 2}
!99 = !{ptr @ov772x_video_probe._entry.36, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ov772x_video_probe._entry_ptr.38, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @ov772x_cfmts, !102, !"ov772x_cfmts", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/ov772x.c", i32 445, i32 41}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/ov772x.c", i32 522, i32 12}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov772x.c", i32 532, i32 12}
!107 = !{ptr @ov772x_win_sizes, !108, !"ov772x_win_sizes", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/ov772x.c", i32 520, i32 37}
!109 = !{ptr @ov772x_of_match, !110, !"ov772x_of_match", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov772x.c", i32 1545, i32 34}
!111 = !{ptr @ov772x_id, !112, !"ov772x_id", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov772x.c", i32 1539, i32 35}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2148765402, i64 2148765407, i64 2148765420, i64 2148765464, i64 2148765498, i64 2148765519}
