; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/s5k6a3.c_pt.bc'
source_filename = "../drivers/media/i2c/s5k6a3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.93, i16, i16, i16, [10 x i16] }
%union.anon.93 = type { i16 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.s5k6a3 = type { ptr, %struct.v4l2_subdev, %struct.media_pad, [3 x %struct.regulator_bulk_data], i32, %struct.mutex, %struct.v4l2_mbus_framefmt, ptr, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_s5k6a3__293_388_s5k6a3_driver_init6 = internal global ptr @s5k6a3_driver_init, section ".initcall6.init", align 4
@s5k6a3_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @s5k6a3_remove, ptr @s5k6a3_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s5k6a3_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s5k6a3_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_s5k6a3_driver_exit = internal global ptr @s5k6a3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [53 x i8] c"s5k6a3.description=S5K6A3 image sensor subdev driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [58 x i8] c"s5k6a3.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"s5k6a3.file=drivers/media/i2c/s5k6a3\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"s5k6a3.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S5K6A3\00", [25 x i8] zeroinitializer }, align 32
@s5k6a3_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5k6a3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s5k6a3_ids = internal constant { [1 x %struct.i2c_device_id], [40 x i8] } zeroinitializer, align 32
@s5k6a3_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sensor->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extclk\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@s5k6a3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 316, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"using default %u Hz clock frequency\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5k6a3_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/s5k6a3.c\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5k6a3_probe._entry_ptr = internal global ptr @s5k6a3_probe._entry, section ".printk_index", align 4
@s5k6a3_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @s5k6a3_core_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5k6a3_pad_ops }, [32 x i8] zeroinitializer }, align 32
@s5k6a3_sd_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @s5k6a3_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@s5k6a3_formats = internal constant { [1 x %struct.v4l2_mbus_framefmt], [48 x i8] } { [1 x %struct.v4l2_mbus_framefmt] [%struct.v4l2_mbus_framefmt { i32 0, i32 0, i32 12298, i32 1, i32 8, %union.anon.93 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpios\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"svdda\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"svddio\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"afvdd\00", [26 x i8] zeroinitializer }, align 32
@s5k6a3_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5k6a3_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5k6a3_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @s5k6a3_enum_mbus_code, ptr null, ptr null, ptr @s5k6a3_get_fmt, ptr @s5k6a3_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"s5k6a3_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 378, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 381, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"s5k6a3_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 371, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"s5k6a3_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 365, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 292, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 297, i32 44 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 312, i32 41 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 315, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"s5k6a3_subdev_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 276, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"s5k6a3_sd_internal_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 188, i32 46 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"s5k6a3_formats\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 81, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../include/linux/of_gpio.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 121, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 71, i32 23 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 72, i32 24 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 73, i32 24 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"s5k6a3_core_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 272, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"s5k6a3_pad_ops\00", align 1
@___asan_gen_.81 = private constant [30 x i8] c"../drivers/media/i2c/s5k6a3.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 169, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 998, i32 6 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_s5k6a3_driver_exit, ptr @__initcall__kmod_s5k6a3__293_388_s5k6a3_driver_init6, ptr @s5k6a3_driver_exit, ptr @s5k6a3_probe._entry, ptr @s5k6a3_probe._entry_ptr, ptr @s5k6a3_driver, ptr @.str, ptr @s5k6a3_of_match, ptr @s5k6a3_ids, ptr @s5k6a3_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @s5k6a3_subdev_ops, ptr @s5k6a3_sd_internal_ops, ptr @s5k6a3_formats, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @s5k6a3_core_ops, ptr @s5k6a3_pad_ops, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_sd_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_formats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k6a3_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6a3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @s5k6a3_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5k6a3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @s5k6a3_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6a3_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6a3_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 424, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @s5k6a3_probe.__key) #5
  %gpio_reset = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -22, ptr %gpio_reset, align 4
  %clock = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -22 to ptr), ptr %clock, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %3 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %clock, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i109 = tail call i32 @of_get_named_gpio_flags(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i109)
  %7 = icmp ult i32 %call.i109, 2048
  br i1 %7, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @devm_gpio_request_one(ptr noundef %dev1, i32 noundef %call.i109, i32 noundef 0, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %8 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i109, ptr %gpio_reset, align 4
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %clock_frequency = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef %clock_frequency, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool23.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool23.not, label %if.end19.if.end30_crit_edge, label %if.then24

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 24000000, ptr %clock_frequency, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 24000000) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end19.if.end30_crit_edge
  %arrayidx32 = getelementptr %struct.s5k6a3, ptr %call.i, i32 0, i32 3, i32 0
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.10, ptr %arrayidx32, align 4
  %arrayidx32.1 = getelementptr %struct.s5k6a3, ptr %call.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.11, ptr %arrayidx32.1, align 4
  %arrayidx32.2 = getelementptr %struct.s5k6a3, ptr %call.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.12, ptr %arrayidx32.2, align 4
  %call35 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end30.cleanup_crit_edge, label %if.end38

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %subdev = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %subdev, ptr noundef %client, ptr noundef nonnull @s5k6a3_subdev_ops) #5
  %flags = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 4
  store i32 %or, ptr %flags, align 4
  %internal_ops = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @s5k6a3_sd_internal_ops, ptr %internal_ops, align 4
  %format = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 6
  %code = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12298, ptr %code, align 4
  %19 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1296, ptr %format, align 4
  %height = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 732, ptr %height, align 4
  %function = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 2
  %flags42 = getelementptr inbounds %struct.s5k6a3, ptr %call.i, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %flags42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %flags42, align 4
  %call45 = tail call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 1, ptr noundef %pad) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end38.cleanup_crit_edge, label %if.end48

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %if.end38
  tail call void @pm_runtime_no_callbacks(ptr noundef %dev1) #5
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call49 = tail call i32 @v4l2_async_register_subdev(ptr noundef %subdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end48.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then9 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i109, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call35, %if.end30.cleanup_crit_edge ], [ %call45, %if.end38.cleanup_crit_edge ], [ %call49, %if.then51 ], [ %call49, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6a3_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %lock = getelementptr i8, ptr %sd, i32 268
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %power_count = getelementptr i8, ptr %sd, i32 416
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %clock.i = getelementptr i8, ptr %sd, i32 408
  %2 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock.i, align 4
  %clock_frequency.i = getelementptr i8, ptr %sd, i32 412
  %4 = ptrtoint ptr %clock_frequency.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock_frequency.i, align 4
  %call.i = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then2.if.end10_crit_edge, label %if.end.i

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end.i:                                         ; preds = %if.then2
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.if.end.thread31_crit_edge, label %if.end4.i

if.end.i.if.end.thread31_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread31

if.end4.i:                                        ; preds = %if.end.i
  %consumer.i = getelementptr i8, ptr %sd, i32 232
  %8 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumer.i, align 4
  %call5.i = tail call i32 @regulator_enable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.if.end.thread31_crit_edge, label %if.end8.i

if.end4.i.if.end.thread31_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread31

if.end8.i:                                        ; preds = %if.end4.i
  %10 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock.i, align 4
  %call.i62.i = tail call i32 @clk_prepare(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool.not.i.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.i.clk_prepare_enable.exit.i_crit_edge

if.end8.i.clk_prepare_enable.exit.i_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end8.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.for.body.preheader.i_crit_edge, label %if.then3.i.i

if.end.i.i.for.body.preheader.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end8.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i62.i, %if.end8.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp11.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp11.i, label %clk_prepare_enable.exit.i.if.end.thread31_crit_edge, label %clk_prepare_enable.exit.i.for.body.preheader.i_crit_edge

clk_prepare_enable.exit.i.for.body.preheader.i_crit_edge: ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

clk_prepare_enable.exit.i.if.end.thread31_crit_edge: ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread31

for.body.preheader.i:                             ; preds = %clk_prepare_enable.exit.i.for.body.preheader.i_crit_edge, %if.end.i.i.for.body.preheader.i_crit_edge
  %consumer17.i = getelementptr i8, ptr %sd, i32 244
  %12 = ptrtoint ptr %consumer17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %consumer17.i, align 4
  %call18.i = tail call i32 @regulator_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %for.body.preheader.i.for.body27.i_crit_edge, label %for.inc.i

for.body.preheader.i.for.body27.i_crit_edge:      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body27.i

for.inc.i:                                        ; preds = %for.body.preheader.i
  %consumer17.1.i = getelementptr i8, ptr %sd, i32 256
  %14 = ptrtoint ptr %consumer17.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %consumer17.1.i, align 4
  %call18.1.i = tail call i32 @regulator_enable(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1.i)
  %cmp19.1.i = icmp slt i32 %call18.1.i, 0
  br i1 %cmp19.1.i, label %for.inc.i.for.body27.i_crit_edge, label %for.inc.1.i

for.inc.i.for.body27.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body27.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_reset.i = getelementptr i8, ptr %sd, i32 264
  %16 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_reset.i, align 4
  %call.i63.i = tail call ptr @gpio_to_desc(i32 noundef %17) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i63.i, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 800, i32 noundef 2) #5
  %18 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gpio_reset.i, align 4
  %call.i64.i = tail call ptr @gpio_to_desc(i32 noundef %19) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i64.i, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 800, i32 noundef 2) #5
  %20 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpio_reset.i, align 4
  %call.i65.i = tail call ptr @gpio_to_desc(i32 noundef %21) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i65.i, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  br label %if.then6

for.body27.i:                                     ; preds = %for.inc.i.for.body27.i_crit_edge, %for.body.preheader.i.for.body27.i_crit_edge
  %i.1.ph.i = phi i32 [ 2, %for.inc.i.for.body27.i_crit_edge ], [ 1, %for.body.preheader.i.for.body27.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call18.1.i, %for.inc.i.for.body27.i_crit_edge ], [ %call18.i, %for.body.preheader.i.for.body27.i_crit_edge ]
  %i.271.i = add nsw i32 %i.1.ph.i, -1
  %consumer30.i = getelementptr %struct.s5k6a3, ptr %add.ptr.i, i32 0, i32 3, i32 %i.271.i, i32 1
  %22 = ptrtoint ptr %consumer30.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %consumer30.i, align 4
  %call31.i = tail call i32 @regulator_disable(ptr noundef %23) #5
  br i1 %cmp19.i, label %for.body27.i.if.end_crit_edge, label %for.body27.i.1

for.body27.i.if.end_crit_edge:                    ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body27.i.1:                                   ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  %i.271.i.1 = add nsw i32 %i.1.ph.i, -2
  %consumer30.i.1 = getelementptr %struct.s5k6a3, ptr %add.ptr.i, i32 0, i32 3, i32 %i.271.i.1, i32 1
  %24 = ptrtoint ptr %consumer30.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %consumer30.i.1, align 4
  %call31.i.1 = tail call i32 @regulator_disable(ptr noundef %25) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_reset.i20 = getelementptr i8, ptr %sd, i32 264
  %26 = ptrtoint ptr %gpio_reset.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gpio_reset.i20, align 4
  %call.i.i21 = tail call ptr @gpio_to_desc(i32 noundef %27) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i21, i32 noundef 0) #5
  %consumer.i22 = getelementptr i8, ptr %sd, i32 256
  %28 = ptrtoint ptr %consumer.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %consumer.i22, align 4
  %call.i23 = tail call i32 @regulator_disable(ptr noundef %29) #5
  %consumer.1.i = getelementptr i8, ptr %sd, i32 244
  %30 = ptrtoint ptr %consumer.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %consumer.1.i, align 4
  %call.1.i = tail call i32 @regulator_disable(ptr noundef %31) #5
  %consumer.2.i = getelementptr i8, ptr %sd, i32 232
  %32 = ptrtoint ptr %consumer.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %consumer.2.i, align 4
  %call.2.i = tail call i32 @regulator_disable(ptr noundef %33) #5
  %clock.i24 = getelementptr i8, ptr %sd, i32 408
  %34 = ptrtoint ptr %clock.i24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clock.i24, align 4
  tail call void @clk_disable(ptr noundef %35) #5
  tail call void @clk_unprepare(ptr noundef %35) #5
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %call.i1.i = tail call i32 @__pm_runtime_idle(ptr noundef %37, i32 noundef 5) #5
  br label %if.then6

if.end.thread31:                                  ; preds = %clk_prepare_enable.exit.i.if.end.thread31_crit_edge, %if.end4.i.if.end.thread31_crit_edge, %if.end.i.if.end.thread31_crit_edge
  %ret.1.i.ph = phi i32 [ %retval.0.i.i, %clk_prepare_enable.exit.i.if.end.thread31_crit_edge ], [ %call5.i, %if.end4.i.if.end.thread31_crit_edge ], [ %call.i.i, %if.end.i.if.end.thread31_crit_edge ]
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  %call.i66.i33 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 5) #5
  br label %if.end10

if.end:                                           ; preds = %for.body27.i.1, %for.body27.i.if.end_crit_edge
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  %call.i66.i = tail call i32 @__pm_runtime_idle(ptr noundef %41, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph.i)
  %cmp5 = icmp eq i32 %ret.0.ph.i, 0
  br i1 %cmp5, label %if.end.if.then6_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.else, %for.inc.1.i
  %cond = phi i32 [ 1, %for.inc.1.i ], [ -1, %if.else ], [ 1, %if.end.if.then6_crit_edge ]
  %42 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %power_count, align 4
  %add = add i32 %43, %cond
  store i32 %add, ptr %power_count, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge, %if.end.thread31, %if.then2.if.end10_crit_edge, %entry.if.end10_crit_edge
  %ret.1 = phi i32 [ 0, %if.then6 ], [ %ret.0.ph.i, %if.end.if.end10_crit_edge ], [ 0, %entry.if.end10_crit_edge ], [ %ret.1.i.ph, %if.end.thread31 ], [ %call.i, %if.then2.if.end10_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5k6a3_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12298, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6a3_get_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %sd_state, null
  br i1 %tobool.not.i, label %if.then.i.__s5k6a3_get_format.exit_crit_edge, label %cond.true.i

if.then.i.__s5k6a3_get_format.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__s5k6a3_get_format.exit

cond.true.i:                                      ; preds = %if.then.i
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.not.i.i, label %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !64

cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  br label %__s5k6a3_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %format.i = getelementptr i8, ptr %sd, i32 360
  br label %__s5k6a3_get_format.exit

__s5k6a3_get_format.exit:                         ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i, %if.then.i.__s5k6a3_get_format.exit_crit_edge
  %retval.0.i = phi ptr [ %format.i, %if.end.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.then.i.__s5k6a3_get_format.exit_crit_edge ]
  %lock = getelementptr i8, ptr %sd, i32 268
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6a3_set_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12298, ptr %code1.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %field.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 32, i32 noundef 1412, i32 noundef 0, ptr noundef %height.i, i32 noundef 32, i32 noundef 1412, i32 noundef 0, i32 noundef 0) #5
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %sd_state, null
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %cond.true.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.true.i:                                      ; preds = %if.then.i
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !64

cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__s5k6a3_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %format.i = getelementptr i8, ptr %sd, i32 360
  br label %__s5k6a3_get_format.exit

__s5k6a3_get_format.exit:                         ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %format.i, %if.end.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__s5k6a3_get_format.exit.if.end_crit_edge, label %if.then

__s5k6a3_get_format.exit.if.end_crit_edge:        ; preds = %__s5k6a3_get_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %__s5k6a3_get_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr i8, ptr %sd, i32 268
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %10 = call ptr @memcpy(ptr %retval.0.i, ptr %format, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %__s5k6a3_get_format.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k6a3_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !65

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = call ptr @memcpy(ptr %5, ptr @s5k6a3_formats, i32 48)
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1296, ptr %5, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 732, ptr %height, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_s5k6a3__293_388_s5k6a3_driver_init6, !1, !"__initcall__kmod_s5k6a3__293_388_s5k6a3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/s5k6a3.c", i32 388, i32 1}
!2 = !{ptr @__exitcall_s5k6a3_driver_exit, !1, !"__exitcall_s5k6a3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/s5k6a3.c", i32 390, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/s5k6a3.c", i32 391, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/s5k6a3.c", i32 392, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/s5k6a3.c", i32 381, i32 12}
!12 = !{ptr @s5k6a3_driver, !13, !"s5k6a3_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/s5k6a3.c", i32 378, i32 26}
!14 = !{ptr @s5k6a3_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/s5k6a3.c", i32 292, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/s5k6a3.c", i32 297, i32 44}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/s5k6a3.c", i32 312, i32 41}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/s5k6a3.c", i32 315, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @s5k6a3_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @s5k6a3_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/of_gpio.h", i32 121, i32 37}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/s5k6a3.c", i32 71, i32 23}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/s5k6a3.c", i32 72, i32 24}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/s5k6a3.c", i32 73, i32 24}
!37 = distinct !{null, !38, !"s5k6a3_supply_names", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/s5k6a3.c", i32 70, i32 27}
!39 = !{ptr @s5k6a3_subdev_ops, !40, !"s5k6a3_subdev_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/s5k6a3.c", i32 276, i32 37}
!41 = !{ptr @s5k6a3_core_ops, !42, !"s5k6a3_core_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/s5k6a3.c", i32 272, i32 42}
!43 = !{ptr @s5k6a3_pad_ops, !44, !"s5k6a3_pad_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/s5k6a3.c", i32 169, i32 41}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!47 = !{ptr @s5k6a3_sd_internal_ops, !48, !"s5k6a3_sd_internal_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/s5k6a3.c", i32 188, i32 46}
!49 = !{ptr @s5k6a3_formats, !50, !"s5k6a3_formats", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/s5k6a3.c", i32 81, i32 40}
!51 = !{ptr @s5k6a3_of_match, !52, !"s5k6a3_of_match", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/s5k6a3.c", i32 371, i32 34}
!53 = !{ptr @s5k6a3_ids, !54, !"s5k6a3_ids", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/s5k6a3.c", i32 365, i32 35}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!"branch_weights", i32 1, i32 2000}
