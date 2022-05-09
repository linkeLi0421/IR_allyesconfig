; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/sr030pc30.c_pt.bc'
source_filename = "../drivers/media/i2c/sr030pc30.c"
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_regval = type { i16, i16 }
%struct.sr030pc30_format = type { i32, i32, i16 }
%struct.sr030pc30_frmsize = type { i16, i16, i32 }
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
%struct.sr030pc30_platform_data = type { i32, ptr }
%struct.sr030pc30_info = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, i8, %struct.anon.100, %struct.anon.101, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__param_str_debug = internal constant [16 x i8] c"sr030pc30.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [29 x i8] c"sr030pc30.parmtype=debug:int\00", section ".modinfo", align 1
@__initcall__kmod_sr030pc30__293_760_sr030pc30_i2c_driver_init6 = internal global ptr @sr030pc30_i2c_driver_init, section ".initcall6.init", align 4
@sr030pc30_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sr030pc30_probe, ptr @sr030pc30_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sr030pc30_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sr030pc30_i2c_driver_exit = internal global ptr @sr030pc30_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [58 x i8] c"sr030pc30.description=Siliconfile SR030PC30 camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [61 x i8] c"sr030pc30.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [43 x i8] c"sr030pc30.file=drivers/media/i2c/sr030pc30\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"sr030pc30.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SR030PC30\00", [22 x i8] zeroinitializer }, align 32
@sr030pc30_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"SR030PC30\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sr030pc30_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data!\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sr030pc30_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/i2c/sr030pc30.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sr030pc30_probe._entry_ptr = internal global ptr @sr030pc30_probe._entry, section ".printk_index", align 4
@sr030pc30_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @sr030pc30_core_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sr030pc30_pad_ops }, [32 x i8] zeroinitializer }, align 32
@sr030pc30_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sr030pc30:707:(hdl)->_lock\00", [37 x i8] zeroinitializer }, align 32
@sr030pc30_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sr030pc30_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sr030pc30_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: I2C read failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sr030pc30_detect\00", [47 x i8] zeroinitializer }, align 32
@sr030pc30_detect._entry_ptr = internal global ptr @sr030pc30_detect._entry, section ".printk_index", align 4
@sr030pc30_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sr030pc30_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sr030pc30_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @sr030pc30_enum_mbus_code, ptr null, ptr null, ptr @sr030pc30_get_fmt, ptr @sr030pc30_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No platform data!\0A\00", [45 x i8] zeroinitializer }, align 32
@sr030pc30_base_regs = internal constant { [93 x %struct.i2c_regval], [76 x i8] } { [93 x %struct.i2c_regval] [%struct.i2c_regval { i16 32, i16 0 }, %struct.i2c_regval { i16 33, i16 6 }, %struct.i2c_regval { i16 34, i16 0 }, %struct.i2c_regval { i16 35, i16 6 }, %struct.i2c_regval { i16 36, i16 1 }, %struct.i2c_regval { i16 37, i16 224 }, %struct.i2c_regval { i16 38, i16 2 }, %struct.i2c_regval { i16 39, i16 128 }, %struct.i2c_regval { i16 64, i16 1 }, %struct.i2c_regval { i16 65, i16 80 }, %struct.i2c_regval { i16 66, i16 0 }, %struct.i2c_regval { i16 67, i16 20 }, %struct.i2c_regval { i16 18, i16 0 }, %struct.i2c_regval { i16 4112, i16 48 }, %struct.i2c_regval { i16 4160, i16 128 }, %struct.i2c_regval { i16 4161, i16 4 }, %struct.i2c_regval { i16 4176, i16 120 }, %struct.i2c_regval { i16 4192, i16 31 }, %struct.i2c_regval { i16 4193, i16 144 }, %struct.i2c_regval { i16 4195, i16 240 }, %struct.i2c_regval { i16 4196, i16 128 }, %struct.i2c_regval { i16 5392, i16 3 }, %struct.i2c_regval { i16 5396, i16 60 }, %struct.i2c_regval { i16 5398, i16 44 }, %struct.i2c_regval { i16 5399, i16 47 }, %struct.i2c_regval { i16 5424, i16 203 }, %struct.i2c_regval { i16 5440, i16 135 }, %struct.i2c_regval { i16 5425, i16 97 }, %struct.i2c_regval { i16 5441, i16 24 }, %struct.i2c_regval { i16 5426, i16 22 }, %struct.i2c_regval { i16 5442, i16 145 }, %struct.i2c_regval { i16 5427, i16 35 }, %struct.i2c_regval { i16 5443, i16 148 }, %struct.i2c_regval { i16 5428, i16 206 }, %struct.i2c_regval { i16 5444, i16 159 }, %struct.i2c_regval { i16 5429, i16 43 }, %struct.i2c_regval { i16 5445, i16 51 }, %struct.i2c_regval { i16 5430, i16 1 }, %struct.i2c_regval { i16 5446, i16 0 }, %struct.i2c_regval { i16 5431, i16 52 }, %struct.i2c_regval { i16 5447, i16 148 }, %struct.i2c_regval { i16 5432, i16 117 }, %struct.i2c_regval { i16 5448, i16 20 }, %struct.i2c_regval { i16 5648, i16 3 }, %struct.i2c_regval { i16 5680, i16 0 }, %struct.i2c_regval { i16 5681, i16 25 }, %struct.i2c_regval { i16 5682, i16 38 }, %struct.i2c_regval { i16 5683, i16 59 }, %struct.i2c_regval { i16 5684, i16 93 }, %struct.i2c_regval { i16 5685, i16 121 }, %struct.i2c_regval { i16 5686, i16 142 }, %struct.i2c_regval { i16 5687, i16 159 }, %struct.i2c_regval { i16 5688, i16 175 }, %struct.i2c_regval { i16 5689, i16 189 }, %struct.i2c_regval { i16 5690, i16 202 }, %struct.i2c_regval { i16 5691, i16 221 }, %struct.i2c_regval { i16 5692, i16 236 }, %struct.i2c_regval { i16 5693, i16 247 }, %struct.i2c_regval { i16 5694, i16 255 }, %struct.i2c_regval { i16 4368, i16 153 }, %struct.i2c_regval { i16 4370, i16 14 }, %struct.i2c_regval { i16 4385, i16 41 }, %struct.i2c_regval { i16 4448, i16 15 }, %struct.i2c_regval { i16 4448, i16 99 }, %struct.i2c_regval { i16 4672, i16 35 }, %struct.i2c_regval { i16 4673, i16 59 }, %struct.i2c_regval { i16 4688, i16 5 }, %struct.i2c_regval { i16 4720, i16 29 }, %struct.i2c_regval { i16 4724, i16 5 }, %struct.i2c_regval { i16 4725, i16 4 }, %struct.i2c_regval { i16 8720, i16 251 }, %struct.i2c_regval { i16 8721, i16 38 }, %struct.i2c_regval { i16 8835, i16 84 }, %struct.i2c_regval { i16 8836, i16 43 }, %struct.i2c_regval { i16 8837, i16 87 }, %struct.i2c_regval { i16 8838, i16 41 }, %struct.i2c_regval { i16 8839, i16 80 }, %struct.i2c_regval { i16 8840, i16 67 }, %struct.i2c_regval { i16 8841, i16 48 }, %struct.i2c_regval { i16 8842, i16 34 }, %struct.i2c_regval { i16 8208, i16 140 }, %struct.i2c_regval { i16 8209, i16 4 }, %struct.i2c_regval { i16 8224, i16 1 }, %struct.i2c_regval { i16 8232, i16 63 }, %struct.i2c_regval { i16 8233, i16 163 }, %struct.i2c_regval { i16 8235, i16 52 }, %struct.i2c_regval { i16 5136, i16 1 }, %struct.i2c_regval { i16 5152, i16 128 }, %struct.i2c_regval { i16 5153, i16 112 }, %struct.i2c_regval { i16 5154, i16 83 }, %struct.i2c_regval { i16 5155, i16 64 }, %struct.i2c_regval { i16 5156, i16 62 }, %struct.i2c_regval { i16 -1, i16 0 }], [76 x i8] zeroinitializer }, align 32
@sr030pc30_formats = internal constant { [5 x %struct.sr030pc30_format], [36 x i8] } { [5 x %struct.sr030pc30_format] [%struct.sr030pc30_format { i32 8200, i32 7, i16 3 }, %struct.sr030pc30_format { i32 8201, i32 7, i16 2 }, %struct.sr030pc30_format { i32 8199, i32 7, i16 0 }, %struct.sr030pc30_format { i32 8198, i32 7, i16 1 }, %struct.sr030pc30_format { i32 4103, i32 7, i16 64 }], [36 x i8] zeroinitializer }, align 32
@sr030pc30_sizes = internal constant { [3 x %struct.sr030pc30_frmsize], [40 x i8] } { [3 x %struct.sr030pc30_frmsize] [%struct.sr030pc30_frmsize { i16 640, i16 480, i32 0 }, %struct.sr030pc30_frmsize { i16 320, i16 240, i32 16 }, %struct.sr030pc30_frmsize { i16 160, i16 120, i32 32 }], [40 x i8] zeroinitializer }, align 32
@sr030pc30_base_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s: expmin= %lx, expmax= %lx\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sr030pc30_base_config\00", [42 x i8] zeroinitializer }, align 32
@sr030pc30_base_config._entry_ptr = internal global ptr @sr030pc30_base_config._entry, section ".printk_index", align 4
@sr030pc30_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: ctrl_id: %d, value: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sr030pc30_s_ctrl\00", [47 x i8] zeroinitializer }, align 32
@sr030pc30_s_ctrl._entry_ptr = internal global ptr @sr030pc30_s_ctrl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4103, i64 8198, i64 8199, i64 8201]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 9963788, i64 10094849]
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 25, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"sr030pc30_i2c_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 751, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 753, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"sr030pc30_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 744, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 689, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"sr030pc30_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 642, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 707, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"sr030pc30_ctrl_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 628, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 670, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"sr030pc30_core_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 632, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"sr030pc30_pad_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 636, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 599, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"sr030pc30_base_regs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 222, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"sr030pc30_formats\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 198, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"sr030pc30_sizes\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 181, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 574, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [33 x i8] c"../drivers/media/i2c/sr030pc30.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 424, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_sr030pc30_i2c_driver_exit, ptr @__initcall__kmod_sr030pc30__293_760_sr030pc30_i2c_driver_init6, ptr @__param_debug, ptr @sr030pc30_base_config._entry, ptr @sr030pc30_base_config._entry_ptr, ptr @sr030pc30_detect._entry, ptr @sr030pc30_detect._entry_ptr, ptr @sr030pc30_i2c_driver_exit, ptr @sr030pc30_probe._entry, ptr @sr030pc30_probe._entry_ptr, ptr @sr030pc30_s_ctrl._entry, ptr @sr030pc30_s_ctrl._entry_ptr, ptr @debug, ptr @sr030pc30_i2c_driver, ptr @.str, ptr @sr030pc30_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sr030pc30_ops, ptr @sr030pc30_probe._key, ptr @.str.6, ptr @sr030pc30_ctrl_ops, ptr @.str.7, ptr @.str.8, ptr @sr030pc30_core_ops, ptr @sr030pc30_pad_ops, ptr @.str.9, ptr @sr030pc30_base_regs, ptr @sr030pc30_formats, ptr @sr030pc30_sizes, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_base_regs to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_formats to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_sizes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_base_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr030pc30_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sr030pc30_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sr030pc30_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sr030pc30_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @sr030pc30_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr030pc30_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_power.i = getelementptr inbounds %struct.sr030pc30_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_power.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end5.i_crit_edge, label %if.then.i

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 %3(ptr noundef %dev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end.if.end5.i_crit_edge
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #7
  %4 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power.i, align 4
  %tobool8.not.i = icmp eq ptr %5, null
  br i1 %tobool8.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then9.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = tail call i32 %5(ptr noundef %dev, i32 noundef 0) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end13.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end16.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %call6.i)
  %cmp17.i = icmp eq i32 %call6.i, 140
  br i1 %cmp17.i, label %if.end4, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end16.i
  %call.i61 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 420, i32 noundef 3520) #7
  %tobool7.not = icmp eq ptr %call.i61, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 8
  %pdata13 = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 2
  %8 = ptrtoint ptr %pdata13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pdata13, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i61, ptr noundef %client, ptr noundef nonnull @sr030pc30_ops) #7
  %hdl14 = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 1
  %call15 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl14, i32 noundef 6, ptr noundef nonnull @sr030pc30_probe._key, ptr noundef nonnull @.str.6) #7
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl14, ptr noundef nonnull @sr030pc30_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %9 = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %9, align 4
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl14, ptr noundef nonnull @sr030pc30_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #7
  %red = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %red, align 4
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl14, ptr noundef nonnull @sr030pc30_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #7
  %blue = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %blue, align 4
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl14, ptr noundef nonnull @sr030pc30_ctrl_ops, i32 noundef 10094849, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %13 = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call19, ptr %13, align 4
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl14, ptr noundef nonnull @sr030pc30_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 125, i64 noundef 1, i64 noundef 30) #7
  %exp = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %exp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %exp, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i61, i32 0, i32 8
  %16 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %hdl14, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl14) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %9, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %13, i8 noundef zeroext 1, i1 noundef zeroext false) #7
  %call27 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl14) #7
  %i2c_reg_page = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 8
  %19 = ptrtoint ptr %i2c_reg_page to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %i2c_reg_page, align 4
  %hflip = getelementptr inbounds %struct.sr030pc30_info, ptr %call.i61, i32 0, i32 5
  %20 = ptrtoint ptr %hflip to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %hflip, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %hflip, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22, %if.end4.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %do.end.i, %if.then.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %18, %if.then22 ], [ 0, %if.end24 ], [ -5, %do.end ], [ -12, %if.end4.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ -19, %if.end16.i.cleanup_crit_edge ], [ %call6.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr030pc30_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr030pc30_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pdata2 = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata2, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 599, i32 noundef 9, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool19.not = icmp eq i32 %on, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  %i2c_reg_page.i.i.i = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 8
  %4 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_reg_page.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i.i.i = icmp eq i8 %5, 0
  br i1 %cmp.not.i.i.i, label %if.then20.cam_i2c_write.exit.i_crit_edge, label %if.then.i.i.i

if.then20.cam_i2c_write.exit.i_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cam_i2c_write.exit.i

if.then.i.i.i:                                    ; preds = %if.then20
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.i, label %if.then.i.i.i.if.end22_crit_edge

if.then.i.i.i.if.end22_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then6.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %i2c_reg_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %i2c_reg_page.i.i.i, align 4
  br label %cam_i2c_write.exit.i

cam_i2c_write.exit.i:                             ; preds = %if.then6.i.i.i, %if.then20.cam_i2c_write.exit.i_crit_edge
  %call4.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool9.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %cam_i2c_write.exit.i.if.end22_crit_edge

cam_i2c_write.exit.i.if.end22_crit_edge:          ; preds = %cam_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then10.i:                                      ; preds = %cam_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %sleep13.i = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 5
  %7 = ptrtoint ptr %sleep13.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %sleep13.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %sleep13.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then10.i, %cam_i2c_write.exit.i.if.end22_crit_edge, %if.then.i.i.i.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %set_power = getelementptr inbounds %struct.sr030pc30_platform_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_power, align 4
  %tobool23.not = icmp eq ptr %9, null
  br i1 %tobool23.not, label %if.end22.if.end30_crit_edge, label %if.then24

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then24:                                        ; preds = %if.end22
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call26 = tail call i32 %9(ptr noundef %dev, i32 noundef %on) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end30_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  br i1 %tobool19.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end30
  %i2c_reg_page.i.i.i.i = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %cam_i2c_write.exit.i.i.while.cond.i.i_crit_edge, %if.then32
  %msg.addr.0.i.i = phi ptr [ @sr030pc30_base_regs, %if.then32 ], [ %incdec.ptr.i.i, %cam_i2c_write.exit.i.i.while.cond.i.i_crit_edge ]
  %10 = ptrtoint ptr %msg.addr.0.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg.addr.0.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp.not.i.i = icmp eq i16 %11, -1
  br i1 %cmp.not.i.i, label %if.end.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %val.i.i = getelementptr inbounds %struct.i2c_regval, ptr %msg.addr.0.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val.i.i, align 2
  %14 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i, align 4
  %shr.i.i.i.i = lshr i16 %11, 8
  %16 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_reg_page.i.i.i.i, align 4
  %18 = trunc i16 %shr.i.i.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %18)
  %cmp.not.i.i.i.i = icmp eq i8 %17, %18
  %19 = and i16 %11, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp3.not.i.i.i.i = icmp eq i16 %19, 3
  %or.cond.i.i.i.i = or i1 %cmp3.not.i.i.i.i, %cmp.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %while.body.i.i.cam_i2c_write.exit.i.i_crit_edge, label %if.then.i.i.i.i

while.body.i.i.cam_i2c_write.exit.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cam_i2c_write.exit.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 3, i8 noundef zeroext %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then6.i.i.i.i, label %if.then.i.i.i.i.cleanup_crit_edge

if.then.i.i.i.i.cleanup_crit_edge:                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %i2c_reg_page.i.i.i.i, align 4
  br label %cam_i2c_write.exit.i.i

cam_i2c_write.exit.i.i:                           ; preds = %if.then6.i.i.i.i, %while.body.i.i.cam_i2c_write.exit.i.i_crit_edge
  %conv.i.i.i = trunc i16 %11 to i8
  %conv3.i.i.i = trunc i16 %13 to i8
  %call4.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext %conv3.i.i.i) #7
  %tobool.not.i.i = icmp eq i32 %call4.i.i.i, 0
  %incdec.ptr.i.i = getelementptr %struct.i2c_regval, ptr %msg.addr.0.i.i, i32 1
  br i1 %tobool.not.i.i, label %cam_i2c_write.exit.i.i.while.cond.i.i_crit_edge, label %cam_i2c_write.exit.i.i.cleanup_crit_edge

cam_i2c_write.exit.i.i.cleanup_crit_edge:         ; preds = %cam_i2c_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cam_i2c_write.exit.i.i.while.cond.i.i_crit_edge:  ; preds = %cam_i2c_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

if.end.i:                                         ; preds = %while.cond.i.i
  %curr_fmt.i = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 3
  %21 = ptrtoint ptr %curr_fmt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sr030pc30_formats, ptr %curr_fmt.i, align 4
  %curr_win.i = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 4
  %22 = ptrtoint ptr %curr_win.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sr030pc30_sizes, ptr %curr_win.i, align 4
  %call2.i = tail call fastcc i32 @sr030pc30_set_params(ptr noundef %sd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i, align 4
  %25 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i2c_reg_page.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.not.i.i.i73.i = icmp eq i8 %26, 0
  br i1 %cmp.not.i.i.i73.i, label %if.then4.i.cam_i2c_write.exit.i79.i_crit_edge, label %if.then.i.i.i76.i

if.then4.i.cam_i2c_write.exit.i79.i_crit_edge:    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cam_i2c_write.exit.i79.i

if.then.i.i.i76.i:                                ; preds = %if.then4.i
  %call.i.i.i74.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 3, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i74.i)
  %tobool.not.i.i.i75.i = icmp eq i32 %call.i.i.i74.i, 0
  br i1 %tobool.not.i.i.i75.i, label %if.then6.i.i.i77.i, label %if.then.i.i.i76.i.cleanup_crit_edge

if.then.i.i.i76.i.cleanup_crit_edge:              ; preds = %if.then.i.i.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i.i77.i:                               ; preds = %if.then.i.i.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %i2c_reg_page.i.i.i.i, align 4
  br label %cam_i2c_write.exit.i79.i

cam_i2c_write.exit.i79.i:                         ; preds = %if.then6.i.i.i77.i, %if.then4.i.cam_i2c_write.exit.i79.i_crit_edge
  %call4.i.i78.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 1, i8 noundef zeroext -16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i78.i)
  %tobool9.not.i.i = icmp eq i32 %call4.i.i78.i, 0
  br i1 %tobool9.not.i.i, label %if.end9.i, label %cam_i2c_write.exit.i79.i.cleanup_crit_edge

cam_i2c_write.exit.i79.i.cleanup_crit_edge:       ; preds = %cam_i2c_write.exit.i79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %cam_i2c_write.exit.i79.i
  %sleep13.i.i = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 5
  %28 = ptrtoint ptr %sleep13.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.i = load i8, ptr %sleep13.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -33
  store i8 %bf.clear.i.i, ptr %sleep13.i.i, align 4
  %29 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata2, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %div.i = udiv i32 %32, 8000
  %mul12.i = mul i32 %32, 125
  %div13.i = udiv i32 %mul12.i, 8000
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp sgt i32 %33, 0
  br i1 %cmp.i, label %do.end.i, label %if.end9.i.do.end19.i_crit_edge

if.end9.i.do.end19.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, ptr noundef nonnull @.str.11, i32 noundef %div.i, i32 noundef %div13.i) #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end.i, %if.end9.i.do.end19.i_crit_edge
  %shr.i = lshr i32 %div.i, 8
  %34 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i, align 4
  %36 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_reg_page.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %37)
  %cmp.not.i.i.i51 = icmp eq i8 %37, 32
  br i1 %cmp.not.i.i.i51, label %do.end19.i.cam_i2c_write.exit.i57_crit_edge, label %if.then.i.i.i54

do.end19.i.cam_i2c_write.exit.i57_crit_edge:      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cam_i2c_write.exit.i57

if.then.i.i.i54:                                  ; preds = %do.end19.i
  %call.i.i.i52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 3, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i52)
  %tobool.not.i.i.i53 = icmp eq i32 %call.i.i.i52, 0
  br i1 %tobool.not.i.i.i53, label %if.then6.i.i.i55, label %if.then.i.i.i54.cleanup_crit_edge

if.then.i.i.i54.cleanup_crit_edge:                ; preds = %if.then.i.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i.i55:                                 ; preds = %if.then.i.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 32, ptr %i2c_reg_page.i.i.i.i, align 4
  br label %cam_i2c_write.exit.i57

cam_i2c_write.exit.i57:                           ; preds = %if.then6.i.i.i55, %do.end19.i.cam_i2c_write.exit.i57_crit_edge
  %conv3.i.i = trunc i32 %shr.i to i8
  %call4.i.i56 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext -122, i8 noundef zeroext %conv3.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i56)
  %tobool21.not.i = icmp eq i32 %call4.i.i56, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %cam_i2c_write.exit.i57.cleanup_crit_edge

cam_i2c_write.exit.i57.cleanup_crit_edge:         ; preds = %cam_i2c_write.exit.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.i:                                      ; preds = %cam_i2c_write.exit.i57
  %39 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i, align 4
  %41 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %i2c_reg_page.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %42)
  %cmp.not.i.i82.i = icmp eq i8 %42, 32
  br i1 %cmp.not.i.i82.i, label %if.then22.i.if.end25.i_crit_edge, label %if.then.i.i85.i

if.then22.i.if.end25.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then.i.i85.i:                                  ; preds = %if.then22.i
  %call.i.i83.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 3, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83.i)
  %tobool.not.i.i84.i = icmp eq i32 %call.i.i83.i, 0
  br i1 %tobool.not.i.i84.i, label %if.then6.i.i86.i, label %if.then.i.i85.i.cleanup_crit_edge

if.then.i.i85.i.cleanup_crit_edge:                ; preds = %if.then.i.i85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i86.i:                                 ; preds = %if.then.i.i85.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 32, ptr %i2c_reg_page.i.i.i.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then6.i.i86.i, %if.then22.i.if.end25.i_crit_edge
  %conv3.i87.i = trunc i32 %div.i to i8
  %call4.i88.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext -121, i8 noundef zeroext %conv3.i87.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i88.i)
  %tobool26.not.i = icmp eq i32 %call4.i88.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end25.i.cleanup_crit_edge

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27.i:                                      ; preds = %if.end25.i
  %shr28.i = lshr i32 %div13.i, 16
  %44 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i, align 4
  %46 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i2c_reg_page.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %47)
  %cmp.not.i.i94.i = icmp eq i8 %47, 32
  br i1 %cmp.not.i.i94.i, label %if.then27.i.if.end31.i_crit_edge, label %if.then.i.i97.i

if.then27.i.if.end31.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then.i.i97.i:                                  ; preds = %if.then27.i
  %call.i.i95.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 3, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95.i)
  %tobool.not.i.i96.i = icmp eq i32 %call.i.i95.i, 0
  br i1 %tobool.not.i.i96.i, label %if.then6.i.i98.i, label %if.then.i.i97.i.cleanup_crit_edge

if.then.i.i97.i.cleanup_crit_edge:                ; preds = %if.then.i.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i98.i:                                 ; preds = %if.then.i.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 32, ptr %i2c_reg_page.i.i.i.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then6.i.i98.i, %if.then27.i.if.end31.i_crit_edge
  %conv3.i99.i = trunc i32 %shr28.i to i8
  %call4.i100.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -120, i8 noundef zeroext %conv3.i99.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i100.i)
  %tobool32.not.i = icmp eq i32 %call4.i100.i, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end31.i.cleanup_crit_edge

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33.i:                                      ; preds = %if.end31.i
  %shr34.i = lshr i32 %div13.i, 8
  %49 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i, align 4
  %51 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i2c_reg_page.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %52)
  %cmp.not.i.i106.i = icmp eq i8 %52, 32
  br i1 %cmp.not.i.i106.i, label %if.then33.i.if.end37.i_crit_edge, label %if.then.i.i109.i

if.then33.i.if.end37.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then.i.i109.i:                                 ; preds = %if.then33.i
  %call.i.i107.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 3, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107.i)
  %tobool.not.i.i108.i = icmp eq i32 %call.i.i107.i, 0
  br i1 %tobool.not.i.i108.i, label %if.then6.i.i110.i, label %if.then.i.i109.i.cleanup_crit_edge

if.then.i.i109.i.cleanup_crit_edge:               ; preds = %if.then.i.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i110.i:                                ; preds = %if.then.i.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 32, ptr %i2c_reg_page.i.i.i.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then6.i.i110.i, %if.then33.i.if.end37.i_crit_edge
  %conv3.i111.i = trunc i32 %shr34.i to i8
  %call4.i112.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext -119, i8 noundef zeroext %conv3.i111.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i112.i)
  %tobool38.not.i = icmp eq i32 %call4.i112.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.end37.i.cleanup_crit_edge

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39.i:                                      ; preds = %if.end37.i
  %54 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i, align 4
  %56 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %i2c_reg_page.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %57)
  %cmp.not.i.i118.i = icmp eq i8 %57, 32
  br i1 %cmp.not.i.i118.i, label %if.then39.i.if.then.i125.i_crit_edge, label %if.then.i.i121.i

if.then39.i.if.then.i125.i_crit_edge:             ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i125.i

if.then.i.i121.i:                                 ; preds = %if.then39.i
  %call.i.i119.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext 3, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i119.i)
  %tobool.not.i.i120.i = icmp eq i32 %call.i.i119.i, 0
  br i1 %tobool.not.i.i120.i, label %if.then6.i.i122.i, label %if.then.i.i121.i.cleanup_crit_edge

if.then.i.i121.i.cleanup_crit_edge:               ; preds = %if.then.i.i121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i122.i:                                ; preds = %if.then.i.i121.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %i2c_reg_page.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 32, ptr %i2c_reg_page.i.i.i.i, align 4
  br label %if.then.i125.i

if.then.i125.i:                                   ; preds = %if.then6.i.i122.i, %if.then39.i.if.then.i125.i_crit_edge
  %conv3.i123.i = trunc i32 %div13.i to i8
  %call4.i124.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext -118, i8 noundef zeroext %conv3.i123.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %curr_win = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 4
  %59 = ptrtoint ptr %curr_win to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %curr_win, align 4
  %curr_fmt = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 3
  %60 = ptrtoint ptr %curr_fmt to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %curr_fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i125.i, %if.then.i.i121.i.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %if.then.i.i109.i.cleanup_crit_edge, %if.end31.i.cleanup_crit_edge, %if.then.i.i97.i.cleanup_crit_edge, %if.end25.i.cleanup_crit_edge, %if.then.i.i85.i.cleanup_crit_edge, %cam_i2c_write.exit.i57.cleanup_crit_edge, %if.then.i.i.i54.cleanup_crit_edge, %cam_i2c_write.exit.i79.i.cleanup_crit_edge, %if.then.i.i.i76.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %cam_i2c_write.exit.i.i.cleanup_crit_edge, %if.then.i.i.i.i.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call26, %if.then24.cleanup_crit_edge ], [ 0, %if.else ], [ %call4.i112.i, %if.end37.i.cleanup_crit_edge ], [ %call4.i124.i, %if.then.i125.i ], [ %call.i.i119.i, %if.then.i.i121.i.cleanup_crit_edge ], [ %call.i.i.i74.i, %if.then.i.i.i76.i.cleanup_crit_edge ], [ %call4.i.i78.i, %cam_i2c_write.exit.i79.i.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i107.i, %if.then.i.i109.i.cleanup_crit_edge ], [ %call4.i100.i, %if.end31.i.cleanup_crit_edge ], [ %call.i.i95.i, %if.then.i.i97.i.cleanup_crit_edge ], [ %call4.i88.i, %if.end25.i.cleanup_crit_edge ], [ %call.i.i83.i, %if.then.i.i85.i.cleanup_crit_edge ], [ %call4.i.i56, %cam_i2c_write.exit.i57.cleanup_crit_edge ], [ %call.i.i.i52, %if.then.i.i.i54.cleanup_crit_edge ], [ %call.i.i.i.i, %if.then.i.i.i.i.cleanup_crit_edge ], [ %call4.i.i.i, %cam_i2c_write.exit.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sr030pc30_set_params(ptr nocapture noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_win = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %curr_win to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_win, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vid_ctl1 = getelementptr inbounds %struct.sr030pc30_frmsize, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vid_ctl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vid_ctl1, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %i2c_reg_page.i.i = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 8
  %6 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_reg_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i.i = icmp eq i8 %7, 0
  br i1 %cmp.not.i.i, label %if.end.cam_i2c_write.exit_crit_edge, label %if.then.i.i

if.end.cam_i2c_write.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cam_i2c_write.exit

if.then.i.i:                                      ; preds = %if.end
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 3, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %i2c_reg_page.i.i, align 4
  br label %cam_i2c_write.exit

cam_i2c_write.exit:                               ; preds = %if.then6.i.i, %if.end.cam_i2c_write.exit_crit_edge
  %conv3.i = trunc i32 %3 to i8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 16, i8 noundef zeroext %conv3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool3.not = icmp eq i32 %call4.i, 0
  br i1 %tobool3.not, label %land.lhs.true, label %cam_i2c_write.exit.cleanup_crit_edge

cam_i2c_write.exit.cleanup_crit_edge:             ; preds = %cam_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %cam_i2c_write.exit
  %curr_fmt = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 3
  %9 = ptrtoint ptr %curr_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curr_fmt, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %land.lhs.true.if.then10_crit_edge, label %if.then5

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then5:                                         ; preds = %land.lhs.true
  %ispctl1_reg = getelementptr inbounds %struct.sr030pc30_format, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ispctl1_reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ispctl1_reg, align 4
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %15 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i2c_reg_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %cmp.not.i.i25 = icmp eq i8 %16, 16
  br i1 %cmp.not.i.i25, label %if.then5.if.end8_crit_edge, label %if.then.i.i28

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.i.i28:                                    ; preds = %if.then5
  %call.i.i26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 3, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %call.i.i26, 0
  br i1 %tobool.not.i.i27, label %if.then6.i.i29, label %if.then.i.i28.cleanup_crit_edge

if.then.i.i28.cleanup_crit_edge:                  ; preds = %if.then.i.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i29:                                   ; preds = %if.then.i.i28
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %i2c_reg_page.i.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6.i.i29, %if.then5.if.end8_crit_edge
  %conv3.i30 = trunc i16 %12 to i8
  %call4.i31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 16, i8 noundef zeroext %conv3.i30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i31)
  %tobool9.not = icmp eq i32 %call4.i31, 0
  br i1 %tobool9.not, label %if.end8.if.then10_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %land.lhs.true.if.then10_crit_edge
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %20 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_reg_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not.i.i.i = icmp eq i8 %21, 0
  br i1 %cmp.not.i.i.i, label %if.then10.if.then.i.i35_crit_edge, label %if.then.i.i.i

if.then10.if.then.i.i35_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i35

if.then.i.i.i:                                    ; preds = %if.then10
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 3, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.i, label %if.then.i.i.i.cam_i2c_read.exit.i_crit_edge

if.then.i.i.i.cam_i2c_read.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cam_i2c_read.exit.i

if.then6.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %i2c_reg_page.i.i, align 4
  br label %if.then.i.i35

if.then.i.i35:                                    ; preds = %if.then6.i.i.i, %if.then10.if.then.i.i35_crit_edge
  %call3.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 17) #7
  br label %cam_i2c_read.exit.i

cam_i2c_read.exit.i:                              ; preds = %if.then.i.i35, %if.then.i.i.i.cam_i2c_read.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i35 ], [ %call.i.i.i, %if.then.i.i.i.cam_i2c_read.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp.i, label %cam_i2c_read.exit.i.cleanup_crit_edge, label %if.end.i

cam_i2c_read.exit.i.cleanup_crit_edge:            ; preds = %cam_i2c_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %cam_i2c_read.exit.i
  %hflip.i = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 5
  %23 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %hflip.i, align 4
  %bf.load.lobit.i = lshr i8 %bf.load.i, 7
  %24 = lshr i8 %bf.load.i, 5
  %25 = and i8 %24, 2
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %28 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_reg_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.not.i.i24.i = icmp eq i8 %29, 0
  br i1 %cmp.not.i.i24.i, label %if.end.i.if.then.i29.i_crit_edge, label %if.then.i.i27.i

if.end.i.if.then.i29.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i29.i

if.then.i.i27.i:                                  ; preds = %if.end.i
  %call.i.i25.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 3, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.i)
  %tobool.not.i.i26.i = icmp eq i32 %call.i.i25.i, 0
  br i1 %tobool.not.i.i26.i, label %if.then6.i.i28.i, label %if.then.i.i27.i.cleanup_crit_edge

if.then.i.i27.i.cleanup_crit_edge:                ; preds = %if.then.i.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i28.i:                                 ; preds = %if.then.i.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %i2c_reg_page.i.i, align 4
  br label %if.then.i29.i

if.then.i29.i:                                    ; preds = %if.then6.i.i28.i, %if.end.i.if.then.i29.i_crit_edge
  %31 = trunc i32 %ret.0.i.i to i8
  %32 = and i8 %31, 124
  %33 = or i8 %32, %bf.load.lobit.i
  %34 = or i8 %33, %25
  %conv3.i.i = or i8 %34, -128
  %call4.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i29.i, %if.then.i.i27.i.cleanup_crit_edge, %cam_i2c_read.exit.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then.i.i28.cleanup_crit_edge, %cam_i2c_write.exit.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4.i31, %if.end8.cleanup_crit_edge ], [ %ret.0.i.i, %cam_i2c_read.exit.i.cleanup_crit_edge ], [ %call4.i.i, %if.then.i29.i ], [ %call.i.i25.i, %if.then.i.i27.i.cleanup_crit_edge ], [ %call.i.i26, %if.then.i.i28.cleanup_crit_edge ], [ %call4.i, %cam_i2c_write.exit.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sr030pc30_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %code) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %code, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [5 x %struct.sr030pc30_format], ptr @sr030pc30_formats, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code5 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code5, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sr030pc30_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %format) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %format, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %curr_win = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 4
  %2 = ptrtoint ptr %curr_win to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_win, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %curr_fmt = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 3
  %4 = ptrtoint ptr %curr_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_fmt, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 4
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %format2, align 4
  %9 = ptrtoint ptr %curr_win to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curr_win, align 4
  %height = getelementptr inbounds %struct.sr030pc30_frmsize, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %height, align 2
  %conv11 = zext i16 %12 to i32
  %height12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %height12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv11, ptr %height12, align 4
  %14 = ptrtoint ptr %curr_fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %curr_fmt, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %code14 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %code14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %code14, align 4
  %19 = load ptr, ptr %curr_fmt, align 4
  %colorspace = getelementptr inbounds %struct.sr030pc30_format, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %colorspace, align 4
  %colorspace16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %colorspace16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %colorspace16, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr030pc30_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sd, null
  %tobool2.not = icmp eq ptr %format, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format3, align 4
  %height6.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height6.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height6.i.i, align 4
  %sub.i.i = sub i32 640, %3
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #7
  %sub7.i.i = sub i32 480, %5
  %7 = tail call i32 @llvm.abs.i32(i32 %sub7.i.i, i1 false) #7
  %add.i.i = add i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp16.not.i.i = icmp eq i32 %add.i.i, -1
  %match.1.i.i = select i1 %cmp16.not.i.i, ptr null, ptr @sr030pc30_sizes
  %sub.1.i.i = sub i32 320, %3
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.1.i.i, i1 false) #7
  %sub7.1.i.i = sub i32 240, %5
  %9 = tail call i32 @llvm.abs.i32(i32 %sub7.1.i.i, i1 false) #7
  %add.1.i.i = add i32 %9, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i.i, i32 %add.i.i)
  %cmp16.1.i.i = icmp ult i32 %add.1.i.i, %add.i.i
  %match.1.1.i.i = select i1 %cmp16.1.i.i, ptr getelementptr inbounds ([3 x %struct.sr030pc30_frmsize], ptr @sr030pc30_sizes, i32 0, i32 1), ptr %match.1.i.i
  %10 = tail call i32 @llvm.umin.i32(i32 %add.1.i.i, i32 %add.i.i) #7
  %sub.2.i.i = sub i32 160, %3
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.2.i.i, i1 false) #7
  %sub7.2.i.i = sub i32 120, %5
  %12 = tail call i32 @llvm.abs.i32(i32 %sub7.2.i.i, i1 false) #7
  %add.2.i.i = add i32 %12, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i.i, i32 %10)
  %cmp16.2.i.i = icmp ult i32 %add.2.i.i, %10
  %match.1.2.i.i = select i1 %cmp16.2.i.i, ptr getelementptr inbounds ([3 x %struct.sr030pc30_frmsize], ptr @sr030pc30_sizes, i32 0, i32 2), ptr %match.1.1.i.i
  %tobool18.not.i.i = icmp eq ptr %match.1.2.i.i, null
  br i1 %tobool18.not.i.i, label %if.end6.sr030pc30_try_frame_size.exit.i_crit_edge, label %if.then19.i.i

if.end6.sr030pc30_try_frame_size.exit.i_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sr030pc30_try_frame_size.exit.i

if.then19.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %match.1.2.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %match.1.2.i.i, align 4
  %conv21.i.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv21.i.i, ptr %format3, align 4
  %height23.i.i = getelementptr inbounds %struct.sr030pc30_frmsize, ptr %match.1.2.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %height23.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %height23.i.i, align 2
  %conv24.i.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %height6.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv24.i.i, ptr %height6.i.i, align 4
  br label %sr030pc30_try_frame_size.exit.i

sr030pc30_try_frame_size.exit.i:                  ; preds = %if.then19.i.i, %if.end6.sr030pc30_try_frame_size.exit.i_crit_edge
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %sr030pc30_try_frame_size.exit.i.try_fmt.exit_crit_edge [
    i32 4103, label %for.end.fold.split4.i
    i32 8201, label %for.end.fold.split.i
    i32 8199, label %for.end.fold.split2.i
    i32 8198, label %for.end.fold.split3.i
  ]

sr030pc30_try_frame_size.exit.i.try_fmt.exit_crit_edge: ; preds = %sr030pc30_try_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_fmt.exit

for.end.fold.split.i:                             ; preds = %sr030pc30_try_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_fmt.exit

for.end.fold.split2.i:                            ; preds = %sr030pc30_try_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_fmt.exit

for.end.fold.split3.i:                            ; preds = %sr030pc30_try_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_fmt.exit

for.end.fold.split4.i:                            ; preds = %sr030pc30_try_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_fmt.exit

try_fmt.exit:                                     ; preds = %for.end.fold.split4.i, %for.end.fold.split3.i, %for.end.fold.split2.i, %for.end.fold.split.i, %sr030pc30_try_frame_size.exit.i.try_fmt.exit_crit_edge
  %cmp3.i = phi i32 [ 1, %for.end.fold.split.i ], [ 2, %for.end.fold.split2.i ], [ 3, %for.end.fold.split3.i ], [ 4, %for.end.fold.split4.i ], [ 0, %sr030pc30_try_frame_size.exit.i.try_fmt.exit_crit_edge ]
  %arrayidx6.i = getelementptr [5 x %struct.sr030pc30_format], ptr @sr030pc30_formats, i32 0, i32 %cmp3.i
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6.i, align 4
  %24 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %code.i, align 4
  %25 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %try_fmt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd_state, align 4
  %29 = call ptr @memcpy(ptr %28, ptr %format3, i32 48)
  br label %cleanup

if.end9:                                          ; preds = %try_fmt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %curr_fmt = getelementptr inbounds %struct.sr030pc30_info, ptr %sd, i32 0, i32 3
  %30 = ptrtoint ptr %curr_fmt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx6.i, ptr %curr_fmt, align 4
  %call10 = tail call fastcc i32 @sr030pc30_set_params(ptr noundef nonnull %sd)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %call10, %if.end9 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr030pc30_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr i8, ptr %1, i32 -80
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull @.str.13, i32 noundef %4, i32 noundef %6) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %id6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id6, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %8, label %do.end5.cleanup_crit_edge [
    i32 9963788, label %sw.bb
    i32 10094849, label %sw.bb42
  ]

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end5
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %10 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %is_new, align 4
  %11 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %sw.bb.land.lhs.true_crit_edge, label %if.then7

sw.bb.land.lhs.true_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then7:                                         ; preds = %sw.bb
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %i2c_reg_page.i.i = getelementptr i8, ptr %1, i32 220
  %16 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_reg_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %17)
  %cmp.not.i.i = icmp eq i8 %17, 34
  br i1 %cmp.not.i.i, label %if.then7.cam_i2c_write.exit_crit_edge, label %if.then.i.i

if.then7.cam_i2c_write.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cam_i2c_write.exit

if.then.i.i:                                      ; preds = %if.then7
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 3, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 34, ptr %i2c_reg_page.i.i, align 4
  br label %cam_i2c_write.exit

cam_i2c_write.exit:                               ; preds = %if.then6.i.i, %if.then7.cam_i2c_write.exit_crit_edge
  %conv3.i = select i1 %tobool9.not, i8 47, i8 46
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool11.not = icmp eq i32 %call4.i, 0
  br i1 %tobool11.not, label %if.then12, label %cam_i2c_write.exit.cleanup_crit_edge

cam_i2c_write.exit.cleanup_crit_edge:             ; preds = %cam_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %cam_i2c_write.exit
  %19 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i, align 4
  %23 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i2c_reg_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %24)
  %cmp.not.i.i115 = icmp eq i8 %24, 34
  br i1 %cmp.not.i.i115, label %if.then12.if.end18_crit_edge, label %if.then.i.i118

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then.i.i118:                                   ; preds = %if.then12
  %call.i.i116 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 3, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116)
  %tobool.not.i.i117 = icmp eq i32 %call.i.i116, 0
  br i1 %tobool.not.i.i117, label %if.then6.i.i119, label %if.then.i.i118.cleanup_crit_edge

if.then.i.i118.cleanup_crit_edge:                 ; preds = %if.then.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i119:                                  ; preds = %if.then.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %i2c_reg_page.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 34, ptr %i2c_reg_page.i.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then6.i.i119, %if.then12.if.end18_crit_edge
  %conv3.i120 = select i1 %tobool14.not, i8 123, i8 -5
  %call4.i121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 16, i8 noundef zeroext %conv3.i120) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i121)
  %tobool19.not = icmp eq i32 %call4.i121, 0
  br i1 %tobool19.not, label %if.end18.land.lhs.true_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18.land.lhs.true_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18.land.lhs.true_crit_edge, %sw.bb.land.lhs.true_crit_edge
  %blue = getelementptr i8, ptr %1, i32 208
  %26 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %blue, align 4
  %is_new20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %is_new20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load21 = load i32, ptr %is_new20, align 4
  %29 = and i32 %bf.load21, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool24.not = icmp eq i32 %29, 0
  br i1 %tobool24.not, label %land.lhs.true.land.lhs.true31_crit_edge, label %if.then25

land.lhs.true.land.lhs.true31_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true31

if.then25:                                        ; preds = %land.lhs.true
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 22
  %30 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val27, align 4
  %dev_priv.i.i125 = getelementptr i8, ptr %1, i32 -44
  %32 = ptrtoint ptr %dev_priv.i.i125 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i125, align 4
  %i2c_reg_page.i.i126 = getelementptr i8, ptr %1, i32 220
  %34 = ptrtoint ptr %i2c_reg_page.i.i126 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i2c_reg_page.i.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %35)
  %cmp.not.i.i127 = icmp eq i8 %35, 34
  br i1 %cmp.not.i.i127, label %if.then25.if.end29_crit_edge, label %if.then.i.i130

if.then25.if.end29_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then.i.i130:                                   ; preds = %if.then25
  %call.i.i128 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 3, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %tobool.not.i.i129 = icmp eq i32 %call.i.i128, 0
  br i1 %tobool.not.i.i129, label %if.then6.i.i131, label %if.then.i.i130.cleanup_crit_edge

if.then.i.i130.cleanup_crit_edge:                 ; preds = %if.then.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i131:                                  ; preds = %if.then.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %i2c_reg_page.i.i126 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 34, ptr %i2c_reg_page.i.i126, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then6.i.i131, %if.then25.if.end29_crit_edge
  %conv3.i132 = trunc i32 %31 to i8
  %call4.i133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext -77, i8 noundef zeroext %conv3.i132) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i133)
  %tobool30.not = icmp eq i32 %call4.i133, 0
  br i1 %tobool30.not, label %if.end29.land.lhs.true31_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29.land.lhs.true31_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end29.land.lhs.true31_crit_edge, %land.lhs.true.land.lhs.true31_crit_edge
  %red = getelementptr i8, ptr %1, i32 204
  %37 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %red, align 4
  %is_new32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %is_new32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load33 = load i32, ptr %is_new32, align 4
  %40 = and i32 %bf.load33, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool36.not = icmp eq i32 %40, 0
  br i1 %tobool36.not, label %land.lhs.true31.cleanup_crit_edge, label %if.then37

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37:                                        ; preds = %land.lhs.true31
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %41 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val39, align 4
  %dev_priv.i.i137 = getelementptr i8, ptr %1, i32 -44
  %43 = ptrtoint ptr %dev_priv.i.i137 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i137, align 4
  %i2c_reg_page.i.i138 = getelementptr i8, ptr %1, i32 220
  %45 = ptrtoint ptr %i2c_reg_page.i.i138 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i2c_reg_page.i.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %46)
  %cmp.not.i.i139 = icmp eq i8 %46, 34
  br i1 %cmp.not.i.i139, label %if.then37.if.then.i146_crit_edge, label %if.then.i.i142

if.then37.if.then.i146_crit_edge:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i146

if.then.i.i142:                                   ; preds = %if.then37
  %call.i.i140 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 3, i8 noundef zeroext 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %tobool.not.i.i141 = icmp eq i32 %call.i.i140, 0
  br i1 %tobool.not.i.i141, label %if.then6.i.i143, label %if.then.i.i142.cleanup_crit_edge

if.then.i.i142.cleanup_crit_edge:                 ; preds = %if.then.i.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i143:                                  ; preds = %if.then.i.i142
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %i2c_reg_page.i.i138 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 34, ptr %i2c_reg_page.i.i138, align 4
  br label %if.then.i146

if.then.i146:                                     ; preds = %if.then6.i.i143, %if.then37.if.then.i146_crit_edge
  %conv3.i144 = trunc i32 %42 to i8
  %call4.i145 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -78, i8 noundef zeroext %conv3.i144) #7
  br label %cleanup

sw.bb42:                                          ; preds = %do.end5
  %is_new43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %48 = ptrtoint ptr %is_new43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load44 = load i32, ptr %is_new43, align 4
  %49 = and i32 %bf.load44, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool47.not = icmp eq i32 %49, 0
  br i1 %tobool47.not, label %sw.bb42.if.end53_crit_edge, label %if.then48

sw.bb42.if.end53_crit_edge:                       ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then48:                                        ; preds = %sw.bb42
  %val49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %50 = ptrtoint ptr %val49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp50 = icmp eq i32 %51, 0
  %dev_priv.i.i149 = getelementptr i8, ptr %1, i32 -44
  %52 = ptrtoint ptr %dev_priv.i.i149 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i149, align 4
  %i2c_reg_page.i.i150 = getelementptr i8, ptr %1, i32 220
  %54 = ptrtoint ptr %i2c_reg_page.i.i150 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %i2c_reg_page.i.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %55)
  %cmp.not.i.i151 = icmp eq i8 %55, 32
  br i1 %cmp.not.i.i151, label %if.then48.if.then.i158_crit_edge, label %if.then.i.i154

if.then48.if.then.i158_crit_edge:                 ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i158

if.then.i.i154:                                   ; preds = %if.then48
  %call.i.i152 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 3, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152)
  %tobool.not.i.i153 = icmp eq i32 %call.i.i152, 0
  br i1 %tobool.not.i.i153, label %if.then6.i.i155, label %if.then.i.i154.if.end53_crit_edge

if.then.i.i154.if.end53_crit_edge:                ; preds = %if.then.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then6.i.i155:                                  ; preds = %if.then.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %i2c_reg_page.i.i150 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 32, ptr %i2c_reg_page.i.i150, align 4
  br label %if.then.i158

if.then.i158:                                     ; preds = %if.then6.i.i155, %if.then48.if.then.i158_crit_edge
  %conv3.i156 = select i1 %cmp50, i8 -36, i8 12
  %call4.i157 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 16, i8 noundef zeroext %conv3.i156) #7
  br label %if.end53

if.end53:                                         ; preds = %if.then.i158, %if.then.i.i154.if.end53_crit_edge, %sw.bb42.if.end53_crit_edge
  %ret.3 = phi i32 [ 0, %sw.bb42.if.end53_crit_edge ], [ %call4.i157, %if.then.i158 ], [ %call.i.i152, %if.then.i.i154.if.end53_crit_edge ]
  %exp = getelementptr i8, ptr %1, i32 216
  %57 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %exp, align 4
  %is_new54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %is_new54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load55 = load i32, ptr %is_new54, align 4
  %60 = and i32 %bf.load55, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool58.not = icmp eq i32 %60, 0
  br i1 %tobool58.not, label %if.end53.cleanup_crit_edge, label %if.then59

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59:                                        ; preds = %if.end53
  %val61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %58, i32 0, i32 22
  %61 = ptrtoint ptr %val61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val61, align 4
  %pdata = getelementptr i8, ptr %1, i32 184
  %63 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdata, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %mul = mul i32 %66, %62
  %div = udiv i32 %mul, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool62.not = icmp eq i32 %ret.3, 0
  br i1 %tobool62.not, label %if.then63, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then63:                                        ; preds = %if.then59
  %shr = lshr i32 %div, 16
  %dev_priv.i.i161 = getelementptr i8, ptr %1, i32 -44
  %67 = ptrtoint ptr %dev_priv.i.i161 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_priv.i.i161, align 4
  %i2c_reg_page.i.i162 = getelementptr i8, ptr %1, i32 220
  %69 = ptrtoint ptr %i2c_reg_page.i.i162 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %i2c_reg_page.i.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %70)
  %cmp.not.i.i163 = icmp eq i8 %70, 32
  br i1 %cmp.not.i.i163, label %if.then63.if.end65_crit_edge, label %if.then.i.i166

if.then63.if.end65_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then.i.i166:                                   ; preds = %if.then63
  %call.i.i164 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext 3, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164)
  %tobool.not.i.i165 = icmp eq i32 %call.i.i164, 0
  br i1 %tobool.not.i.i165, label %if.then6.i.i167, label %if.then.i.i166.cleanup_crit_edge

if.then.i.i166.cleanup_crit_edge:                 ; preds = %if.then.i.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i167:                                  ; preds = %if.then.i.i166
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %i2c_reg_page.i.i162 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 32, ptr %i2c_reg_page.i.i162, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then6.i.i167, %if.then63.if.end65_crit_edge
  %conv3.i168 = trunc i32 %shr to i8
  %call4.i169 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext -125, i8 noundef zeroext %conv3.i168) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i169)
  %tobool66.not = icmp eq i32 %call4.i169, 0
  br i1 %tobool66.not, label %if.then67, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67:                                        ; preds = %if.end65
  %shr68 = lshr i32 %div, 8
  %72 = ptrtoint ptr %dev_priv.i.i161 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_priv.i.i161, align 4
  %74 = ptrtoint ptr %i2c_reg_page.i.i162 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i2c_reg_page.i.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %75)
  %cmp.not.i.i175 = icmp eq i8 %75, 32
  br i1 %cmp.not.i.i175, label %if.then67.if.end71_crit_edge, label %if.then.i.i178

if.then67.if.end71_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then.i.i178:                                   ; preds = %if.then67
  %call.i.i176 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext 3, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176)
  %tobool.not.i.i177 = icmp eq i32 %call.i.i176, 0
  br i1 %tobool.not.i.i177, label %if.then6.i.i179, label %if.then.i.i178.cleanup_crit_edge

if.then.i.i178.cleanup_crit_edge:                 ; preds = %if.then.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i179:                                  ; preds = %if.then.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %i2c_reg_page.i.i162 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 32, ptr %i2c_reg_page.i.i162, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then6.i.i179, %if.then67.if.end71_crit_edge
  %conv3.i180 = trunc i32 %shr68 to i8
  %call4.i181 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext -124, i8 noundef zeroext %conv3.i180) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i181)
  %tobool72.not = icmp eq i32 %call4.i181, 0
  br i1 %tobool72.not, label %if.then73, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then73:                                        ; preds = %if.end71
  %77 = ptrtoint ptr %dev_priv.i.i161 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_priv.i.i161, align 4
  %79 = ptrtoint ptr %i2c_reg_page.i.i162 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %i2c_reg_page.i.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %80)
  %cmp.not.i.i187 = icmp eq i8 %80, 32
  br i1 %cmp.not.i.i187, label %if.then73.if.then.i194_crit_edge, label %if.then.i.i190

if.then73.if.then.i194_crit_edge:                 ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i194

if.then.i.i190:                                   ; preds = %if.then73
  %call.i.i188 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext 3, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i188)
  %tobool.not.i.i189 = icmp eq i32 %call.i.i188, 0
  br i1 %tobool.not.i.i189, label %if.then6.i.i191, label %if.then.i.i190.cleanup_crit_edge

if.then.i.i190.cleanup_crit_edge:                 ; preds = %if.then.i.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i191:                                  ; preds = %if.then.i.i190
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %i2c_reg_page.i.i162 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 32, ptr %i2c_reg_page.i.i162, align 4
  br label %if.then.i194

if.then.i194:                                     ; preds = %if.then6.i.i191, %if.then73.if.then.i194_crit_edge
  %conv3.i192 = trunc i32 %div to i8
  %call4.i193 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext -123, i8 noundef zeroext %conv3.i192) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i194, %if.then.i.i190.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.then.i.i178.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then.i.i166.cleanup_crit_edge, %if.then59.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then.i146, %if.then.i.i142.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then.i.i130.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then.i.i118.cleanup_crit_edge, %cam_i2c_write.exit.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i133, %if.end29.cleanup_crit_edge ], [ 0, %land.lhs.true31.cleanup_crit_edge ], [ %ret.3, %if.end53.cleanup_crit_edge ], [ %call4.i181, %if.end71.cleanup_crit_edge ], [ -22, %do.end5.cleanup_crit_edge ], [ %call4.i145, %if.then.i146 ], [ %call.i.i140, %if.then.i.i142.cleanup_crit_edge ], [ %call4.i193, %if.then.i194 ], [ %call.i.i188, %if.then.i.i190.cleanup_crit_edge ], [ %call.i.i128, %if.then.i.i130.cleanup_crit_edge ], [ %call4.i121, %if.end18.cleanup_crit_edge ], [ %call.i.i116, %if.then.i.i118.cleanup_crit_edge ], [ %call4.i, %cam_i2c_write.exit.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i176, %if.then.i.i178.cleanup_crit_edge ], [ %call4.i169, %if.end65.cleanup_crit_edge ], [ %call.i.i164, %if.then.i.i166.cleanup_crit_edge ], [ %ret.3, %if.then59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/sr030pc30.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_sr030pc30__293_760_sr030pc30_i2c_driver_init6, !4, !"__initcall__kmod_sr030pc30__293_760_sr030pc30_i2c_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/sr030pc30.c", i32 760, i32 1}
!5 = !{ptr @__exitcall_sr030pc30_i2c_driver_exit, !4, !"__exitcall_sr030pc30_i2c_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description294, !7, !"__UNIQUE_ID_description294", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/sr030pc30.c", i32 762, i32 1}
!8 = !{ptr @__UNIQUE_ID_author295, !9, !"__UNIQUE_ID_author295", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/sr030pc30.c", i32 763, i32 1}
!10 = !{ptr @__UNIQUE_ID_file296, !11, !"__UNIQUE_ID_file296", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/sr030pc30.c", i32 764, i32 1}
!12 = !{ptr @__UNIQUE_ID_license297, !11, !"__UNIQUE_ID_license297", i1 false, i1 false}
!13 = !{ptr @debug, !14, !"debug", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/sr030pc30.c", i32 25, i32 12}
!15 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/sr030pc30.c", i32 753, i32 11}
!18 = !{ptr @sr030pc30_i2c_driver, !19, !"sr030pc30_i2c_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/sr030pc30.c", i32 751, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/sr030pc30.c", i32 689, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sr030pc30_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @sr030pc30_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @sr030pc30_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/sr030pc30.c", i32 707, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/sr030pc30.c", i32 670, i32 3}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sr030pc30_detect._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sr030pc30_detect._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @sr030pc30_ops, !37, !"sr030pc30_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/sr030pc30.c", i32 642, i32 37}
!38 = !{ptr @sr030pc30_core_ops, !39, !"sr030pc30_core_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/sr030pc30.c", i32 632, i32 42}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/sr030pc30.c", i32 599, i32 3}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/sr030pc30.c", i32 574, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sr030pc30_base_config._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @sr030pc30_base_config._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @sr030pc30_base_regs, !48, !"sr030pc30_base_regs", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/sr030pc30.c", i32 222, i32 32}
!49 = !{ptr @sr030pc30_formats, !50, !"sr030pc30_formats", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/sr030pc30.c", i32 198, i32 38}
!51 = !{ptr @sr030pc30_sizes, !52, !"sr030pc30_sizes", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/sr030pc30.c", i32 181, i32 39}
!53 = !{ptr @sr030pc30_pad_ops, !54, !"sr030pc30_pad_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/sr030pc30.c", i32 636, i32 41}
!55 = !{ptr @sr030pc30_ctrl_ops, !56, !"sr030pc30_ctrl_ops", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/sr030pc30.c", i32 628, i32 35}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/sr030pc30.c", i32 424, i32 2}
!59 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sr030pc30_s_ctrl._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @sr030pc30_s_ctrl._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @sr030pc30_id, !63, !"sr030pc30_id", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/sr030pc30.c", i32 744, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
