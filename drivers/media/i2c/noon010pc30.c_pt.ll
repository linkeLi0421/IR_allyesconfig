; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/noon010pc30.c_pt.bc'
source_filename = "../drivers/media/i2c/noon010pc30.c"
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.noon010_format = type { i32, i32, i16 }
%struct.noon010_frmsize = type { i16, i16, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_regval = type { i16, i16 }
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
%struct.noon010_info = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, [3 x %struct.regulator_bulk_data], i32, i32, %struct.mutex, ptr, ptr, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.noon010pc30_platform_data = type { i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__param_str_debug = internal constant [18 x i8] c"noon010pc30.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [31 x i8] c"noon010pc30.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [70 x i8] c"noon010pc30.parm=debug:Enable module debug trace. Set to 1 to enable.\00", section ".modinfo", align 1
@__initcall__kmod_noon010pc30__294_825_noon010_i2c_driver_init6 = internal global ptr @noon010_i2c_driver_init, section ".initcall6.init", align 4
@noon010_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @noon010_probe, ptr @noon010_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @noon010_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_noon010_i2c_driver_exit = internal global ptr @noon010_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [62 x i8] c"noon010pc30.description=Siliconfile NOON010PC30 camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [63 x i8] c"noon010pc30.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [47 x i8] c"noon010pc30.file=drivers/media/i2c/noon010pc30\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [24 x i8] c"noon010pc30.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NOON010PC30\00", [20 x i8] zeroinitializer }, align 32
@noon010_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"NOON010PC30\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@noon010_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No platform data!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noon010_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/i2c/noon010pc30.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@noon010_probe._entry_ptr = internal global ptr @noon010_probe._entry, section ".printk_index", align 4
@noon010_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@noon010_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @noon010_core_ops, ptr null, ptr null, ptr @noon010_video_ops, ptr null, ptr null, ptr null, ptr @noon010_pad_ops }, [32 x i8] zeroinitializer }, align 32
@noon010_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @noon010_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@noon010_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"noon010pc30:728:(&info->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@noon010_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @noon010_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@noon010_formats = internal constant { [5 x %struct.noon010_format], [36 x i8] } { [5 x %struct.noon010_format] [%struct.noon010_format { i32 8200, i32 7, i16 3 }, %struct.noon010_format { i32 8201, i32 7, i16 2 }, %struct.noon010_format { i32 8199, i32 7, i16 0 }, %struct.noon010_format { i32 8198, i32 7, i16 1 }, %struct.noon010_format { i32 4103, i32 7, i16 64 }], [36 x i8] zeroinitializer }, align 32
@noon010_sizes = internal constant { [3 x %struct.noon010_frmsize], [40 x i8] } { [3 x %struct.noon010_frmsize] [%struct.noon010_frmsize { i16 352, i16 288, i32 0 }, %struct.noon010_frmsize { i16 176, i16 144, i32 16 }, %struct.noon010_frmsize { i16 88, i16 72, i32 32 }], [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NOON010PC30 NRST\00", [47 x i8] zeroinitializer }, align 32
@noon010_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 754, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO request error: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@noon010_probe._entry_ptr.11 = internal global ptr @noon010_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NOON010PC30 NSTBY\00", [46 x i8] zeroinitializer }, align 32
@noon010_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 766, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@noon010_probe._entry_ptr.14 = internal global ptr @noon010_probe._entry.13, section ".printk_index", align 4
@noon010_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @noon010_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @noon010_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@noon010_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @noon010_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@noon010_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @noon010_enum_mbus_code, ptr null, ptr null, ptr @noon010_get_fmt, ptr @noon010_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@power_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: %s: sensor is already on\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power_enable\00", [19 x i8] zeroinitializer }, align 32
@power_enable._entry_ptr = internal global ptr @power_enable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@power_enable._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s: sensor is on\0A\00", [40 x i8] zeroinitializer }, align 32
@power_enable._entry_ptr.19 = internal global ptr @power_enable._entry.17, section ".printk_index", align 4
@noon010_base_regs = internal constant { [55 x %struct.i2c_regval], [36 x i8] } { [55 x %struct.i2c_regval] [%struct.i2c_regval { i16 22, i16 6 }, %struct.i2c_regval { i16 28, i16 124 }, %struct.i2c_regval { i16 272, i16 48 }, %struct.i2c_regval { i16 274, i16 48 }, %struct.i2c_regval { i16 281, i16 128 }, %struct.i2c_regval { i16 282, i16 4 }, %struct.i2c_regval { i16 288, i16 31 }, %struct.i2c_regval { i16 289, i16 144 }, %struct.i2c_regval { i16 304, i16 15 }, %struct.i2c_regval { i16 307, i16 60 }, %struct.i2c_regval { i16 309, i16 44 }, %struct.i2c_regval { i16 310, i16 63 }, %struct.i2c_regval { i16 312, i16 121 }, %struct.i2c_regval { i16 321, i16 0 }, %struct.i2c_regval { i16 313, i16 57 }, %struct.i2c_regval { i16 322, i16 0 }, %struct.i2c_regval { i16 314, i16 0 }, %struct.i2c_regval { i16 323, i16 0 }, %struct.i2c_regval { i16 315, i16 17 }, %struct.i2c_regval { i16 324, i16 139 }, %struct.i2c_regval { i16 316, i16 101 }, %struct.i2c_regval { i16 325, i16 7 }, %struct.i2c_regval { i16 317, i16 20 }, %struct.i2c_regval { i16 326, i16 4 }, %struct.i2c_regval { i16 318, i16 1 }, %struct.i2c_regval { i16 327, i16 156 }, %struct.i2c_regval { i16 319, i16 51 }, %struct.i2c_regval { i16 328, i16 137 }, %struct.i2c_regval { i16 320, i16 116 }, %struct.i2c_regval { i16 329, i16 37 }, %struct.i2c_regval { i16 1040, i16 120 }, %struct.i2c_regval { i16 1041, i16 46 }, %struct.i2c_regval { i16 1042, i16 32 }, %struct.i2c_regval { i16 1043, i16 133 }, %struct.i2c_regval { i16 784, i16 220 }, %struct.i2c_regval { i16 785, i16 129 }, %struct.i2c_regval { i16 786, i16 48 }, %struct.i2c_regval { i16 787, i16 165 }, %struct.i2c_regval { i16 788, i16 64 }, %struct.i2c_regval { i16 789, i16 81 }, %struct.i2c_regval { i16 790, i16 51 }, %struct.i2c_regval { i16 791, i16 126 }, %struct.i2c_regval { i16 812, i16 0 }, %struct.i2c_regval { i16 813, i16 2 }, %struct.i2c_regval { i16 796, i16 68 }, %struct.i2c_regval { i16 797, i16 52 }, %struct.i2c_regval { i16 798, i16 48 }, %struct.i2c_regval { i16 806, i16 213 }, %struct.i2c_regval { i16 464, i16 1 }, %struct.i2c_regval { i16 465, i16 128 }, %struct.i2c_regval { i16 466, i16 112 }, %struct.i2c_regval { i16 467, i16 83 }, %struct.i2c_regval { i16 468, i16 64 }, %struct.i2c_regval { i16 469, i16 62 }, %struct.i2c_regval { i16 -1, i16 0 }], [36 x i8] zeroinitializer }, align 32
@power_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: %s: sensor is already off\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power_disable\00", [18 x i8] zeroinitializer }, align 32
@power_disable._entry_ptr = internal global ptr @power_disable._entry, section ".printk_index", align 4
@power_disable._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: sensor is off\0A\00", [39 x i8] zeroinitializer }, align 32
@power_disable._entry_ptr.24 = internal global ptr @power_disable._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@noon010_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: ctrl_id: %d, value: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"noon010_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@noon010_s_ctrl._entry_ptr = internal global ptr @noon010_s_ctrl._entry, section ".printk_index", align 4
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd_core\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@noon010_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 693, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I2C read failed: 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"noon010_detect\00", [17 x i8] zeroinitializer }, align 32
@noon010_detect._entry_ptr = internal global ptr @noon010_detect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4103, i64 8198, i64 8199]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 9963788, i64 9963790, i64 9963791]
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 25, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"noon010_i2c_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 816, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 818, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"noon010_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 809, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 711, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 719, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"noon010_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 676, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"noon010_subdev_internal_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 653, i32 46 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 728, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"noon010_ctrl_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 657, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"noon010_formats\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 172, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"noon010_sizes\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 155, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 752, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 754, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 764, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 766, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"noon010_core_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 661, i32 42 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"noon010_video_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 672, i32 43 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"noon010_pad_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 666, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 392, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 423, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [18 x i8] c"noon010_base_regs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 196, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 433, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 449, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 998, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 460, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 123, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 123, i32 14 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 123, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [35 x i8] c"../drivers/media/i2c/noon010pc30.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 693, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_noon010_i2c_driver_exit, ptr @__initcall__kmod_noon010pc30__294_825_noon010_i2c_driver_init6, ptr @__param_debug, ptr @noon010_detect._entry, ptr @noon010_detect._entry_ptr, ptr @noon010_i2c_driver_exit, ptr @noon010_probe._entry, ptr @noon010_probe._entry.13, ptr @noon010_probe._entry.9, ptr @noon010_probe._entry_ptr, ptr @noon010_probe._entry_ptr.11, ptr @noon010_probe._entry_ptr.14, ptr @noon010_s_ctrl._entry, ptr @noon010_s_ctrl._entry_ptr, ptr @power_disable._entry, ptr @power_disable._entry.22, ptr @power_disable._entry_ptr, ptr @power_disable._entry_ptr.24, ptr @power_enable._entry, ptr @power_enable._entry.17, ptr @power_enable._entry_ptr, ptr @power_enable._entry_ptr.19, ptr @debug, ptr @noon010_i2c_driver, ptr @.str, ptr @noon010_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @noon010_probe.__key, ptr @.str.6, ptr @noon010_ops, ptr @noon010_subdev_internal_ops, ptr @noon010_probe._key, ptr @.str.7, ptr @noon010_ctrl_ops, ptr @noon010_formats, ptr @noon010_sizes, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @noon010_core_ops, ptr @noon010_video_ops, ptr @noon010_pad_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @noon010_base_regs, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_formats to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_sizes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_enable._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_base_regs to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_disable._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noon010_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @noon010_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @noon010_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @noon010_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @noon010_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noon010_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 560, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @noon010_probe.__key) #6
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @noon010_ops) #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call10 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #6
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @noon010_subdev_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 4
  store i32 %or, ptr %flags, align 4
  %hdl = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 2
  %call11 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 3, ptr noundef nonnull @noon010_probe._key, ptr noundef nonnull @.str.7) #6
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @noon010_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @noon010_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #6
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @noon010_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #6
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 2, i32 9
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not = icmp eq i32 %7, 0
  br i1 %tobool20.not, label %if.end22, label %do.body6.np_err_crit_edge

do.body6.np_err_crit_edge:                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %np_err

if.end22:                                         ; preds = %do.body6
  %i2c_reg_page = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %i2c_reg_page to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %i2c_reg_page, align 1
  %gpio_nreset = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -22, ptr %gpio_nreset, align 4
  %gpio_nstby = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %gpio_nstby to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %gpio_nstby, align 4
  %curr_fmt = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %curr_fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @noon010_formats, ptr %curr_fmt, align 4
  %curr_win = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %curr_win to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @noon010_sizes, ptr %curr_win, align 4
  %gpio_nreset23 = getelementptr inbounds %struct.noon010pc30_platform_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %gpio_nreset23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_nreset23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %14)
  %15 = icmp ult i32 %14, 2048
  br i1 %15, label %if.then25, label %if.end22.if.end40_crit_edge

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then25:                                        ; preds = %if.end22
  %call28 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %14, i32 noundef 0, ptr noundef nonnull @.str.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call28) #9
  br label %np_err

if.end35:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %gpio_nreset23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_nreset23, align 4
  %18 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gpio_nreset, align 4
  %call.i141 = tail call ptr @gpio_to_desc(i32 noundef %17) #6
  %call1.i = tail call i32 @gpiod_export(ptr noundef %call.i141, i1 noundef zeroext false) #6
  br label %if.end40

if.end40:                                         ; preds = %if.end35, %if.end22.if.end40_crit_edge
  %gpio_nstby41 = getelementptr inbounds %struct.noon010pc30_platform_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %gpio_nstby41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_nstby41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %21 = icmp ult i32 %20, 2048
  br i1 %21, label %if.then43, label %if.end40.if.end58_crit_edge

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then43:                                        ; preds = %if.end40
  %call46 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %20, i32 noundef 0, ptr noundef nonnull @.str.12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call46) #9
  br label %np_err

if.end53:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %gpio_nstby41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_nstby41, align 4
  %24 = ptrtoint ptr %gpio_nstby to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %gpio_nstby, align 4
  %call.i142 = tail call ptr @gpio_to_desc(i32 noundef %23) #6
  %call1.i143 = tail call i32 @gpiod_export(ptr noundef %call.i142, i1 noundef zeroext false) #6
  br label %if.end58

if.end58:                                         ; preds = %if.end53, %if.end40.if.end58_crit_edge
  %arrayidx59 = getelementptr %struct.noon010_info, ptr %call.i, i32 0, i32 3, i32 0
  %25 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.28, ptr %arrayidx59, align 4
  %arrayidx59.1 = getelementptr %struct.noon010_info, ptr %call.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.29, ptr %arrayidx59.1, align 4
  %arrayidx59.2 = getelementptr %struct.noon010_info, ptr %call.i, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.30, ptr %arrayidx59.2, align 4
  %call64 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end58.np_err_crit_edge

if.end58.np_err_crit_edge:                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %np_err

if.end67:                                         ; preds = %if.end58
  %pad = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 1
  %flags68 = getelementptr inbounds %struct.noon010_info, ptr %call.i, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %flags68 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %flags68, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 131073, ptr %function, align 4
  %call71 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end67.np_err_crit_edge, label %if.end74

if.end67.np_err_crit_edge:                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %np_err

if.end74:                                         ; preds = %if.end67
  %call.i144 = tail call fastcc i32 @power_enable(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end74.np_err_crit_edge

if.end74.np_err_crit_edge:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %np_err

if.end.i:                                         ; preds = %if.end74
  %call1.i145 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i145)
  %cmp.i = icmp slt i32 %call1.i145, 0
  br i1 %cmp.i, label %if.end3.i.thread, label %if.end3.i

if.end3.i.thread:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call1.i145) #9
  %call4.i148 = tail call fastcc i32 @power_disable(ptr noundef nonnull %call.i) #6
  br label %np_err

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call fastcc i32 @power_disable(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %call1.i145)
  %cmp5.i = icmp eq i32 %call1.i145, 134
  br i1 %cmp5.i, label %if.end3.i.cleanup_crit_edge, label %if.end3.i.np_err_crit_edge

if.end3.i.np_err_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %np_err

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

np_err:                                           ; preds = %if.end3.i.np_err_crit_edge, %if.end3.i.thread, %if.end74.np_err_crit_edge, %if.end67.np_err_crit_edge, %if.end58.np_err_crit_edge, %do.end51, %do.end33, %do.body6.np_err_crit_edge
  %ret.0 = phi i32 [ %7, %do.body6.np_err_crit_edge ], [ %call28, %do.end33 ], [ %call46, %do.end51 ], [ %call64, %if.end58.np_err_crit_edge ], [ %call71, %if.end67.np_err_crit_edge ], [ %call.i144, %if.end74.np_err_crit_edge ], [ -19, %if.end3.i.np_err_crit_edge ], [ -19, %if.end3.i.thread ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %np_err, %if.end3.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %np_err ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noon010_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  %hdl = getelementptr inbounds %struct.noon010_info, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noon010_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 2
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noon010_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @power_enable(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end7.thread_crit_edge

if.then.if.end7.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.thread

if.then3:                                         ; preds = %if.then
  %dev_priv.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %i2c_reg_page.i.i.i.i = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %cam_i2c_write.exit.i.i.while.cond.i.i_crit_edge, %if.then3
  %msg.addr.0.i.i = phi ptr [ @noon010_base_regs, %if.then3 ], [ %incdec.ptr.i.i, %cam_i2c_write.exit.i.i.while.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %msg.addr.0.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg.addr.0.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.not.i.i = icmp eq i16 %1, -1
  br i1 %cmp.not.i.i, label %if.end.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %val.i.i = getelementptr inbounds %struct.i2c_regval, ptr %msg.addr.0.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %val.i.i, align 2
  %4 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i16 %1, 8
  %6 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_reg_page.i.i.i.i, align 1
  %8 = trunc i16 %shr.i.i.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp.not.i.i.i.i = icmp eq i8 %7, %8
  %9 = and i16 %1, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %9)
  %cmp3.not.i.i.i.i = icmp eq i16 %9, 3
  %or.cond.i.i.i.i = or i1 %cmp3.not.i.i.i.i, %cmp.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %while.body.i.i.cam_i2c_write.exit.i.i_crit_edge, label %if.then.i.i.i.i

while.body.i.i.cam_i2c_write.exit.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cam_i2c_write.exit.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 3, i8 noundef zeroext %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then6.i.i.i.i, label %if.then.i.i.i.i.if.end7.thread_crit_edge

if.then.i.i.i.i.if.end7.thread_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.thread

if.then6.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %i2c_reg_page.i.i.i.i, align 1
  br label %cam_i2c_write.exit.i.i

cam_i2c_write.exit.i.i:                           ; preds = %if.then6.i.i.i.i, %while.body.i.i.cam_i2c_write.exit.i.i_crit_edge
  %conv.i.i.i = trunc i16 %1 to i8
  %conv3.i.i.i = trunc i16 %3 to i8
  %call4.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext %conv3.i.i.i) #6
  %tobool.not.i.i = icmp eq i32 %call4.i.i.i, 0
  %incdec.ptr.i.i = getelementptr %struct.i2c_regval, ptr %msg.addr.0.i.i, i32 1
  br i1 %tobool.not.i.i, label %cam_i2c_write.exit.i.i.while.cond.i.i_crit_edge, label %cam_i2c_write.exit.i.i.if.end7.thread_crit_edge

cam_i2c_write.exit.i.i.if.end7.thread_crit_edge:  ; preds = %cam_i2c_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.thread

cam_i2c_write.exit.i.i.while.cond.i.i_crit_edge:  ; preds = %cam_i2c_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

if.end.i:                                         ; preds = %while.cond.i.i
  %call1.i = tail call fastcc i32 @noon010_set_params(ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end7.thread_crit_edge

if.end.i.if.end7.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.thread

if.then3.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %13 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_reg_page.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not.i.i.i12.i = icmp eq i8 %14, 0
  br i1 %cmp.not.i.i.i12.i, label %if.then3.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i15.i

if.then3.i.if.end.i.i.i_crit_edge:                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i.i.i15.i:                                ; preds = %if.then3.i
  %call.i.i.i13.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i13.i)
  %tobool.not.i.i.i14.i = icmp eq i32 %call.i.i.i13.i, 0
  br i1 %tobool.not.i.i.i14.i, label %if.then6.i.i.i16.i, label %if.then.i.i.i15.i.cam_i2c_read.exit.i.i_crit_edge

if.then.i.i.i15.i.cam_i2c_read.exit.i.i_crit_edge: ; preds = %if.then.i.i.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cam_i2c_read.exit.i.i

if.then6.i.i.i16.i:                               ; preds = %if.then.i.i.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %i2c_reg_page.i.i.i.i, align 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then6.i.i.i16.i, %if.then3.i.if.end.i.i.i_crit_edge
  %call3.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 17) #6
  br label %cam_i2c_read.exit.i.i

cam_i2c_read.exit.i.i:                            ; preds = %if.end.i.i.i, %if.then.i.i.i15.i.cam_i2c_read.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.end.i.i.i ], [ %call.i.i.i13.i, %if.then.i.i.i15.i.cam_i2c_read.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i.i, label %cam_i2c_read.exit.i.i.if.end7.thread_crit_edge, label %if.then2.i.i

cam_i2c_read.exit.i.i.if.end7.thread_crit_edge:   ; preds = %cam_i2c_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.thread

if.then2.i.i:                                     ; preds = %cam_i2c_read.exit.i.i
  %16 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  %18 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i2c_reg_page.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not.i.i3.i.i = icmp eq i8 %19, 0
  br i1 %cmp.not.i.i3.i.i, label %if.then2.i.i.cam_i2c_write.exit.i19.i_crit_edge, label %if.then.i.i6.i.i

if.then2.i.i.cam_i2c_write.exit.i19.i_crit_edge:  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cam_i2c_write.exit.i19.i

if.then.i.i6.i.i:                                 ; preds = %if.then2.i.i
  %call.i.i4.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4.i.i)
  %tobool.not.i.i5.i.i = icmp eq i32 %call.i.i4.i.i, 0
  br i1 %tobool.not.i.i5.i.i, label %if.then6.i.i7.i.i, label %if.then.i.i6.i.i.if.end7.thread_crit_edge

if.then.i.i6.i.i.if.end7.thread_crit_edge:        ; preds = %if.then.i.i6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.thread

if.then6.i.i7.i.i:                                ; preds = %if.then.i.i6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %i2c_reg_page.i.i.i.i, align 1
  br label %cam_i2c_write.exit.i19.i

cam_i2c_write.exit.i19.i:                         ; preds = %if.then6.i.i7.i.i, %if.then2.i.i.cam_i2c_write.exit.i19.i_crit_edge
  %21 = trunc i32 %retval.0.i.i.i to i8
  %22 = and i8 %21, 124
  %conv3.i.i17.i = or i8 %22, -127
  %call4.i.i18.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i.i17.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i18.i)
  %tobool10.not.i.i = icmp eq i32 %call4.i.i18.i, 0
  br i1 %tobool10.not.i.i, label %if.end7, label %cam_i2c_write.exit.i19.i.if.end7.thread_crit_edge

cam_i2c_write.exit.i19.i.if.end7.thread_crit_edge: ; preds = %cam_i2c_write.exit.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.thread

if.else:                                          ; preds = %entry
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %23 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i.i, align 4
  %i2c_reg_page.i.i.i = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 10
  %25 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i2c_reg_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.not.i.i.i = icmp eq i8 %26, 0
  br i1 %cmp.not.i.i.i, label %if.else.if.end.i.i_crit_edge, label %if.then.i.i.i

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.else
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.i, label %if.then.i.i.i.noon010_power_ctrl.exit_crit_edge

if.then.i.i.i.noon010_power_ctrl.exit_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %noon010_power_ctrl.exit

if.then6.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %i2c_reg_page.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i.i, %if.else.if.end.i.i_crit_edge
  %call4.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 1, i8 noundef zeroext -15) #6
  br label %noon010_power_ctrl.exit

noon010_power_ctrl.exit:                          ; preds = %if.end.i.i, %if.then.i.i.i.noon010_power_ctrl.exit_crit_edge
  %call6 = tail call fastcc i32 @power_disable(ptr noundef %sd)
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %noon010_power_ctrl.exit, %cam_i2c_write.exit.i19.i.if.end7.thread_crit_edge, %if.then.i.i6.i.i.if.end7.thread_crit_edge, %cam_i2c_read.exit.i.i.if.end7.thread_crit_edge, %if.end.i.if.end7.thread_crit_edge, %cam_i2c_write.exit.i.i.if.end7.thread_crit_edge, %if.then.i.i.i.i.if.end7.thread_crit_edge, %if.then.if.end7.thread_crit_edge
  %ret.0.ph = phi i32 [ %call.i.i4.i.i, %if.then.i.i6.i.i.if.end7.thread_crit_edge ], [ %call4.i.i18.i, %cam_i2c_write.exit.i19.i.if.end7.thread_crit_edge ], [ %retval.0.i.i.i, %cam_i2c_read.exit.i.i.if.end7.thread_crit_edge ], [ %call1.i, %if.end.i.if.end7.thread_crit_edge ], [ %call6, %noon010_power_ctrl.exit ], [ %call1, %if.then.if.end7.thread_crit_edge ], [ %call4.i.i.i, %cam_i2c_write.exit.i.i.if.end7.thread_crit_edge ], [ %call.i.i.i.i, %if.then.i.i.i.i.if.end7.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end13

if.end7:                                          ; preds = %cam_i2c_write.exit.i19.i
  %hflip12.i.i = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 9
  %28 = ptrtoint ptr %hflip12.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.i = load i8, ptr %hflip12.i.i, align 4
  %bf.set.i.i = and i8 %bf.load.i.i, -49
  %bf.clear17.i.i = or i8 %bf.set.i.i, 32
  store i8 %bf.clear17.i.i, ptr %hflip12.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br i1 %tobool.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %hdl = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 2
  %call12 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge, %if.end7.thread
  %ret.1 = phi i32 [ 0, %if.end7.if.end13_crit_edge ], [ %call12, %if.then11 ], [ %ret.0.ph, %if.end7.thread ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @power_enable(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.noon010_info, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %power, align 4
  %1 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %gpio_nstby = getelementptr inbounds %struct.noon010_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_nstby to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_nstby, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %gpio_nreset = getelementptr inbounds %struct.noon010_info, ptr %info, i32 0, i32 4
  %5 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_nreset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %7 = icmp ult i32 %6, 2048
  br i1 %7, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i62 = tail call ptr @gpio_to_desc(i32 noundef %6) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i62, i32 noundef 0) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %supply = getelementptr inbounds %struct.noon010_info, ptr %info, i32 0, i32 3
  %call10 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supply) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_nreset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %9)
  %10 = icmp ult i32 %9, 2048
  br i1 %10, label %if.then16, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 50) #6
  %11 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio_nreset, align 4
  %call.i63 = tail call ptr @gpio_to_desc(i32 noundef %12) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i63, i32 noundef 1) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %13 = ptrtoint ptr %gpio_nstby to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_nstby, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %14)
  %15 = icmp ult i32 %14, 2048
  br i1 %15, label %if.then21, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  %17 = ptrtoint ptr %gpio_nstby to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio_nstby, align 4
  %call.i64 = tail call ptr @gpio_to_desc(i32 noundef %18) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i64, i32 noundef 1) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %19 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_nreset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %21 = icmp ult i32 %20, 2048
  br i1 %21, label %if.then26, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  %23 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_nreset, align 4
  %call.i65 = tail call ptr @gpio_to_desc(i32 noundef %24) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i65, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 100) #6
  %25 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpio_nreset, align 4
  %call.i66 = tail call ptr @gpio_to_desc(i32 noundef %26) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i66, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %27 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load31 = load i8, ptr %power, align 4
  %bf.set = or i8 %bf.load31, 8
  store i8 %bf.set, ptr %power, align 4
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp = icmp sgt i32 %28, 0
  br i1 %cmp, label %if.end29.cleanup.sink.split_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29.cleanup.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end29.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.15, %entry.cleanup.sink.split_crit_edge ], [ @.str.18, %if.end29.cleanup.sink.split_crit_edge ]
  %name40 = getelementptr inbounds %struct.v4l2_subdev, ptr %info, i32 0, i32 9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.18.sink, ptr noundef %name40, ptr noundef nonnull @.str.16) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end29.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @power_disable(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.noon010_info, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %power, align 4
  %1 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %supply = getelementptr inbounds %struct.noon010_info, ptr %info, i32 0, i32 3
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supply) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %gpio_nstby = getelementptr inbounds %struct.noon010_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_nstby to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_nstby, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %gpio_nreset = getelementptr inbounds %struct.noon010_info, ptr %info, i32 0, i32 4
  %5 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_nreset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %7 = icmp ult i32 %6, 2048
  br i1 %7, label %if.then11, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i39 = tail call ptr @gpio_to_desc(i32 noundef %6) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i39, i32 noundef 0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %8 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load15 = load i8, ptr %power, align 4
  %bf.clear16 = and i8 %bf.load15, -9
  store i8 %bf.clear16, ptr %power, align 4
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.end13.cleanup.sink.split_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.20, %entry.cleanup.sink.split_crit_edge ], [ @.str.23, %if.end13.cleanup.sink.split_crit_edge ]
  %name24 = getelementptr inbounds %struct.v4l2_subdev, ptr %info, i32 0, i32 9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.23.sink, ptr noundef %name24, ptr noundef nonnull @.str.21) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @noon010_set_params(ptr nocapture noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_win = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %curr_win to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_win, align 4
  %vid_ctl1 = getelementptr inbounds %struct.noon010_frmsize, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vid_ctl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vid_ctl1, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %i2c_reg_page.i.i = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 10
  %6 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_reg_page.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i.i = icmp eq i8 %7, 0
  br i1 %cmp.not.i.i, label %entry.cam_i2c_write.exit_crit_edge, label %if.then.i.i

entry.cam_i2c_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cam_i2c_write.exit

if.then.i.i:                                      ; preds = %entry
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %i2c_reg_page.i.i, align 1
  br label %cam_i2c_write.exit

cam_i2c_write.exit:                               ; preds = %if.then6.i.i, %entry.cam_i2c_write.exit_crit_edge
  %conv3.i = trunc i32 %3 to i8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 16, i8 noundef zeroext %conv3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %cam_i2c_write.exit.cleanup_crit_edge

cam_i2c_write.exit.cleanup_crit_edge:             ; preds = %cam_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cam_i2c_write.exit
  %curr_fmt = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 7
  %9 = ptrtoint ptr %curr_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curr_fmt, align 4
  %ispctl1_reg = getelementptr inbounds %struct.noon010_format, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ispctl1_reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ispctl1_reg, align 4
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %15 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i2c_reg_page.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp.not.i.i10 = icmp eq i8 %16, 1
  br i1 %cmp.not.i.i10, label %if.end.if.end.i17_crit_edge, label %if.then.i.i13

if.end.if.end.i17_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i17

if.then.i.i13:                                    ; preds = %if.end
  %call.i.i11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 3, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %tobool.not.i.i12 = icmp eq i32 %call.i.i11, 0
  br i1 %tobool.not.i.i12, label %if.then6.i.i14, label %if.then.i.i13.cleanup_crit_edge

if.then.i.i13.cleanup_crit_edge:                  ; preds = %if.then.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.i.i14:                                   ; preds = %if.then.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %i2c_reg_page.i.i, align 1
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.then6.i.i14, %if.end.if.end.i17_crit_edge
  %conv3.i15 = trunc i16 %12 to i8
  %call4.i16 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 16, i8 noundef zeroext %conv3.i15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i17, %if.then.i.i13.cleanup_crit_edge, %cam_i2c_write.exit.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %cam_i2c_write.exit.cleanup_crit_edge ], [ %call4.i16, %if.end.i17 ], [ %call.i.i11, %if.then.i.i13.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noon010_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %streaming = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %streaming, align 4
  %1 = lshr i8 %bf.load, 6
  %.lobit = and i8 %1, 1
  %2 = xor i8 %.lobit, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool1.not = icmp eq i32 %on, 0
  %3 = zext i1 %tobool1.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %3)
  %cmp.not = icmp eq i8 %2, %3
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  %i2c_reg_page.i.i.i = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 10
  %6 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_reg_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i.i.i = icmp eq i8 %7, 0
  br i1 %cmp.not.i.i.i, label %if.then.noon010_power_ctrl.exit_crit_edge, label %if.then.i.i.i

if.then.noon010_power_ctrl.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %noon010_power_ctrl.exit

if.then.i.i.i:                                    ; preds = %if.then
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.i, label %if.then.i.i.i.if.end30_crit_edge

if.then.i.i.i.if.end30_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then6.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %i2c_reg_page.i.i.i, align 1
  br label %noon010_power_ctrl.exit

noon010_power_ctrl.exit:                          ; preds = %if.then6.i.i.i, %if.then.noon010_power_ctrl.exit_crit_edge
  %conv3.i.i = select i1 %tobool1.not, i8 -15, i8 -16
  %call4.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext %conv3.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool8.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool8.not, label %if.then9, label %noon010_power_ctrl.exit.if.end30_crit_edge

noon010_power_ctrl.exit.if.end30_crit_edge:       ; preds = %noon010_power_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then9:                                         ; preds = %noon010_power_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = trunc i32 %on to i8
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load11 = load i8, ptr %streaming, align 4
  %bf.value = shl i8 %9, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear12 = and i8 %bf.load11, -65
  %bf.set = or i8 %bf.clear12, %bf.shl
  store i8 %bf.set, ptr %streaming, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %entry.if.end13_crit_edge
  br i1 %tobool1.not, label %if.end13.if.end30_crit_edge, label %land.lhs.true16

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true16:                                  ; preds = %if.end13
  %11 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load17 = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17)
  %tobool20.not = icmp sgt i8 %bf.load17, -1
  br i1 %tobool20.not, label %land.lhs.true16.if.end30_crit_edge, label %if.then21

land.lhs.true16.if.end30_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then21:                                        ; preds = %land.lhs.true16
  %call22 = tail call fastcc i32 @noon010_set_params(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load26 = load i8, ptr %streaming, align 4
  %bf.clear27 = and i8 %bf.load26, 127
  store i8 %bf.clear27, ptr %streaming, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.then21.if.end30_crit_edge, %land.lhs.true16.if.end30_crit_edge, %if.end13.if.end30_crit_edge, %noon010_power_ctrl.exit.if.end30_crit_edge, %if.then.i.i.i.if.end30_crit_edge
  %ret.1 = phi i32 [ 0, %if.end13.if.end30_crit_edge ], [ %call22, %if.then21.if.end30_crit_edge ], [ 0, %if.then24 ], [ 0, %land.lhs.true16.if.end30_crit_edge ], [ %call4.i.i, %noon010_power_ctrl.exit.if.end30_crit_edge ], [ %call.i.i.i, %if.then.i.i.i.if.end30_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @noon010_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [5 x %struct.noon010_format], ptr @noon010_formats, i32 0, i32 %1
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noon010_get_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %if.then
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i = icmp eq i16 %3, 0
  br i1 %cmp.i, label %do.end.i, label %if.then1.v4l2_subdev_get_try_format.exit_crit_edge, !prof !114

if.then1.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then1.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %format, ptr %5, i32 48)
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %format4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %lock = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %curr_win = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 8
  %7 = ptrtoint ptr %curr_win to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curr_win, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 4
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %format4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %format4, align 4
  %12 = load ptr, ptr %curr_win, align 4
  %height = getelementptr inbounds %struct.noon010_frmsize, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %height, align 2
  %conv7 = zext i16 %14 to i32
  %height8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv7, ptr %height8, align 4
  %curr_fmt = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 7
  %16 = ptrtoint ptr %curr_fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %curr_fmt, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %code9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %code9, align 4
  %21 = load ptr, ptr %curr_fmt, align 4
  %colorspace = getelementptr inbounds %struct.noon010_format, ptr %21, i32 0, i32 1
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
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %v4l2_subdev_get_try_format.exit, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noon010_set_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %while.cond.3.i [
    i32 4103, label %entry.noon010_try_fmt.exit_crit_edge
    i32 8198, label %noon010_try_fmt.exit.fold.split
    i32 8199, label %noon010_try_fmt.exit.fold.split34
  ]

entry.noon010_try_fmt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %noon010_try_fmt.exit

while.cond.3.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8201, i32 %1)
  %cmp.3.i = icmp eq i32 %1, 8201
  %spec.select.i = zext i1 %cmp.3.i to i32
  br label %noon010_try_fmt.exit

noon010_try_fmt.exit.fold.split:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %noon010_try_fmt.exit

noon010_try_fmt.exit.fold.split34:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %noon010_try_fmt.exit

noon010_try_fmt.exit:                             ; preds = %noon010_try_fmt.exit.fold.split34, %noon010_try_fmt.exit.fold.split, %while.cond.3.i, %entry.noon010_try_fmt.exit_crit_edge
  %dec.lcssa.i = phi i32 [ 4, %entry.noon010_try_fmt.exit_crit_edge ], [ %spec.select.i, %while.cond.3.i ], [ 3, %noon010_try_fmt.exit.fold.split ], [ 2, %noon010_try_fmt.exit.fold.split34 ]
  %arrayidx2.i = getelementptr [5 x %struct.noon010_format], ptr @noon010_formats, i32 0, i32 %dec.lcssa.i
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2.i, align 4
  %5 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %code.i, align 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %height6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height6.i, align 4
  %sub.i = sub i32 352, %7
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #6
  %sub7.i = sub i32 288, %9
  %11 = tail call i32 @llvm.abs.i32(i32 %sub7.i, i1 false) #6
  %add.i = add i32 %11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp16.not.i = icmp eq i32 %add.i, -1
  %match.1.i = select i1 %cmp16.not.i, ptr null, ptr @noon010_sizes
  %sub.1.i = sub i32 176, %7
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #6
  %sub7.1.i = sub i32 144, %9
  %13 = tail call i32 @llvm.abs.i32(i32 %sub7.1.i, i1 false) #6
  %add.1.i = add i32 %13, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %add.i)
  %cmp16.1.i = icmp ult i32 %add.1.i, %add.i
  %match.1.1.i = select i1 %cmp16.1.i, ptr getelementptr inbounds ([3 x %struct.noon010_frmsize], ptr @noon010_sizes, i32 0, i32 1), ptr %match.1.i
  %14 = tail call i32 @llvm.umin.i32(i32 %add.1.i, i32 %add.i) #6
  %sub.2.i = sub i32 88, %7
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #6
  %sub7.2.i = sub i32 72, %9
  %16 = tail call i32 @llvm.abs.i32(i32 %sub7.2.i, i1 false) #6
  %add.2.i = add i32 %16, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i, i32 %14)
  %cmp16.2.i = icmp ult i32 %add.2.i, %14
  %match.1.2.i = select i1 %cmp16.2.i, ptr getelementptr inbounds ([3 x %struct.noon010_frmsize], ptr @noon010_sizes, i32 0, i32 2), ptr %match.1.1.i
  %tobool18.not.i = icmp eq ptr %match.1.2.i, null
  br i1 %tobool18.not.i, label %noon010_try_fmt.exit.noon010_try_frame_size.exit_crit_edge, label %if.then19.i

noon010_try_fmt.exit.noon010_try_frame_size.exit_crit_edge: ; preds = %noon010_try_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %noon010_try_frame_size.exit

if.then19.i:                                      ; preds = %noon010_try_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %match.1.2.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %match.1.2.i, align 4
  %conv21.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv21.i, ptr %format, align 4
  %height23.i = getelementptr inbounds %struct.noon010_frmsize, ptr %match.1.2.i, i32 0, i32 1
  %20 = ptrtoint ptr %height23.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %height23.i, align 2
  %conv24.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %height6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv24.i, ptr %height6.i, align 4
  br label %noon010_try_frame_size.exit

noon010_try_frame_size.exit:                      ; preds = %if.then19.i, %noon010_try_fmt.exit.noon010_try_frame_size.exit_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %noon010_try_frame_size.exit
  %tobool.not = icmp eq ptr %sd_state, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.then
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %27 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i33 = icmp eq i16 %28, 0
  br i1 %cmp.i33, label %do.end.i, label %if.then6.v4l2_subdev_get_try_format.exit_crit_edge, !prof !114

if.then6.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then6.v4l2_subdev_get_try_format.exit_crit_edge
  %29 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sd_state, align 4
  %31 = call ptr @memcpy(ptr %30, ptr %format, i32 48)
  br label %cleanup

if.end9:                                          ; preds = %noon010_try_frame_size.exit
  %lock = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %streaming = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 9
  %32 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %streaming, align 4
  %33 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool10.not = icmp eq i8 %33, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set = or i8 %bf.load, -128
  %34 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bf.set, ptr %streaming, align 4
  %curr_fmt = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 7
  %35 = ptrtoint ptr %curr_fmt to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx2.i, ptr %curr_fmt, align 4
  %curr_win = getelementptr inbounds %struct.noon010_info, ptr %sd, i32 0, i32 8
  %36 = ptrtoint ptr %curr_win to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %match.1.2.i, ptr %curr_win, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %ret.0 = phi i32 [ 0, %if.then11 ], [ -16, %if.end9.if.end14_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %v4l2_subdev_get_try_format.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end14 ], [ 0, %v4l2_subdev_get_try_format.exit ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noon010_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.i, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !114

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 352, ptr %5, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 288, ptr %height, align 4
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
define internal i32 @noon010_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr i8, ptr %1, i32 -112
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef nonnull @.str.27, i32 noundef %4, i32 noundef %6) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %lock = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %power = getelementptr i8, ptr %1, i32 328
  %7 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %power, align 4
  %8 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.end5.unlock_crit_edge, label %if.end7

do.end5.unlock_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end7:                                          ; preds = %do.end5
  %id8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %9 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id8, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %10, label %if.end7.unlock_crit_edge [
    i32 9963788, label %sw.bb
    i32 9963791, label %sw.bb11
    i32 9963790, label %sw.bb14
  ]

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

sw.bb:                                            ; preds = %if.end7
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %dev_priv.i.i.i = getelementptr i8, ptr %1, i32 -76
  %14 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i.i, align 4
  %i2c_reg_page.i.i.i = getelementptr i8, ptr %1, i32 329
  %16 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_reg_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp.not.i.i.i = icmp eq i8 %17, 4
  br i1 %cmp.not.i.i.i, label %sw.bb.cam_i2c_write.exit.i_crit_edge, label %if.then.i.i.i

sw.bb.cam_i2c_write.exit.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cam_i2c_write.exit.i

if.then.i.i.i:                                    ; preds = %sw.bb
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 3, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.i, label %if.then.i.i.i.unlock_crit_edge

if.then.i.i.i.unlock_crit_edge:                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then6.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %i2c_reg_page.i.i.i, align 1
  br label %cam_i2c_write.exit.i

cam_i2c_write.exit.i:                             ; preds = %if.then6.i.i.i, %sw.bb.cam_i2c_write.exit.i_crit_edge
  %conv3.i.i = select i1 %tobool.not.i, i8 47, i8 46
  %call4.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool1.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i, label %cam_i2c_write.exit.i.unlock_crit_edge

cam_i2c_write.exit.i.unlock_crit_edge:            ; preds = %cam_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then.i:                                        ; preds = %cam_i2c_write.exit.i
  %19 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i.i, align 4
  %21 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_reg_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp.not.i.i10.i = icmp eq i8 %22, 4
  br i1 %cmp.not.i.i10.i, label %if.then.i.if.end.i17.i_crit_edge, label %if.then.i.i13.i

if.then.i.if.end.i17.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i17.i

if.then.i.i13.i:                                  ; preds = %if.then.i
  %call.i.i11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 3, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %tobool.not.i.i12.i = icmp eq i32 %call.i.i11.i, 0
  br i1 %tobool.not.i.i12.i, label %if.then6.i.i14.i, label %if.then.i.i13.i.unlock_crit_edge

if.then.i.i13.i.unlock_crit_edge:                 ; preds = %if.then.i.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then6.i.i14.i:                                 ; preds = %if.then.i.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %i2c_reg_page.i.i.i, align 1
  br label %if.end.i17.i

if.end.i17.i:                                     ; preds = %if.then6.i.i14.i, %if.then.i.if.end.i17.i_crit_edge
  %conv3.i15.i = select i1 %tobool.not.i, i8 123, i8 -5
  %call4.i16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 16, i8 noundef zeroext %conv3.i15.i) #6
  br label %unlock

sw.bb11:                                          ; preds = %if.end7
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val12, align 4
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -76
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %i2c_reg_page.i.i = getelementptr i8, ptr %1, i32 329
  %28 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_reg_page.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp.not.i.i = icmp eq i8 %29, 4
  br i1 %cmp.not.i.i, label %sw.bb11.if.end.i_crit_edge, label %if.then.i.i

sw.bb11.if.end.i_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i.i:                                      ; preds = %sw.bb11
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 3, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.i.i, label %if.then.i.i.unlock_crit_edge

if.then.i.i.unlock_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %i2c_reg_page.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i.i, %sw.bb11.if.end.i_crit_edge
  %conv3.i = trunc i32 %25 to i8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 103, i8 noundef zeroext %conv3.i) #6
  br label %unlock

sw.bb14:                                          ; preds = %if.end7
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val15, align 4
  %dev_priv.i.i30 = getelementptr i8, ptr %1, i32 -76
  %33 = ptrtoint ptr %dev_priv.i.i30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i30, align 4
  %i2c_reg_page.i.i31 = getelementptr i8, ptr %1, i32 329
  %35 = ptrtoint ptr %i2c_reg_page.i.i31 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i2c_reg_page.i.i31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cmp.not.i.i32 = icmp eq i8 %36, 4
  br i1 %cmp.not.i.i32, label %sw.bb14.if.end.i39_crit_edge, label %if.then.i.i35

sw.bb14.if.end.i39_crit_edge:                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i39

if.then.i.i35:                                    ; preds = %sw.bb14
  %call.i.i33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 3, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool.not.i.i34 = icmp eq i32 %call.i.i33, 0
  br i1 %tobool.not.i.i34, label %if.then6.i.i36, label %if.then.i.i35.unlock_crit_edge

if.then.i.i35.unlock_crit_edge:                   ; preds = %if.then.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then6.i.i36:                                   ; preds = %if.then.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %i2c_reg_page.i.i31 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %i2c_reg_page.i.i31, align 1
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then6.i.i36, %sw.bb14.if.end.i39_crit_edge
  %conv3.i37 = trunc i32 %32 to i8
  %call4.i38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 102, i8 noundef zeroext %conv3.i37) #6
  br label %unlock

unlock:                                           ; preds = %if.end.i39, %if.then.i.i35.unlock_crit_edge, %if.end.i, %if.then.i.i.unlock_crit_edge, %if.end.i17.i, %if.then.i.i13.i.unlock_crit_edge, %cam_i2c_write.exit.i.unlock_crit_edge, %if.then.i.i.i.unlock_crit_edge, %if.end7.unlock_crit_edge, %do.end5.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %do.end5.unlock_crit_edge ], [ -22, %if.end7.unlock_crit_edge ], [ %call4.i.i, %cam_i2c_write.exit.i.unlock_crit_edge ], [ %call4.i16.i, %if.end.i17.i ], [ %call.i.i11.i, %if.then.i.i13.i.unlock_crit_edge ], [ %call.i.i.i, %if.then.i.i.i.unlock_crit_edge ], [ %call4.i, %if.end.i ], [ %call.i.i, %if.then.i.i.unlock_crit_edge ], [ %call4.i38, %if.end.i39 ], [ %call.i.i33, %if.then.i.i35.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_export(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !38, !40, !41, !42, !44, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/noon010pc30.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/noon010pc30.c", i32 27, i32 1}
!5 = !{ptr @__initcall__kmod_noon010pc30__294_825_noon010_i2c_driver_init6, !6, !"__initcall__kmod_noon010pc30__294_825_noon010_i2c_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/noon010pc30.c", i32 825, i32 1}
!7 = !{ptr @__exitcall_noon010_i2c_driver_exit, !6, !"__exitcall_noon010_i2c_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description295, !9, !"__UNIQUE_ID_description295", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/noon010pc30.c", i32 827, i32 1}
!10 = !{ptr @__UNIQUE_ID_author296, !11, !"__UNIQUE_ID_author296", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/noon010pc30.c", i32 828, i32 1}
!12 = !{ptr @__UNIQUE_ID_file297, !13, !"__UNIQUE_ID_file297", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/noon010pc30.c", i32 829, i32 1}
!14 = !{ptr @__UNIQUE_ID_license298, !13, !"__UNIQUE_ID_license298", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/noon010pc30.c", i32 25, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/noon010pc30.c", i32 818, i32 11}
!20 = !{ptr @noon010_i2c_driver, !21, !"noon010_i2c_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/noon010pc30.c", i32 816, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/noon010pc30.c", i32 711, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @noon010_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @noon010_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @noon010_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/noon010pc30.c", i32 719, i32 2}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @noon010_probe._key, !34, !"_key", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/noon010pc30.c", i32 728, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/noon010pc30.c", i32 752, i32 10}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/noon010pc30.c", i32 754, i32 4}
!40 = !{ptr @noon010_probe._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @noon010_probe._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/noon010pc30.c", i32 764, i32 10}
!44 = !{ptr @noon010_probe._entry.13, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/noon010pc30.c", i32 766, i32 4}
!46 = !{ptr @noon010_probe._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @noon010_ops, !48, !"noon010_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/noon010pc30.c", i32 676, i32 37}
!49 = !{ptr @noon010_core_ops, !50, !"noon010_core_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/noon010pc30.c", i32 661, i32 42}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/noon010pc30.c", i32 392, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @power_enable._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @power_enable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/noon010pc30.c", i32 423, i32 2}
!58 = !{ptr @power_enable._entry.17, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @power_enable._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @noon010_base_regs, !61, !"noon010_base_regs", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/noon010pc30.c", i32 196, i32 32}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/noon010pc30.c", i32 433, i32 3}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @power_disable._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @power_disable._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/noon010pc30.c", i32 449, i32 2}
!69 = !{ptr @power_disable._entry.22, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @power_disable._entry_ptr.24, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @noon010_video_ops, !72, !"noon010_video_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/noon010pc30.c", i32 672, i32 43}
!73 = !{ptr @noon010_pad_ops, !74, !"noon010_pad_ops", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/noon010pc30.c", i32 666, i32 41}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!77 = !{ptr @noon010_subdev_internal_ops, !78, !"noon010_subdev_internal_ops", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/noon010pc30.c", i32 653, i32 46}
!79 = !{ptr @noon010_ctrl_ops, !80, !"noon010_ctrl_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/noon010pc30.c", i32 657, i32 35}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/noon010pc30.c", i32 460, i32 2}
!83 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @noon010_s_ctrl._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @noon010_s_ctrl._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @noon010_formats, !87, !"noon010_formats", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/noon010pc30.c", i32 172, i32 36}
!88 = !{ptr @noon010_sizes, !89, !"noon010_sizes", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/noon010pc30.c", i32 155, i32 37}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/noon010pc30.c", i32 123, i32 2}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/noon010pc30.c", i32 123, i32 14}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/noon010pc30.c", i32 123, i32 23}
!96 = distinct !{null, !97, !"noon010_supply_name", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/noon010pc30.c", i32 122, i32 27}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/noon010pc30.c", i32 693, i32 3}
!100 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @noon010_detect._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @noon010_detect._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @noon010_id, !104, !"noon010_id", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/noon010pc30.c", i32 809, i32 35}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 1, i32 2000}
