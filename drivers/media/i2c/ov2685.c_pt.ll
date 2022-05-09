; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov2685.c_pt.bc'
source_filename = "../drivers/media/i2c/ov2685.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov2685_mode = type { i32, i32, i32, i32, i32, ptr }
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
%struct.ov2685 = type { ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], i8, %struct.mutex, %struct.v4l2_subdev, %struct.media_pad, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_ctrl_handler, ptr }
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
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_ov2685__293_839_ov2685_i2c_driver_init6 = internal global ptr @ov2685_i2c_driver_init, section ".initcall6.init", align 4
@ov2685_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ov2685_probe, ptr @ov2685_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov2685_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2685_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov2685_i2c_driver_exit = internal global ptr @ov2685_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [51 x i8] c"ov2685.description=OmniVision ov2685 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [37 x i8] c"ov2685.file=drivers/media/i2c/ov2685\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"ov2685.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov2685\00", [25 x i8] zeroinitializer }, align 32
@ov2685_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov2685\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov2685_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2685_runtime_suspend, ptr @ov2685_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [1 x %struct.ov2685_mode], [40 x i8] } { [1 x %struct.ov2685_mode] [%struct.ov2685_mode { i32 1600, i32 1200, i32 1262, i32 1700, i32 1294, ptr @ov2685_1600x1200_regs }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xvclk\00", [26 x i8] zeroinitializer }, align 32
@ov2685_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 726, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get xvclk\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov2685_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov2685.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov2685_probe._entry_ptr = internal global ptr @ov2685_probe._entry, section ".printk_index", align 4
@ov2685_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 731, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set xvclk rate (24MHz)\0A\00", [62 x i8] zeroinitializer }, align 32
@ov2685_probe._entry_ptr.9 = internal global ptr @ov2685_probe._entry.7, section ".printk_index", align 4
@ov2685_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 735, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"xvclk mismatched, modes are based on 24MHz\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ov2685_probe._entry_ptr.13 = internal global ptr @ov2685_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov2685_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 739, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get reset-gpios\0A\00", [37 x i8] zeroinitializer }, align 32
@ov2685_probe._entry_ptr.17 = internal global ptr @ov2685_probe._entry.15, section ".printk_index", align 4
@ov2685_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 745, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get power regulators\0A\00", [32 x i8] zeroinitializer }, align 32
@ov2685_probe._entry_ptr.20 = internal global ptr @ov2685_probe._entry.18, section ".printk_index", align 4
@ov2685_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ov2685->mutex\00", [17 x i8] zeroinitializer }, align 32
@ov2685_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov2685_video_ops, ptr null, ptr null, ptr null, ptr @ov2685_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov2685_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov2685_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov2685_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 777, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"v4l2 async register subdev failed\0A\00", [61 x i8] zeroinitializer }, align 32
@ov2685_probe._entry_ptr.24 = internal global ptr @ov2685_probe._entry.22, section ".printk_index", align 4
@ov2685_1600x1200_regs = internal global { [101 x %struct.regval], [108 x i8] } { [101 x %struct.regval] [%struct.regval { i16 259, i8 1 }, %struct.regval { i16 256, i8 0 }, %struct.regval { i16 12290, i8 0 }, %struct.regval { i16 12310, i8 28 }, %struct.regval { i16 12312, i8 68 }, %struct.regval { i16 12317, i8 -16 }, %struct.regval { i16 12320, i8 0 }, %struct.regval { i16 12418, i8 55 }, %struct.regval { i16 12419, i8 3 }, %struct.regval { i16 12420, i8 9 }, %struct.regval { i16 12421, i8 4 }, %struct.regval { i16 12422, i8 0 }, %struct.regval { i16 12423, i8 0 }, %struct.regval { i16 13569, i8 78 }, %struct.regval { i16 13570, i8 -32 }, %struct.regval { i16 13571, i8 39 }, %struct.regval { i16 13579, i8 54 }, %struct.regval { i16 13824, i8 -76 }, %struct.regval { i16 13827, i8 53 }, %struct.regval { i16 13828, i8 36 }, %struct.regval { i16 13829, i8 0 }, %struct.regval { i16 13856, i8 36 }, %struct.regval { i16 13857, i8 52 }, %struct.regval { i16 13858, i8 3 }, %struct.regval { i16 13864, i8 16 }, %struct.regval { i16 14085, i8 60 }, %struct.regval { i16 14090, i8 33 }, %struct.regval { i16 14092, i8 80 }, %struct.regval { i16 14093, i8 -64 }, %struct.regval { i16 14103, i8 88 }, %struct.regval { i16 14104, i8 -128 }, %struct.regval { i16 14112, i8 0 }, %struct.regval { i16 14113, i8 9 }, %struct.regval { i16 14114, i8 6 }, %struct.regval { i16 14115, i8 89 }, %struct.regval { i16 14136, i8 -103 }, %struct.regval { i16 14209, i8 -128 }, %struct.regval { i16 14212, i8 12 }, %struct.regval { i16 14217, i8 96 }, %struct.regval { i16 14336, i8 0 }, %struct.regval { i16 14337, i8 0 }, %struct.regval { i16 14338, i8 0 }, %struct.regval { i16 14339, i8 0 }, %struct.regval { i16 14340, i8 6 }, %struct.regval { i16 14341, i8 79 }, %struct.regval { i16 14342, i8 4 }, %struct.regval { i16 14343, i8 -65 }, %struct.regval { i16 14344, i8 6 }, %struct.regval { i16 14345, i8 64 }, %struct.regval { i16 14346, i8 4 }, %struct.regval { i16 14347, i8 -80 }, %struct.regval { i16 14348, i8 6 }, %struct.regval { i16 14349, i8 -92 }, %struct.regval { i16 14350, i8 5 }, %struct.regval { i16 14351, i8 14 }, %struct.regval { i16 14352, i8 0 }, %struct.regval { i16 14353, i8 8 }, %struct.regval { i16 14354, i8 0 }, %struct.regval { i16 14355, i8 8 }, %struct.regval { i16 14356, i8 17 }, %struct.regval { i16 14357, i8 17 }, %struct.regval { i16 14361, i8 4 }, %struct.regval { i16 14368, i8 -64 }, %struct.regval { i16 14369, i8 0 }, %struct.regval { i16 14854, i8 1 }, %struct.regval { i16 14855, i8 -124 }, %struct.regval { i16 14856, i8 1 }, %struct.regval { i16 14857, i8 67 }, %struct.regval { i16 14858, i8 36 }, %struct.regval { i16 14859, i8 96 }, %struct.regval { i16 14860, i8 40 }, %struct.regval { i16 14861, i8 96 }, %struct.regval { i16 14862, i8 4 }, %struct.regval { i16 14863, i8 -116 }, %struct.regval { i16 14864, i8 5 }, %struct.regval { i16 14865, i8 12 }, %struct.regval { i16 16384, i8 -127 }, %struct.regval { i16 16385, i8 64 }, %struct.regval { i16 16392, i8 2 }, %struct.regval { i16 16393, i8 9 }, %struct.regval { i16 17152, i8 0 }, %struct.regval { i16 17166, i8 0 }, %struct.regval { i16 17922, i8 2 }, %struct.regval { i16 18459, i8 64 }, %struct.regval { i16 18463, i8 64 }, %struct.regval { i16 18487, i8 24 }, %struct.regval { i16 20480, i8 31 }, %struct.regval { i16 20481, i8 5 }, %struct.regval { i16 20482, i8 48 }, %struct.regval { i16 20483, i8 4 }, %struct.regval { i16 20484, i8 0 }, %struct.regval { i16 20485, i8 12 }, %struct.regval { i16 21120, i8 21 }, %struct.regval { i16 21121, i8 6 }, %struct.regval { i16 21122, i8 6 }, %struct.regval { i16 21123, i8 8 }, %struct.regval { i16 21124, i8 28 }, %struct.regval { i16 21125, i8 28 }, %struct.regval { i16 21126, i8 32 }, %struct.regval { i16 21127, i8 16 }, %struct.regval { i16 -1, i8 0 }], [108 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dovdd\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@ov2685_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2685_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov2685_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov2685_enum_mbus_code, ptr @ov2685_enum_frame_sizes, ptr null, ptr @ov2685_get_fmt, ptr @ov2685_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov2685_initialize_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ov2685:620:(handler)->_lock\00", [36 x i8] zeroinitializer }, align 32
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 330000000], [24 x i8] zeroinitializer }, align 32
@ov2685_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov2685_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov2685_test_pattern_menu = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [40 x i8] zeroinitializer }, align 32
@ov2685_initialize_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to init controls(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ov2685_initialize_controls\00", [37 x i8] zeroinitializer }, align 32
@ov2685_initialize_controls._entry_ptr = internal global ptr @ov2685_initialize_controls._entry, section ".printk_index", align 4
@ov2685_test_pattern_val = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 128, i32 136, i32 129, i32 146, i32 130], [40 x i8] zeroinitializer }, align 32
@ov2685_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 573, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Unhandled id:0x%x, val:0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov2685_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@ov2685_set_ctrl._entry_ptr = internal global ptr @ov2685_set_ctrl._entry, section ".printk_index", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Color Bar\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Color Bar FADE\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Random Data\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Black White Square\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Color Square\00", [19 x i8] zeroinitializer }, align 32
@__ov2685_power_on._entry = internal constant %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, align 1
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable xvclk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__ov2685_power_on\00", [46 x i8] zeroinitializer }, align 32
@__ov2685_power_on._entry_ptr = internal global ptr @__ov2685_power_on._entry, section ".printk_index", align 4
@__ov2685_power_on._entry.41 = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 408, ptr @.str.5, ptr @.str.6 }, align 1
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@__ov2685_power_on._entry_ptr.43 = internal global ptr @__ov2685_power_on._entry.41, section ".printk_index", align 4
@ov2685_check_sensor_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 689, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unexpected sensor id(%04x), ret(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov2685_check_sensor_id\00", [41 x i8] zeroinitializer }, align 32
@ov2685_check_sensor_id._entry_ptr = internal global ptr @ov2685_check_sensor_id._entry, section ".printk_index", align 4
@ov2685_check_sensor_id._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 693, ptr @.str.48, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Detected OV%04x sensor\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov2685_check_sensor_id._entry_ptr.49 = internal global ptr @ov2685_check_sensor_id._entry.46, section ".printk_index", align 4
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963793, i64 10356993, i64 10356995, i64 10422531]
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"ov2685_i2c_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 829, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 831, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"ov2685_of_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 822, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"ov2685_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 524, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 233, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 724, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 726, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 731, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 735, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 737, i32 43 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 739, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 745, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 749, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"ov2685_subdev_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 594, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"ov2685_internal_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 600, i32 46 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 777, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"ov2685_1600x1200_regs\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 106, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 62, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 63, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 64, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"ov2685_video_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 583, i32 43 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"ov2685_pad_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 587, i32 41 }
@___asan_gen_.153 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 620, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 211, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"ov2685_ctrl_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 605, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant [25 x i8] c"ov2685_test_pattern_menu\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 215, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 664, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [24 x i8] c"ov2685_test_pattern_val\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 224, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 572, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 216, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 217, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 218, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 219, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 220, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 221, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 400, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 408, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 689, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private constant [30 x i8] c"../drivers/media/i2c/ov2685.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 693, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 998, i32 6 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_ov2685_i2c_driver_exit, ptr @__initcall__kmod_ov2685__293_839_ov2685_i2c_driver_init6, ptr @__ov2685_power_on._entry, ptr @__ov2685_power_on._entry.41, ptr @__ov2685_power_on._entry_ptr, ptr @__ov2685_power_on._entry_ptr.43, ptr @ov2685_check_sensor_id._entry, ptr @ov2685_check_sensor_id._entry.46, ptr @ov2685_check_sensor_id._entry_ptr, ptr @ov2685_check_sensor_id._entry_ptr.49, ptr @ov2685_i2c_driver_exit, ptr @ov2685_initialize_controls._entry, ptr @ov2685_initialize_controls._entry_ptr, ptr @ov2685_probe._entry, ptr @ov2685_probe._entry.10, ptr @ov2685_probe._entry.15, ptr @ov2685_probe._entry.18, ptr @ov2685_probe._entry.22, ptr @ov2685_probe._entry.7, ptr @ov2685_probe._entry_ptr, ptr @ov2685_probe._entry_ptr.13, ptr @ov2685_probe._entry_ptr.17, ptr @ov2685_probe._entry_ptr.20, ptr @ov2685_probe._entry_ptr.24, ptr @ov2685_probe._entry_ptr.9, ptr @ov2685_set_ctrl._entry, ptr @ov2685_set_ctrl._entry_ptr, ptr @ov2685_i2c_driver, ptr @.str, ptr @ov2685_of_match, ptr @ov2685_pm_ops, ptr @supported_modes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @ov2685_probe.__key, ptr @.str.21, ptr @ov2685_subdev_ops, ptr @ov2685_internal_ops, ptr @.str.23, ptr @ov2685_1600x1200_regs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ov2685_video_ops, ptr @ov2685_pad_ops, ptr @ov2685_initialize_controls._key, ptr @.str.28, ptr @link_freq_menu_items, ptr @ov2685_ctrl_ops, ptr @ov2685_test_pattern_menu, ptr @.str.29, ptr @.str.30, ptr @ov2685_test_pattern_val, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_1600x1200_regs to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_initialize_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_test_pattern_menu to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_initialize_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_test_pattern_val to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_check_sensor_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2685_check_sensor_id._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2685_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov2685_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov2685_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov2685_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2685_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i = alloca i32, align 4
  %reg_addr_be.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 580, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %cur_mode = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 14
  %1 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %xvclk = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 1
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
  %call23 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 3) #8
  %reset_gpio = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call23, ptr %reset_gpio, align 4
  %cmp.i127 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %do.end29, label %if.end30

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %arrayidx1.i = getelementptr %struct.ov2685, ptr %call.i, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.25, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.ov2685, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.26, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.ov2685, ptr %call.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.27, ptr %arrayidx1.2.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %call.i128 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef 3, ptr noundef %arrayidx1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool32.not = icmp eq i32 %call.i128, 0
  br i1 %tobool32.not, label %do.body38, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  br label %cleanup

do.body38:                                        ; preds = %if.end30
  %mutex = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @ov2685_probe.__key) #8
  %subdev = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 6
  tail call void @v4l2_i2c_subdev_init(ptr noundef %subdev, ptr noundef %client, ptr noundef nonnull @ov2685_subdev_ops) #8
  %ctrl_handler.i = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 13
  %11 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_mode, align 4
  %call.i129 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 8, ptr noundef nonnull @ov2685_initialize_controls._key, ptr noundef nonnull @.str.28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body38.err_destroy_mutex_crit_edge

do.body38.err_destroy_mutex_crit_edge:            ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_destroy_mutex

if.end.i:                                         ; preds = %do.body38
  %lock.i = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 13, i32 1
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
  %call8.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef null, i32 noundef 10422530, i64 noundef 0, i64 noundef 66000000, i64 noundef 1, i64 noundef 66000000) #8
  %hts_def.i = getelementptr inbounds %struct.ov2685_mode, ptr %12, i32 0, i32 3
  %16 = ptrtoint ptr %hts_def.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hts_def.i, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 4
  %sub.i = sub i32 %17, %19
  %conv9.i = zext i32 %sub.i to i64
  %call12.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef null, i32 noundef 10356994, i64 noundef %conv9.i, i64 noundef %conv9.i, i64 noundef 1, i64 noundef %conv9.i) #8
  %hblank.i = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call12.i, ptr %hblank.i, align 4
  %tobool14.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool14.not.i, label %if.end4.i.if.end19.i_crit_edge, label %if.then15.i

if.end4.i.if.end19.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags17.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call12.i, i32 0, i32 20
  %21 = ptrtoint ptr %flags17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags17.i, align 4
  %or18.i = or i32 %22, 4
  store i32 %or18.i, ptr %flags17.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end4.i.if.end19.i_crit_edge
  %vts_def.i = getelementptr inbounds %struct.ov2685_mode, ptr %12, i32 0, i32 4
  %23 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vts_def.i, align 4
  %height.i = getelementptr inbounds %struct.ov2685_mode, ptr %12, i32 0, i32 1
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i, align 4
  %sub20.i = sub i32 %24, %26
  %conv21.i = zext i32 %sub20.i to i64
  %sub23.i = sub i32 32767, %26
  %conv24.i = zext i32 %sub23.i to i64
  %call29.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2685_ctrl_ops, i32 noundef 10356993, i64 noundef %conv21.i, i64 noundef %conv24.i, i64 noundef 1, i64 noundef %conv21.i) #8
  %vblank.i = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 11
  %27 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call29.i, ptr %vblank.i, align 4
  %28 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vts_def.i, align 4
  %sub31.i = add i32 %29, -4
  %conv32.i = zext i32 %sub31.i to i64
  %exp_def.i = getelementptr inbounds %struct.ov2685_mode, ptr %12, i32 0, i32 2
  %30 = ptrtoint ptr %exp_def.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %exp_def.i, align 4
  %conv33.i = zext i32 %31 to i64
  %call34.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2685_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv32.i, i64 noundef 1, i64 noundef %conv33.i) #8
  %exposure.i = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call34.i, ptr %exposure.i, align 4
  %call35.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2685_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 2047, i64 noundef 1, i64 noundef 54) #8
  %anal_gain.i = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %anal_gain.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call35.i, ptr %anal_gain.i, align 4
  %call36.i = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2685_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 5, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov2685_test_pattern_menu) #8
  %test_pattern.i = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 12
  %34 = ptrtoint ptr %test_pattern.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call36.i, ptr %test_pattern.i, align 4
  %error.i = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 13, i32 9
  %35 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool37.not.i = icmp eq i32 %36, 0
  br i1 %tobool37.not.i, label %if.end44, label %if.then38.i

if.then38.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %dev.i130 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i130, ptr noundef nonnull @.str.29, i32 noundef %36) #11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #8
  br label %err_destroy_mutex

if.end44:                                         ; preds = %if.end19.i
  %ctrl_handler41.i = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 6, i32 8
  %39 = ptrtoint ptr %ctrl_handler41.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ctrl_handler.i, ptr %ctrl_handler41.i, align 4
  %call45 = tail call fastcc i32 @__ov2685_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.err_free_handler_crit_edge

if.end44.err_free_handler_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_handler

if.end48:                                         ; preds = %if.end44
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %42 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %43 = call ptr @memset(ptr %42, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #8
  %44 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  %45 = ptrtoint ptr %reg_addr_be.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 12298, ptr %reg_addr_be.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr.i.i, align 2
  %48 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i.i, align 2
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2, ptr %42, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %reg_addr_be.i.i, ptr %buf.i.i, align 4
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %47, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 2, ptr %len12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i8, ptr %data_be.i.i, i32 2
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx13.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %56 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp16.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp16.not.i.i, label %ov2685_read_reg.exit.i, label %ov2685_check_sensor_id.exit

ov2685_read_reg.exit.i:                           ; preds = %if.end48
  %58 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9861, i32 %59)
  %cmp.not.i = icmp eq i32 %59, 9861
  br i1 %cmp.not.i, label %ov2685_check_sensor_id.exit.thread, label %ov2685_check_sensor_id.exit.thread139

ov2685_check_sensor_id.exit.thread139:            ; preds = %ov2685_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.44, i32 noundef %59, i32 noundef 0) #11
  br label %if.end52

ov2685_check_sensor_id.exit.thread:               ; preds = %ov2685_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.47, i32 noundef 9861) #11
  br label %if.end52

ov2685_check_sensor_id.exit:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef -5) #11
  br label %err_power_off

if.end52:                                         ; preds = %ov2685_check_sensor_id.exit.thread, %ov2685_check_sensor_id.exit.thread139
  %internal_ops = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 6, i32 7
  %60 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ov2685_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 6, i32 4
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %or = or i32 %62, 4
  store i32 %or, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 7
  %flags55 = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 7, i32 4
  %63 = ptrtoint ptr %flags55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %flags55, align 4
  %function = getelementptr inbounds %struct.ov2685, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  %64 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 131073, ptr %function, align 4
  %call60 = call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end52.err_power_off_crit_edge, label %if.end63

if.end52.err_power_off_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_power_off

if.end63:                                         ; preds = %if.end52
  %call65 = call i32 @v4l2_async_register_subdev(ptr noundef %subdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end71, label %do.end70

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #11
  br label %err_power_off

if.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %call.i132 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i133 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 0) #8
  br label %cleanup

err_power_off:                                    ; preds = %do.end70, %if.end52.err_power_off_crit_edge, %ov2685_check_sensor_id.exit
  %ret.0 = phi i32 [ -5, %ov2685_check_sensor_id.exit ], [ %call60, %if.end52.err_power_off_crit_edge ], [ %call65, %do.end70 ]
  call void @usleep_range_state(i32 noundef 22, i32 noundef 44, i32 noundef 2) #8
  %65 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xvclk, align 4
  call void @clk_disable(ptr noundef %66) #8
  call void @clk_unprepare(ptr noundef %66) #8
  %67 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %68, i32 noundef 1) #8
  %call1.i134 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %arrayidx1.i) #8
  br label %err_free_handler

err_free_handler:                                 ; preds = %err_power_off, %if.end44.err_free_handler_crit_edge
  %ret.1 = phi i32 [ %call45, %if.end44.err_free_handler_crit_edge ], [ %ret.0, %err_power_off ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #8
  br label %err_destroy_mutex

err_destroy_mutex:                                ; preds = %err_free_handler, %if.then38.i, %do.body38.err_destroy_mutex_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_handler ], [ %call.i129, %do.body38.err_destroy_mutex_crit_edge ], [ %36, %if.then38.i ]
  call void @mutex_destroy(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_mutex, %if.end71, %do.end36, %do.end29, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call9, %do.end13 ], [ -22, %do.end29 ], [ %call.i128, %do.end36 ], [ %ret.2, %err_destroy_mutex ], [ 0, %if.end71 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2685_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrl_handler = getelementptr i8, ptr %1, i32 248
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  %mutex = getelementptr i8, ptr %1, i32 -92
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
  tail call void @usleep_range_state(i32 noundef 22, i32 noundef 44, i32 noundef 2) #8
  %xvclk.i = getelementptr i8, ptr %1, i32 -140
  %4 = ptrtoint ptr %xvclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xvclk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %reset_gpio.i = getelementptr i8, ptr %1, i32 -136
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #8
  %supplies.i = getelementptr i8, ptr %1, i32 -132
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #8
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
define internal fastcc i32 @__ov2685_power_on(ptr noundef %ov2685) unnamed_addr #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ov2685 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ov2685, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %xvclk = getelementptr inbounds %struct.ov2685, ptr %ov2685, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %reset_gpio = getelementptr inbounds %struct.ov2685, ptr %ov2685, i32 0, i32 2
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #8
  %supplies = getelementptr inbounds %struct.ov2685, ptr %ov2685, i32 0, i32 3
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #11
  br label %disable_clk

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 342, i32 noundef 684, i32 noundef 2) #8
  %8 = ptrtoint ptr %ov2685 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ov2685, align 4
  %cur_mode = getelementptr inbounds %struct.ov2685, ptr %ov2685, i32 0, i32 14
  %10 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_mode, align 4
  %reg_list = getelementptr inbounds %struct.ov2685_mode, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %reg_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_list, align 4
  %14 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %15 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %if.end8
  %i.014.i = phi i32 [ 0, %if.end8 ], [ %inc.i, %for.body.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.regval, ptr %13, i32 %i.014.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp1.not.i = icmp eq i16 %17, -1
  br i1 %cmp1.not.i, label %land.rhs.i.cleanup_crit_edge, label %for.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %land.rhs.i
  %val.i = getelementptr %struct.regval, ptr %13, i32 %i.014.i, i32 1
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 -1, ptr %15, align 1
  %21 = lshr i16 %17, 8
  %conv1.i.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1.i.i, ptr %buf.i.i, align 1
  %conv3.i.i = trunc i16 %17 to i8
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv3.i.i, ptr %14, align 1
  store i8 %19, ptr %15, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  %cmp11.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  %inc.i = add i32 %i.014.i, 1
  br i1 %cmp11.not.i.i, label %for.body.i.land.rhs.i_crit_edge, label %disable_supplies

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

disable_supplies:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  br label %disable_clk

disable_clk:                                      ; preds = %disable_supplies, %do.end7
  %ret.0 = phi i32 [ %call2, %do.end7 ], [ -5, %disable_supplies ]
  %24 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xvclk, align 4
  call void @clk_disable(ptr noundef %25) #8
  call void @clk_unprepare(ptr noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %land.rhs.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %ret.0, %disable_clk ], [ 0, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

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
define internal i32 @ov2685_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %buf.i50 = alloca [6 x i8], align 1
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sd, i32 -144
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %mutex = getelementptr i8, ptr %sd, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %streaming = getelementptr i8, ptr %sd, i32 -96
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !135
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
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end11

if.then.i:                                        ; preds = %if.then6
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !137
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.unlock_and_return_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.unlock_and_return_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_and_return

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !138
  br label %unlock_and_return

if.end11:                                         ; preds = %if.then6
  %ctrl_handler = getelementptr i8, ptr %sd, i32 248
  %call12 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %dev15, i32 noundef 5) #8
  br label %unlock_and_return

if.end17:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 33554431, ptr %9, align 1
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %buf.i, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %8, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp11.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br i1 %cmp11.not.i, label %if.end17.if.end28_crit_edge, label %if.then20

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i49 = call i32 @__pm_runtime_idle(ptr noundef %dev21, i32 noundef 5) #8
  br label %unlock_and_return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i50) #8
  %13 = getelementptr inbounds [6 x i8], ptr %buf.i50, i32 0, i32 1
  %14 = getelementptr inbounds i8, ptr %buf.i50, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 16777215, ptr %14, align 1
  %16 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %buf.i50, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %13, align 1
  %call.i.i53 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i50, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i50) #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %call.i56 = call i32 @__pm_runtime_idle(ptr noundef %dev26, i32 noundef 5) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end17.if.end28_crit_edge
  %20 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %4, ptr %streaming, align 4
  br label %unlock_and_return

unlock_and_return:                                ; preds = %if.end28, %if.then20, %if.then14, %do.end11.i.i.i.i.i, %if.then.i.unlock_and_return_crit_edge, %entry.unlock_and_return_crit_edge
  %ret.1 = phi i32 [ 0, %entry.unlock_and_return_crit_edge ], [ %call12, %if.then14 ], [ -5, %if.then20 ], [ 0, %if.end28 ], [ %call.i, %if.then.i.unlock_and_return_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov2685_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
define internal i32 @ov2685_enum_frame_sizes(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12295, ptr %code, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %3 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1600, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %4 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1600, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %5 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1200, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %6 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1200, ptr %min_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov2685_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef writeonly %fmt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %cur_mode = getelementptr i8, ptr %sd, i32 432
  %0 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_mode, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12295, ptr %code.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %5 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov2685_mode, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov2685_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef writeonly %fmt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %cur_mode = getelementptr i8, ptr %sd, i32 432
  %0 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_mode, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12295, ptr %code.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %5 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov2685_mode, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2685_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i68 = alloca [6 x i8], align 1
  %buf.i62 = alloca [6 x i8], align 1
  %buf.i56 = alloca [6 x i8], align 1
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -392
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
  %cur_mode = getelementptr i8, ptr %1, i32 184
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov2685_mode, ptr %7, i32 0, i32 1
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
  %exposure = getelementptr i8, ptr %1, i32 -16
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
    i32 10356993, label %sw.bb15
    i32 10422531, label %sw.bb22
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
  br label %sw.epilog29

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val13, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i56) #8
  %37 = getelementptr inbounds [6 x i8], ptr %buf.i56, i32 0, i32 1
  %38 = getelementptr inbounds i8, ptr %buf.i56, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 -1, ptr %38, align 1
  %40 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 53, ptr %buf.i56, align 1
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %37, align 1
  %val_be.i57.2.extract.trunc = trunc i32 %36 to i16
  store i16 %val_be.i57.2.extract.trunc, ptr %38, align 1
  %call.i.i59 = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buf.i56, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i59)
  %cmp11.not.i60 = icmp eq i32 %call.i.i59, 4
  %..i61 = select i1 %cmp11.not.i60, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i56) #8
  br label %sw.epilog29

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 4
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val17, align 4
  %cur_mode18 = getelementptr i8, ptr %1, i32 184
  %46 = ptrtoint ptr %cur_mode18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_mode18, align 4
  %height19 = getelementptr inbounds %struct.ov2685_mode, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height19, align 4
  %add20 = add i32 %49, %45
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i62) #8
  %50 = getelementptr inbounds [6 x i8], ptr %buf.i62, i32 0, i32 1
  %51 = getelementptr inbounds i8, ptr %buf.i62, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 -1, ptr %51, align 1
  %53 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 56, ptr %buf.i62, align 1
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 14, ptr %50, align 1
  %val_be.i63.2.extract.trunc = trunc i32 %add20 to i16
  store i16 %val_be.i63.2.extract.trunc, ptr %51, align 1
  %call.i.i65 = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %buf.i62, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i65)
  %cmp11.not.i66 = icmp eq i32 %call.i.i65, 4
  %..i67 = select i1 %cmp11.not.i66, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i62) #8
  br label %sw.epilog29

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 4
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %57 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val24, align 4
  %arrayidx = getelementptr [6 x i32], ptr @ov2685_test_pattern_val, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i68) #8
  %61 = getelementptr inbounds [6 x i8], ptr %buf.i68, i32 0, i32 1
  %62 = getelementptr inbounds i8, ptr %buf.i68, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 -1, ptr %62, align 1
  %64 = ptrtoint ptr %buf.i68 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 80, ptr %buf.i68, align 1
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -128, ptr %61, align 1
  %val_be.i69.3.extract.trunc = trunc i32 %60 to i8
  store i8 %val_be.i69.3.extract.trunc, ptr %62, align 1
  %call.i.i71 = call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %buf.i68, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i71)
  %cmp11.not.i72 = icmp eq i32 %call.i.i71, 3
  %..i73 = select i1 %cmp11.not.i72, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i68) #8
  br label %sw.epilog29

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %66 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val28, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %22, i32 noundef %67) #11
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %do.end, %sw.bb22, %sw.bb15, %sw.bb11, %sw.bb7
  %ret.0 = phi i32 [ -22, %do.end ], [ %..i73, %sw.bb22 ], [ %..i67, %sw.bb15 ], [ %..i61, %sw.bb11 ], [ %..i, %sw.bb7 ]
  %call.i74 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog29, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog29 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @ov2685_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
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
  br i1 %cmp.i, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !139

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12295, ptr %code.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1600, ptr %5, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1200, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2685_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @usleep_range_state(i32 noundef 22, i32 noundef 44, i32 noundef 2) #8
  %xvclk.i = getelementptr i8, ptr %1, i32 -140
  %2 = ptrtoint ptr %xvclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xvclk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %reset_gpio.i = getelementptr i8, ptr %1, i32 -136
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #8
  %supplies.i = getelementptr i8, ptr %1, i32 -132
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2685_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -144
  %call1 = tail call fastcc i32 @__ov2685_power_on(ptr noundef %add.ptr)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_ov2685__293_839_ov2685_i2c_driver_init6, !1, !"__initcall__kmod_ov2685__293_839_ov2685_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov2685.c", i32 839, i32 1}
!2 = !{ptr @__exitcall_ov2685_i2c_driver_exit, !1, !"__exitcall_ov2685_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov2685.c", i32 841, i32 1}
!5 = !{ptr @__UNIQUE_ID_file295, !6, !"__UNIQUE_ID_file295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov2685.c", i32 842, i32 1}
!7 = !{ptr @__UNIQUE_ID_license296, !6, !"__UNIQUE_ID_license296", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/ov2685.c", i32 831, i32 11}
!10 = !{ptr @ov2685_i2c_driver, !11, !"ov2685_i2c_driver", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov2685.c", i32 829, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov2685.c", i32 724, i32 36}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov2685.c", i32 726, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov2685_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov2685_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov2685.c", i32 731, i32 3}
!24 = !{ptr @ov2685_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov2685_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov2685.c", i32 735, i32 3}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ov2685_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ov2685_probe._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/ov2685.c", i32 737, i32 43}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ov2685.c", i32 739, i32 3}
!35 = !{ptr @ov2685_probe._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ov2685_probe._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ov2685.c", i32 745, i32 3}
!39 = !{ptr @ov2685_probe._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ov2685_probe._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ov2685_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov2685.c", i32 749, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ov2685.c", i32 777, i32 3}
!46 = !{ptr @ov2685_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ov2685_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @supported_modes, !49, !"supported_modes", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov2685.c", i32 233, i32 33}
!50 = !{ptr @ov2685_1600x1200_regs, !51, !"ov2685_1600x1200_regs", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov2685.c", i32 106, i32 22}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov2685.c", i32 62, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov2685.c", i32 63, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov2685.c", i32 64, i32 2}
!58 = distinct !{null, !59, !"ov2685_supply_names", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov2685.c", i32 61, i32 27}
!60 = !{ptr @ov2685_subdev_ops, !61, !"ov2685_subdev_ops", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov2685.c", i32 594, i32 37}
!62 = !{ptr @ov2685_video_ops, !63, !"ov2685_video_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov2685.c", i32 583, i32 43}
!64 = !{ptr @ov2685_pad_ops, !65, !"ov2685_pad_ops", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov2685.c", i32 587, i32 41}
!66 = !{ptr @ov2685_initialize_controls._key, !67, !"_key", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov2685.c", i32 620, i32 8}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/ov2685.c", i32 664, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ov2685_initialize_controls._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ov2685_initialize_controls._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @link_freq_menu_items, !75, !"link_freq_menu_items", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov2685.c", i32 211, i32 18}
!76 = !{ptr @ov2685_ctrl_ops, !77, !"ov2685_ctrl_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ov2685.c", i32 605, i32 35}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov2685.c", i32 572, i32 3}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ov2685_set_ctrl._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ov2685_set_ctrl._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @ov2685_test_pattern_val, !84, !"ov2685_test_pattern_val", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ov2685.c", i32 224, i32 18}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/ov2685.c", i32 216, i32 2}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/ov2685.c", i32 217, i32 2}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/ov2685.c", i32 218, i32 2}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/ov2685.c", i32 219, i32 2}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov2685.c", i32 220, i32 2}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/ov2685.c", i32 221, i32 2}
!97 = !{ptr @ov2685_test_pattern_menu, !98, !"ov2685_test_pattern_menu", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov2685.c", i32 215, i32 27}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ov2685.c", i32 400, i32 3}
!101 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__ov2685_power_on._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @__ov2685_power_on._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ov2685.c", i32 408, i32 3}
!106 = !{ptr @__ov2685_power_on._entry.41, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @__ov2685_power_on._entry_ptr.43, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ov2685.c", i32 689, i32 3}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ov2685_check_sensor_id._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @ov2685_check_sensor_id._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov2685.c", i32 693, i32 2}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ov2685_check_sensor_id._entry.46, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ov2685_check_sensor_id._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @ov2685_internal_ops, !119, !"ov2685_internal_ops", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/ov2685.c", i32 600, i32 46}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!122 = !{ptr @ov2685_of_match, !123, !"ov2685_of_match", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ov2685.c", i32 822, i32 34}
!124 = !{ptr @ov2685_pm_ops, !125, !"ov2685_pm_ops", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov2685.c", i32 524, i32 32}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i8 0, i8 2}
!136 = !{i64 2148257262}
!137 = !{i64 742085, i64 742110, i64 742132, i64 742148, i64 742160, i64 742180, i64 742204, i64 742220, i64 742232}
!138 = !{i64 2148257450}
!139 = !{!"branch_weights", i32 1, i32 2000}
