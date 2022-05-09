; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/mt9t001.c_pt.bc'
source_filename = "../drivers/media/i2c/mt9t001.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mt9t001 = type { %struct.v4l2_subdev, %struct.media_pad, ptr, [2 x %struct.regulator_bulk_data], %struct.mutex, i32, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_ctrl_handler, [4 x ptr], i16, i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mt9t001_platform_data = type { i8, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_mt9t001__324_990_mt9t001_driver_init6 = internal global ptr @mt9t001_driver_init, section ".initcall6.init", align 4
@mt9t001_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mt9t001_probe, ptr @mt9t001_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt9t001_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt9t001_driver_exit = internal global ptr @mt9t001_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description325 = internal constant [58 x i8] c"mt9t001.description=Aptina (Micron) MT9T001 Camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author326 = internal constant [68 x i8] c"mt9t001.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file327 = internal constant [39 x i8] c"mt9t001.file=drivers/media/i2c/mt9t001\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [20 x i8] c"mt9t001.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9t001\00", [24 x i8] zeroinitializer }, align 32
@mt9t001_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt9t001\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9t001_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 868, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9t001_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/mt9t001.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt9t001_probe._entry_ptr = internal global ptr @mt9t001_probe._entry, section ".printk_index", align 4
@mt9t001_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 875, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt9t001_probe._entry_ptr.9 = internal global ptr @mt9t001_probe._entry.6, section ".printk_index", align 4
@mt9t001_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mt9t001->power_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vaa\00", [28 x i8] zeroinitializer }, align 32
@mt9t001_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@mt9t001_probe._entry_ptr.15 = internal global ptr @mt9t001_probe._entry.13, section ".printk_index", align 4
@mt9t001_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 897, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unable to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@mt9t001_probe._entry_ptr.18 = internal global ptr @mt9t001_probe._entry.16, section ".printk_index", align 4
@mt9t001_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mt9t001:902:(&mt9t001->ctrls)->_lock\00", [59 x i8] zeroinitializer }, align 32
@mt9t001_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mt9t001_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mt9t001_test_pattern_menu = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.23, ptr @.str.24], [24 x i8] zeroinitializer }, align 32
@mt9t001_ctrls = internal constant { [4 x %struct.v4l2_ctrl_config], [96 x i8] } { [4 x %struct.v4l2_ctrl_config] [%struct.v4l2_ctrl_config { ptr @mt9t001_ctrl_ops, ptr null, i32 9967873, ptr @.str.25, i32 1, i64 0, i64 1023, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9t001_ctrl_ops, ptr null, i32 9967874, ptr @.str.26, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9t001_ctrl_ops, ptr null, i32 9967875, ptr @.str.27, i32 1, i64 -256, i64 255, i64 1, i64 32, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9t001_ctrl_ops, ptr null, i32 9967876, ptr @.str.28, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 64, i64 0, ptr null, ptr null, i8 0 }], [96 x i8] zeroinitializer }, align 32
@mt9t001_gains = internal constant { [4 x %struct.v4l2_ctrl_config], [96 x i8] } { [4 x %struct.v4l2_ctrl_config] [%struct.v4l2_ctrl_config { ptr @mt9t001_ctrl_ops, ptr null, i32 10096641, ptr @.str.29, i32 1, i64 8, i64 1024, i64 1, i64 8, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9t001_ctrl_ops, ptr null, i32 10096642, ptr @.str.30, i32 1, i64 8, i64 1024, i64 1, i64 8, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9t001_ctrl_ops, ptr null, i32 10096643, ptr @.str.31, i32 1, i64 8, i64 1024, i64 1, i64 8, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9t001_ctrl_ops, ptr null, i32 10096644, ptr @.str.32, i32 1, i64 8, i64 1024, i64 1, i64 8, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }], [96 x i8] zeroinitializer }, align 32
@mt9t001_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: control initialization error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mt9t001_probe._entry_ptr.22 = internal global ptr @mt9t001_probe._entry.20, section ".printk_index", align 4
@mt9t001_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mt9t001_subdev_core_ops, ptr null, ptr null, ptr @mt9t001_subdev_video_ops, ptr null, ptr null, ptr null, ptr @mt9t001_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@mt9t001_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @mt9t001_registered, ptr null, ptr @mt9t001_open, ptr @mt9t001_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Test Pattern Color\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Black Level, Auto\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Black Level, Offset\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Black Level, Calibrate\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Gain, Red\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Gain, Green (R)\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Gain, Green (B)\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Gain, Blue\00", [21 x i8] zeroinitializer }, align 32
@mt9t001_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9t001_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt9t001_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9t001_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mt9t001_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @mt9t001_enum_mbus_code, ptr @mt9t001_enum_frame_size, ptr null, ptr @mt9t001_get_format, ptr @mt9t001_set_format, ptr @mt9t001_get_selection, ptr @mt9t001_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__mt9t001_set_power._entry = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset the camera\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mt9t001_set_power\00", [44 x i8] zeroinitializer }, align 32
@__mt9t001_set_power._entry_ptr = internal global ptr @__mt9t001_set_power._entry, section ".printk_index", align 4
@__mt9t001_set_power._entry.35 = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, align 1
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set up control handlers\0A\00", [61 x i8] zeroinitializer }, align 32
@__mt9t001_set_power._entry_ptr.37 = internal global ptr @__mt9t001_set_power._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mt9t001_registered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MT9T001 power up failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt9t001_registered\00", [45 x i8] zeroinitializer }, align 32
@mt9t001_registered._entry_ptr = internal global ptr @mt9t001_registered._entry, section ".printk_index", align 4
@mt9t001_registered._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MT9T001 not detected, wrong version 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@mt9t001_registered._entry_ptr.43 = internal global ptr @mt9t001_registered._entry.41, section ".printk_index", align 4
@mt9t001_registered._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 799, ptr @.str.46, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MT9T001 detected at address 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt9t001_registered._entry_ptr.47 = internal global ptr @mt9t001_registered._entry.44, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 9963793, i64 9967873, i64 9967874, i64 9967875, i64 9967876, i64 10096641, i64 10096642, i64 10096643, i64 10096644, i64 10422531]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"mt9t001_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 981, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 983, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"mt9t001_id\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 975, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 868, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 874, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 883, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 886, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 887, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 891, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 897, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 901, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"mt9t001_ctrl_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 645, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"mt9t001_test_pattern_menu\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 649, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"mt9t001_ctrls\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 654, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant [14 x i8] c"mt9t001_gains\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 698, i32 38 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 930, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"mt9t001_subdev_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 847, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant [28 x i8] c"mt9t001_subdev_internal_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 853, i32 46 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 650, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 651, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 659, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 669, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 679, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 689, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 703, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 713, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 723, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 733, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant [24 x i8] c"mt9t001_subdev_core_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 830, i32 42 }
@___asan_gen_.177 = private unnamed_addr constant [25 x i8] c"mt9t001_subdev_video_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 834, i32 43 }
@___asan_gen_.180 = private unnamed_addr constant [23 x i8] c"mt9t001_subdev_pad_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 838, i32 41 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 232, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 238, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 998, i32 6 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 784, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 793, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [31 x i8] c"../drivers/media/i2c/mt9t001.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 798, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @__exitcall_mt9t001_driver_exit, ptr @__initcall__kmod_mt9t001__324_990_mt9t001_driver_init6, ptr @__mt9t001_set_power._entry, ptr @__mt9t001_set_power._entry.35, ptr @__mt9t001_set_power._entry_ptr, ptr @__mt9t001_set_power._entry_ptr.37, ptr @mt9t001_driver_exit, ptr @mt9t001_probe._entry, ptr @mt9t001_probe._entry.13, ptr @mt9t001_probe._entry.16, ptr @mt9t001_probe._entry.20, ptr @mt9t001_probe._entry.6, ptr @mt9t001_probe._entry_ptr, ptr @mt9t001_probe._entry_ptr.15, ptr @mt9t001_probe._entry_ptr.18, ptr @mt9t001_probe._entry_ptr.22, ptr @mt9t001_probe._entry_ptr.9, ptr @mt9t001_registered._entry, ptr @mt9t001_registered._entry.41, ptr @mt9t001_registered._entry.44, ptr @mt9t001_registered._entry_ptr, ptr @mt9t001_registered._entry_ptr.43, ptr @mt9t001_registered._entry_ptr.47, ptr @mt9t001_driver, ptr @.str, ptr @mt9t001_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @mt9t001_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @mt9t001_probe._key, ptr @.str.19, ptr @mt9t001_ctrl_ops, ptr @mt9t001_test_pattern_menu, ptr @mt9t001_ctrls, ptr @mt9t001_gains, ptr @.str.21, ptr @mt9t001_subdev_ops, ptr @mt9t001_subdev_internal_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @mt9t001_subdev_core_ops, ptr @mt9t001_subdev_video_ops, ptr @mt9t001_subdev_pad_ops, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_test_pattern_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_ctrls to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_gains to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_registered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_registered._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t001_registered._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt9t001_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt9t001_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @mt9t001_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_probe(ptr noundef %client, ptr nocapture noundef readnone %did) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %dev7 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 620, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %do.body14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body14:                                        ; preds = %if.end8
  %power_lock = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mt9t001_probe.__key) #6
  %output_control = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %output_control to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %output_control, align 4
  %regulators = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.11, ptr %regulators, align 4
  %arrayidx18 = getelementptr %struct.mt9t001, ptr %call.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.12, ptr %arrayidx18, align 4
  %call22 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end29:                                         ; preds = %do.body14
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call31, ptr %clk, align 4
  %cmp.i174 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %do.end37, label %if.end41

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %ctrls = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 8
  %call42 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 12, ptr noundef nonnull @mt9t001_probe._key, ptr noundef nonnull @.str.19) #6
  %call44 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9t001_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 1048576, i64 noundef 1, i64 noundef 1561) #6
  %call46 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9t001_ctrl_ops, i32 noundef 9963787, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %ext_clk = getelementptr inbounds %struct.mt9t001_platform_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ext_clk, align 4
  %conv = zext i32 %18 to i64
  %call52 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9t001_ctrl_ops, i32 noundef 10422530, i64 noundef %conv, i64 noundef %conv, i64 noundef 1, i64 noundef %conv) #6
  %call54 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls, ptr noundef nonnull @mt9t001_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @mt9t001_test_pattern_menu) #6
  %call59 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @mt9t001_ctrls, ptr noundef null) #6
  %call59.1 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([4 x %struct.v4l2_ctrl_config], ptr @mt9t001_ctrls, i32 0, i32 1), ptr noundef null) #6
  %call59.2 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([4 x %struct.v4l2_ctrl_config], ptr @mt9t001_ctrls, i32 0, i32 2), ptr noundef null) #6
  %call59.3 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([4 x %struct.v4l2_ctrl_config], ptr @mt9t001_ctrls, i32 0, i32 3), ptr noundef null) #6
  %call66 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @mt9t001_gains, ptr noundef null) #6
  %arrayidx67 = getelementptr %struct.mt9t001, ptr %call.i, i32 0, i32 9, i32 0
  %19 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call66, ptr %arrayidx67, align 4
  %call66.1 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([4 x %struct.v4l2_ctrl_config], ptr @mt9t001_gains, i32 0, i32 1), ptr noundef null) #6
  %arrayidx67.1 = getelementptr %struct.mt9t001, ptr %call.i, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call66.1, ptr %arrayidx67.1, align 4
  %call66.2 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([4 x %struct.v4l2_ctrl_config], ptr @mt9t001_gains, i32 0, i32 2), ptr noundef null) #6
  %arrayidx67.2 = getelementptr %struct.mt9t001, ptr %call.i, i32 0, i32 9, i32 2
  %21 = ptrtoint ptr %arrayidx67.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call66.2, ptr %arrayidx67.2, align 4
  %call66.3 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([4 x %struct.v4l2_ctrl_config], ptr @mt9t001_gains, i32 0, i32 3), ptr noundef null) #6
  %arrayidx67.3 = getelementptr %struct.mt9t001, ptr %call.i, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %arrayidx67.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call66.3, ptr %arrayidx67.3, align 4
  tail call void @v4l2_ctrl_cluster(i32 noundef 4, ptr noundef %arrayidx67) #6
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 8, i32 9
  %24 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool75.not = icmp eq i32 %25, 0
  br i1 %tobool75.not, label %done, label %done.thread

done.thread:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef %25) #9
  br label %if.then105

done:                                             ; preds = %if.end41
  %crop = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32, ptr %crop, align 4
  %top = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %top, align 4
  %width = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 7, i32 2
  %28 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2048, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 7, i32 3
  %29 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1536, ptr %height, align 4
  %format = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 6
  %code = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 12298, ptr %code, align 4
  %31 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2048, ptr %format, align 4
  %height91 = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %height91 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1536, ptr %height91, align 4
  %field = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 6, i32 3
  %33 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %colorspace, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @mt9t001_subdev_ops) #6
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mt9t001_subdev_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %or = or i32 %37, 4
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 1
  %flags98 = getelementptr inbounds %struct.mt9t001, ptr %call.i, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %flags98 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %flags98, align 4
  %call102 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %done.if.then105_crit_edge, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

done.if.then105_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

if.then105:                                       ; preds = %done.if.then105_crit_edge, %done.thread
  %ret.0177 = phi i32 [ -22, %done.thread ], [ %call102, %done.if.then105_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %done.cleanup_crit_edge, %do.end37, %do.end27, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call22, %do.end27 ], [ %16, %do.end37 ], [ -5, %do.end5 ], [ -12, %if.end8.cleanup_crit_edge ], [ %ret.0177, %if.then105 ], [ %call102, %done.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrls = getelementptr inbounds %struct.mt9t001, ptr %1, i32 0, i32 8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #6
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -264
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup103_crit_edge [
    i32 10096641, label %entry.sw.bb_crit_edge
    i32 10096642, label %entry.sw.bb_crit_edge206
    i32 10096643, label %entry.sw.bb_crit_edge207
    i32 10096644, label %entry.sw.bb_crit_edge208
    i32 9963793, label %sw.bb41
    i32 10422531, label %sw.bb51
    i32 9967873, label %sw.bb59
    i32 9967874, label %sw.bb63
    i32 9967875, label %sw.bb73
    i32 9967876, label %sw.bb98
  ]

entry.sw.bb_crit_edge208:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge207:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge206:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge206, %entry.sw.bb_crit_edge207, %entry.sw.bb_crit_edge208
  %gains = getelementptr i8, ptr %1, i32 184
  %7 = ptrtoint ptr %gains to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gains, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 23
  %11 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp2.not = icmp ne i32 %10, %12
  %inc = zext i1 %cmp2.not to i32
  %arrayidx.1 = getelementptr i8, ptr %1, i32 188
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %val.1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %val.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.1, align 4
  %cur.1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 23
  %17 = ptrtoint ptr %cur.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp2.not.1 = icmp ne i32 %16, %18
  %inc.1 = zext i1 %cmp2.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  %arrayidx.2 = getelementptr i8, ptr %1, i32 192
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2, align 4
  %val.2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.2, align 4
  %cur.2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 23
  %23 = ptrtoint ptr %cur.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp2.not.2 = icmp ne i32 %22, %24
  %inc.2 = zext i1 %cmp2.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc.2
  %arrayidx.3 = getelementptr i8, ptr %1, i32 196
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.3, align 4
  %val.3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %val.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.3, align 4
  %cur.3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %26, i32 0, i32 23
  %29 = ptrtoint ptr %cur.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp2.not.3 = icmp ne i32 %28, %30
  %inc.3 = zext i1 %cmp2.not.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.3)
  %cmp4 = icmp ugt i32 %spec.select.3, 1
  br i1 %cmp4, label %if.then5, label %sw.bb.if.end10_crit_edge

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %sw.bb
  %output_control.i.i = getelementptr i8, ptr %1, i32 200
  %31 = ptrtoint ptr %output_control.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %output_control.i.i, align 4
  %or.i.i = or i16 %32, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i, i16 %32)
  %cmp.i.i = icmp eq i16 %or.i.i, %32
  br i1 %cmp.i.i, label %if.then5.if.end10_crit_edge, label %if.end.i.i

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.i.i:                                       ; preds = %if.then5
  %33 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #6
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 7, i16 noundef zeroext %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp9.i.i, label %if.end.i.i.cleanup103_crit_edge, label %if.end12.i.i

if.end.i.i.cleanup103_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %output_control.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %or.i.i, ptr %output_control.i.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end12.i.i, %if.then5.if.end10_crit_edge, %sw.bb.if.end10_crit_edge
  %35 = ptrtoint ptr %gains to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gains, align 4
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val17, align 4
  %cur18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 23
  %39 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp20 = icmp eq i32 %38, %40
  br i1 %cmp20, label %if.end10.for.inc31_crit_edge, label %if.end22

if.end10.for.inc31_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31

if.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %38)
  %cmp.i = icmp slt i32 %38, 33
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %38 to i16
  br label %mt9t001_gain_value.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %38)
  %cmp1.i = icmp ult i32 %38, 65
  br i1 %cmp1.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %38, -2
  %41 = ptrtoint ptr %val17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i, ptr %val17, align 4
  %42 = lshr i32 %38, 1
  %43 = trunc i32 %42 to i16
  %conv4.i = or i16 %43, 64
  br label %mt9t001_gain_value.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i = and i32 %38, -8
  %44 = ptrtoint ptr %val17 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and6.i, ptr %val17, align 4
  %and6.tr.i = trunc i32 %and6.i to i16
  %45 = shl i16 %and6.tr.i, 5
  %conv9.i = add i16 %45, -1952
  br label %mt9t001_gain_value.exit

mt9t001_gain_value.exit:                          ; preds = %if.end5.i, %if.then3.i, %if.then.i
  %retval.0.i = phi i16 [ %conv.i, %if.then.i ], [ %conv4.i, %if.then3.i ], [ %conv9.i, %if.end5.i ]
  %46 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i) #6
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 45, i16 noundef zeroext %46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp27 = icmp slt i32 %call.i.i, 0
  br i1 %cmp27, label %mt9t001_gain_value.exit.if.then28_crit_edge, label %mt9t001_gain_value.exit.for.inc31_crit_edge

mt9t001_gain_value.exit.for.inc31_crit_edge:      ; preds = %mt9t001_gain_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31

mt9t001_gain_value.exit.if.then28_crit_edge:      ; preds = %mt9t001_gain_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %mt9t001_gain_value.exit.3.if.then28_crit_edge, %mt9t001_gain_value.exit.2.if.then28_crit_edge, %mt9t001_gain_value.exit.1.if.then28_crit_edge, %mt9t001_gain_value.exit.if.then28_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %mt9t001_gain_value.exit.if.then28_crit_edge ], [ %call.i.i.1, %mt9t001_gain_value.exit.1.if.then28_crit_edge ], [ %call.i.i.2, %mt9t001_gain_value.exit.2.if.then28_crit_edge ], [ %call.i.i.3, %mt9t001_gain_value.exit.3.if.then28_crit_edge ]
  %output_control.i.i165 = getelementptr i8, ptr %1, i32 200
  %47 = ptrtoint ptr %output_control.i.i165 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %output_control.i.i165, align 4
  %and.i.i = and i16 %48, -2
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i, i16 %48)
  %cmp.i.i166 = icmp eq i16 %and.i.i, %48
  br i1 %cmp.i.i166, label %if.then28.cleanup103_crit_edge, label %if.end.i.i170

if.then28.cleanup103_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end.i.i170:                                    ; preds = %if.then28
  %49 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i, align 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %and.i.i) #6
  %call.i.i.i.i168 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %50, i8 noundef zeroext 7, i16 noundef zeroext %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i168)
  %cmp9.i.i169 = icmp slt i32 %call.i.i.i.i168, 0
  br i1 %cmp9.i.i169, label %if.end.i.i170.cleanup103_crit_edge, label %if.end12.i.i171

if.end.i.i170.cleanup103_crit_edge:               ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end12.i.i171:                                  ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %output_control.i.i165 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %and.i.i, ptr %output_control.i.i165, align 4
  br label %cleanup103

for.inc31:                                        ; preds = %mt9t001_gain_value.exit.for.inc31_crit_edge, %if.end10.for.inc31_crit_edge
  %53 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.1, align 4
  %val17.1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %val17.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val17.1, align 4
  %cur18.1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 23
  %57 = ptrtoint ptr %cur18.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cur18.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp20.1 = icmp eq i32 %56, %58
  br i1 %cmp20.1, label %for.inc31.for.inc31.1_crit_edge, label %if.end22.1

for.inc31.for.inc31.1_crit_edge:                  ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.1

if.end22.1:                                       ; preds = %for.inc31
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %56)
  %cmp.i.1 = icmp slt i32 %56, 33
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.i.1

if.end.i.1:                                       ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %56)
  %cmp1.i.1 = icmp ult i32 %56, 65
  br i1 %cmp1.i.1, label %if.then3.i.1, label %if.end5.i.1

if.end5.i.1:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.1 = and i32 %56, -8
  %59 = ptrtoint ptr %val17.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and6.i.1, ptr %val17.1, align 4
  %and6.tr.i.1 = trunc i32 %and6.i.1 to i16
  %60 = shl i16 %and6.tr.i.1, 5
  %conv9.i.1 = add i16 %60, -1952
  br label %mt9t001_gain_value.exit.1

if.then3.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.1 = and i32 %56, -2
  %61 = ptrtoint ptr %val17.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and.i.1, ptr %val17.1, align 4
  %62 = lshr i32 %56, 1
  %63 = trunc i32 %62 to i16
  %conv4.i.1 = or i16 %63, 64
  br label %mt9t001_gain_value.exit.1

if.then.i.1:                                      ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.1 = trunc i32 %56 to i16
  br label %mt9t001_gain_value.exit.1

mt9t001_gain_value.exit.1:                        ; preds = %if.then.i.1, %if.then3.i.1, %if.end5.i.1
  %retval.0.i.1 = phi i16 [ %conv.i.1, %if.then.i.1 ], [ %conv4.i.1, %if.then3.i.1 ], [ %conv9.i.1, %if.end5.i.1 ]
  %64 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i.1) #6
  %call.i.i.1 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 43, i16 noundef zeroext %64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp27.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp27.1, label %mt9t001_gain_value.exit.1.if.then28_crit_edge, label %mt9t001_gain_value.exit.1.for.inc31.1_crit_edge

mt9t001_gain_value.exit.1.for.inc31.1_crit_edge:  ; preds = %mt9t001_gain_value.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.1

mt9t001_gain_value.exit.1.if.then28_crit_edge:    ; preds = %mt9t001_gain_value.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

for.inc31.1:                                      ; preds = %mt9t001_gain_value.exit.1.for.inc31.1_crit_edge, %for.inc31.for.inc31.1_crit_edge
  %65 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.2, align 4
  %val17.2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %val17.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val17.2, align 4
  %cur18.2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %66, i32 0, i32 23
  %69 = ptrtoint ptr %cur18.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur18.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp20.2 = icmp eq i32 %68, %70
  br i1 %cmp20.2, label %for.inc31.1.for.inc31.2_crit_edge, label %if.end22.2

for.inc31.1.for.inc31.2_crit_edge:                ; preds = %for.inc31.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.2

if.end22.2:                                       ; preds = %for.inc31.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %68)
  %cmp.i.2 = icmp slt i32 %68, 33
  br i1 %cmp.i.2, label %if.then.i.2, label %if.end.i.2

if.end.i.2:                                       ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %68)
  %cmp1.i.2 = icmp ult i32 %68, 65
  br i1 %cmp1.i.2, label %if.then3.i.2, label %if.end5.i.2

if.end5.i.2:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.2 = and i32 %68, -8
  %71 = ptrtoint ptr %val17.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and6.i.2, ptr %val17.2, align 4
  %and6.tr.i.2 = trunc i32 %and6.i.2 to i16
  %72 = shl i16 %and6.tr.i.2, 5
  %conv9.i.2 = add i16 %72, -1952
  br label %mt9t001_gain_value.exit.2

if.then3.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.2 = and i32 %68, -2
  %73 = ptrtoint ptr %val17.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i.2, ptr %val17.2, align 4
  %74 = lshr i32 %68, 1
  %75 = trunc i32 %74 to i16
  %conv4.i.2 = or i16 %75, 64
  br label %mt9t001_gain_value.exit.2

if.then.i.2:                                      ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.2 = trunc i32 %68 to i16
  br label %mt9t001_gain_value.exit.2

mt9t001_gain_value.exit.2:                        ; preds = %if.then.i.2, %if.then3.i.2, %if.end5.i.2
  %retval.0.i.2 = phi i16 [ %conv.i.2, %if.then.i.2 ], [ %conv4.i.2, %if.then3.i.2 ], [ %conv9.i.2, %if.end5.i.2 ]
  %76 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i.2) #6
  %call.i.i.2 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 46, i16 noundef zeroext %76) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp27.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp27.2, label %mt9t001_gain_value.exit.2.if.then28_crit_edge, label %mt9t001_gain_value.exit.2.for.inc31.2_crit_edge

mt9t001_gain_value.exit.2.for.inc31.2_crit_edge:  ; preds = %mt9t001_gain_value.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.2

mt9t001_gain_value.exit.2.if.then28_crit_edge:    ; preds = %mt9t001_gain_value.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

for.inc31.2:                                      ; preds = %mt9t001_gain_value.exit.2.for.inc31.2_crit_edge, %for.inc31.1.for.inc31.2_crit_edge
  %77 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.3, align 4
  %val17.3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %78, i32 0, i32 22
  %79 = ptrtoint ptr %val17.3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val17.3, align 4
  %cur18.3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %78, i32 0, i32 23
  %81 = ptrtoint ptr %cur18.3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cur18.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp20.3 = icmp eq i32 %80, %82
  br i1 %cmp20.3, label %for.inc31.2.for.inc31.3_crit_edge, label %if.end22.3

for.inc31.2.for.inc31.3_crit_edge:                ; preds = %for.inc31.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.3

if.end22.3:                                       ; preds = %for.inc31.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %80)
  %cmp.i.3 = icmp slt i32 %80, 33
  br i1 %cmp.i.3, label %if.then.i.3, label %if.end.i.3

if.end.i.3:                                       ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %80)
  %cmp1.i.3 = icmp ult i32 %80, 65
  br i1 %cmp1.i.3, label %if.then3.i.3, label %if.end5.i.3

if.end5.i.3:                                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.3 = and i32 %80, -8
  %83 = ptrtoint ptr %val17.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and6.i.3, ptr %val17.3, align 4
  %and6.tr.i.3 = trunc i32 %and6.i.3 to i16
  %84 = shl i16 %and6.tr.i.3, 5
  %conv9.i.3 = add i16 %84, -1952
  br label %mt9t001_gain_value.exit.3

if.then3.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.3 = and i32 %80, -2
  %85 = ptrtoint ptr %val17.3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and.i.3, ptr %val17.3, align 4
  %86 = lshr i32 %80, 1
  %87 = trunc i32 %86 to i16
  %conv4.i.3 = or i16 %87, 64
  br label %mt9t001_gain_value.exit.3

if.then.i.3:                                      ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.3 = trunc i32 %80 to i16
  br label %mt9t001_gain_value.exit.3

mt9t001_gain_value.exit.3:                        ; preds = %if.then.i.3, %if.then3.i.3, %if.end5.i.3
  %retval.0.i.3 = phi i16 [ %conv.i.3, %if.then.i.3 ], [ %conv4.i.3, %if.then3.i.3 ], [ %conv9.i.3, %if.end5.i.3 ]
  %88 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i.3) #6
  %call.i.i.3 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 44, i16 noundef zeroext %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %cmp27.3 = icmp slt i32 %call.i.i.3, 0
  br i1 %cmp27.3, label %mt9t001_gain_value.exit.3.if.then28_crit_edge, label %mt9t001_gain_value.exit.3.for.inc31.3_crit_edge

mt9t001_gain_value.exit.3.for.inc31.3_crit_edge:  ; preds = %mt9t001_gain_value.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.3

mt9t001_gain_value.exit.3.if.then28_crit_edge:    ; preds = %mt9t001_gain_value.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

for.inc31.3:                                      ; preds = %mt9t001_gain_value.exit.3.for.inc31.3_crit_edge, %for.inc31.2.for.inc31.3_crit_edge
  br i1 %cmp4, label %if.then35, label %for.inc31.3.cleanup103_crit_edge

for.inc31.3.cleanup103_crit_edge:                 ; preds = %for.inc31.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then35:                                        ; preds = %for.inc31.3
  %output_control.i.i174 = getelementptr i8, ptr %1, i32 200
  %89 = ptrtoint ptr %output_control.i.i174 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %output_control.i.i174, align 4
  %and.i.i175 = and i16 %90, -2
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i175, i16 %90)
  %cmp.i.i176 = icmp eq i16 %and.i.i175, %90
  br i1 %cmp.i.i176, label %if.then35.cleanup103_crit_edge, label %if.end.i.i180

if.then35.cleanup103_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end.i.i180:                                    ; preds = %if.then35
  %91 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_priv.i, align 4
  %93 = tail call i16 @llvm.bswap.i16(i16 %and.i.i175) #6
  %call.i.i.i.i178 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %92, i8 noundef zeroext 7, i16 noundef zeroext %93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i178)
  %cmp9.i.i179 = icmp slt i32 %call.i.i.i.i178, 0
  br i1 %cmp9.i.i179, label %if.end.i.i180.cleanup103_crit_edge, label %if.end12.i.i181

if.end.i.i180.cleanup103_crit_edge:               ; preds = %if.end.i.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end12.i.i181:                                  ; preds = %if.end.i.i180
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %output_control.i.i174 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %and.i.i175, ptr %output_control.i.i174, align 4
  br label %cleanup103

sw.bb41:                                          ; preds = %entry
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %95 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %val42, align 4
  %conv = trunc i32 %96 to i16
  %97 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  %call.i.i184 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 9, i16 noundef zeroext %97) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %cmp44 = icmp slt i32 %call.i.i184, 0
  br i1 %cmp44, label %sw.bb41.cleanup103_crit_edge, label %if.end47

sw.bb41.cleanup103_crit_edge:                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end47:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val42, align 4
  %100 = lshr i32 %99, 16
  %conv49 = trunc i32 %100 to i16
  %101 = tail call i16 @llvm.bswap.i16(i16 %conv49) #6
  %call.i.i185 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 8, i16 noundef zeroext %101) #6
  br label %cleanup103

sw.bb51:                                          ; preds = %entry
  %val52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %102 = ptrtoint ptr %val52 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %val52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not = icmp eq i32 %103, 0
  %conv57 = select i1 %tobool.not, i16 0, i16 64
  %output_control.i = getelementptr i8, ptr %1, i32 200
  %104 = ptrtoint ptr %output_control.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %output_control.i, align 4
  %neg.i = select i1 %tobool.not, i16 -65, i16 -1
  %and.i186 = and i16 %neg.i, %105
  %or.i = or i16 %and.i186, %conv57
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %105)
  %cmp.i187 = icmp eq i16 %or.i, %105
  br i1 %cmp.i187, label %sw.bb51.cleanup103_crit_edge, label %if.end.i188

sw.bb51.cleanup103_crit_edge:                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end.i188:                                      ; preds = %sw.bb51
  %106 = tail call i16 @llvm.bswap.i16(i16 %or.i) #6
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 7, i16 noundef zeroext %106) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp9.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp9.i, label %if.end.i188.cleanup103_crit_edge, label %if.end12.i

if.end.i188.cleanup103_crit_edge:                 ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end12.i:                                       ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %output_control.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %or.i, ptr %output_control.i, align 4
  br label %cleanup103

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val60 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %108 = ptrtoint ptr %val60 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val60, align 4
  %.tr = trunc i32 %109 to i16
  %conv61 = shl i16 %.tr, 2
  %110 = tail call i16 @llvm.bswap.i16(i16 %conv61) #6
  %call.i.i190 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 50, i16 noundef zeroext %110) #6
  br label %cleanup103

sw.bb63:                                          ; preds = %entry
  %val64 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %111 = ptrtoint ptr %val64 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool65.not = icmp eq i32 %112, 0
  %113 = select i1 %tobool65.not, i16 256, i16 0
  %call.i.i191 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 98, i16 noundef zeroext %113) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i191)
  %cmp69 = icmp slt i32 %call.i.i191, 0
  br i1 %cmp69, label %sw.bb63.cleanup103_crit_edge, label %if.end72

sw.bb63.cleanup103_crit_edge:                     ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end72:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #8
  %conv67 = zext i1 %tobool65.not to i16
  %black_level = getelementptr i8, ptr %1, i32 202
  %114 = ptrtoint ptr %black_level to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv67, ptr %black_level, align 2
  br label %cleanup103

sw.bb73:                                          ; preds = %entry
  %val74 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %115 = ptrtoint ptr %val74 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %val74, align 4
  %conv75 = trunc i32 %116 to i16
  %117 = tail call i16 @llvm.bswap.i16(i16 %conv75) #6
  %call.i.i192 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 96, i16 noundef zeroext %117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i192)
  %cmp77 = icmp slt i32 %call.i.i192, 0
  br i1 %cmp77, label %sw.bb73.cleanup103_crit_edge, label %if.end80

sw.bb73.cleanup103_crit_edge:                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end80:                                         ; preds = %sw.bb73
  %118 = ptrtoint ptr %val74 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val74, align 4
  %conv82 = trunc i32 %119 to i16
  %120 = tail call i16 @llvm.bswap.i16(i16 %conv82) #6
  %call.i.i193 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 97, i16 noundef zeroext %120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %cmp84 = icmp slt i32 %call.i.i193, 0
  br i1 %cmp84, label %if.end80.cleanup103_crit_edge, label %if.end87

if.end80.cleanup103_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end87:                                         ; preds = %if.end80
  %121 = ptrtoint ptr %val74 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %val74, align 4
  %conv89 = trunc i32 %122 to i16
  %123 = tail call i16 @llvm.bswap.i16(i16 %conv89) #6
  %call.i.i194 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 99, i16 noundef zeroext %123) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i194)
  %cmp91 = icmp slt i32 %call.i.i194, 0
  br i1 %cmp91, label %if.end87.cleanup103_crit_edge, label %if.end94

if.end87.cleanup103_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %val74 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %val74, align 4
  %conv96 = trunc i32 %125 to i16
  %126 = tail call i16 @llvm.bswap.i16(i16 %conv96) #6
  %call.i.i195 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 100, i16 noundef zeroext %126) #6
  br label %cleanup103

sw.bb98:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %black_level99 = getelementptr i8, ptr %1, i32 202
  %127 = ptrtoint ptr %black_level99 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %black_level99, align 2
  %129 = or i16 %128, 4096
  %130 = tail call i16 @llvm.bswap.i16(i16 %129) #6
  %call.i.i196 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 98, i16 noundef zeroext %130) #6
  br label %cleanup103

cleanup103:                                       ; preds = %sw.bb98, %if.end94, %if.end87.cleanup103_crit_edge, %if.end80.cleanup103_crit_edge, %sw.bb73.cleanup103_crit_edge, %if.end72, %sw.bb63.cleanup103_crit_edge, %sw.bb59, %if.end12.i, %if.end.i188.cleanup103_crit_edge, %sw.bb51.cleanup103_crit_edge, %if.end47, %sw.bb41.cleanup103_crit_edge, %if.end12.i.i181, %if.end.i.i180.cleanup103_crit_edge, %if.then35.cleanup103_crit_edge, %for.inc31.3.cleanup103_crit_edge, %if.end12.i.i171, %if.end.i.i170.cleanup103_crit_edge, %if.then28.cleanup103_crit_edge, %if.end.i.i.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.2 = phi i32 [ %call.i.i196, %sw.bb98 ], [ %call.i.i195, %if.end94 ], [ %call.i.i190, %sw.bb59 ], [ %call.i.i185, %if.end47 ], [ %call.i.i184, %sw.bb41.cleanup103_crit_edge ], [ %call.i.i191, %sw.bb63.cleanup103_crit_edge ], [ %call.i.i192, %sw.bb73.cleanup103_crit_edge ], [ %call.i.i193, %if.end80.cleanup103_crit_edge ], [ %call.i.i194, %if.end87.cleanup103_crit_edge ], [ %call.i.i.i.i, %if.end.i.i.cleanup103_crit_edge ], [ %call.i.i.i.i178, %if.end.i.i180.cleanup103_crit_edge ], [ 0, %if.end12.i ], [ 0, %sw.bb51.cleanup103_crit_edge ], [ %call.i.i.i, %if.end.i188.cleanup103_crit_edge ], [ 0, %for.inc31.3.cleanup103_crit_edge ], [ 0, %entry.cleanup103_crit_edge ], [ 0, %if.end72 ], [ %call.i.i.lcssa, %if.then28.cleanup103_crit_edge ], [ %call.i.i.lcssa, %if.end.i.i170.cleanup103_crit_edge ], [ %call.i.i.lcssa, %if.end12.i.i171 ], [ 0, %if.end12.i.i181 ], [ 0, %if.then35.cleanup103_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_set_power(ptr noundef %subdev, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #6
  %power_count = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %regulators.i27.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 3
  br i1 %tobool.not, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i27.i) #6
  %clk.i.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.end9

if.end.i:                                         ; preds = %if.then
  %call.i28.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators.i27.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp.i.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp.i.i, label %if.end.i.out_crit_edge, label %if.end.i.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i.i:                                       ; preds = %if.end.i
  %clk.i29.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 2
  %6 = ptrtoint ptr %clk.i29.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i29.i, align 4
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.clk_prepare_enable.exit.i.i_crit_edge

if.end.i.i.clk_prepare_enable.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.if.end3.i_crit_edge, label %if.then3.i.i.i

if.end.i.i.i.if.end3.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit.i.i

clk_prepare_enable.exit.i.i:                      ; preds = %if.then3.i.i.i, %if.end.i.i.clk_prepare_enable.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.clk_prepare_enable.exit.i.i_crit_edge ], [ %call1.i.i.i, %if.then3.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp2.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %clk_prepare_enable.exit.i.i.if.end3.i_crit_edge

clk_prepare_enable.exit.i.i.if.end3.i_crit_edge:  ; preds = %clk_prepare_enable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then3.i.i:                                     ; preds = %clk_prepare_enable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i27.i) #6
  br label %out

if.end3.i:                                        ; preds = %clk_prepare_enable.exit.i.i.if.end3.i_crit_edge, %if.end.i.i.i.if.end3.i_crit_edge
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext 13, i16 noundef zeroext 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i30.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i30.i, label %if.end3.i.e_power.i_crit_edge, label %if.end.i31.i

if.end3.i.e_power.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e_power.i

if.end.i31.i:                                     ; preds = %if.end3.i
  %call.i.i14.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext 13, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i14.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i31.i.e_power.i_crit_edge, label %if.end.i.i32.i

if.end.i31.i.e_power.i_crit_edge:                 ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e_power.i

if.end.i.i32.i:                                   ; preds = %if.end.i31.i
  %output_control.i.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 10
  %10 = ptrtoint ptr %output_control.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %output_control.i.i, align 4
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %12, i8 noundef zeroext 7, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp9.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp9.i.i.i, label %if.end.i.i32.i.e_power.i_crit_edge, label %if.end7.i

if.end.i.i32.i.e_power.i_crit_edge:               ; preds = %if.end.i.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e_power.i

if.end7.i:                                        ; preds = %if.end.i.i32.i
  %13 = ptrtoint ptr %output_control.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %output_control.i.i, align 4
  %ctrls.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 8
  %call8.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.e_power.i_crit_edge, label %if.end7.i.if.end9_crit_edge

if.end7.i.if.end9_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end7.i.e_power.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e_power.i

e_power.i:                                        ; preds = %if.end7.i.e_power.i_crit_edge, %if.end.i.i32.i.e_power.i_crit_edge, %if.end.i31.i.e_power.i_crit_edge, %if.end3.i.e_power.i_crit_edge
  %.str.36.sink.i = phi ptr [ @.str.33, %if.end3.i.e_power.i_crit_edge ], [ @.str.33, %if.end.i31.i.e_power.i_crit_edge ], [ @.str.33, %if.end.i.i32.i.e_power.i_crit_edge ], [ @.str.36, %if.end7.i.e_power.i_crit_edge ]
  %ret.0.i = phi i32 [ %call.i.i.i.i, %if.end3.i.e_power.i_crit_edge ], [ %call.i.i14.i.i, %if.end.i31.i.e_power.i_crit_edge ], [ %call.i.i.i.i.i, %if.end.i.i32.i.e_power.i_crit_edge ], [ %call8.i, %if.end7.i.e_power.i_crit_edge ]
  %dev14.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull %.str.36.sink.i) #9
  %call.i35.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i27.i) #6
  %14 = ptrtoint ptr %clk.i29.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i29.i, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %out

if.end9:                                          ; preds = %if.end7.i.if.end9_crit_edge, %if.then.i, %entry.if.end9_crit_edge
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %16 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %power_count, align 4
  %add = add i32 %17, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp13 = icmp slt i32 %add, 0
  br i1 %cmp13, label %do.end, label %if.end9.out_crit_edge, !prof !125

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 764, i32 noundef 9, ptr noundef null) #6
  br label %out

out:                                              ; preds = %do.end, %if.end9.out_crit_edge, %e_power.i, %if.then3.i.i, %if.end.i.out_crit_edge
  %ret.1 = phi i32 [ 0, %do.end ], [ 0, %if.end9.out_crit_edge ], [ %call.i28.i, %if.end.i.out_crit_edge ], [ %retval.0.i.i.i, %if.then3.i.i ], [ %ret.0.i, %e_power.i ]
  tail call void @mutex_unlock(ptr noundef %power_lock) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_s_stream(ptr nocapture noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %format2 = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 6
  %crop3 = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %output_control.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 10
  %2 = ptrtoint ptr %output_control.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %output_control.i, align 4
  %and.i = and i16 %3, -3
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i, i16 %3)
  %cmp.i = icmp eq i16 %and.i, %3
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %4 = tail call i16 @llvm.bswap.i16(i16 %and.i) #6
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 7, i16 noundef zeroext %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp9.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp9.i, label %if.end.i.cleanup_crit_edge, label %if.end12.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %output_control.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %and.i, ptr %output_control.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 10, i16 noundef zeroext 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %width = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format2, align 4
  %div101 = lshr i32 %12, 1
  %add = add i32 %div101, %10
  %div12 = udiv i32 %add, %12
  %height = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %height15 = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %height15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height15, align 4
  %17 = trunc i32 %div12 to i16
  %conv = add i16 %17, -1
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  %call.i.i103 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 34, i16 noundef zeroext %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %cmp21 = icmp slt i32 %call.i.i103, 0
  br i1 %cmp21, label %if.end10.cleanup_crit_edge, label %if.end24

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end10
  %div17102 = lshr i32 %16, 1
  %add18 = add i32 %div17102, %14
  %div19 = udiv i32 %add18, %16
  %19 = trunc i32 %div19 to i16
  %conv26 = add i16 %19, -1
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv26) #6
  %call.i.i104 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 35, i16 noundef zeroext %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %cmp28 = icmp slt i32 %call.i.i104, 0
  br i1 %cmp28, label %if.end24.cleanup_crit_edge, label %if.end31

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %21 = ptrtoint ptr %crop3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crop3, align 4
  %conv32 = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv32) #6
  %call.i.i105 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %cmp34 = icmp slt i32 %call.i.i105, 0
  br i1 %cmp34, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %top = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %top, align 4
  %conv38 = trunc i32 %25 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv38) #6
  %call.i.i106 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %cmp40 = icmp slt i32 %call.i.i106, 0
  br i1 %cmp40, label %if.end37.cleanup_crit_edge, label %if.end43

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %27 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width, align 4
  %29 = trunc i32 %28 to i16
  %conv46 = add i16 %29, -1
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv46) #6
  %call.i.i107 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 4, i16 noundef zeroext %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %cmp48 = icmp slt i32 %call.i.i107, 0
  br i1 %cmp48, label %if.end43.cleanup_crit_edge, label %if.end51

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %33 = trunc i32 %32 to i16
  %conv54 = add i16 %33, -1
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv54) #6
  %call.i.i108 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 3, i16 noundef zeroext %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %cmp56 = icmp slt i32 %call.i.i108, 0
  br i1 %cmp56, label %if.end51.cleanup_crit_edge, label %if.end59

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  %output_control.i109 = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 10
  %35 = ptrtoint ptr %output_control.i109 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %output_control.i109, align 4
  %or.i = or i16 %36, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %36)
  %cmp.i110 = icmp eq i16 %or.i, %36
  br i1 %cmp.i110, label %if.end59.cleanup_crit_edge, label %if.end.i114

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i114:                                      ; preds = %if.end59
  %37 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %or.i) #6
  %call.i.i.i112 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %38, i8 noundef zeroext 7, i16 noundef zeroext %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i112)
  %cmp9.i113 = icmp slt i32 %call.i.i.i112, 0
  br i1 %cmp9.i113, label %if.end.i114.cleanup_crit_edge, label %if.end12.i115

if.end.i114.cleanup_crit_edge:                    ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i115:                                    ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %output_control.i109 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %or.i, ptr %output_control.i109, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i115, %if.end.i114.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end12.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then6.cleanup_crit_edge ], [ %call.i.i103, %if.end10.cleanup_crit_edge ], [ %call.i.i104, %if.end24.cleanup_crit_edge ], [ %call.i.i105, %if.end31.cleanup_crit_edge ], [ %call.i.i106, %if.end37.cleanup_crit_edge ], [ %call.i.i107, %if.end43.cleanup_crit_edge ], [ %call.i.i108, %if.end51.cleanup_crit_edge ], [ 0, %if.end12.i ], [ 0, %if.then.cleanup_crit_edge ], [ %call.i.i.i, %if.end.i.cleanup_crit_edge ], [ 0, %if.end12.i115 ], [ 0, %if.end59.cleanup_crit_edge ], [ %call.i.i.i112, %if.end.i114.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9t001_enum_mbus_code(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12298, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9t001_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ugt i32 %1, 7
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12298, i32 %3)
  %cmp1.not = icmp eq i32 %3, 12298
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %div.rhs.trunc = trunc i32 %1 to i16
  %div16 = udiv i16 2048, %div.rhs.trunc
  %div.zext = zext i16 %div16 to i32
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %4 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div.zext, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %5 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.zext, ptr %max_width, align 4
  %div517 = udiv i16 1536, %div.rhs.trunc
  %div5.zext = zext i16 %div517 to i32
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %6 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div5.zext, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %7 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div5.zext, ptr %max_height, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_get_format(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %1, label %entry.__mt9t001_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__mt9t001_get_pad_format.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mt9t001_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !126

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__mt9t001_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %format.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 6
  br label %__mt9t001_get_pad_format.exit

__mt9t001_get_pad_format.exit:                    ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__mt9t001_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %format.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__mt9t001_get_pad_format.exit_crit_edge ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format1, ptr %retval.0.i, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_set_format(ptr nocapture noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %entry.__mt9t001_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__mt9t001_get_pad_crop.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mt9t001_get_pad_crop.exit

sw.bb.i:                                          ; preds = %entry
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !126

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i, i32 1
  br label %__mt9t001_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %crop.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 7
  br label %__mt9t001_get_pad_crop.exit

__mt9t001_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %entry.__mt9t001_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %entry.__mt9t001_get_pad_crop.exit_crit_edge ]
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format2, align 4
  %width4 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width4, align 4
  %height19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height19, align 4
  %height22 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height22, align 4
  %17 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %format, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %18, label %__mt9t001_get_pad_crop.exit.__mt9t001_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i104
    i32 1, label %sw.bb1.i107
  ]

__mt9t001_get_pad_crop.exit.__mt9t001_get_pad_format.exit_crit_edge: ; preds = %__mt9t001_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mt9t001_get_pad_format.exit

sw.bb.i104:                                       ; preds = %__mt9t001_get_pad_crop.exit
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pad, align 4
  %num_pads.i.i101 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %22 = ptrtoint ptr %num_pads.i.i101 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_pads.i.i101, align 4
  %conv.i.i102 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i.i102)
  %cmp.not.i.i103 = icmp ult i32 %21, %conv.i.i102
  br i1 %cmp.not.i.i103, label %sw.bb.i104.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i105, !prof !126

sw.bb.i104.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i105:                                    ; preds = %sw.bb.i104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i105, %sw.bb.i104.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i106 = phi i32 [ 0, %do.end.i.i105 ], [ %21, %sw.bb.i104.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %24 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %25, i32 %spec.select.i.i106
  br label %__mt9t001_get_pad_format.exit

sw.bb1.i107:                                      ; preds = %__mt9t001_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  %format.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 6
  br label %__mt9t001_get_pad_format.exit

__mt9t001_get_pad_format.exit:                    ; preds = %sw.bb1.i107, %v4l2_subdev_get_try_format.exit.i, %__mt9t001_get_pad_crop.exit.__mt9t001_get_pad_format.exit_crit_edge
  %retval.0.i108 = phi ptr [ %format.i, %sw.bb1.i107 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %__mt9t001_get_pad_crop.exit.__mt9t001_get_pad_format.exit_crit_edge ]
  %add20 = add i32 %14, 1
  %and21 = and i32 %add20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %16)
  %cmp25 = icmp ugt i32 %16, 23
  %div2398 = lshr i32 %16, 3
  %cond29 = select i1 %cmp25, i32 %div2398, i32 2
  %26 = tail call i32 @llvm.umax.i32(i32 %and21, i32 %cond29)
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %16)
  %div52100 = lshr i32 %27, 1
  %add53 = add i32 %div52100, %16
  %div54 = udiv i32 %add53, %27
  %add = add i32 %10, 1
  %and = and i32 %add, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %12)
  %cmp = icmp ugt i32 %12, 23
  %div97 = lshr i32 %12, 3
  %cond = select i1 %cmp, i32 %div97, i32 2
  %28 = tail call i32 @llvm.umax.i32(i32 %and, i32 %cond)
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %12)
  %div4599 = lshr i32 %29, 1
  %add46 = add i32 %div4599, %12
  %div47 = udiv i32 %add46, %29
  %30 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width4, align 4
  %div59 = udiv i32 %31, %div47
  %32 = ptrtoint ptr %retval.0.i108 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div59, ptr %retval.0.i108, align 4
  %33 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height22, align 4
  %div62 = udiv i32 %34, %div54
  %height63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i108, i32 0, i32 1
  %35 = ptrtoint ptr %height63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div62, ptr %height63, align 4
  %36 = call ptr @memcpy(ptr %format2, ptr %retval.0.i108, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_get_selection(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %3, label %if.end.__mt9t001_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__mt9t001_get_pad_crop.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mt9t001_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %7 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %6, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !126

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %6, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i, i32 1
  br label %__mt9t001_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %crop.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 7
  br label %__mt9t001_get_pad_crop.exit

__mt9t001_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__mt9t001_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__mt9t001_get_pad_crop.exit_crit_edge ]
  %11 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %__mt9t001_get_pad_crop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__mt9t001_get_pad_crop.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_set_selection(ptr nocapture noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  %add = add i32 %3, 1
  %and = and i32 %add, -2
  %4 = tail call i32 @llvm.smax.i32(i32 %and, i32 0)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 2046)
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %add10 = add i32 %7, 1
  %and11 = and i32 %add10, -2
  %8 = tail call i32 @llvm.smax.i32(i32 %and11, i32 0)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 1534)
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %add26 = add i32 %11, 1
  %and27 = and i32 %add26, -2
  %12 = tail call i32 @llvm.umax.i32(i32 %and27, i32 2)
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %add42 = add i32 %14, 1
  %and43 = and i32 %add42, -2
  %15 = tail call i32 @llvm.umax.i32(i32 %and43, i32 2)
  %sub = sub nuw nsw i32 2112, %5
  %16 = tail call i32 @llvm.umin.i32(i32 %12, i32 %sub)
  %sub68 = sub nuw nsw i32 1568, %9
  %17 = tail call i32 @llvm.umin.i32(i32 %15, i32 %sub68)
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %18 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sel, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %19, label %if.end.__mt9t001_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__mt9t001_get_pad_crop.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mt9t001_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end
  %21 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %23 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %22, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !126

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %22, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 %spec.select.i.i, i32 1
  br label %__mt9t001_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %crop.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 7
  br label %__mt9t001_get_pad_crop.exit

__mt9t001_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__mt9t001_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__mt9t001_get_pad_crop.exit_crit_edge ]
  %width78 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %27 = ptrtoint ptr %width78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %28)
  %cmp79.not = icmp eq i32 %16, %28
  br i1 %cmp79.not, label %lor.lhs.false, label %__mt9t001_get_pad_crop.exit.if.then83_crit_edge

__mt9t001_get_pad_crop.exit.if.then83_crit_edge:  ; preds = %__mt9t001_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

lor.lhs.false:                                    ; preds = %__mt9t001_get_pad_crop.exit
  %height81 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %29 = ptrtoint ptr %height81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %30)
  %cmp82.not = icmp eq i32 %17, %30
  br i1 %cmp82.not, label %lor.lhs.false.if.end91_crit_edge, label %lor.lhs.false.if.then83_crit_edge

lor.lhs.false.if.then83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

lor.lhs.false.if.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then83:                                        ; preds = %lor.lhs.false.if.then83_crit_edge, %__mt9t001_get_pad_crop.exit.if.then83_crit_edge
  %31 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sel, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %32, label %if.then83.__mt9t001_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i141
    i32 1, label %sw.bb1.i144
  ]

if.then83.__mt9t001_get_pad_format.exit_crit_edge: ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mt9t001_get_pad_format.exit

sw.bb.i141:                                       ; preds = %if.then83
  %34 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pad, align 4
  %num_pads.i.i138 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %36 = ptrtoint ptr %num_pads.i.i138 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_pads.i.i138, align 4
  %conv.i.i139 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i.i139)
  %cmp.not.i.i140 = icmp ult i32 %35, %conv.i.i139
  br i1 %cmp.not.i.i140, label %sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i142, !prof !126

sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i142:                                    ; preds = %sw.bb.i141
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i142, %sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i143 = phi i32 [ 0, %do.end.i.i142 ], [ %35, %sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %38 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %39, i32 %spec.select.i.i143
  br label %__mt9t001_get_pad_format.exit

sw.bb1.i144:                                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  %format.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 6
  br label %__mt9t001_get_pad_format.exit

__mt9t001_get_pad_format.exit:                    ; preds = %sw.bb1.i144, %v4l2_subdev_get_try_format.exit.i, %if.then83.__mt9t001_get_pad_format.exit_crit_edge
  %retval.0.i145 = phi ptr [ %format.i, %sw.bb1.i144 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.then83.__mt9t001_get_pad_format.exit_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i145 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %16, ptr %retval.0.i145, align 4
  %height90 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i145, i32 0, i32 1
  %41 = ptrtoint ptr %height90 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %17, ptr %height90, align 4
  br label %if.end91

if.end91:                                         ; preds = %__mt9t001_get_pad_format.exit, %lor.lhs.false.if.end91_crit_edge
  %42 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %5, ptr %retval.0.i, align 4
  %rect.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 4
  %43 = ptrtoint ptr %rect.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %9, ptr %rect.sroa.7.0..sroa_idx, align 4
  %44 = ptrtoint ptr %width78 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %16, ptr %width78, align 4
  %rect.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 12
  %45 = ptrtoint ptr %rect.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %17, ptr %rect.sroa.16.0..sroa_idx, align 4
  %46 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %5, ptr %r, align 4
  %47 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %9, ptr %top, align 4
  %48 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %16, ptr %width, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %17, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_registered(ptr noundef %subdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %regulators.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %clk.i = getelementptr inbounds %struct.mt9t001, ptr %subdev, i32 0, i32 2
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.clk_prepare_enable.exit.i_crit_edge

if.end.i.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.then3.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp2.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %clk_prepare_enable.exit.i.if.end_crit_edge

clk_prepare_enable.exit.i.if.end_crit_edge:       ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge
  %call.i.i26 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp.i.i = icmp slt i32 %call.i.i26, 0
  %conv.i.i = trunc i32 %call.i.i26 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %conv1.i.i = zext i16 %4 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i26, i32 %conv1.i.i
  %call.i28 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #6
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %6) #6
  tail call void @clk_unprepare(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5665, i32 %cond.i.i)
  %cmp4.not = icmp eq i32 %cond.i.i, 5665
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br i1 %cmp4.not, label %do.end13, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.42, i32 noundef %cond.i.i) #9
  br label %cleanup

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.45, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end8, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -19, %do.end8 ], [ 0, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_open(ptr noundef %subdev, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !125

entry.v4l2_subdev_get_try_crop.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i, %entry.v4l2_subdev_get_try_crop.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %try_crop.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %try_crop.i, align 4
  %top = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %top, align 4
  %width = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2048, ptr %width, align 4
  %height = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1536, ptr %height, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %12 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i18.not = icmp eq i16 %13, 0
  br i1 %cmp.not.i18.not, label %do.end.i19, label %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit_crit_edge, !prof !125

v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit

do.end.i19:                                       ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i19, %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit_crit_edge
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 12298, ptr %code, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2048, ptr %15, align 4
  %height4 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1536, ptr %height4, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %colorspace, align 4
  %call5 = tail call i32 @mt9t001_set_power(ptr noundef %subdev, i32 noundef 1)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t001_close(ptr noundef %subdev, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt9t001_set_power(ptr noundef %subdev, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_mt9t001__324_990_mt9t001_driver_init6, !1, !"__initcall__kmod_mt9t001__324_990_mt9t001_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/mt9t001.c", i32 990, i32 1}
!2 = !{ptr @__exitcall_mt9t001_driver_exit, !1, !"__exitcall_mt9t001_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description325, !4, !"__UNIQUE_ID_description325", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/mt9t001.c", i32 992, i32 1}
!5 = !{ptr @__UNIQUE_ID_author326, !6, !"__UNIQUE_ID_author326", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/mt9t001.c", i32 993, i32 1}
!7 = !{ptr @__UNIQUE_ID_file327, !8, !"__UNIQUE_ID_file327", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/mt9t001.c", i32 994, i32 1}
!9 = !{ptr @__UNIQUE_ID_license328, !8, !"__UNIQUE_ID_license328", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/mt9t001.c", i32 983, i32 11}
!12 = !{ptr @mt9t001_driver, !13, !"mt9t001_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/mt9t001.c", i32 981, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/mt9t001.c", i32 868, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt9t001_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt9t001_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/mt9t001.c", i32 874, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mt9t001_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mt9t001_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mt9t001_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/mt9t001.c", i32 883, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/mt9t001.c", i32 886, i32 34}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/mt9t001.c", i32 887, i32 34}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/mt9t001.c", i32 891, i32 3}
!36 = !{ptr @mt9t001_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mt9t001_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/mt9t001.c", i32 897, i32 3}
!40 = !{ptr @mt9t001_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mt9t001_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @mt9t001_probe._key, !43, !"_key", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/mt9t001.c", i32 901, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/mt9t001.c", i32 930, i32 3}
!47 = !{ptr @mt9t001_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mt9t001_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mt9t001_ctrl_ops, !50, !"mt9t001_ctrl_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/mt9t001.c", i32 645, i32 35}
!51 = distinct !{null, !52, !"gains", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/mt9t001.c", i32 535, i32 18}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/mt9t001.c", i32 650, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/mt9t001.c", i32 651, i32 2}
!57 = !{ptr @mt9t001_test_pattern_menu, !58, !"mt9t001_test_pattern_menu", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/mt9t001.c", i32 649, i32 27}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/mt9t001.c", i32 659, i32 12}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/mt9t001.c", i32 669, i32 12}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/mt9t001.c", i32 679, i32 12}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/mt9t001.c", i32 689, i32 12}
!67 = !{ptr @mt9t001_ctrls, !68, !"mt9t001_ctrls", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/mt9t001.c", i32 654, i32 38}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/mt9t001.c", i32 703, i32 12}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/mt9t001.c", i32 713, i32 12}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/mt9t001.c", i32 723, i32 12}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/mt9t001.c", i32 733, i32 12}
!77 = !{ptr @mt9t001_gains, !78, !"mt9t001_gains", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/mt9t001.c", i32 698, i32 38}
!79 = !{ptr @mt9t001_subdev_ops, !80, !"mt9t001_subdev_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/mt9t001.c", i32 847, i32 37}
!81 = !{ptr @mt9t001_subdev_core_ops, !82, !"mt9t001_subdev_core_ops", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/mt9t001.c", i32 830, i32 42}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/mt9t001.c", i32 232, i32 3}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__mt9t001_set_power._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @__mt9t001_set_power._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/mt9t001.c", i32 238, i32 3}
!90 = !{ptr @__mt9t001_set_power._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @__mt9t001_set_power._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @mt9t001_subdev_video_ops, !93, !"mt9t001_subdev_video_ops", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/mt9t001.c", i32 834, i32 43}
!94 = !{ptr @mt9t001_subdev_pad_ops, !95, !"mt9t001_subdev_pad_ops", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/mt9t001.c", i32 838, i32 41}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!98 = !{ptr @mt9t001_subdev_internal_ops, !99, !"mt9t001_subdev_internal_ops", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/mt9t001.c", i32 853, i32 46}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/mt9t001.c", i32 784, i32 3}
!102 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mt9t001_registered._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @mt9t001_registered._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/mt9t001.c", i32 793, i32 3}
!107 = !{ptr @mt9t001_registered._entry.41, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @mt9t001_registered._entry_ptr.43, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/mt9t001.c", i32 798, i32 2}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mt9t001_registered._entry.44, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mt9t001_registered._entry_ptr.47, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @mt9t001_id, !115, !"mt9t001_id", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/mt9t001.c", i32 975, i32 35}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{!"branch_weights", i32 2000, i32 1}
