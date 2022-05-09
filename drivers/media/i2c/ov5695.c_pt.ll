; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov5695.c_pt.bc'
source_filename = "../drivers/media/i2c/ov5695.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov5695_mode = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.regval = type { i16, i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.ov5695 = type { ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_ov5695__293_1402_ov5695_i2c_driver_init6 = internal global ptr @ov5695_i2c_driver_init, section ".initcall6.init", align 4
@ov5695_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ov5695_probe, ptr @ov5695_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov5695_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5695_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov5695_i2c_driver_exit = internal global ptr @ov5695_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [51 x i8] c"ov5695.description=OmniVision ov5695 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [37 x i8] c"ov5695.file=drivers/media/i2c/ov5695\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"ov5695.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov5695\00", [25 x i8] zeroinitializer }, align 32
@ov5695_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov5695\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov5695_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5695_runtime_suspend, ptr @ov5695_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [5 x %struct.ov5695_mode], [52 x i8] } { [5 x %struct.ov5695_mode] [%struct.ov5695_mode { i32 2592, i32 1944, i32 30, i32 2960, i32 2024, i32 1104, ptr @ov5695_2592x1944_regs }, %struct.ov5695_mode { i32 1920, i32 1080, i32 30, i32 2688, i32 2232, i32 1104, ptr @ov5695_1920x1080_regs }, %struct.ov5695_mode { i32 1296, i32 972, i32 60, i32 2960, i32 1012, i32 992, ptr @ov5695_1296x972_regs }, %struct.ov5695_mode { i32 1280, i32 720, i32 30, i32 2688, i32 2232, i32 1104, ptr @ov5695_1280x720_regs }, %struct.ov5695_mode { i32 640, i32 480, i32 120, i32 2688, i32 558, i32 1104, ptr @ov5695_640x480_regs }], [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xvclk\00", [26 x i8] zeroinitializer }, align 32
@ov5695_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get xvclk\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5695_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov5695.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov5695_probe._entry_ptr = internal global ptr @ov5695_probe._entry, section ".printk_index", align 4
@ov5695_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set xvclk rate (24MHz)\0A\00", [62 x i8] zeroinitializer }, align 32
@ov5695_probe._entry_ptr.9 = internal global ptr @ov5695_probe._entry.7, section ".printk_index", align 4
@ov5695_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1296, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"xvclk mismatched, modes are based on 24MHz\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ov5695_probe._entry_ptr.13 = internal global ptr @ov5695_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov5695_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get reset-gpios\0A\00", [37 x i8] zeroinitializer }, align 32
@ov5695_probe._entry_ptr.17 = internal global ptr @ov5695_probe._entry.15, section ".printk_index", align 4
@ov5695_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1306, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get power regulators\0A\00", [32 x i8] zeroinitializer }, align 32
@ov5695_probe._entry_ptr.20 = internal global ptr @ov5695_probe._entry.18, section ".printk_index", align 4
@ov5695_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ov5695->mutex\00", [17 x i8] zeroinitializer }, align 32
@ov5695_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov5695_video_ops, ptr null, ptr null, ptr null, ptr @ov5695_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov5695_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov5695_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov5695_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1340, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"v4l2 async register subdev failed\0A\00", [61 x i8] zeroinitializer }, align 32
@ov5695_probe._entry_ptr.24 = internal global ptr @ov5695_probe._entry.22, section ".printk_index", align 4
@ov5695_2592x1944_regs = internal constant { [29 x %struct.regval], [44 x i8] } { [29 x %struct.regval] [%struct.regval { i16 13569, i8 126 }, %struct.regval { i16 13934, i8 24 }, %struct.regval { i16 14336, i8 0 }, %struct.regval { i16 14337, i8 0 }, %struct.regval { i16 14338, i8 0 }, %struct.regval { i16 14339, i8 4 }, %struct.regval { i16 14340, i8 10 }, %struct.regval { i16 14341, i8 63 }, %struct.regval { i16 14342, i8 7 }, %struct.regval { i16 14343, i8 -85 }, %struct.regval { i16 14344, i8 10 }, %struct.regval { i16 14345, i8 32 }, %struct.regval { i16 14346, i8 7 }, %struct.regval { i16 14347, i8 -104 }, %struct.regval { i16 14348, i8 2 }, %struct.regval { i16 14349, i8 -28 }, %struct.regval { i16 14350, i8 7 }, %struct.regval { i16 14351, i8 -24 }, %struct.regval { i16 14353, i8 6 }, %struct.regval { i16 14355, i8 8 }, %struct.regval { i16 14356, i8 1 }, %struct.regval { i16 14358, i8 1 }, %struct.regval { i16 14359, i8 1 }, %struct.regval { i16 14368, i8 -120 }, %struct.regval { i16 14369, i8 0 }, %struct.regval { i16 17665, i8 0 }, %struct.regval { i16 16392, i8 4 }, %struct.regval { i16 16393, i8 19 }, %struct.regval { i16 -1, i8 0 }], [44 x i8] zeroinitializer }, align 32
@ov5695_1920x1080_regs = internal constant { [29 x %struct.regval], [44 x i8] } { [29 x %struct.regval] [%struct.regval { i16 13569, i8 69 }, %struct.regval { i16 13934, i8 24 }, %struct.regval { i16 14336, i8 1 }, %struct.regval { i16 14337, i8 80 }, %struct.regval { i16 14338, i8 1 }, %struct.regval { i16 14339, i8 -72 }, %struct.regval { i16 14340, i8 8 }, %struct.regval { i16 14341, i8 -17 }, %struct.regval { i16 14342, i8 5 }, %struct.regval { i16 14343, i8 -9 }, %struct.regval { i16 14344, i8 7 }, %struct.regval { i16 14345, i8 -128 }, %struct.regval { i16 14346, i8 4 }, %struct.regval { i16 14347, i8 56 }, %struct.regval { i16 14348, i8 2 }, %struct.regval { i16 14349, i8 -96 }, %struct.regval { i16 14350, i8 8 }, %struct.regval { i16 14351, i8 -72 }, %struct.regval { i16 14353, i8 6 }, %struct.regval { i16 14355, i8 4 }, %struct.regval { i16 14356, i8 1 }, %struct.regval { i16 14358, i8 1 }, %struct.regval { i16 14359, i8 1 }, %struct.regval { i16 14368, i8 -120 }, %struct.regval { i16 14369, i8 0 }, %struct.regval { i16 17665, i8 0 }, %struct.regval { i16 16392, i8 4 }, %struct.regval { i16 16393, i8 19 }, %struct.regval { i16 -1, i8 0 }], [44 x i8] zeroinitializer }, align 32
@ov5695_1296x972_regs = internal constant { [170 x %struct.regval], [184 x i8] } { [170 x %struct.regval] [%struct.regval { i16 259, i8 1 }, %struct.regval { i16 256, i8 0 }, %struct.regval { i16 768, i8 4 }, %struct.regval { i16 769, i8 0 }, %struct.regval { i16 770, i8 105 }, %struct.regval { i16 771, i8 0 }, %struct.regval { i16 772, i8 0 }, %struct.regval { i16 773, i8 1 }, %struct.regval { i16 775, i8 0 }, %struct.regval { i16 779, i8 0 }, %struct.regval { i16 780, i8 0 }, %struct.regval { i16 781, i8 30 }, %struct.regval { i16 782, i8 4 }, %struct.regval { i16 783, i8 3 }, %struct.regval { i16 786, i8 1 }, %struct.regval { i16 12288, i8 0 }, %struct.regval { i16 12290, i8 -95 }, %struct.regval { i16 12296, i8 0 }, %struct.regval { i16 12304, i8 0 }, %struct.regval { i16 12310, i8 50 }, %struct.regval { i16 12322, i8 81 }, %struct.regval { i16 12550, i8 21 }, %struct.regval { i16 12551, i8 1 }, %struct.regval { i16 12552, i8 5 }, %struct.regval { i16 13568, i8 0 }, %struct.regval { i16 13569, i8 62 }, %struct.regval { i16 13570, i8 0 }, %struct.regval { i16 13571, i8 8 }, %struct.regval { i16 13572, i8 3 }, %struct.regval { i16 13573, i8 -116 }, %struct.regval { i16 13575, i8 3 }, %struct.regval { i16 13576, i8 0 }, %struct.regval { i16 13577, i8 16 }, %struct.regval { i16 13580, i8 0 }, %struct.regval { i16 13581, i8 -128 }, %struct.regval { i16 13584, i8 0 }, %struct.regval { i16 13585, i8 2 }, %struct.regval { i16 13586, i8 0 }, %struct.regval { i16 13825, i8 85 }, %struct.regval { i16 13826, i8 88 }, %struct.regval { i16 13841, i8 88 }, %struct.regval { i16 13844, i8 48 }, %struct.regval { i16 13845, i8 119 }, %struct.regval { i16 13857, i8 8 }, %struct.regval { i16 13860, i8 64 }, %struct.regval { i16 13875, i8 12 }, %struct.regval { i16 13876, i8 12 }, %struct.regval { i16 13877, i8 12 }, %struct.regval { i16 13878, i8 12 }, %struct.regval { i16 13880, i8 0 }, %struct.regval { i16 13881, i8 0 }, %struct.regval { i16 13882, i8 0 }, %struct.regval { i16 13883, i8 0 }, %struct.regval { i16 13884, i8 -1 }, %struct.regval { i16 13885, i8 -6 }, %struct.regval { i16 13904, i8 68 }, %struct.regval { i16 13905, i8 68 }, %struct.regval { i16 13906, i8 68 }, %struct.regval { i16 13907, i8 68 }, %struct.regval { i16 13908, i8 68 }, %struct.regval { i16 13909, i8 68 }, %struct.regval { i16 13910, i8 68 }, %struct.regval { i16 13911, i8 68 }, %struct.regval { i16 13920, i8 0 }, %struct.regval { i16 13921, i8 0 }, %struct.regval { i16 13922, i8 0 }, %struct.regval { i16 13930, i8 0 }, %struct.regval { i16 13934, i8 12 }, %struct.regval { i16 13939, i8 4 }, %struct.regval { i16 14080, i8 20 }, %struct.regval { i16 14083, i8 12 }, %struct.regval { i16 14086, i8 36 }, %struct.regval { i16 14100, i8 39 }, %struct.regval { i16 14101, i8 1 }, %struct.regval { i16 14102, i8 0 }, %struct.regval { i16 14103, i8 2 }, %struct.regval { i16 14131, i8 16 }, %struct.regval { i16 14132, i8 64 }, %struct.regval { i16 14143, i8 -96 }, %struct.regval { i16 14181, i8 32 }, %struct.regval { i16 14241, i8 29 }, %struct.regval { i16 14248, i8 38 }, %struct.regval { i16 14251, i8 20 }, %struct.regval { i16 14274, i8 4 }, %struct.regval { i16 14275, i8 -16 }, %struct.regval { i16 14283, i8 9 }, %struct.regval { i16 14284, i8 19 }, %struct.regval { i16 14285, i8 31 }, %struct.regval { i16 14286, i8 31 }, %struct.regval { i16 14336, i8 0 }, %struct.regval { i16 14337, i8 0 }, %struct.regval { i16 14338, i8 0 }, %struct.regval { i16 14339, i8 0 }, %struct.regval { i16 14340, i8 10 }, %struct.regval { i16 14341, i8 63 }, %struct.regval { i16 14342, i8 7 }, %struct.regval { i16 14343, i8 -81 }, %struct.regval { i16 14344, i8 5 }, %struct.regval { i16 14345, i8 16 }, %struct.regval { i16 14346, i8 3 }, %struct.regval { i16 14347, i8 -52 }, %struct.regval { i16 14348, i8 2 }, %struct.regval { i16 14349, i8 -28 }, %struct.regval { i16 14350, i8 3 }, %struct.regval { i16 14351, i8 -12 }, %struct.regval { i16 14352, i8 0 }, %struct.regval { i16 14353, i8 0 }, %struct.regval { i16 14354, i8 0 }, %struct.regval { i16 14355, i8 6 }, %struct.regval { i16 14356, i8 3 }, %struct.regval { i16 14357, i8 1 }, %struct.regval { i16 14358, i8 3 }, %struct.regval { i16 14359, i8 1 }, %struct.regval { i16 14360, i8 0 }, %struct.regval { i16 14361, i8 0 }, %struct.regval { i16 14362, i8 0 }, %struct.regval { i16 14363, i8 1 }, %struct.regval { i16 14368, i8 -117 }, %struct.regval { i16 14369, i8 1 }, %struct.regval { i16 15488, i8 8 }, %struct.regval { i16 15490, i8 0 }, %struct.regval { i16 15491, i8 0 }, %struct.regval { i16 15496, i8 0 }, %struct.regval { i16 15749, i8 20 }, %struct.regval { i16 16130, i8 8 }, %struct.regval { i16 16131, i8 16 }, %struct.regval { i16 16392, i8 2 }, %struct.regval { i16 16393, i8 9 }, %struct.regval { i16 16462, i8 32 }, %struct.regval { i16 17665, i8 0 }, %struct.regval { i16 17666, i8 16 }, %struct.regval { i16 18432, i8 0 }, %struct.regval { i16 18463, i8 42 }, %struct.regval { i16 18487, i8 19 }, %struct.regval { i16 20480, i8 19 }, %struct.regval { i16 22400, i8 62 }, %struct.regval { i16 22401, i8 15 }, %struct.regval { i16 22402, i8 68 }, %struct.regval { i16 22403, i8 2 }, %struct.regval { i16 22404, i8 1 }, %struct.regval { i16 22405, i8 1 }, %struct.regval { i16 22406, i8 0 }, %struct.regval { i16 22407, i8 4 }, %struct.regval { i16 22408, i8 2 }, %struct.regval { i16 22409, i8 15 }, %struct.regval { i16 22410, i8 -3 }, %struct.regval { i16 22411, i8 -11 }, %struct.regval { i16 22412, i8 -11 }, %struct.regval { i16 22413, i8 3 }, %struct.regval { i16 22414, i8 8 }, %struct.regval { i16 22415, i8 12 }, %struct.regval { i16 22416, i8 8 }, %struct.regval { i16 22417, i8 6 }, %struct.regval { i16 22418, i8 0 }, %struct.regval { i16 22419, i8 82 }, %struct.regval { i16 22420, i8 -93 }, %struct.regval { i16 23296, i8 0 }, %struct.regval { i16 23297, i8 28 }, %struct.regval { i16 23298, i8 0 }, %struct.regval { i16 23299, i8 127 }, %struct.regval { i16 23301, i8 108 }, %struct.regval { i16 24080, i8 -4 }, %struct.regval { i16 16400, i8 -15 }, %struct.regval { i16 13571, i8 8 }, %struct.regval { i16 13573, i8 -116 }, %struct.regval { i16 13575, i8 3 }, %struct.regval { i16 13576, i8 0 }, %struct.regval { i16 13577, i8 -8 }, %struct.regval { i16 256, i8 1 }, %struct.regval { i16 -1, i8 0 }], [184 x i8] zeroinitializer }, align 32
@ov5695_1280x720_regs = internal constant { [29 x %struct.regval], [44 x i8] } { [29 x %struct.regval] [%struct.regval { i16 13569, i8 69 }, %struct.regval { i16 13934, i8 12 }, %struct.regval { i16 14336, i8 0 }, %struct.regval { i16 14337, i8 0 }, %struct.regval { i16 14338, i8 1 }, %struct.regval { i16 14339, i8 0 }, %struct.regval { i16 14340, i8 10 }, %struct.regval { i16 14341, i8 63 }, %struct.regval { i16 14342, i8 6 }, %struct.regval { i16 14343, i8 -81 }, %struct.regval { i16 14344, i8 5 }, %struct.regval { i16 14345, i8 0 }, %struct.regval { i16 14346, i8 2 }, %struct.regval { i16 14347, i8 -48 }, %struct.regval { i16 14348, i8 2 }, %struct.regval { i16 14349, i8 -96 }, %struct.regval { i16 14350, i8 8 }, %struct.regval { i16 14351, i8 -72 }, %struct.regval { i16 14353, i8 6 }, %struct.regval { i16 14355, i8 2 }, %struct.regval { i16 14356, i8 3 }, %struct.regval { i16 14358, i8 3 }, %struct.regval { i16 14359, i8 1 }, %struct.regval { i16 14368, i8 -117 }, %struct.regval { i16 14369, i8 1 }, %struct.regval { i16 17665, i8 0 }, %struct.regval { i16 16392, i8 2 }, %struct.regval { i16 16393, i8 9 }, %struct.regval { i16 -1, i8 0 }], [44 x i8] zeroinitializer }, align 32
@ov5695_640x480_regs = internal constant { [29 x %struct.regval], [44 x i8] } { [29 x %struct.regval] [%struct.regval { i16 13569, i8 34 }, %struct.regval { i16 13934, i8 12 }, %struct.regval { i16 14336, i8 0 }, %struct.regval { i16 14337, i8 0 }, %struct.regval { i16 14338, i8 0 }, %struct.regval { i16 14339, i8 8 }, %struct.regval { i16 14340, i8 10 }, %struct.regval { i16 14341, i8 63 }, %struct.regval { i16 14342, i8 7 }, %struct.regval { i16 14343, i8 -89 }, %struct.regval { i16 14344, i8 2 }, %struct.regval { i16 14345, i8 -128 }, %struct.regval { i16 14346, i8 1 }, %struct.regval { i16 14347, i8 -32 }, %struct.regval { i16 14348, i8 2 }, %struct.regval { i16 14349, i8 -96 }, %struct.regval { i16 14350, i8 2 }, %struct.regval { i16 14351, i8 46 }, %struct.regval { i16 14353, i8 6 }, %struct.regval { i16 14355, i8 4 }, %struct.regval { i16 14356, i8 7 }, %struct.regval { i16 14358, i8 5 }, %struct.regval { i16 14359, i8 3 }, %struct.regval { i16 14368, i8 -115 }, %struct.regval { i16 14369, i8 1 }, %struct.regval { i16 17665, i8 0 }, %struct.regval { i16 16392, i8 2 }, %struct.regval { i16 16393, i8 9 }, %struct.regval { i16 -1, i8 0 }], [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dovdd\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@ov5695_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5695_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov5695_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov5695_enum_mbus_code, ptr @ov5695_enum_frame_sizes, ptr null, ptr @ov5695_get_fmt, ptr @ov5695_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov5695_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: start stream failed while write regs\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov5695_s_stream\00", [16 x i8] zeroinitializer }, align 32
@ov5695_s_stream._entry_ptr = internal global ptr @ov5695_s_stream._entry, section ".printk_index", align 4
@ov5695_global_regs = internal constant { [162 x %struct.regval], [184 x i8] } { [162 x %struct.regval] [%struct.regval { i16 259, i8 1 }, %struct.regval { i16 256, i8 0 }, %struct.regval { i16 768, i8 4 }, %struct.regval { i16 769, i8 0 }, %struct.regval { i16 770, i8 105 }, %struct.regval { i16 771, i8 0 }, %struct.regval { i16 772, i8 0 }, %struct.regval { i16 773, i8 1 }, %struct.regval { i16 775, i8 0 }, %struct.regval { i16 779, i8 0 }, %struct.regval { i16 780, i8 0 }, %struct.regval { i16 781, i8 30 }, %struct.regval { i16 782, i8 4 }, %struct.regval { i16 783, i8 3 }, %struct.regval { i16 786, i8 1 }, %struct.regval { i16 12288, i8 0 }, %struct.regval { i16 12290, i8 -95 }, %struct.regval { i16 12296, i8 0 }, %struct.regval { i16 12304, i8 0 }, %struct.regval { i16 12322, i8 81 }, %struct.regval { i16 12550, i8 21 }, %struct.regval { i16 12551, i8 1 }, %struct.regval { i16 12552, i8 5 }, %struct.regval { i16 13568, i8 0 }, %struct.regval { i16 13569, i8 69 }, %struct.regval { i16 13570, i8 0 }, %struct.regval { i16 13571, i8 8 }, %struct.regval { i16 13572, i8 3 }, %struct.regval { i16 13573, i8 -116 }, %struct.regval { i16 13575, i8 3 }, %struct.regval { i16 13576, i8 0 }, %struct.regval { i16 13577, i8 16 }, %struct.regval { i16 13580, i8 0 }, %struct.regval { i16 13581, i8 -128 }, %struct.regval { i16 13584, i8 0 }, %struct.regval { i16 13585, i8 2 }, %struct.regval { i16 13586, i8 0 }, %struct.regval { i16 13825, i8 85 }, %struct.regval { i16 13826, i8 88 }, %struct.regval { i16 13844, i8 48 }, %struct.regval { i16 13845, i8 119 }, %struct.regval { i16 13857, i8 8 }, %struct.regval { i16 13860, i8 64 }, %struct.regval { i16 13875, i8 12 }, %struct.regval { i16 13876, i8 12 }, %struct.regval { i16 13877, i8 12 }, %struct.regval { i16 13878, i8 12 }, %struct.regval { i16 13880, i8 0 }, %struct.regval { i16 13881, i8 0 }, %struct.regval { i16 13882, i8 0 }, %struct.regval { i16 13883, i8 0 }, %struct.regval { i16 13884, i8 -1 }, %struct.regval { i16 13885, i8 -6 }, %struct.regval { i16 13904, i8 68 }, %struct.regval { i16 13905, i8 68 }, %struct.regval { i16 13906, i8 68 }, %struct.regval { i16 13907, i8 68 }, %struct.regval { i16 13908, i8 68 }, %struct.regval { i16 13909, i8 68 }, %struct.regval { i16 13910, i8 68 }, %struct.regval { i16 13911, i8 68 }, %struct.regval { i16 13920, i8 0 }, %struct.regval { i16 13921, i8 0 }, %struct.regval { i16 13922, i8 0 }, %struct.regval { i16 13930, i8 0 }, %struct.regval { i16 13934, i8 12 }, %struct.regval { i16 13939, i8 4 }, %struct.regval { i16 14080, i8 20 }, %struct.regval { i16 14083, i8 12 }, %struct.regval { i16 14101, i8 1 }, %struct.regval { i16 14131, i8 16 }, %struct.regval { i16 14132, i8 64 }, %struct.regval { i16 14143, i8 -96 }, %struct.regval { i16 14181, i8 32 }, %struct.regval { i16 14241, i8 29 }, %struct.regval { i16 14248, i8 38 }, %struct.regval { i16 14251, i8 20 }, %struct.regval { i16 14274, i8 4 }, %struct.regval { i16 14283, i8 9 }, %struct.regval { i16 14284, i8 19 }, %struct.regval { i16 14285, i8 31 }, %struct.regval { i16 14286, i8 31 }, %struct.regval { i16 14336, i8 0 }, %struct.regval { i16 14337, i8 0 }, %struct.regval { i16 14338, i8 0 }, %struct.regval { i16 14339, i8 0 }, %struct.regval { i16 14340, i8 10 }, %struct.regval { i16 14341, i8 63 }, %struct.regval { i16 14342, i8 7 }, %struct.regval { i16 14343, i8 -81 }, %struct.regval { i16 14344, i8 5 }, %struct.regval { i16 14345, i8 16 }, %struct.regval { i16 14346, i8 3 }, %struct.regval { i16 14347, i8 -52 }, %struct.regval { i16 14348, i8 2 }, %struct.regval { i16 14349, i8 -96 }, %struct.regval { i16 14350, i8 8 }, %struct.regval { i16 14351, i8 -72 }, %struct.regval { i16 14352, i8 0 }, %struct.regval { i16 14353, i8 6 }, %struct.regval { i16 14354, i8 0 }, %struct.regval { i16 14355, i8 6 }, %struct.regval { i16 14356, i8 3 }, %struct.regval { i16 14357, i8 1 }, %struct.regval { i16 14358, i8 3 }, %struct.regval { i16 14359, i8 1 }, %struct.regval { i16 14360, i8 0 }, %struct.regval { i16 14361, i8 0 }, %struct.regval { i16 14362, i8 0 }, %struct.regval { i16 14363, i8 1 }, %struct.regval { i16 14368, i8 -117 }, %struct.regval { i16 14369, i8 1 }, %struct.regval { i16 15488, i8 8 }, %struct.regval { i16 15490, i8 0 }, %struct.regval { i16 15491, i8 0 }, %struct.regval { i16 15496, i8 0 }, %struct.regval { i16 15749, i8 20 }, %struct.regval { i16 16130, i8 8 }, %struct.regval { i16 16131, i8 16 }, %struct.regval { i16 16392, i8 2 }, %struct.regval { i16 16393, i8 9 }, %struct.regval { i16 16462, i8 32 }, %struct.regval { i16 17665, i8 0 }, %struct.regval { i16 17666, i8 16 }, %struct.regval { i16 18432, i8 0 }, %struct.regval { i16 18463, i8 42 }, %struct.regval { i16 18487, i8 19 }, %struct.regval { i16 20480, i8 23 }, %struct.regval { i16 22400, i8 62 }, %struct.regval { i16 22401, i8 15 }, %struct.regval { i16 22402, i8 68 }, %struct.regval { i16 22403, i8 2 }, %struct.regval { i16 22404, i8 1 }, %struct.regval { i16 22405, i8 1 }, %struct.regval { i16 22406, i8 0 }, %struct.regval { i16 22407, i8 4 }, %struct.regval { i16 22408, i8 2 }, %struct.regval { i16 22409, i8 15 }, %struct.regval { i16 22410, i8 -3 }, %struct.regval { i16 22411, i8 -11 }, %struct.regval { i16 22412, i8 -11 }, %struct.regval { i16 22413, i8 3 }, %struct.regval { i16 22414, i8 8 }, %struct.regval { i16 22415, i8 12 }, %struct.regval { i16 22416, i8 8 }, %struct.regval { i16 22417, i8 6 }, %struct.regval { i16 22418, i8 0 }, %struct.regval { i16 22419, i8 82 }, %struct.regval { i16 22420, i8 -93 }, %struct.regval { i16 23296, i8 0 }, %struct.regval { i16 23297, i8 28 }, %struct.regval { i16 23298, i8 0 }, %struct.regval { i16 23299, i8 127 }, %struct.regval { i16 23301, i8 108 }, %struct.regval { i16 24080, i8 -4 }, %struct.regval { i16 16400, i8 -15 }, %struct.regval { i16 13571, i8 8 }, %struct.regval { i16 13573, i8 -116 }, %struct.regval { i16 13575, i8 3 }, %struct.regval { i16 13576, i8 0 }, %struct.regval { i16 13577, i8 -8 }, %struct.regval { i16 -1, i8 0 }], [184 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov5695_initialize_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ov5695:1175:(handler)->_lock\00", [35 x i8] zeroinitializer }, align 32
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 420000000], [24 x i8] zeroinitializer }, align 32
@ov5695_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov5695_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov5695_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [44 x i8] zeroinitializer }, align 32
@ov5695_initialize_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 1225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to init controls(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ov5695_initialize_controls\00", [37 x i8] zeroinitializer }, align 32
@ov5695_initialize_controls._entry_ptr = internal global ptr @ov5695_initialize_controls._entry, section ".printk_index", align 4
@ov5695_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 1151, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Unhandled id:0x%x, val:0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov5695_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@ov5695_set_ctrl._entry_ptr = internal global ptr @ov5695_set_ctrl._entry, section ".printk_index", align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 1\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 2\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 3\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 4\00", [38 x i8] zeroinitializer }, align 32
@__ov5695_power_on._entry = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 980, ptr @.str.5, ptr @.str.6 }, align 1
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable xvclk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__ov5695_power_on\00", [46 x i8] zeroinitializer }, align 32
@__ov5695_power_on._entry_ptr = internal global ptr @__ov5695_power_on._entry, section ".printk_index", align 4
@__ov5695_power_on._entry.43 = internal constant %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 994, ptr @.str.5, ptr @.str.6 }, align 1
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable %s: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__ov5695_power_on._entry_ptr.45 = internal global ptr @__ov5695_power_on._entry.43, section ".printk_index", align 4
@ov5695_check_sensor_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unexpected sensor id(%06x), ret(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov5695_check_sensor_id\00", [41 x i8] zeroinitializer }, align 32
@ov5695_check_sensor_id._entry_ptr = internal global ptr @ov5695_check_sensor_id._entry, section ".printk_index", align 4
@ov5695_check_sensor_id._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 1253, ptr @.str.50, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Detected OV%06x sensor\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov5695_check_sensor_id._entry_ptr.51 = internal global ptr @ov5695_check_sensor_id._entry.48, section ".printk_index", align 4
@__ov5695_power_off._entry = internal constant %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 1029, ptr @.str.5, ptr @.str.6 }, align 1
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to disable %s: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__ov5695_power_off\00", [45 x i8] zeroinitializer }, align 32
@__ov5695_power_off._entry_ptr = internal global ptr @__ov5695_power_off._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963793, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"ov5695_i2c_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1392, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1394, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"ov5695_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1385, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"ov5695_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1073, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 643, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1285, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1287, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1292, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1296, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1298, i32 43 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1300, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1306, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1310, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"ov5695_subdev_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1095, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"ov5695_internal_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1079, i32 46 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1340, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [22 x i8] c"ov5695_2592x1944_regs\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 302, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant [22 x i8] c"ov5695_1920x1080_regs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 344, i32 28 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"ov5695_1296x972_regs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 386, i32 28 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"ov5695_1280x720_regs\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 569, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"ov5695_640x480_regs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 611, i32 28 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 73, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 74, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 75, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"ov5695_video_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1084, i32 43 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"ov5695_pad_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1088, i32 41 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 956, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [19 x i8] c"ov5695_global_regs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 127, i32 28 }
@___asan_gen_.181 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 998, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1175, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 692, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"ov5695_ctrl_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1160, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant [25 x i8] c"ov5695_test_pattern_menu\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 696, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1224, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1150, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 697, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 698, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 699, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 700, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 701, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 980, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 993, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1249, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1253, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.262 = private constant [30 x i8] c"../drivers/media/i2c/ov5695.c\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1028, i32 4 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_ov5695_i2c_driver_exit, ptr @__initcall__kmod_ov5695__293_1402_ov5695_i2c_driver_init6, ptr @__ov5695_power_off._entry, ptr @__ov5695_power_off._entry_ptr, ptr @__ov5695_power_on._entry, ptr @__ov5695_power_on._entry.43, ptr @__ov5695_power_on._entry_ptr, ptr @__ov5695_power_on._entry_ptr.45, ptr @ov5695_check_sensor_id._entry, ptr @ov5695_check_sensor_id._entry.48, ptr @ov5695_check_sensor_id._entry_ptr, ptr @ov5695_check_sensor_id._entry_ptr.51, ptr @ov5695_i2c_driver_exit, ptr @ov5695_initialize_controls._entry, ptr @ov5695_initialize_controls._entry_ptr, ptr @ov5695_probe._entry, ptr @ov5695_probe._entry.10, ptr @ov5695_probe._entry.15, ptr @ov5695_probe._entry.18, ptr @ov5695_probe._entry.22, ptr @ov5695_probe._entry.7, ptr @ov5695_probe._entry_ptr, ptr @ov5695_probe._entry_ptr.13, ptr @ov5695_probe._entry_ptr.17, ptr @ov5695_probe._entry_ptr.20, ptr @ov5695_probe._entry_ptr.24, ptr @ov5695_probe._entry_ptr.9, ptr @ov5695_s_stream._entry, ptr @ov5695_s_stream._entry_ptr, ptr @ov5695_set_ctrl._entry, ptr @ov5695_set_ctrl._entry_ptr, ptr @ov5695_i2c_driver, ptr @.str, ptr @ov5695_of_match, ptr @ov5695_pm_ops, ptr @supported_modes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @ov5695_probe.__key, ptr @.str.21, ptr @ov5695_subdev_ops, ptr @ov5695_internal_ops, ptr @.str.23, ptr @ov5695_2592x1944_regs, ptr @ov5695_1920x1080_regs, ptr @ov5695_1296x972_regs, ptr @ov5695_1280x720_regs, ptr @ov5695_640x480_regs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ov5695_video_ops, ptr @ov5695_pad_ops, ptr @.str.28, ptr @.str.29, ptr @ov5695_global_regs, ptr @.str.30, ptr @ov5695_initialize_controls._key, ptr @.str.31, ptr @link_freq_menu_items, ptr @ov5695_ctrl_ops, ptr @ov5695_test_pattern_menu, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_2592x1944_regs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_1920x1080_regs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_1296x972_regs to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_1280x720_regs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_640x480_regs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_global_regs to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_initialize_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_initialize_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_check_sensor_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5695_check_sensor_id._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov5695_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov5695_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov5695_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i = alloca i32, align 4
  %reg_addr_be.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 584, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %cur_mode = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 15
  %1 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %xvclk = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %xvclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %xvclk, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 @clk_set_rate(ptr noundef %call3, i32 noundef 24000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xvclk, align 4
  %call16 = tail call i32 @clk_get_rate(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 24000000
  br i1 %cmp17.not, label %if.end14.if.end22_crit_edge, label %do.end21

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %if.end14.if.end22_crit_edge
  %call23 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 7) #8
  %reset_gpio = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call23, ptr %reset_gpio, align 4
  %cmp.i122 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %do.end29, label %if.end30

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %arrayidx1.i = getelementptr %struct.ov5695, ptr %call.i, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.25, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.ov5695, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.26, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.ov5695, ptr %call.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.27, ptr %arrayidx1.2.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %call.i123 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef 3, ptr noundef %arrayidx1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool32.not = icmp eq i32 %call.i123, 0
  br i1 %tobool32.not, label %do.body38, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  br label %cleanup

do.body38:                                        ; preds = %if.end30
  %mutex = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @ov5695_probe.__key) #8
  %subdev = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef %subdev, ptr noundef %client, ptr noundef nonnull @ov5695_subdev_ops) #8
  %ctrl_handler.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_mode, align 4
  %call.i124 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 8, ptr noundef nonnull @ov5695_initialize_controls._key, ptr noundef nonnull @.str.31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body38.err_destroy_mutex_crit_edge

do.body38.err_destroy_mutex_crit_edge:            ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_destroy_mutex

if.end.i:                                         ; preds = %do.body38
  %lock.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mutex, ptr %lock.i, align 4
  %call1.i = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef null, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call1.i, i32 0, i32 20
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %15, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %call5.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef null, i32 noundef 10422530, i64 noundef 0, i64 noundef 180000000, i64 noundef 1, i64 noundef 180000000) #8
  %hts_def.i = getelementptr inbounds %struct.ov5695_mode, ptr %12, i32 0, i32 3
  %16 = ptrtoint ptr %hts_def.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hts_def.i, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 4
  %sub.i = sub i32 %17, %19
  %conv.i = zext i32 %sub.i to i64
  %call8.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef null, i32 noundef 10356994, i64 noundef %conv.i, i64 noundef %conv.i, i64 noundef 1, i64 noundef %conv.i) #8
  %hblank.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i, ptr %hblank.i, align 4
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %if.end4.i.if.end15.i_crit_edge, label %if.then11.i

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags13.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call8.i, i32 0, i32 20
  %21 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags13.i, align 4
  %or14.i = or i32 %22, 4
  store i32 %or14.i, ptr %flags13.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end4.i.if.end15.i_crit_edge
  %vts_def.i = getelementptr inbounds %struct.ov5695_mode, ptr %12, i32 0, i32 4
  %23 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vts_def.i, align 4
  %height.i = getelementptr inbounds %struct.ov5695_mode, ptr %12, i32 0, i32 1
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i, align 4
  %sub16.i = sub i32 %24, %26
  %conv17.i = zext i32 %sub16.i to i64
  %sub19.i = sub i32 32767, %26
  %conv20.i = zext i32 %sub19.i to i64
  %call21.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5695_ctrl_ops, i32 noundef 10356993, i64 noundef %conv17.i, i64 noundef %conv20.i, i64 noundef 1, i64 noundef %conv17.i) #8
  %vblank.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 11
  %27 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call21.i, ptr %vblank.i, align 4
  %28 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vts_def.i, align 4
  %sub23.i = add i32 %29, -4
  %conv24.i = zext i32 %sub23.i to i64
  %exp_def.i = getelementptr inbounds %struct.ov5695_mode, ptr %12, i32 0, i32 5
  %30 = ptrtoint ptr %exp_def.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %exp_def.i, align 4
  %conv25.i = zext i32 %31 to i64
  %call26.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5695_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv24.i, i64 noundef 1, i64 noundef %conv25.i) #8
  %exposure.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call26.i, ptr %exposure.i, align 4
  %call27.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5695_ctrl_ops, i32 noundef 10356995, i64 noundef 16, i64 noundef 248, i64 noundef 1, i64 noundef 248) #8
  %anal_gain.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %anal_gain.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call27.i, ptr %anal_gain.i, align 4
  %call28.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5695_ctrl_ops, i32 noundef 10422533, i64 noundef 0, i64 noundef 16383, i64 noundef 1, i64 noundef 1024) #8
  %digi_gain.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 9
  %34 = ptrtoint ptr %digi_gain.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call28.i, ptr %digi_gain.i, align 4
  %call29.i = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5695_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov5695_test_pattern_menu) #8
  %test_pattern.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 12
  %35 = ptrtoint ptr %test_pattern.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call29.i, ptr %test_pattern.i, align 4
  %error.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 6, i32 9
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool30.not.i = icmp eq i32 %37, 0
  br i1 %tobool30.not.i, label %if.end44, label %if.then31.i

if.then31.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %dev.i125 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i125, ptr noundef nonnull @.str.32, i32 noundef %37) #11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #8
  br label %err_destroy_mutex

if.end44:                                         ; preds = %if.end15.i
  %ctrl_handler34.i = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 4, i32 8
  %40 = ptrtoint ptr %ctrl_handler34.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ctrl_handler.i, ptr %ctrl_handler34.i, align 4
  %call45 = tail call fastcc i32 @__ov5695_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.err_free_handler_crit_edge

if.end44.err_free_handler_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_handler

if.end48:                                         ; preds = %if.end44
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %43 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %44 = call ptr @memset(ptr %43, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #8
  %45 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  %46 = ptrtoint ptr %reg_addr_be.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 12298, ptr %reg_addr_be.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %47 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr.i.i, align 2
  %49 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i.i, align 2
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 2, ptr %43, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %reg_addr_be.i.i, ptr %buf.i.i, align 4
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %48, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 3, ptr %len12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i8, ptr %data_be.i.i, i32 1
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx13.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %57 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp16.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp16.not.i.i, label %ov5695_read_reg.exit.i, label %ov5695_check_sensor_id.exit

ov5695_read_reg.exit.i:                           ; preds = %if.end48
  %59 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22165, i32 %60)
  %cmp.not.i = icmp eq i32 %60, 22165
  br i1 %cmp.not.i, label %ov5695_check_sensor_id.exit.thread, label %ov5695_check_sensor_id.exit.thread133

ov5695_check_sensor_id.exit.thread133:            ; preds = %ov5695_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.46, i32 noundef %60, i32 noundef 0) #11
  br label %if.end52

ov5695_check_sensor_id.exit.thread:               ; preds = %ov5695_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.49, i32 noundef 22165) #11
  br label %if.end52

ov5695_check_sensor_id.exit:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef -5) #11
  br label %err_power_off

if.end52:                                         ; preds = %ov5695_check_sensor_id.exit.thread, %ov5695_check_sensor_id.exit.thread133
  %internal_ops = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 4, i32 7
  %61 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ov5695_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 4, i32 4
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %or = or i32 %63, 4
  store i32 %or, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 5
  %flags53 = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 5, i32 4
  %64 = ptrtoint ptr %flags53 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %flags53, align 4
  %function = getelementptr inbounds %struct.ov5695, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  %65 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 131073, ptr %function, align 4
  %call56 = call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end52.err_power_off_crit_edge, label %if.end59

if.end52.err_power_off_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_power_off

if.end59:                                         ; preds = %if.end52
  %call60 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef %subdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end66, label %do.end65

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #11
  br label %err_power_off

if.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %call.i127 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i128 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 0) #8
  br label %cleanup

err_power_off:                                    ; preds = %do.end65, %if.end52.err_power_off_crit_edge, %ov5695_check_sensor_id.exit
  %ret.0 = phi i32 [ -5, %ov5695_check_sensor_id.exit ], [ %call56, %if.end52.err_power_off_crit_edge ], [ %call60, %do.end65 ]
  call fastcc void @__ov5695_power_off(ptr noundef nonnull %call.i)
  br label %err_free_handler

err_free_handler:                                 ; preds = %err_power_off, %if.end44.err_free_handler_crit_edge
  %ret.1 = phi i32 [ %call45, %if.end44.err_free_handler_crit_edge ], [ %ret.0, %err_power_off ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #8
  br label %err_destroy_mutex

err_destroy_mutex:                                ; preds = %err_free_handler, %if.then31.i, %do.body38.err_destroy_mutex_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_handler ], [ %call.i124, %do.body38.err_destroy_mutex_crit_edge ], [ %37, %if.then31.i ]
  call void @mutex_destroy(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_mutex, %if.end66, %do.end36, %do.end29, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call9, %do.end13 ], [ -22, %do.end29 ], [ %call.i123, %do.end36 ], [ %ret.2, %err_destroy_mutex ], [ 0, %if.end66 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrl_handler = getelementptr i8, ptr %1, i32 228
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  %mutex = getelementptr i8, ptr %1, i32 436
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %1, i32 -48
  tail call fastcc void @__ov5695_power_off(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ov5695_power_on(ptr nocapture noundef readonly %ov5695) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ov5695 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ov5695, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %xvclk = getelementptr inbounds %struct.ov5695, ptr %ov5695, i32 0, i32 1
  %2 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xvclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #11
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %reset_gpio = getelementptr inbounds %struct.ov5695, ptr %ov5695, i32 0, i32 2
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #8
  %consumer = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.inc, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44, ptr noundef %9, i32 noundef %call3) #11
  br label %for.end21

for.body14.preheader:                             ; preds = %for.inc.1.for.body14.preheader_crit_edge, %for.inc.for.body14.preheader_crit_edge
  %i.047.lcssa.ph = phi i32 [ 2, %for.inc.1.for.body14.preheader_crit_edge ], [ 1, %for.inc.for.body14.preheader_crit_edge ]
  %call3.lcssa.ph = phi i32 [ %call3.2, %for.inc.1.for.body14.preheader_crit_edge ], [ %call3.1, %for.inc.for.body14.preheader_crit_edge ]
  %arrayidx55 = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 %i.047.lcssa.ph
  %10 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44, ptr noundef %11, i32 noundef %call3.lcssa.ph) #11
  %i.150 = add nsw i32 %i.047.lcssa.ph, -1
  %consumer17 = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 %i.150, i32 1
  %12 = ptrtoint ptr %consumer17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %consumer17, align 4
  %call18 = tail call i32 @regulator_disable(ptr noundef %13) #8
  br i1 %tobool.not.1, label %for.body14.1, label %for.body14.preheader.for.end21_crit_edge

for.body14.preheader.for.end21_crit_edge:         ; preds = %for.body14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.inc:                                          ; preds = %if.end
  %consumer.1 = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 1, i32 1
  %14 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %consumer.1, align 4
  %call3.1 = tail call i32 @regulator_enable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.body14.preheader_crit_edge

for.inc.for.body14.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.preheader

for.inc.1:                                        ; preds = %for.inc
  %consumer.2 = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 2, i32 1
  %16 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %consumer.2, align 4
  %call3.2 = tail call i32 @regulator_enable(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.body14.preheader_crit_edge

for.inc.1.for.body14.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.preheader

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  br label %cleanup

for.body14.1:                                     ; preds = %for.body14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %i.150.1 = add nsw i32 %i.047.lcssa.ph, -2
  %consumer17.1 = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 %i.150.1, i32 1
  %20 = ptrtoint ptr %consumer17.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %consumer17.1, align 4
  %call18.1 = tail call i32 @regulator_disable(ptr noundef %21) #8
  br label %for.end21

for.end21:                                        ; preds = %for.body14.1, %for.body14.preheader.for.end21_crit_edge, %do.end7
  %call3.lcssa57 = phi i32 [ %call3, %do.end7 ], [ %call3.lcssa.ph, %for.body14.1 ], [ %call3.lcssa.ph, %for.body14.preheader.for.end21_crit_edge ]
  %22 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xvclk, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end21, %for.inc.2, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %call3.lcssa57, %for.end21 ], [ 0, %for.inc.2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ov5695_power_off(ptr nocapture noundef readonly %ov5695) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ov5695 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ov5695, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %xvclk = getelementptr inbounds %struct.ov5695, ptr %ov5695, i32 0, i32 1
  %2 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xvclk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %reset_gpio = getelementptr inbounds %struct.ov5695, ptr %ov5695, i32 0, i32 2
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #8
  %consumer = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 2, i32 1
  %6 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %do.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.52, ptr noundef %9, i32 noundef %call) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  %consumer.1 = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 1, i32 1
  %10 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer.1, align 4
  %call.1 = tail call i32 @regulator_disable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1 = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.52, ptr noundef %13, i32 noundef %call.1) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  %consumer.2 = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %consumer.2, align 4
  %call.2 = tail call i32 @regulator_disable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

do.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.2 = getelementptr %struct.ov5695, ptr %ov5695, i32 0, i32 3, i32 0
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.52, ptr noundef %17, i32 noundef %call.2) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %buf.i.i43 = alloca [6 x i8], align 1
  %buf.i.i = alloca [6 x i8], align 1
  %buf.i.i21.i = alloca [6 x i8], align 1
  %buf.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sd, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %mutex = getelementptr i8, ptr %sd, i32 436
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %streaming = getelementptr i8, ptr %sd, i32 528
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !151
  %4 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.unlock_and_return_crit_edge, label %if.end

entry.unlock_and_return_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_and_return

if.end:                                           ; preds = %entry
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %if.then6
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !153
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.unlock_and_return_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.unlock_and_return_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_and_return

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !154
  br label %unlock_and_return

if.end10:                                         ; preds = %if.then6
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i.land.rhs.i.i_crit_edge, %if.end10
  %i.013.i.i = phi i32 [ 0, %if.end10 ], [ %inc.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.regval, ptr @ov5695_global_regs, i32 %i.013.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp1.not.i.i = icmp eq i16 %11, -1
  br i1 %cmp1.not.i.i, label %if.end.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %val.i.i = getelementptr %struct.regval, ptr @ov5695_global_regs, i32 %i.013.i.i, i32 1
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 -1, ptr %9, align 1
  %15 = lshr i16 %11, 8
  %conv1.i.i.i = trunc i16 %15 to i8
  %16 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv1.i.i.i, ptr %buf.i.i.i, align 1
  %conv3.i.i.i = trunc i16 %11 to i8
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i.i.i, ptr %8, align 1
  store i8 %13, ptr %9, align 1
  %call.i.i.i.i40 = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  %cmp11.not.i.i.i = icmp eq i32 %call.i.i.i.i40, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #8
  %inc.i.i = add i32 %i.013.i.i, 1
  br i1 %cmp11.not.i.i.i, label %for.body.i.i.land.rhs.i.i_crit_edge, label %for.body.i.i.do.end_crit_edge

for.body.i.i.do.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

if.end.i:                                         ; preds = %land.rhs.i.i
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %cur_mode.i = getelementptr i8, ptr %sd, i32 532
  %20 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_mode.i, align 4
  %reg_list.i = getelementptr inbounds %struct.ov5695_mode, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %reg_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_list.i, align 4
  %24 = getelementptr inbounds [6 x i8], ptr %buf.i.i21.i, i32 0, i32 1
  %25 = getelementptr inbounds i8, ptr %buf.i.i21.i, i32 2
  br label %land.rhs.i25.i

land.rhs.i25.i:                                   ; preds = %for.body.i32.i.land.rhs.i25.i_crit_edge, %if.end.i
  %i.013.i22.i = phi i32 [ 0, %if.end.i ], [ %inc.i31.i, %for.body.i32.i.land.rhs.i25.i_crit_edge ]
  %arrayidx.i23.i = getelementptr %struct.regval, ptr %23, i32 %i.013.i22.i
  %26 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i23.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp1.not.i24.i = icmp eq i16 %27, -1
  br i1 %cmp1.not.i24.i, label %if.end5.i, label %for.body.i32.i

for.body.i32.i:                                   ; preds = %land.rhs.i25.i
  %val.i26.i = getelementptr %struct.regval, ptr %23, i32 %i.013.i22.i, i32 1
  %28 = ptrtoint ptr %val.i26.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val.i26.i, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i21.i) #8
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 -1, ptr %25, align 1
  %31 = lshr i16 %27, 8
  %conv1.i.i27.i = trunc i16 %31 to i8
  %32 = ptrtoint ptr %buf.i.i21.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1.i.i27.i, ptr %buf.i.i21.i, align 1
  %conv3.i.i28.i = trunc i16 %27 to i8
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv3.i.i28.i, ptr %24, align 1
  store i8 %29, ptr %25, align 1
  %call.i.i.i29.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %buf.i.i21.i, i32 noundef 3, i16 noundef zeroext 0) #8
  %cmp11.not.i.i30.i = icmp eq i32 %call.i.i.i29.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i21.i) #8
  %inc.i31.i = add i32 %i.013.i22.i, 1
  br i1 %cmp11.not.i.i30.i, label %for.body.i32.i.land.rhs.i25.i_crit_edge, label %for.body.i32.i.do.end_crit_edge

for.body.i32.i.do.end_crit_edge:                  ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i32.i.land.rhs.i25.i_crit_edge:          ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i25.i

if.end5.i:                                        ; preds = %land.rhs.i25.i
  %ctrl_handler.i = getelementptr i8, ptr %sd, i32 228
  %call6.i = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.do.end_crit_edge

if.end5.i.do.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end9.i:                                        ; preds = %if.end5.i
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %36 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %37 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 33554431, ptr %37, align 1
  %39 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %buf.i.i, align 1
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %36, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp11.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp11.not.i.i, label %if.end9.i.if.end22_crit_edge, label %if.end9.i.do.end_crit_edge

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end9.i.if.end22_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %if.end9.i.do.end_crit_edge, %if.end5.i.do.end_crit_edge, %for.body.i32.i.do.end_crit_edge, %for.body.i.i.do.end_crit_edge
  %retval.0.i41.ph = phi i32 [ %call6.i, %if.end5.i.do.end_crit_edge ], [ -5, %if.end9.i.do.end_crit_edge ], [ -5, %for.body.i32.i.do.end_crit_edge ], [ -5, %for.body.i.i.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name) #11
  %call.i42 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %unlock_and_return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i43) #8
  %43 = getelementptr inbounds [6 x i8], ptr %buf.i.i43, i32 0, i32 1
  %44 = getelementptr inbounds i8, ptr %buf.i.i43, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 16777215, ptr %44, align 1
  %46 = ptrtoint ptr %buf.i.i43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %buf.i.i43, align 1
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %43, align 1
  %call.i.i.i44 = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %buf.i.i43, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i43) #8
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i45 = call i32 @__pm_runtime_idle(ptr noundef %dev20, i32 noundef 5) #8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end9.i.if.end22_crit_edge
  %48 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %4, ptr %streaming, align 4
  br label %unlock_and_return

unlock_and_return:                                ; preds = %if.end22, %do.end, %do.end11.i.i.i.i.i, %if.then.i.unlock_and_return_crit_edge, %entry.unlock_and_return_crit_edge
  %ret.1 = phi i32 [ 0, %entry.unlock_and_return_crit_edge ], [ %retval.0.i41.ph, %do.end ], [ 0, %if.end22 ], [ %call.i, %if.then.i.unlock_and_return_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5695_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12295, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5695_enum_frame_sizes(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12295, i32 %3)
  %cmp1.not = icmp eq i32 %3, 12295
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [5 x %struct.ov5695_mode], ptr @supported_modes, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %7 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %max_width, align 4
  %height = getelementptr [5 x %struct.ov5695_mode], ptr @supported_modes, i32 0, i32 %1, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %10 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %11 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %min_height, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_mode = getelementptr i8, ptr %sd, i32 532
  %0 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_mode, align 4
  %mutex = getelementptr i8, ptr %sd, i32 436
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %5, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !155

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %5, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i
  %10 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %13 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %format1, align 4
  %height = getelementptr inbounds %struct.ov5695_mode, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height4, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12295, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %field, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 436
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %0 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format.i, align 4
  %height4.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %height4.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height4.i.i, align 4
  %sub.i.i = sub i32 2592, %1
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #8
  %sub5.i.i = sub i32 1944, %3
  %5 = tail call i32 @llvm.abs.i32(i32 %sub5.i.i, i1 false) #8
  %add.i.i = add i32 %5, %4
  %sub.i.1.i = sub i32 1920, %1
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i.1.i, i1 false) #8
  %sub5.i.1.i = sub i32 1080, %3
  %7 = tail call i32 @llvm.abs.i32(i32 %sub5.i.1.i, i1 false) #8
  %add.i.1.i = add i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp1.1.i = icmp eq i32 %add.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.1.i, i32 %add.i.i)
  %cmp2.1.i = icmp slt i32 %add.i.1.i, %add.i.i
  %or.cond.1.i = select i1 %cmp1.1.i, i1 true, i1 %cmp2.1.i
  %cur_best_fit.1.1.i = zext i1 %or.cond.1.i to i32
  %cur_best_fit_dist.1.1.i = select i1 %or.cond.1.i, i32 %add.i.1.i, i32 %add.i.i
  %sub.i.2.i = sub i32 1296, %1
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.i.2.i, i1 false) #8
  %sub5.i.2.i = sub i32 972, %3
  %9 = tail call i32 @llvm.abs.i32(i32 %sub5.i.2.i, i1 false) #8
  %add.i.2.i = add i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cur_best_fit_dist.1.1.i)
  %cmp1.2.i = icmp eq i32 %cur_best_fit_dist.1.1.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.2.i, i32 %cur_best_fit_dist.1.1.i)
  %cmp2.2.i = icmp slt i32 %add.i.2.i, %cur_best_fit_dist.1.1.i
  %or.cond.2.i = select i1 %cmp1.2.i, i1 true, i1 %cmp2.2.i
  %cur_best_fit.1.2.i = select i1 %or.cond.2.i, i32 2, i32 %cur_best_fit.1.1.i
  %cur_best_fit_dist.1.2.i = select i1 %or.cond.2.i, i32 %add.i.2.i, i32 %cur_best_fit_dist.1.1.i
  %sub.i.3.i = sub i32 1280, %1
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.i.3.i, i1 false) #8
  %sub5.i.3.i = sub i32 720, %3
  %11 = tail call i32 @llvm.abs.i32(i32 %sub5.i.3.i, i1 false) #8
  %add.i.3.i = add i32 %11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cur_best_fit_dist.1.2.i)
  %cmp1.3.i = icmp eq i32 %cur_best_fit_dist.1.2.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.3.i, i32 %cur_best_fit_dist.1.2.i)
  %cmp2.3.i = icmp slt i32 %add.i.3.i, %cur_best_fit_dist.1.2.i
  %or.cond.3.i = select i1 %cmp1.3.i, i1 true, i1 %cmp2.3.i
  %cur_best_fit.1.3.i = select i1 %or.cond.3.i, i32 3, i32 %cur_best_fit.1.2.i
  %cur_best_fit_dist.1.3.i = select i1 %or.cond.3.i, i32 %add.i.3.i, i32 %cur_best_fit_dist.1.2.i
  %sub.i.4.i = sub i32 640, %1
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.i.4.i, i1 false) #8
  %sub5.i.4.i = sub i32 480, %3
  %13 = tail call i32 @llvm.abs.i32(i32 %sub5.i.4.i, i1 false) #8
  %add.i.4.i = add i32 %13, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cur_best_fit_dist.1.3.i)
  %cmp1.4.i = icmp eq i32 %cur_best_fit_dist.1.3.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.4.i, i32 %cur_best_fit_dist.1.3.i)
  %cmp2.4.i = icmp slt i32 %add.i.4.i, %cur_best_fit_dist.1.3.i
  %or.cond.4.i = select i1 %cmp1.4.i, i1 true, i1 %cmp2.4.i
  %cur_best_fit.1.4.i = select i1 %or.cond.4.i, i32 4, i32 %cur_best_fit.1.3.i
  %arrayidx3.i = getelementptr [5 x %struct.ov5695_mode], ptr @supported_modes, i32 0, i32 %cur_best_fit.1.4.i
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12295, ptr %code, align 4
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx3.i, align 4
  %17 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format.i, align 4
  %height = getelementptr [5 x %struct.ov5695_mode], ptr @supported_modes, i32 0, i32 %cur_best_fit.1.4.i, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %20 = ptrtoint ptr %height4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height4.i.i, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field, align 4
  %22 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %24 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %26 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %25, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !155

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %25, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %28 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %29, i32 %spec.select.i
  %30 = call ptr @memcpy(ptr %arrayidx.i, ptr %format.i, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr i8, ptr %sd, i32 532
  %31 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx3.i, ptr %cur_mode, align 4
  %hts_def = getelementptr [5 x %struct.ov5695_mode], ptr @supported_modes, i32 0, i32 %cur_best_fit.1.4.i, i32 3
  %32 = ptrtoint ptr %hts_def to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hts_def, align 4
  %sub = sub i32 %33, %16
  %conv = zext i32 %sub to i64
  %hblank = getelementptr i8, ptr %sd, i32 424
  %34 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hblank, align 4
  %call9 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %35, i64 noundef %conv, i64 noundef %conv, i64 noundef 1, i64 noundef %conv) #8
  %vts_def = getelementptr [5 x %struct.ov5695_mode], ptr @supported_modes, i32 0, i32 %cur_best_fit.1.4.i, i32 4
  %36 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vts_def, align 4
  %sub11 = sub i32 %37, %19
  %conv12 = zext i32 %sub11 to i64
  %vblank = getelementptr i8, ptr %sd, i32 428
  %38 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vblank, align 4
  %sub14 = sub i32 32767, %19
  %conv15 = zext i32 %sub14 to i64
  %call16 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %39, i64 noundef %conv12, i64 noundef %conv15, i64 noundef 1, i64 noundef %conv12) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  %buf.i84 = alloca [6 x i8], align 1
  %buf.i78 = alloca [6 x i8], align 1
  %buf.i72 = alloca [6 x i8], align 1
  %buf.i66 = alloca [6 x i8], align 1
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -276
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10356993, i32 %5)
  %cond = icmp eq i32 %5, 10356993
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr i8, ptr %1, i32 304
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov5695_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -4
  %sub = add i32 %add, %11
  %conv = zext i32 %sub to i64
  %exposure = getelementptr i8, ptr %1, i32 184
  %12 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %minimum, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 18
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %default_value = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 13
  %19 = ptrtoint ptr %default_value to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %default_value, align 8
  %call = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %13, i64 noundef %15, i64 noundef %conv, i64 noundef %18, i64 noundef %20) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end [
    i32 9963793, label %sw.bb7
    i32 10356995, label %sw.bb11
    i32 10422533, label %sw.bb15
    i32 10356993, label %sw.bb22
    i32 10422531, label %sw.bb29
  ]

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val9, align 4
  %shl = shl i32 %27, 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %28 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %29 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 -1, ptr %29, align 1
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 53, ptr %buf.i, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %28, align 1
  %val_be.i.1.extract.trunc = trunc i32 %shl to i24
  store i24 %val_be.i.1.extract.trunc, ptr %29, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i, i32 noundef 5, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i)
  %cmp11.not.i = icmp eq i32 %call.i.i, 5
  %..i = select i1 %cmp11.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br label %sw.epilog35

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val13, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i66) #8
  %37 = getelementptr inbounds [6 x i8], ptr %buf.i66, i32 0, i32 1
  %38 = getelementptr inbounds i8, ptr %buf.i66, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 -1, ptr %38, align 1
  %40 = ptrtoint ptr %buf.i66 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 53, ptr %buf.i66, align 1
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 9, ptr %37, align 1
  %val_be.i67.3.extract.trunc = trunc i32 %36 to i8
  store i8 %val_be.i67.3.extract.trunc, ptr %38, align 1
  %call.i.i69 = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buf.i66, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i69)
  %cmp11.not.i70 = icmp eq i32 %call.i.i69, 3
  %..i71 = select i1 %cmp11.not.i70, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i66) #8
  br label %sw.epilog35

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 4
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i72) #8
  %46 = getelementptr inbounds [6 x i8], ptr %buf.i72, i32 0, i32 1
  %47 = getelementptr inbounds i8, ptr %buf.i72, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 -1, ptr %47, align 1
  %49 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 53, ptr %buf.i72, align 1
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 11, ptr %46, align 1
  %51 = trunc i32 %45 to i8
  %val_be.i73.3.extract.trunc = and i8 %51, 63
  store i8 %val_be.i73.3.extract.trunc, ptr %47, align 1
  %call.i.i75 = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %buf.i72, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i72) #8
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr, align 4
  %54 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val17, align 4
  %56 = lshr i32 %55, 6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i78) #8
  %57 = getelementptr inbounds [6 x i8], ptr %buf.i78, i32 0, i32 1
  %58 = getelementptr inbounds i8, ptr %buf.i78, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 -1, ptr %58, align 1
  %60 = ptrtoint ptr %buf.i78 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 53, ptr %buf.i78, align 1
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 10, ptr %57, align 1
  %val_be.i79.3.extract.trunc = trunc i32 %56 to i8
  store i8 %val_be.i79.3.extract.trunc, ptr %58, align 1
  %call.i.i81 = call i32 @i2c_transfer_buffer_flags(ptr noundef %53, ptr noundef nonnull %buf.i78, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i81)
  %cmp11.not.i82 = icmp eq i32 %call.i.i81, 3
  %..i83 = select i1 %cmp11.not.i82, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i78) #8
  br label %sw.epilog35

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr, align 4
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %64 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val24, align 4
  %cur_mode25 = getelementptr i8, ptr %1, i32 304
  %66 = ptrtoint ptr %cur_mode25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur_mode25, align 4
  %height26 = getelementptr inbounds %struct.ov5695_mode, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %height26 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height26, align 4
  %add27 = add i32 %69, %65
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i84) #8
  %70 = getelementptr inbounds [6 x i8], ptr %buf.i84, i32 0, i32 1
  %71 = getelementptr inbounds i8, ptr %buf.i84, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 -1, ptr %71, align 1
  %73 = ptrtoint ptr %buf.i84 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 56, ptr %buf.i84, align 1
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 14, ptr %70, align 1
  %val_be.i85.2.extract.trunc = trunc i32 %add27 to i16
  store i16 %val_be.i85.2.extract.trunc, ptr %71, align 1
  %call.i.i87 = call i32 @i2c_transfer_buffer_flags(ptr noundef %63, ptr noundef nonnull %buf.i84, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i87)
  %cmp11.not.i88 = icmp eq i32 %call.i.i87, 4
  %..i89 = select i1 %cmp11.not.i88, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i84) #8
  br label %sw.epilog35

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %75 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i = icmp eq i32 %76, 0
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %79 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %80 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 -1, ptr %80, align 1
  %82 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 69, ptr %buf.i.i, align 1
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %79, align 1
  %84 = trunc i32 %76 to i8
  %85 = add i8 %84, 127
  %86 = or i8 %85, -128
  %val_be.i.3.extract.trunc.i = select i1 %tobool.not.i, i8 0, i8 %86
  store i8 %val_be.i.3.extract.trunc.i, ptr %80, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %78, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp11.not.i.i = icmp eq i32 %call.i.i.i, 3
  %..i.i = select i1 %cmp11.not.i.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br label %sw.epilog35

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %87 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val34, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %22, i32 noundef %88) #11
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %do.end, %sw.bb29, %sw.bb22, %sw.bb15, %sw.bb11, %sw.bb7
  %ret.0 = phi i32 [ 0, %do.end ], [ %..i.i, %sw.bb29 ], [ %..i89, %sw.bb22 ], [ %..i83, %sw.bb15 ], [ %..i71, %sw.bb11 ], [ %..i, %sw.bb7 ]
  %call.i90 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog35, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog35 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !156

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mutex = getelementptr i8, ptr %sd, i32 436
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2592, ptr %5, align 4
  %height2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1944, ptr %height2, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12295, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -48
  tail call fastcc void @__ov5695_power_off(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5695_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -48
  %call1 = tail call fastcc i32 @__ov5695_power_on(ptr noundef %add.ptr)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !83, !85, !86, !88, !89, !90, !91, !93, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !135, !136, !137, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__initcall__kmod_ov5695__293_1402_ov5695_i2c_driver_init6, !1, !"__initcall__kmod_ov5695__293_1402_ov5695_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov5695.c", i32 1402, i32 1}
!2 = !{ptr @__exitcall_ov5695_i2c_driver_exit, !1, !"__exitcall_ov5695_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov5695.c", i32 1404, i32 1}
!5 = !{ptr @__UNIQUE_ID_file295, !6, !"__UNIQUE_ID_file295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov5695.c", i32 1405, i32 1}
!7 = !{ptr @__UNIQUE_ID_license296, !6, !"__UNIQUE_ID_license296", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/ov5695.c", i32 1394, i32 11}
!10 = !{ptr @ov5695_i2c_driver, !11, !"ov5695_i2c_driver", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov5695.c", i32 1392, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov5695.c", i32 1285, i32 36}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov5695.c", i32 1287, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov5695_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov5695_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov5695.c", i32 1292, i32 3}
!24 = !{ptr @ov5695_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov5695_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov5695.c", i32 1296, i32 3}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ov5695_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ov5695_probe._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/ov5695.c", i32 1298, i32 43}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ov5695.c", i32 1300, i32 3}
!35 = !{ptr @ov5695_probe._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ov5695_probe._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ov5695.c", i32 1306, i32 3}
!39 = !{ptr @ov5695_probe._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ov5695_probe._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ov5695_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov5695.c", i32 1310, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ov5695.c", i32 1340, i32 3}
!46 = !{ptr @ov5695_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ov5695_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @supported_modes, !49, !"supported_modes", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov5695.c", i32 643, i32 33}
!50 = !{ptr @ov5695_2592x1944_regs, !51, !"ov5695_2592x1944_regs", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov5695.c", i32 302, i32 28}
!52 = !{ptr @ov5695_1920x1080_regs, !53, !"ov5695_1920x1080_regs", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov5695.c", i32 344, i32 28}
!54 = !{ptr @ov5695_1296x972_regs, !55, !"ov5695_1296x972_regs", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov5695.c", i32 386, i32 28}
!56 = !{ptr @ov5695_1280x720_regs, !57, !"ov5695_1280x720_regs", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov5695.c", i32 569, i32 28}
!58 = !{ptr @ov5695_640x480_regs, !59, !"ov5695_640x480_regs", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov5695.c", i32 611, i32 28}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov5695.c", i32 73, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov5695.c", i32 74, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov5695.c", i32 75, i32 2}
!66 = distinct !{null, !67, !"ov5695_supply_names", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov5695.c", i32 72, i32 27}
!68 = !{ptr @ov5695_subdev_ops, !69, !"ov5695_subdev_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov5695.c", i32 1095, i32 37}
!70 = !{ptr @ov5695_video_ops, !71, !"ov5695_video_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov5695.c", i32 1084, i32 43}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov5695.c", i32 956, i32 4}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ov5695_s_stream._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ov5695_s_stream._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ov5695_global_regs, !78, !"ov5695_global_regs", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ov5695.c", i32 127, i32 28}
!79 = !{ptr @ov5695_pad_ops, !80, !"ov5695_pad_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ov5695.c", i32 1088, i32 41}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!83 = !{ptr @ov5695_initialize_controls._key, !84, !"_key", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ov5695.c", i32 1175, i32 8}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov5695.c", i32 1224, i32 3}
!88 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ov5695_initialize_controls._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ov5695_initialize_controls._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @link_freq_menu_items, !92, !"link_freq_menu_items", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/ov5695.c", i32 692, i32 18}
!93 = !{ptr @ov5695_ctrl_ops, !94, !"ov5695_ctrl_ops", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov5695.c", i32 1160, i32 35}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/ov5695.c", i32 1150, i32 3}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ov5695_set_ctrl._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ov5695_set_ctrl._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ov5695.c", i32 697, i32 2}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov5695.c", i32 698, i32 2}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ov5695.c", i32 699, i32 2}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ov5695.c", i32 700, i32 2}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ov5695.c", i32 701, i32 2}
!110 = !{ptr @ov5695_test_pattern_menu, !111, !"ov5695_test_pattern_menu", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ov5695.c", i32 696, i32 27}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/ov5695.c", i32 980, i32 3}
!114 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @__ov5695_power_on._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @__ov5695_power_on._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov5695.c", i32 993, i32 4}
!119 = !{ptr @__ov5695_power_on._entry.43, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @__ov5695_power_on._entry_ptr.45, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ov5695.c", i32 1249, i32 3}
!123 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ov5695_check_sensor_id._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @ov5695_check_sensor_id._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ov5695.c", i32 1253, i32 2}
!128 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ov5695_check_sensor_id._entry.48, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ov5695_check_sensor_id._entry_ptr.51, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @ov5695_internal_ops, !132, !"ov5695_internal_ops", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/ov5695.c", i32 1079, i32 46}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/ov5695.c", i32 1028, i32 4}
!135 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @__ov5695_power_off._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @__ov5695_power_off._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @ov5695_of_match, !139, !"ov5695_of_match", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/ov5695.c", i32 1385, i32 34}
!140 = !{ptr @ov5695_pm_ops, !141, !"ov5695_pm_ops", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/ov5695.c", i32 1073, i32 32}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i8 0, i8 2}
!152 = !{i64 2148267966}
!153 = !{i64 752789, i64 752814, i64 752836, i64 752852, i64 752864, i64 752884, i64 752908, i64 752924, i64 752936}
!154 = !{i64 2148268154}
!155 = !{!"branch_weights", i32 2000, i32 1}
!156 = !{!"branch_weights", i32 1, i32 2000}
