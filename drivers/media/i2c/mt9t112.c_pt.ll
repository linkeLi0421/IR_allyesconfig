; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/mt9t112.c_pt.bc'
source_filename = "../drivers/media/i2c/mt9t112.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mt9t112_format = type { i32, i32, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mt9t112_priv = type { %struct.v4l2_subdev, ptr, ptr, %struct.v4l2_rect, ptr, ptr, ptr, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }
%struct.mt9t112_platform_data = type { i32, %struct.mt9t112_pll_divider }
%struct.mt9t112_pll_divider = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.93, i16, i16, i16, [10 x i16] }
%union.anon.93 = type { i16 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__initcall__kmod_mt9t112__294_1130_mt9t112_i2c_driver_init6 = internal global ptr @mt9t112_i2c_driver_init, section ".initcall6.init", align 4
@mt9t112_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mt9t112_probe, ptr @mt9t112_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt9t112_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt9t112_i2c_driver_exit = internal global ptr @mt9t112_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [66 x i8] c"mt9t112.description=V4L2 driver for MT9T111/MT9T112 camera sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [33 x i8] c"mt9t112.author=Kuninori Morimoto\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [39 x i8] c"mt9t112.file=drivers/media/i2c/mt9t112\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [23 x i8] c"mt9t112.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9t112\00", [24 x i8] zeroinitializer }, align 32
@mt9t112_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt9t112\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9t112_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1070, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mt9t112: missing platform data!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9t112_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/mt9t112.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt9t112_probe._entry_ptr = internal global ptr @mt9t112_probe._entry, section ".printk_index", align 4
@mt9t112_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mt9t112_subdev_core_ops, ptr null, ptr null, ptr @mt9t112_subdev_video_ops, ptr null, ptr null, ptr null, ptr @mt9t112_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extclk\00", [25 x i8] zeroinitializer }, align 32
@mt9t112_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1087, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get clock \22extclk\22\0A\00", [34 x i8] zeroinitializer }, align 32
@mt9t112_probe._entry_ptr.9 = internal global ptr @mt9t112_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@mt9t112_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get gpio \22standby\22\0A\00", [34 x i8] zeroinitializer }, align 32
@mt9t112_probe._entry_ptr.13 = internal global ptr @mt9t112_probe._entry.11, section ".printk_index", align 4
@mt9t112_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9t112_g_register, ptr @mt9t112_s_register, ptr @mt9t112_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt9t112_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9t112_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mt9t112_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @mt9t112_enum_mbus_code, ptr null, ptr null, ptr @mt9t112_get_fmt, ptr @mt9t112_set_fmt, ptr @mt9t112_get_selection, ptr @mt9t112_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt9t112_s_stream.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt9t112_s_stream\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"format : %d\0A\00", [19 x i8] zeroinitializer }, align 32
@mt9t112_s_stream.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"size   : %d x %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mt9t112_cfmts = internal constant { [6 x %struct.mt9t112_format], [56 x i8] } { [6 x %struct.mt9t112_format] [%struct.mt9t112_format { i32 8198, i32 8, i16 1, i16 0 }, %struct.mt9t112_format { i32 8199, i32 8, i16 1, i16 1 }, %struct.mt9t112_format { i32 8200, i32 8, i16 1, i16 2 }, %struct.mt9t112_format { i32 8201, i32 8, i16 1, i16 3 }, %struct.mt9t112_format { i32 4100, i32 8, i16 8, i16 2 }, %struct.mt9t112_format { i32 4104, i32 8, i16 4, i16 2 }], [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9t111\00", [24 x i8] zeroinitializer }, align 32
@mt9t112_camera_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1050, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Product ID error %04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt9t112_camera_probe\00", [43 x i8] zeroinitializer }, align 32
@mt9t112_camera_probe._entry_ptr = internal global ptr @mt9t112_camera_probe._entry, section ".printk_index", align 4
@mt9t112_camera_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 1055, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s chip ID %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt9t112_camera_probe._entry_ptr.23 = internal global ptr @mt9t112_camera_probe._entry.20, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9856, i64 9858]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"mt9t112_i2c_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1121, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1123, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"mt9t112_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1115, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1070, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"mt9t112_subdev_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1020, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1083, i32 41 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1087, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1091, i32 61 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1094, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"mt9t112_subdev_core_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 783, i32 42 }
@___asan_gen_.76 = private unnamed_addr constant [25 x i8] c"mt9t112_subdev_video_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1005, i32 43 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"mt9t112_subdev_pad_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1009, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 835, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 836, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"mt9t112_cfmts\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 106, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1042, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1050, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [31 x i8] c"../drivers/media/i2c/mt9t112.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1055, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_mt9t112_i2c_driver_exit, ptr @__initcall__kmod_mt9t112__294_1130_mt9t112_i2c_driver_init6, ptr @mt9t112_camera_probe._entry, ptr @mt9t112_camera_probe._entry.20, ptr @mt9t112_camera_probe._entry_ptr, ptr @mt9t112_camera_probe._entry_ptr.23, ptr @mt9t112_i2c_driver_exit, ptr @mt9t112_probe._entry, ptr @mt9t112_probe._entry.11, ptr @mt9t112_probe._entry.7, ptr @mt9t112_probe._entry_ptr, ptr @mt9t112_probe._entry_ptr.13, ptr @mt9t112_probe._entry_ptr.9, ptr @mt9t112_i2c_driver, ptr @.str, ptr @mt9t112_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mt9t112_subdev_ops, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @mt9t112_subdev_core_ops, ptr @mt9t112_subdev_video_ops, ptr @mt9t112_subdev_pad_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mt9t112_cfmts, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_cfmts to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_camera_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9t112_camera_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t112_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt9t112_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt9t112_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @mt9t112_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t112_probe(ptr noundef %client, ptr nocapture noundef readnone %did) #2 align 64 {
entry:
  %command.addr.i.i = alloca i16, align 2
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %info = getelementptr inbounds %struct.mt9t112_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %info, align 4
  %init_done = getelementptr inbounds %struct.mt9t112_priv, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %init_done to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %init_done, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @mt9t112_subdev_ops) #8
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  %clk = getelementptr inbounds %struct.mt9t112_priv, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %clk, align 4
  %cmp = icmp eq ptr %call9, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %clk, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end5
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %if.then12
  %call26 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 7) #8
  %standby_gpio = getelementptr inbounds %struct.mt9t112_priv, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %standby_gpio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call26, ptr %standby_gpio, align 4
  %cmp.i66 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  %12 = ptrtoint ptr %standby_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %standby_gpio, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end24
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %clk.i5.i.i = getelementptr inbounds %struct.mt9t112_priv, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %clk.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i5.i.i, align 4
  %call.i.i.i.i = tail call i32 @clk_prepare(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end36.mt9t112_s_power.exit.i_crit_edge

if.end36.mt9t112_s_power.exit.i_crit_edge:        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_s_power.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end36
  %call1.i.i.i.i = tail call i32 @clk_enable(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %22) #8
  br label %mt9t112_s_power.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.i.i
  %standby_gpio.i.i.i = getelementptr inbounds %struct.mt9t112_priv, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %standby_gpio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %standby_gpio.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.do.body.i_crit_edge, label %if.then2.i.i.i

if.end.i.i.i.do.body.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %24, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 100) #8
  br label %do.body.i

mt9t112_s_power.exit.i:                           ; preds = %if.then3.i.i.i.i, %if.end36.mt9t112_s_power.exit.i_crit_edge
  %cond.i.i = phi i32 [ %call1.i.i.i.i, %if.then3.i.i.i.i ], [ %call.i.i.i.i, %if.end36.mt9t112_s_power.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp.i67 = icmp slt i32 %cond.i.i, 0
  br i1 %cmp.i67, label %mt9t112_s_power.exit.i.cleanup_crit_edge, label %mt9t112_s_power.exit.i.do.body.i_crit_edge

mt9t112_s_power.exit.i.do.body.i_crit_edge:       ; preds = %mt9t112_s_power.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

mt9t112_s_power.exit.i.cleanup_crit_edge:         ; preds = %mt9t112_s_power.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %mt9t112_s_power.exit.i.do.body.i_crit_edge, %if.then2.i.i.i, %if.end.i.i.i.do.body.i_crit_edge
  %cond.i39.i = phi i32 [ %cond.i.i, %mt9t112_s_power.exit.i.do.body.i_crit_edge ], [ 0, %if.then2.i.i.i ], [ 0, %if.end.i.i.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %25 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %buf.i.i, align 2, !annotation !74
  %28 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %28, align 1, !annotation !74
  %30 = ptrtoint ptr %command.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %command.addr.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %31 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr.i.i, align 2
  %33 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i.i, align 2
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2, ptr %25, align 4
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %command.addr.i.i, ptr %buf5.i.i, align 4
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %32, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %len12.i.i, align 4
  %buf14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %buf14.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i.i, ptr %buf14.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %41 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %43 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #8
  %conv17.i.i = zext i16 %43 to i32
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv17.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i) #8
  br i1 %cmp.i.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  %44 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i.i, label %do.end10.i [
    i32 9856, label %do.end.i.do.end13.i_crit_edge
    i32 9858, label %sw.bb6.i
  ]

do.end.i.do.end13.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

sw.bb6.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

do.end10.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.i) #11
  br label %done.i

do.end13.i:                                       ; preds = %sw.bb6.i, %do.end.i.do.end13.i_crit_edge
  %.sink.i = phi i32 [ 6, %sw.bb6.i ], [ 1, %do.end.i.do.end13.i_crit_edge ]
  %devname.0.i = phi ptr [ @.str, %sw.bb6.i ], [ @.str.17, %do.end.i.do.end13.i_crit_edge ]
  %num_formats.i = getelementptr inbounds %struct.mt9t112_priv, ptr %16, i32 0, i32 7
  %45 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink.i, ptr %num_formats.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull %devname.0.i, i32 noundef %retval.0.i.i) #11
  br label %done.i

done.i:                                           ; preds = %do.end13.i, %do.end10.i
  %ret.0.i = phi i32 [ -19, %do.end10.i ], [ %cond.i39.i, %do.end13.i ]
  %46 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i.i, align 4
  %driver_data.i.i.i.i33.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i.i.i33.i, align 4
  %clk.i5.i34.i = getelementptr inbounds %struct.mt9t112_priv, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %clk.i5.i34.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i5.i34.i, align 4
  call void @clk_disable(ptr noundef %51) #8
  call void @clk_unprepare(ptr noundef %51) #8
  %standby_gpio.i6.i.i = getelementptr inbounds %struct.mt9t112_priv, ptr %49, i32 0, i32 5
  %52 = ptrtoint ptr %standby_gpio.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %standby_gpio.i6.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i, label %done.i.mt9t112_camera_probe.exit_crit_edge, label %if.then.i.i.i

done.i.mt9t112_camera_probe.exit_crit_edge:       ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_camera_probe.exit

if.then.i.i.i:                                    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value(ptr noundef nonnull %53, i32 noundef 1) #8
  call void @msleep(i32 noundef 100) #8
  br label %mt9t112_camera_probe.exit

mt9t112_camera_probe.exit:                        ; preds = %if.then.i.i.i, %done.i.mt9t112_camera_probe.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool38.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool38.not, label %if.end40, label %mt9t112_camera_probe.exit.cleanup_crit_edge

mt9t112_camera_probe.exit.cleanup_crit_edge:      ; preds = %mt9t112_camera_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %mt9t112_camera_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %mt9t112_camera_probe.exit.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %mt9t112_s_power.exit.i.cleanup_crit_edge, %do.end32, %do.end19, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %14, %do.end32 ], [ %call42, %if.end40 ], [ %10, %do.end19 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.0.i, %mt9t112_camera_probe.exit.cleanup_crit_edge ], [ %call.i.i, %do.body.i.cleanup_crit_edge ], [ %cond.i.i, %mt9t112_s_power.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t112_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %clk = getelementptr inbounds %struct.mt9t112_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t112_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %command.addr.i = alloca i16, align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 2, ptr %size, align 1
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %3 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %4 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %buf.i, align 2, !annotation !74
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !74
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  %11 = ptrtoint ptr %command.addr.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %command.addr.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.i, align 2
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %5, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %command.addr.i, ptr %buf5.i, align 4
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %arrayidx7.i, align 4
  %flags10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags10.i, align 2
  %len12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len12.i, align 4
  %buf14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %buf14.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %call.i to i16
  %24 = call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %conv4 = zext i16 %24 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %25 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %conv4, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t112_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %3 to i16
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  %conv2 = trunc i64 %5 to i16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 327679, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv2) #8
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %9, ptr %buf.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %10, ptr %8, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf5.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  %20 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t112_s_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %clk.i5 = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk.i5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i5, align 4
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i.i:                                       ; preds = %cond.true
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cond.end

if.end.i:                                         ; preds = %if.end.i.i
  %standby_gpio.i = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %standby_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %standby_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.cond.end_crit_edge, label %if.then2.i

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 100) #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %standby_gpio.i6 = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %standby_gpio.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %standby_gpio.i6, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %cond.false.cond.end_crit_edge, label %if.then.i

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then.i:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %9, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 100) #8
  br label %cond.end

cond.end:                                         ; preds = %if.then.i, %cond.false.cond.end_crit_edge, %if.then2.i, %if.end.i.cond.end_crit_edge, %if.then3.i.i, %cond.true.cond.end_crit_edge
  %cond = phi i32 [ 0, %if.then2.i ], [ 0, %if.end.i.cond.end_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %cond.true.cond.end_crit_edge ], [ 0, %cond.false.cond.end_crit_edge ], [ 0, %if.then.i ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt9t112_reg_read(ptr nocapture noundef readonly %client, i16 noundef zeroext %command) unnamed_addr #2 align 64 {
entry:
  %command.addr = alloca i16, align 2
  %msg = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 2, !annotation !74
  %3 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !74
  %5 = tail call i16 @llvm.bswap.i16(i16 %command)
  %6 = ptrtoint ptr %command.addr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %command.addr, align 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %command.addr, ptr %buf5, align 4
  %arrayidx7 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %arrayidx7, align 4
  %flags10 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags10, align 2
  %len12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %len12, align 4
  %buf14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %buf14, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %conv = trunc i32 %call to i16
  %19 = call i16 @llvm.bswap.i16(i16 %conv)
  %conv17 = zext i16 %19 to i32
  %retval.0 = select i1 %cmp, i32 %call, i32 %conv17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt9t112_reg_write(ptr nocapture noundef readonly %client, i16 noundef zeroext %command, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  %buf = alloca [4 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %command)
  %4 = tail call i16 @llvm.bswap.i16(i16 %data)
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %3, ptr %buf, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %4, ptr %2, align 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf5, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #8
  %15 = call i32 @llvm.smin.i32(i32 %call, i32 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t112_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  %msg.i4.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i.i = alloca [4 x i8], align 2
  %msg.i.i.i168 = alloca %struct.i2c_msg, align 4
  %buf.i.i.i169 = alloca [4 x i8], align 2
  %msg.i4.i152 = alloca %struct.i2c_msg, align 4
  %buf.i5.i153 = alloca [4 x i8], align 2
  %msg.i.i154 = alloca %struct.i2c_msg, align 4
  %buf.i.i155 = alloca [4 x i8], align 2
  %msg.i4.i136 = alloca %struct.i2c_msg, align 4
  %buf.i5.i137 = alloca [4 x i8], align 2
  %msg.i.i138 = alloca %struct.i2c_msg, align 4
  %buf.i.i139 = alloca [4 x i8], align 2
  %msg.i4.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i = alloca [4 x i8], align 2
  %msg.i.i129 = alloca %struct.i2c_msg, align 4
  %buf.i.i130 = alloca [4 x i8], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 2
  %msg.i248.i = alloca %struct.i2c_msg, align 4
  %buf.i249.i = alloca [4 x i8], align 2
  %msg.i240.i = alloca %struct.i2c_msg, align 4
  %buf.i241.i = alloca [4 x i8], align 2
  %msg.i232.i = alloca %struct.i2c_msg, align 4
  %buf.i233.i = alloca [4 x i8], align 2
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [4 x i8], align 2
  %msg.i14.i.i = alloca %struct.i2c_msg, align 4
  %buf.i15.i.i = alloca [4 x i8], align 2
  %command.addr.i.i.i = alloca i16, align 2
  %msg.i.i222.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i223.i = alloca [2 x i8], align 2
  %msg.i4.i209.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i210.i.i = alloca [4 x i8], align 2
  %msg.i.i211.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i212.i.i = alloca [4 x i8], align 2
  %msg.i4.i193.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i194.i.i = alloca [4 x i8], align 2
  %msg.i.i195.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i196.i.i = alloca [4 x i8], align 2
  %msg.i4.i177.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i178.i.i = alloca [4 x i8], align 2
  %msg.i.i179.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i180.i.i = alloca [4 x i8], align 2
  %msg.i4.i161.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i162.i.i = alloca [4 x i8], align 2
  %msg.i.i163.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i164.i.i = alloca [4 x i8], align 2
  %msg.i4.i145.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i146.i.i = alloca [4 x i8], align 2
  %msg.i.i147.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i148.i.i = alloca [4 x i8], align 2
  %msg.i.i175.i = alloca %struct.i2c_msg, align 4
  %buf.i.i176.i = alloca [4 x i8], align 2
  %msg.i4.i129.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i130.i.i = alloca [4 x i8], align 2
  %msg.i.i131.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i132.i.i = alloca [4 x i8], align 2
  %msg.i4.i113.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i114.i.i = alloca [4 x i8], align 2
  %msg.i.i115.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i116.i.i = alloca [4 x i8], align 2
  %msg.i4.i.i177.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i.i178.i = alloca [4 x i8], align 2
  %msg.i.i.i179.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i180.i = alloca [4 x i8], align 2
  %msg.i4.i553.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i554.i.i = alloca [4 x i8], align 2
  %msg.i.i555.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i556.i.i = alloca [4 x i8], align 2
  %msg.i4.i537.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i538.i.i = alloca [4 x i8], align 2
  %msg.i.i539.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i540.i.i = alloca [4 x i8], align 2
  %msg.i4.i521.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i522.i.i = alloca [4 x i8], align 2
  %msg.i.i523.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i524.i.i = alloca [4 x i8], align 2
  %msg.i4.i505.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i506.i.i = alloca [4 x i8], align 2
  %msg.i.i507.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i508.i.i = alloca [4 x i8], align 2
  %msg.i4.i489.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i490.i.i = alloca [4 x i8], align 2
  %msg.i.i491.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i492.i.i = alloca [4 x i8], align 2
  %msg.i4.i473.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i474.i.i = alloca [4 x i8], align 2
  %msg.i.i475.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i476.i.i = alloca [4 x i8], align 2
  %msg.i4.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i.i.i = alloca [4 x i8], align 2
  %msg.i.i.i165.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i166.i = alloca [4 x i8], align 2
  %msg.i310.i.i = alloca %struct.i2c_msg, align 4
  %buf.i311.i.i = alloca [4 x i8], align 2
  %msg.i302.i.i = alloca %struct.i2c_msg, align 4
  %buf.i303.i.i = alloca [4 x i8], align 2
  %msg.i294.i.i = alloca %struct.i2c_msg, align 4
  %buf.i295.i.i = alloca [4 x i8], align 2
  %msg.i286.i.i = alloca %struct.i2c_msg, align 4
  %buf.i287.i.i = alloca [4 x i8], align 2
  %msg.i278.i.i = alloca %struct.i2c_msg, align 4
  %buf.i279.i.i = alloca [4 x i8], align 2
  %msg.i270.i.i = alloca %struct.i2c_msg, align 4
  %buf.i271.i.i = alloca [4 x i8], align 2
  %msg.i262.i.i = alloca %struct.i2c_msg, align 4
  %buf.i263.i.i = alloca [4 x i8], align 2
  %msg.i14.i51.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i15.i52.i.i.i = alloca [4 x i8], align 2
  %command.addr.i.i53.i.i.i = alloca i16, align 2
  %msg.i.i54.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i55.i.i.i = alloca [2 x i8], align 2
  %msg.i14.i26.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i15.i27.i.i.i = alloca [4 x i8], align 2
  %command.addr.i.i28.i.i.i = alloca i16, align 2
  %msg.i.i29.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i30.i.i.i = alloca [2 x i8], align 2
  %msg.i14.i1.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i15.i2.i.i.i = alloca [4 x i8], align 2
  %command.addr.i.i3.i.i.i = alloca i16, align 2
  %msg.i.i4.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i5.i.i.i = alloca [2 x i8], align 2
  %msg.i14.i.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i15.i.i.i.i = alloca [4 x i8], align 2
  %command.addr.i.i.i.i.i = alloca i16, align 2
  %msg.i.i.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i.i.i.i = alloca [2 x i8], align 2
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [4 x i8], align 2
  %msg.i14.i.i143.i = alloca %struct.i2c_msg, align 4
  %buf.i15.i.i144.i = alloca [4 x i8], align 2
  %command.addr.i.i.i145.i = alloca i16, align 2
  %msg.i.i.i146.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i.i147.i = alloca [2 x i8], align 2
  %msg.i14.i13.i.i = alloca %struct.i2c_msg, align 4
  %buf.i15.i14.i.i = alloca [4 x i8], align 2
  %command.addr.i.i15.i.i = alloca i16, align 2
  %msg.i.i16.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i17.i.i = alloca [2 x i8], align 2
  %msg.i14.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i15.i.i.i = alloca [4 x i8], align 2
  %command.addr.i.i.i.i = alloca i16, align 2
  %msg.i.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i.i.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt9t112_set_a_frame_size(ptr noundef %1, i16 noundef zeroext 640, i16 noundef zeroext 480)
  br label %cleanup89

if.end:                                           ; preds = %entry
  %init_done = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %init_done to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %init_done, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.do.body21_crit_edge

if.end.do.body21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

if.then4:                                         ; preds = %if.end
  %info = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i.i) #8
  %12 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %buf.i.i.i.i, align 2, !annotation !74
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !74
  %15 = ptrtoint ptr %command.addr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 6656, ptr %command.addr.i.i.i.i, align 2
  %addr.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i.i.i.i, align 2
  %18 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %msg.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %10, align 4
  %buf5.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %command.addr.i.i.i.i, ptr %buf5.i.i.i.i, align 4
  %arrayidx7.i.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %17, ptr %arrayidx7.i.i.i.i, align 4
  %flags10.i.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %flags10.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags10.i.i.i.i, align 2
  %len12.i.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len12.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %len12.i.i.i.i, align 4
  %buf14.i.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %buf14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i.i.i.i, ptr %buf14.i.i.i.i, align 4
  %adapter.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i.i.i) #8
  br i1 %cmp.i.i.i.i, label %if.then4.cleanup89_crit_edge, label %__mt9t112_reg_mask_set.exit.i.i

if.then4.cleanup89_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

__mt9t112_reg_mask_set.exit.i.i:                  ; preds = %if.then4
  %conv.i.i.i.i = trunc i32 %call.i.i.i.i to i16
  %28 = or i16 %conv.i.i.i.i, 256
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14.i.i.i) #8
  %29 = getelementptr inbounds i8, ptr %msg.i14.i.i.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 327679, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i15.i.i.i) #8
  %31 = getelementptr inbounds [4 x i8], ptr %buf.i15.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %buf.i15.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 6656, ptr %buf.i15.i.i.i, align 2
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %28, ptr %31, align 2
  %34 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i.i.i.i, align 2
  %36 = ptrtoint ptr %msg.i14.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %msg.i14.i.i.i, align 4
  %flags.i17.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i17.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i17.i.i.i, align 2
  %buf5.i19.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %buf5.i19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i15.i.i.i, ptr %buf5.i19.i.i.i, align 4
  %39 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i21.i.i.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i14.i.i.i, i32 noundef 1) #8
  %41 = call i32 @llvm.smin.i32(i32 %call.i21.i.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i15.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i21.i.i.i, 0
  br i1 %cmp.i.i, label %__mt9t112_reg_mask_set.exit.i.i.mt9t112_reset.exit.i_crit_edge, label %do.end.i.i

__mt9t112_reg_mask_set.exit.i.i.mt9t112_reset.exit.i_crit_edge: ; preds = %__mt9t112_reg_mask_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_reset.exit.i

do.end.i.i:                                       ; preds = %__mt9t112_reg_mask_set.exit.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i15.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i16.i.i) #8
  %42 = getelementptr inbounds i8, ptr %msg.i.i16.i.i, i32 4
  %43 = call ptr @memset(ptr %42, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i17.i.i) #8
  %44 = ptrtoint ptr %buf.i.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %buf.i.i17.i.i, align 2, !annotation !74
  %45 = getelementptr inbounds [2 x i8], ptr %buf.i.i17.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %45, align 1, !annotation !74
  %47 = ptrtoint ptr %command.addr.i.i15.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 6656, ptr %command.addr.i.i15.i.i, align 2
  %48 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %addr.i.i.i.i, align 2
  %50 = ptrtoint ptr %msg.i.i16.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %msg.i.i16.i.i, align 4
  %flags.i.i19.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i16.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i.i19.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i.i19.i.i, align 2
  %52 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 2, ptr %42, align 4
  %buf5.i.i20.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i16.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %buf5.i.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %command.addr.i.i15.i.i, ptr %buf5.i.i20.i.i, align 4
  %arrayidx7.i.i21.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i16.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx7.i.i21.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %49, ptr %arrayidx7.i.i21.i.i, align 4
  %flags10.i.i22.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i16.i.i, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %flags10.i.i22.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %flags10.i.i22.i.i, align 2
  %len12.i.i23.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i16.i.i, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %len12.i.i23.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 2, ptr %len12.i.i23.i.i, align 4
  %buf14.i.i24.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i16.i.i, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %buf14.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i.i17.i.i, ptr %buf14.i.i24.i.i, align 4
  %58 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i26.i.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i16.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i.i)
  %cmp.i.i27.i.i = icmp slt i32 %call.i.i26.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i17.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i16.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i15.i.i) #8
  br i1 %cmp.i.i27.i.i, label %do.end.i.i.cleanup89_crit_edge, label %if.end.i33.i.i

do.end.i.i.cleanup89_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

if.end.i33.i.i:                                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i28.i.i = trunc i32 %call.i.i26.i.i to i16
  %60 = and i16 %conv.i.i28.i.i, -257
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14.i13.i.i) #8
  %61 = getelementptr inbounds i8, ptr %msg.i14.i13.i.i, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 327679, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i15.i14.i.i) #8
  %63 = getelementptr inbounds [4 x i8], ptr %buf.i15.i14.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %buf.i15.i14.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 6656, ptr %buf.i15.i14.i.i, align 2
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %60, ptr %63, align 2
  %66 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr.i.i.i.i, align 2
  %68 = ptrtoint ptr %msg.i14.i13.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %msg.i14.i13.i.i, align 4
  %flags.i17.i30.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i13.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i17.i30.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i17.i30.i.i, align 2
  %buf5.i19.i31.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i13.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %buf5.i19.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i15.i14.i.i, ptr %buf5.i19.i31.i.i, align 4
  %71 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i21.i32.i.i = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i14.i13.i.i, i32 noundef 1) #8
  %73 = call i32 @llvm.smin.i32(i32 %call.i21.i32.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i15.i14.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14.i13.i.i) #8
  br label %mt9t112_reset.exit.i

mt9t112_reset.exit.i:                             ; preds = %if.end.i33.i.i, %__mt9t112_reg_mask_set.exit.i.i.mt9t112_reset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %41, %__mt9t112_reg_mask_set.exit.i.i.mt9t112_reset.exit.i_crit_edge ], [ %73, %if.end.i33.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %mt9t112_reset.exit.i.cleanup89_crit_edge, label %do.body1.i

mt9t112_reset.exit.i.cleanup89_crit_edge:         ; preds = %mt9t112_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body1.i:                                       ; preds = %mt9t112_reset.exit.i
  %74 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i.i145.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i146.i) #8
  %76 = getelementptr inbounds i8, ptr %msg.i.i.i146.i, i32 4
  %77 = call ptr @memset(ptr %76, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i147.i) #8
  %78 = ptrtoint ptr %buf.i.i.i147.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %buf.i.i.i147.i, align 2, !annotation !74
  %79 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i147.i, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %79, align 1, !annotation !74
  %81 = ptrtoint ptr %command.addr.i.i.i145.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 5120, ptr %command.addr.i.i.i145.i, align 2
  %82 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %addr.i.i.i.i, align 2
  %84 = ptrtoint ptr %msg.i.i.i146.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %msg.i.i.i146.i, align 4
  %flags.i.i.i149.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i146.i, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i.i.i149.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i.i.i149.i, align 2
  %86 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 2, ptr %76, align 4
  %buf5.i.i.i150.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i146.i, i32 0, i32 3
  %87 = ptrtoint ptr %buf5.i.i.i150.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %command.addr.i.i.i145.i, ptr %buf5.i.i.i150.i, align 4
  %arrayidx7.i.i.i151.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i146.i, i32 0, i32 1
  %88 = ptrtoint ptr %arrayidx7.i.i.i151.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %83, ptr %arrayidx7.i.i.i151.i, align 4
  %flags10.i.i.i152.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i146.i, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %flags10.i.i.i152.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %flags10.i.i.i152.i, align 2
  %len12.i.i.i153.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i146.i, i32 0, i32 1, i32 2
  %90 = ptrtoint ptr %len12.i.i.i153.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 2, ptr %len12.i.i.i153.i, align 4
  %buf14.i.i.i154.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i146.i, i32 0, i32 1, i32 3
  %91 = ptrtoint ptr %buf14.i.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %buf.i.i.i147.i, ptr %buf14.i.i.i154.i, align 4
  %92 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i.i156.i = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i.i.i146.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i156.i)
  %cmp.i.i.i157.i = icmp slt i32 %call.i.i.i156.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i147.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i146.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i.i145.i) #8
  br i1 %cmp.i.i.i157.i, label %do.body1.i.cleanup89_crit_edge, label %__mt9t112_reg_mask_set.exit.i163.i

do.body1.i.cleanup89_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

__mt9t112_reg_mask_set.exit.i163.i:               ; preds = %do.body1.i
  %conv.i.i.i158.i = trunc i32 %call.i.i.i156.i to i16
  %94 = and i16 %conv.i.i.i158.i, -769
  %95 = or i16 %94, 256
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14.i.i143.i) #8
  %96 = getelementptr inbounds i8, ptr %msg.i14.i.i143.i, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 327679, ptr %96, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i15.i.i144.i) #8
  %98 = getelementptr inbounds [4 x i8], ptr %buf.i15.i.i144.i, i32 0, i32 2
  %99 = ptrtoint ptr %buf.i15.i.i144.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 5120, ptr %buf.i15.i.i144.i, align 2
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %95, ptr %98, align 2
  %101 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %addr.i.i.i.i, align 2
  %103 = ptrtoint ptr %msg.i14.i.i143.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %msg.i14.i.i143.i, align 4
  %flags.i17.i.i159.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i.i143.i, i32 0, i32 1
  %104 = ptrtoint ptr %flags.i17.i.i159.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i17.i.i159.i, align 2
  %buf5.i19.i.i160.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i.i143.i, i32 0, i32 3
  %105 = ptrtoint ptr %buf5.i19.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %buf.i15.i.i144.i, ptr %buf5.i19.i.i160.i, align 4
  %106 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i21.i.i161.i = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i14.i.i143.i, i32 noundef 1) #8
  %108 = call i32 @llvm.smin.i32(i32 %call.i21.i.i161.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i15.i.i144.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14.i.i143.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i161.i)
  %cmp.i162.i = icmp slt i32 %call.i21.i.i161.i, 0
  br i1 %cmp.i162.i, label %__mt9t112_reg_mask_set.exit.i163.i.mt9t112_init_pll.exit.i_crit_edge, label %do.body2.i.i

__mt9t112_reg_mask_set.exit.i163.i.mt9t112_init_pll.exit.i_crit_edge: ; preds = %__mt9t112_reg_mask_set.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_pll.exit.i

do.body2.i.i:                                     ; preds = %__mt9t112_reg_mask_set.exit.i163.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  %109 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 327679, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #8
  %111 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 5120, ptr %buf.i.i.i, align 2
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 17697, ptr %111, align 2
  %114 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %addr.i.i.i.i, align 2
  %116 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %117 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %118 = ptrtoint ptr %buf5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %buf.i.i.i, ptr %buf5.i.i.i, align 4
  %119 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #8
  %121 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp4.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp4.i.i, label %do.body2.i.i.mt9t112_init_pll.exit.i_crit_edge, label %do.end8.i.i

do.body2.i.i.mt9t112_init_pll.exit.i_crit_edge:   ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_pll.exit.i

do.end8.i.i:                                      ; preds = %do.body2.i.i
  %info.i.i = getelementptr inbounds %struct.mt9t112_priv, ptr %75, i32 0, i32 1
  %122 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %info.i.i, align 4
  %divider.i.i = getelementptr inbounds %struct.mt9t112_platform_data, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %divider.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %divider.i.i, align 4
  %n.i.i = getelementptr inbounds %struct.mt9t112_platform_data, ptr %123, i32 0, i32 1, i32 1
  %126 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %n.i.i, align 1
  %p1.i.i = getelementptr inbounds %struct.mt9t112_platform_data, ptr %123, i32 0, i32 1, i32 2
  %128 = ptrtoint ptr %p1.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %p1.i.i, align 2
  %p2.i.i = getelementptr inbounds %struct.mt9t112_platform_data, ptr %123, i32 0, i32 1, i32 3
  %130 = ptrtoint ptr %p2.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %p2.i.i, align 1
  %p3.i.i = getelementptr inbounds %struct.mt9t112_platform_data, ptr %123, i32 0, i32 1, i32 4
  %132 = ptrtoint ptr %p3.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %p3.i.i, align 4
  %p4.i.i = getelementptr inbounds %struct.mt9t112_platform_data, ptr %123, i32 0, i32 1, i32 5
  %134 = ptrtoint ptr %p4.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %p4.i.i, align 1
  %p5.i.i = getelementptr inbounds %struct.mt9t112_platform_data, ptr %123, i32 0, i32 1, i32 6
  %136 = ptrtoint ptr %p5.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %p5.i.i, align 2
  %p6.i.i = getelementptr inbounds %struct.mt9t112_platform_data, ptr %123, i32 0, i32 1, i32 7
  %138 = ptrtoint ptr %p6.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %p6.i.i, align 1
  %p7.i.i = getelementptr inbounds %struct.mt9t112_platform_data, ptr %123, i32 0, i32 1, i32 8
  %140 = ptrtoint ptr %p7.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %p7.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i.i.i) #8
  %142 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 4
  %143 = call ptr @memset(ptr %142, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i.i.i) #8
  %144 = ptrtoint ptr %buf.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -1, ptr %buf.i.i.i.i.i, align 2, !annotation !74
  %145 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -1, ptr %145, align 1, !annotation !74
  %147 = ptrtoint ptr %command.addr.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 4096, ptr %command.addr.i.i.i.i.i, align 2
  %148 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %addr.i.i.i.i, align 2
  %150 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %msg.i.i.i.i.i, align 4
  %flags.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i.i.i.i.i, align 2
  %152 = ptrtoint ptr %142 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 2, ptr %142, align 4
  %buf5.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i, i32 0, i32 3
  %153 = ptrtoint ptr %buf5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %command.addr.i.i.i.i.i, ptr %buf5.i.i.i.i.i, align 4
  %arrayidx7.i.i.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %arrayidx7.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %149, ptr %arrayidx7.i.i.i.i.i, align 4
  %flags10.i.i.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i.i.i, i32 0, i32 1, i32 1
  %155 = ptrtoint ptr %flags10.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 1, ptr %flags10.i.i.i.i.i, align 2
  %len12.i.i.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i.i.i, i32 0, i32 1, i32 2
  %156 = ptrtoint ptr %len12.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 2, ptr %len12.i.i.i.i.i, align 4
  %buf14.i.i.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i.i.i, i32 0, i32 1, i32 3
  %157 = ptrtoint ptr %buf14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %buf.i.i.i.i.i, ptr %buf14.i.i.i.i.i, align 4
  %158 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i.i.i.i = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %msg.i.i.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i.i.i.i) #8
  br i1 %cmp.i.i.i.i.i, label %do.end8.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, label %__mt9t112_reg_mask_set.exit.i.i.i

do.end8.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge: ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_set_pll_dividers.exit.i.i

__mt9t112_reg_mask_set.exit.i.i.i:                ; preds = %do.end8.i.i
  %conv.i.i.i = zext i8 %127 to i16
  %shl.i.i.i = shl nuw i16 %conv.i.i.i, 8
  %conv1.i.i.i = zext i8 %125 to i16
  %conv.i.i.i.i.i = trunc i32 %call.i.i.i.i.i to i16
  %160 = shl i16 %conv.i.i.i.i.i, 8
  %and.i.i.i.i = and i16 %160, -16384
  %shl.masked.i.i.i = and i16 %shl.i.i.i, 16128
  %and313.i.i.i.i = or i16 %shl.masked.i.i.i, %conv1.i.i.i
  %conv4.i.i.i.i = or i16 %and313.i.i.i.i, %and.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14.i.i.i.i) #8
  %161 = getelementptr inbounds i8, ptr %msg.i14.i.i.i.i, i32 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 327679, ptr %161, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i15.i.i.i.i) #8
  %163 = getelementptr inbounds [4 x i8], ptr %buf.i15.i.i.i.i, i32 0, i32 2
  %164 = call i16 @llvm.bswap.i16(i16 %conv4.i.i.i.i) #8
  %165 = ptrtoint ptr %buf.i15.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 4096, ptr %buf.i15.i.i.i.i, align 2
  %166 = ptrtoint ptr %163 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %164, ptr %163, align 2
  %167 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %addr.i.i.i.i, align 2
  %169 = ptrtoint ptr %msg.i14.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %msg.i14.i.i.i.i, align 4
  %flags.i17.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i.i.i.i, i32 0, i32 1
  %170 = ptrtoint ptr %flags.i17.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %flags.i17.i.i.i.i, align 2
  %buf5.i19.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i.i.i.i, i32 0, i32 3
  %171 = ptrtoint ptr %buf5.i19.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %buf.i15.i.i.i.i, ptr %buf5.i19.i.i.i.i, align 4
  %172 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i21.i.i.i.i = call i32 @i2c_transfer(ptr noundef %173, ptr noundef nonnull %msg.i14.i.i.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i15.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i21.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %__mt9t112_reg_mask_set.exit.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, label %do.end.i.i.i

__mt9t112_reg_mask_set.exit.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge: ; preds = %__mt9t112_reg_mask_set.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_set_pll_dividers.exit.i.i

do.end.i.i.i:                                     ; preds = %__mt9t112_reg_mask_set.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i3.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i4.i.i.i) #8
  %174 = getelementptr inbounds i8, ptr %msg.i.i4.i.i.i, i32 4
  %175 = call ptr @memset(ptr %174, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i5.i.i.i) #8
  %176 = ptrtoint ptr %buf.i.i5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -1, ptr %buf.i.i5.i.i.i, align 2, !annotation !74
  %177 = getelementptr inbounds [2 x i8], ptr %buf.i.i5.i.i.i, i32 0, i32 1
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -1, ptr %177, align 1, !annotation !74
  %179 = ptrtoint ptr %command.addr.i.i3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 4608, ptr %command.addr.i.i3.i.i.i, align 2
  %180 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %addr.i.i.i.i, align 2
  %182 = ptrtoint ptr %msg.i.i4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %msg.i.i4.i.i.i, align 4
  %flags.i.i7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i4.i.i.i, i32 0, i32 1
  %183 = ptrtoint ptr %flags.i.i7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 0, ptr %flags.i.i7.i.i.i, align 2
  %184 = ptrtoint ptr %174 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 2, ptr %174, align 4
  %buf5.i.i8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i4.i.i.i, i32 0, i32 3
  %185 = ptrtoint ptr %buf5.i.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %command.addr.i.i3.i.i.i, ptr %buf5.i.i8.i.i.i, align 4
  %arrayidx7.i.i9.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i4.i.i.i, i32 0, i32 1
  %186 = ptrtoint ptr %arrayidx7.i.i9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %181, ptr %arrayidx7.i.i9.i.i.i, align 4
  %flags10.i.i10.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i4.i.i.i, i32 0, i32 1, i32 1
  %187 = ptrtoint ptr %flags10.i.i10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 1, ptr %flags10.i.i10.i.i.i, align 2
  %len12.i.i11.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i4.i.i.i, i32 0, i32 1, i32 2
  %188 = ptrtoint ptr %len12.i.i11.i.i.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 2, ptr %len12.i.i11.i.i.i, align 4
  %buf14.i.i12.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i4.i.i.i, i32 0, i32 1, i32 3
  %189 = ptrtoint ptr %buf14.i.i12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %buf.i.i5.i.i.i, ptr %buf14.i.i12.i.i.i, align 4
  %190 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i14.i.i.i = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %msg.i.i4.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i.i.i)
  %cmp.i.i15.i.i.i = icmp slt i32 %call.i.i14.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i5.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i4.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i3.i.i.i) #8
  br i1 %cmp.i.i15.i.i.i, label %do.end.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, label %__mt9t112_reg_mask_set.exit25.i.i.i

do.end.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_set_pll_dividers.exit.i.i

__mt9t112_reg_mask_set.exit25.i.i.i:              ; preds = %do.end.i.i.i
  %192 = and i8 %133, 15
  %and.i261.i.i = zext i8 %192 to i16
  %shl6.i.i.i = shl nuw nsw i16 %and.i261.i.i, 8
  %193 = shl i8 %131, 4
  %shl9.i.i.i = zext i8 %193 to i16
  %or10.i.i.i = or i16 %shl6.i.i.i, %shl9.i.i.i
  %194 = and i8 %129, 15
  %and12.i.i.i = zext i8 %194 to i16
  %or14.i.i.i = or i16 %or10.i.i.i, %and12.i.i.i
  %conv.i.i16.i.i.i = trunc i32 %call.i.i14.i.i.i to i16
  %195 = shl i16 %conv.i.i16.i.i.i, 8
  %and.i17.i.i.i = and i16 %195, -4096
  %conv4.i19.i.i.i = or i16 %and.i17.i.i.i, %or14.i.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14.i1.i.i.i) #8
  %196 = getelementptr inbounds i8, ptr %msg.i14.i1.i.i.i, i32 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 327679, ptr %196, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i15.i2.i.i.i) #8
  %198 = getelementptr inbounds [4 x i8], ptr %buf.i15.i2.i.i.i, i32 0, i32 2
  %199 = call i16 @llvm.bswap.i16(i16 %conv4.i19.i.i.i) #8
  %200 = ptrtoint ptr %buf.i15.i2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 4608, ptr %buf.i15.i2.i.i.i, align 2
  %201 = ptrtoint ptr %198 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %199, ptr %198, align 2
  %202 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %addr.i.i.i.i, align 2
  %204 = ptrtoint ptr %msg.i14.i1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %203, ptr %msg.i14.i1.i.i.i, align 4
  %flags.i17.i20.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i1.i.i.i, i32 0, i32 1
  %205 = ptrtoint ptr %flags.i17.i20.i.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %flags.i17.i20.i.i.i, align 2
  %buf5.i19.i21.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i1.i.i.i, i32 0, i32 3
  %206 = ptrtoint ptr %buf5.i19.i21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %buf.i15.i2.i.i.i, ptr %buf5.i19.i21.i.i.i, align 4
  %207 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i21.i22.i.i.i = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %msg.i14.i1.i.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i15.i2.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14.i1.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i22.i.i.i)
  %cmp18.i.i.i = icmp slt i32 %call.i21.i22.i.i.i, 0
  br i1 %cmp18.i.i.i, label %__mt9t112_reg_mask_set.exit25.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, label %do.end23.i.i.i

__mt9t112_reg_mask_set.exit25.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge: ; preds = %__mt9t112_reg_mask_set.exit25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_set_pll_dividers.exit.i.i

do.end23.i.i.i:                                   ; preds = %__mt9t112_reg_mask_set.exit25.i.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i28.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i29.i.i.i) #8
  %209 = getelementptr inbounds i8, ptr %msg.i.i29.i.i.i, i32 4
  %210 = call ptr @memset(ptr %209, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i30.i.i.i) #8
  %211 = ptrtoint ptr %buf.i.i30.i.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -1, ptr %buf.i.i30.i.i.i, align 2, !annotation !74
  %212 = getelementptr inbounds [2 x i8], ptr %buf.i.i30.i.i.i, i32 0, i32 1
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 -1, ptr %212, align 1, !annotation !74
  %214 = ptrtoint ptr %command.addr.i.i28.i.i.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 10752, ptr %command.addr.i.i28.i.i.i, align 2
  %215 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %addr.i.i.i.i, align 2
  %217 = ptrtoint ptr %msg.i.i29.i.i.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %msg.i.i29.i.i.i, align 4
  %flags.i.i32.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i.i.i, i32 0, i32 1
  %218 = ptrtoint ptr %flags.i.i32.i.i.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %flags.i.i32.i.i.i, align 2
  %219 = ptrtoint ptr %209 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 2, ptr %209, align 4
  %buf5.i.i33.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i.i.i, i32 0, i32 3
  %220 = ptrtoint ptr %buf5.i.i33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %command.addr.i.i28.i.i.i, ptr %buf5.i.i33.i.i.i, align 4
  %arrayidx7.i.i34.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i29.i.i.i, i32 0, i32 1
  %221 = ptrtoint ptr %arrayidx7.i.i34.i.i.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %216, ptr %arrayidx7.i.i34.i.i.i, align 4
  %flags10.i.i35.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i29.i.i.i, i32 0, i32 1, i32 1
  %222 = ptrtoint ptr %flags10.i.i35.i.i.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 1, ptr %flags10.i.i35.i.i.i, align 2
  %len12.i.i36.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i29.i.i.i, i32 0, i32 1, i32 2
  %223 = ptrtoint ptr %len12.i.i36.i.i.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 2, ptr %len12.i.i36.i.i.i, align 4
  %buf14.i.i37.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i29.i.i.i, i32 0, i32 1, i32 3
  %224 = ptrtoint ptr %buf14.i.i37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %buf.i.i30.i.i.i, ptr %buf14.i.i37.i.i.i, align 4
  %225 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i39.i.i.i = call i32 @i2c_transfer(ptr noundef %226, ptr noundef nonnull %msg.i.i29.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.i.i.i)
  %cmp.i.i40.i.i.i = icmp slt i32 %call.i.i39.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i30.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i29.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i28.i.i.i) #8
  br i1 %cmp.i.i40.i.i.i, label %do.end23.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, label %__mt9t112_reg_mask_set.exit50.i.i.i

do.end23.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge: ; preds = %do.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_set_pll_dividers.exit.i.i

__mt9t112_reg_mask_set.exit50.i.i.i:              ; preds = %do.end23.i.i.i
  %227 = and i8 %139, 15
  %and25.i.i.i = zext i8 %227 to i16
  %shl26.i.i.i = shl nuw nsw i16 %and25.i.i.i, 8
  %228 = shl i8 %137, 4
  %shl30.i.i.i = zext i8 %228 to i16
  %or27.i.i.i = or i16 %shl26.i.i.i, %shl30.i.i.i
  %229 = and i8 %135, 15
  %and33.i.i.i = zext i8 %229 to i16
  %or31.i.i.i = or i16 %or27.i.i.i, %and33.i.i.i
  %or35.i.i.i = or i16 %or31.i.i.i, 28672
  %conv.i.i41.i.i.i = trunc i32 %call.i.i39.i.i.i to i16
  %230 = shl i16 %conv.i.i41.i.i.i, 8
  %and.i42.i.i.i = and i16 %230, -32768
  %conv4.i44.i.i.i = or i16 %and.i42.i.i.i, %or35.i.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14.i26.i.i.i) #8
  %231 = getelementptr inbounds i8, ptr %msg.i14.i26.i.i.i, i32 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 327679, ptr %231, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i15.i27.i.i.i) #8
  %233 = getelementptr inbounds [4 x i8], ptr %buf.i15.i27.i.i.i, i32 0, i32 2
  %234 = call i16 @llvm.bswap.i16(i16 %conv4.i44.i.i.i) #8
  %235 = ptrtoint ptr %buf.i15.i27.i.i.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 10752, ptr %buf.i15.i27.i.i.i, align 2
  %236 = ptrtoint ptr %233 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %234, ptr %233, align 2
  %237 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %addr.i.i.i.i, align 2
  %239 = ptrtoint ptr %msg.i14.i26.i.i.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %238, ptr %msg.i14.i26.i.i.i, align 4
  %flags.i17.i45.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i26.i.i.i, i32 0, i32 1
  %240 = ptrtoint ptr %flags.i17.i45.i.i.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 0, ptr %flags.i17.i45.i.i.i, align 2
  %buf5.i19.i46.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i26.i.i.i, i32 0, i32 3
  %241 = ptrtoint ptr %buf5.i19.i46.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %buf.i15.i27.i.i.i, ptr %buf5.i19.i46.i.i.i, align 4
  %242 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i21.i47.i.i.i = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %msg.i14.i26.i.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i15.i27.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14.i26.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i47.i.i.i)
  %cmp39.i.i.i = icmp slt i32 %call.i21.i47.i.i.i, 0
  br i1 %cmp39.i.i.i, label %__mt9t112_reg_mask_set.exit50.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, label %do.end44.i.i.i

__mt9t112_reg_mask_set.exit50.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge: ; preds = %__mt9t112_reg_mask_set.exit50.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_set_pll_dividers.exit.i.i

do.end44.i.i.i:                                   ; preds = %__mt9t112_reg_mask_set.exit50.i.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i53.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i54.i.i.i) #8
  %244 = getelementptr inbounds i8, ptr %msg.i.i54.i.i.i, i32 4
  %245 = call ptr @memset(ptr %244, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i55.i.i.i) #8
  %246 = ptrtoint ptr %buf.i.i55.i.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 -1, ptr %buf.i.i55.i.i.i, align 2, !annotation !74
  %247 = getelementptr inbounds [2 x i8], ptr %buf.i.i55.i.i.i, i32 0, i32 1
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 -1, ptr %247, align 1, !annotation !74
  %249 = ptrtoint ptr %command.addr.i.i53.i.i.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 11264, ptr %command.addr.i.i53.i.i.i, align 2
  %250 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %addr.i.i.i.i, align 2
  %252 = ptrtoint ptr %msg.i.i54.i.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %251, ptr %msg.i.i54.i.i.i, align 4
  %flags.i.i57.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i54.i.i.i, i32 0, i32 1
  %253 = ptrtoint ptr %flags.i.i57.i.i.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 0, ptr %flags.i.i57.i.i.i, align 2
  %254 = ptrtoint ptr %244 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 2, ptr %244, align 4
  %buf5.i.i58.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i54.i.i.i, i32 0, i32 3
  %255 = ptrtoint ptr %buf5.i.i58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %command.addr.i.i53.i.i.i, ptr %buf5.i.i58.i.i.i, align 4
  %arrayidx7.i.i59.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i54.i.i.i, i32 0, i32 1
  %256 = ptrtoint ptr %arrayidx7.i.i59.i.i.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %251, ptr %arrayidx7.i.i59.i.i.i, align 4
  %flags10.i.i60.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i54.i.i.i, i32 0, i32 1, i32 1
  %257 = ptrtoint ptr %flags10.i.i60.i.i.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 1, ptr %flags10.i.i60.i.i.i, align 2
  %len12.i.i61.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i54.i.i.i, i32 0, i32 1, i32 2
  %258 = ptrtoint ptr %len12.i.i61.i.i.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 2, ptr %len12.i.i61.i.i.i, align 4
  %buf14.i.i62.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i54.i.i.i, i32 0, i32 1, i32 3
  %259 = ptrtoint ptr %buf14.i.i62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %buf.i.i55.i.i.i, ptr %buf14.i.i62.i.i.i, align 4
  %260 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i64.i.i.i = call i32 @i2c_transfer(ptr noundef %261, ptr noundef nonnull %msg.i.i54.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64.i.i.i)
  %cmp.i.i65.i.i.i = icmp slt i32 %call.i.i64.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i55.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i54.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i53.i.i.i) #8
  br i1 %cmp.i.i65.i.i.i, label %do.end44.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, label %if.end.i73.i.i.i

do.end44.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge: ; preds = %do.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_set_pll_dividers.exit.i.i

if.end.i73.i.i.i:                                 ; preds = %do.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i66.i.i.i = trunc i32 %call.i.i64.i.i.i to i16
  %262 = and i16 %conv.i.i66.i.i.i, -3857
  %263 = call i16 @llvm.bswap.i16(i16 %262) #8
  %264 = and i8 %141, 15
  %or48.i.i.i = zext i8 %264 to i16
  %and313.i68.i.i.i = or i16 %263, %or48.i.i.i
  %conv4.i69.i.i.i = or i16 %and313.i68.i.i.i, 4096
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14.i51.i.i.i) #8
  %265 = getelementptr inbounds i8, ptr %msg.i14.i51.i.i.i, i32 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 327679, ptr %265, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i15.i52.i.i.i) #8
  %267 = getelementptr inbounds [4 x i8], ptr %buf.i15.i52.i.i.i, i32 0, i32 2
  %268 = call i16 @llvm.bswap.i16(i16 %conv4.i69.i.i.i) #8
  %269 = ptrtoint ptr %buf.i15.i52.i.i.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 11264, ptr %buf.i15.i52.i.i.i, align 2
  %270 = ptrtoint ptr %267 to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %268, ptr %267, align 2
  %271 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %addr.i.i.i.i, align 2
  %273 = ptrtoint ptr %msg.i14.i51.i.i.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %272, ptr %msg.i14.i51.i.i.i, align 4
  %flags.i17.i70.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i51.i.i.i, i32 0, i32 1
  %274 = ptrtoint ptr %flags.i17.i70.i.i.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 0, ptr %flags.i17.i70.i.i.i, align 2
  %buf5.i19.i71.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i51.i.i.i, i32 0, i32 3
  %275 = ptrtoint ptr %buf5.i19.i71.i.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %buf.i15.i52.i.i.i, ptr %buf5.i19.i71.i.i.i, align 4
  %276 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i21.i72.i.i.i = call i32 @i2c_transfer(ptr noundef %277, ptr noundef nonnull %msg.i14.i51.i.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i15.i52.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14.i51.i.i.i) #8
  br label %mt9t112_set_pll_dividers.exit.i.i

mt9t112_set_pll_dividers.exit.i.i:                ; preds = %if.end.i73.i.i.i, %do.end44.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, %__mt9t112_reg_mask_set.exit50.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, %do.end23.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, %__mt9t112_reg_mask_set.exit25.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, %do.end.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, %__mt9t112_reg_mask_set.exit.i.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge, %do.end8.i.i.mt9t112_set_pll_dividers.exit.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i262.i.i) #8
  %278 = getelementptr inbounds i8, ptr %msg.i262.i.i, i32 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 327679, ptr %278, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i263.i.i) #8
  %280 = getelementptr inbounds [4 x i8], ptr %buf.i263.i.i, i32 0, i32 2
  %281 = ptrtoint ptr %buf.i263.i.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 5120, ptr %buf.i263.i.i, align 2
  %282 = ptrtoint ptr %280 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 9509, ptr %280, align 2
  %283 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %addr.i.i.i.i, align 2
  %285 = ptrtoint ptr %msg.i262.i.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %284, ptr %msg.i262.i.i, align 4
  %flags.i265.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i262.i.i, i32 0, i32 1
  %286 = ptrtoint ptr %flags.i265.i.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 0, ptr %flags.i265.i.i, align 2
  %buf5.i267.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i262.i.i, i32 0, i32 3
  %287 = ptrtoint ptr %buf5.i267.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %buf.i263.i.i, ptr %buf5.i267.i.i, align 4
  %288 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i269.i.i = call i32 @i2c_transfer(ptr noundef %289, ptr noundef nonnull %msg.i262.i.i, i32 noundef 1) #8
  %290 = call i32 @llvm.smin.i32(i32 %call.i269.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i263.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i262.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269.i.i)
  %cmp28.i.i = icmp slt i32 %call.i269.i.i, 0
  br i1 %cmp28.i.i, label %mt9t112_set_pll_dividers.exit.i.i.mt9t112_init_pll.exit.i_crit_edge, label %do.body33.i.i

mt9t112_set_pll_dividers.exit.i.i.mt9t112_init_pll.exit.i_crit_edge: ; preds = %mt9t112_set_pll_dividers.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_pll.exit.i

do.body33.i.i:                                    ; preds = %mt9t112_set_pll_dividers.exit.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i270.i.i) #8
  %291 = getelementptr inbounds i8, ptr %msg.i270.i.i, i32 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 327679, ptr %291, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i271.i.i) #8
  %293 = getelementptr inbounds [4 x i8], ptr %buf.i271.i.i, i32 0, i32 2
  %294 = ptrtoint ptr %buf.i271.i.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 5120, ptr %buf.i271.i.i, align 2
  %295 = ptrtoint ptr %293 to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 10021, ptr %293, align 2
  %296 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %addr.i.i.i.i, align 2
  %298 = ptrtoint ptr %msg.i270.i.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %297, ptr %msg.i270.i.i, align 4
  %flags.i273.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i270.i.i, i32 0, i32 1
  %299 = ptrtoint ptr %flags.i273.i.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 0, ptr %flags.i273.i.i, align 2
  %buf5.i275.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i270.i.i, i32 0, i32 3
  %300 = ptrtoint ptr %buf5.i275.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %buf.i271.i.i, ptr %buf5.i275.i.i, align 4
  %301 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i277.i.i = call i32 @i2c_transfer(ptr noundef %302, ptr noundef nonnull %msg.i270.i.i, i32 noundef 1) #8
  %303 = call i32 @llvm.smin.i32(i32 %call.i277.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i271.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i270.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277.i.i)
  %cmp35.i.i = icmp slt i32 %call.i277.i.i, 0
  br i1 %cmp35.i.i, label %do.body33.i.i.mt9t112_init_pll.exit.i_crit_edge, label %do.body40.i.i

do.body33.i.i.mt9t112_init_pll.exit.i_crit_edge:  ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_pll.exit.i

do.body40.i.i:                                    ; preds = %do.body33.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i278.i.i) #8
  %304 = getelementptr inbounds i8, ptr %msg.i278.i.i, i32 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 327679, ptr %304, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i279.i.i) #8
  %306 = getelementptr inbounds [4 x i8], ptr %buf.i279.i.i, i32 0, i32 2
  %307 = ptrtoint ptr %buf.i279.i.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 5120, ptr %buf.i279.i.i, align 2
  %308 = ptrtoint ptr %306 to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 10036, ptr %306, align 2
  %309 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %addr.i.i.i.i, align 2
  %311 = ptrtoint ptr %msg.i278.i.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %310, ptr %msg.i278.i.i, align 4
  %flags.i281.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i278.i.i, i32 0, i32 1
  %312 = ptrtoint ptr %flags.i281.i.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 0, ptr %flags.i281.i.i, align 2
  %buf5.i283.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i278.i.i, i32 0, i32 3
  %313 = ptrtoint ptr %buf5.i283.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %buf.i279.i.i, ptr %buf5.i283.i.i, align 4
  %314 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i285.i.i = call i32 @i2c_transfer(ptr noundef %315, ptr noundef nonnull %msg.i278.i.i, i32 noundef 1) #8
  %316 = call i32 @llvm.smin.i32(i32 %call.i285.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i279.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i278.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285.i.i)
  %cmp42.i.i = icmp slt i32 %call.i285.i.i, 0
  br i1 %cmp42.i.i, label %do.body40.i.i.mt9t112_init_pll.exit.i_crit_edge, label %do.body47.i.i

do.body40.i.i.mt9t112_init_pll.exit.i_crit_edge:  ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_pll.exit.i

do.body47.i.i:                                    ; preds = %do.body40.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i286.i.i) #8
  %317 = getelementptr inbounds i8, ptr %msg.i286.i.i, i32 4
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 327679, ptr %317, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i287.i.i) #8
  %319 = getelementptr inbounds [4 x i8], ptr %buf.i287.i.i, i32 0, i32 2
  %320 = ptrtoint ptr %buf.i287.i.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 5120, ptr %buf.i287.i.i, align 2
  %321 = ptrtoint ptr %319 to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 10032, ptr %319, align 2
  %322 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %addr.i.i.i.i, align 2
  %324 = ptrtoint ptr %msg.i286.i.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %323, ptr %msg.i286.i.i, align 4
  %flags.i289.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i286.i.i, i32 0, i32 1
  %325 = ptrtoint ptr %flags.i289.i.i to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 0, ptr %flags.i289.i.i, align 2
  %buf5.i291.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i286.i.i, i32 0, i32 3
  %326 = ptrtoint ptr %buf5.i291.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %buf.i287.i.i, ptr %buf5.i291.i.i, align 4
  %327 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i293.i.i = call i32 @i2c_transfer(ptr noundef %328, ptr noundef nonnull %msg.i286.i.i, i32 noundef 1) #8
  %329 = call i32 @llvm.smin.i32(i32 %call.i293.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i287.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i286.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293.i.i)
  %cmp49.i.i = icmp slt i32 %call.i293.i.i, 0
  br i1 %cmp49.i.i, label %do.body47.i.i.mt9t112_init_pll.exit.i_crit_edge, label %while.body.preheader.i.i

do.body47.i.i.mt9t112_init_pll.exit.i_crit_edge:  ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_pll.exit.i

while.body.preheader.i.i:                         ; preds = %do.body47.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %330 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %330(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %331 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %331(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %332 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %332(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %333 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %333(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %334 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %334(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %335 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %335(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %336 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %336(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %337 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %337(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %338 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %338(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %339 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %339(i32 noundef 214748000) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i294.i.i) #8
  %340 = getelementptr inbounds i8, ptr %msg.i294.i.i, i32 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 327679, ptr %340, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i295.i.i) #8
  %342 = getelementptr inbounds [4 x i8], ptr %buf.i295.i.i, i32 0, i32 2
  %343 = ptrtoint ptr %buf.i295.i.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 5120, ptr %buf.i295.i.i, align 2
  %344 = ptrtoint ptr %342 to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 17968, ptr %342, align 2
  %345 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %addr.i.i.i.i, align 2
  %347 = ptrtoint ptr %msg.i294.i.i to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 %346, ptr %msg.i294.i.i, align 4
  %flags.i297.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294.i.i, i32 0, i32 1
  %348 = ptrtoint ptr %flags.i297.i.i to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 0, ptr %flags.i297.i.i, align 2
  %buf5.i299.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294.i.i, i32 0, i32 3
  %349 = ptrtoint ptr %buf5.i299.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %buf.i295.i.i, ptr %buf5.i299.i.i, align 4
  %350 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i301.i.i = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %msg.i294.i.i, i32 noundef 1) #8
  %352 = call i32 @llvm.smin.i32(i32 %call.i301.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i295.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i294.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301.i.i)
  %cmp56.i.i = icmp slt i32 %call.i301.i.i, 0
  br i1 %cmp56.i.i, label %while.body.preheader.i.i.mt9t112_init_pll.exit.i_crit_edge, label %do.body61.i.i

while.body.preheader.i.i.mt9t112_init_pll.exit.i_crit_edge: ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_pll.exit.i

do.body61.i.i:                                    ; preds = %while.body.preheader.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i302.i.i) #8
  %353 = getelementptr inbounds i8, ptr %msg.i302.i.i, i32 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 327679, ptr %353, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i303.i.i) #8
  %355 = getelementptr inbounds [4 x i8], ptr %buf.i303.i.i, i32 0, i32 2
  %356 = ptrtoint ptr %buf.i303.i.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 5632, ptr %buf.i303.i.i, align 2
  %357 = ptrtoint ptr %355 to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 4, ptr %355, align 2
  %358 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %addr.i.i.i.i, align 2
  %360 = ptrtoint ptr %msg.i302.i.i to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 %359, ptr %msg.i302.i.i, align 4
  %flags.i305.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i302.i.i, i32 0, i32 1
  %361 = ptrtoint ptr %flags.i305.i.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 0, ptr %flags.i305.i.i, align 2
  %buf5.i307.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i302.i.i, i32 0, i32 3
  %362 = ptrtoint ptr %buf5.i307.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %buf.i303.i.i, ptr %buf5.i307.i.i, align 4
  %363 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i309.i.i = call i32 @i2c_transfer(ptr noundef %364, ptr noundef nonnull %msg.i302.i.i, i32 noundef 1) #8
  %365 = call i32 @llvm.smin.i32(i32 %call.i309.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i303.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i302.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309.i.i)
  %cmp63.i.i = icmp slt i32 %call.i309.i.i, 0
  br i1 %cmp63.i.i, label %do.body61.i.i.mt9t112_init_pll.exit.i_crit_edge, label %do.body68.i.i

do.body61.i.i.mt9t112_init_pll.exit.i_crit_edge:  ; preds = %do.body61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_pll.exit.i

do.body68.i.i:                                    ; preds = %do.body61.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i310.i.i) #8
  %366 = getelementptr inbounds i8, ptr %msg.i310.i.i, i32 4
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 327679, ptr %366, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i311.i.i) #8
  %368 = getelementptr inbounds [4 x i8], ptr %buf.i311.i.i, i32 0, i32 2
  %369 = ptrtoint ptr %buf.i311.i.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 8704, ptr %buf.i311.i.i, align 2
  %370 = ptrtoint ptr %368 to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 -28671, ptr %368, align 2
  %371 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %addr.i.i.i.i, align 2
  %373 = ptrtoint ptr %msg.i310.i.i to i32
  call void @__asan_store2_noabort(i32 %373)
  store i16 %372, ptr %msg.i310.i.i, align 4
  %flags.i313.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i310.i.i, i32 0, i32 1
  %374 = ptrtoint ptr %flags.i313.i.i to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 0, ptr %flags.i313.i.i, align 2
  %buf5.i315.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i310.i.i, i32 0, i32 3
  %375 = ptrtoint ptr %buf5.i315.i.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %buf.i311.i.i, ptr %buf5.i315.i.i, align 4
  %376 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i317.i.i = call i32 @i2c_transfer(ptr noundef %377, ptr noundef nonnull %msg.i310.i.i, i32 noundef 1) #8
  %378 = call i32 @llvm.smin.i32(i32 %call.i317.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i311.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i310.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317.i.i)
  %cmp70.i.i = icmp slt i32 %call.i317.i.i, 0
  br i1 %cmp70.i.i, label %do.body68.i.i.mt9t112_init_pll.exit.i_crit_edge, label %do.body75.i.i

do.body68.i.i.mt9t112_init_pll.exit.i_crit_edge:  ; preds = %do.body68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_pll.exit.i

do.body75.i.i:                                    ; preds = %do.body68.i.i
  %call76.i.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 15236, i16 noundef zeroext 530) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i.i)
  %cmp77.i.i = icmp slt i32 %call76.i.i, 0
  br i1 %cmp77.i.i, label %do.body75.i.i.cleanup89_crit_edge, label %do.body82.i.i

do.body75.i.i.cleanup89_crit_edge:                ; preds = %do.body75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body82.i.i:                                    ; preds = %do.body75.i.i
  %call83.i.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 46, i16 noundef zeroext 1280) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i.i)
  %cmp84.i.i = icmp slt i32 %call83.i.i, 0
  br i1 %cmp84.i.i, label %do.body82.i.i.cleanup89_crit_edge, label %do.body89.i.i

do.body82.i.i.cleanup89_crit_edge:                ; preds = %do.body82.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body89.i.i:                                    ; preds = %do.body82.i.i
  %call90.i.i = call fastcc i32 @__mt9t112_reg_mask_set(ptr noundef %1, i16 noundef zeroext 24, i16 noundef zeroext 2, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i.i)
  %cmp91.i.i = icmp slt i32 %call90.i.i, 0
  br i1 %cmp91.i.i, label %do.body89.i.i.cleanup89_crit_edge, label %do.body96.i.i

do.body89.i.i.cleanup89_crit_edge:                ; preds = %do.body89.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body96.i.i:                                    ; preds = %do.body89.i.i
  %call97.i.i = call fastcc i32 @__mt9t112_reg_mask_set(ptr noundef %1, i16 noundef zeroext 15234, i16 noundef zeroext 4, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i.i)
  %cmp98.i.i = icmp slt i32 %call97.i.i, 0
  br i1 %cmp98.i.i, label %do.body96.i.i.cleanup89_crit_edge, label %do.body103.i.i

do.body96.i.i.cleanup89_crit_edge:                ; preds = %do.body96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body103.i.i:                                   ; preds = %do.body96.i.i
  %call104.i.i = call fastcc i32 @__mt9t112_reg_mask_set(ptr noundef %1, i16 noundef zeroext 24, i16 noundef zeroext 4, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i.i)
  %cmp105.i.i = icmp slt i32 %call104.i.i, 0
  br i1 %cmp105.i.i, label %do.body103.i.i.cleanup89_crit_edge, label %do.body110.i.i

do.body103.i.i.cleanup89_crit_edge:               ; preds = %do.body103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body110.i.i:                                   ; preds = %do.body103.i.i
  %call111.i.i = call fastcc i32 @__mt9t112_reg_mask_set(ptr noundef %1, i16 noundef zeroext 24, i16 noundef zeroext 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i.i)
  %cmp112.i.i = icmp slt i32 %call111.i.i, 0
  br i1 %cmp112.i.i, label %do.body110.i.i.cleanup89_crit_edge, label %do.body110.i.i.while.body121.i.i_crit_edge

do.body110.i.i.while.body121.i.i_crit_edge:       ; preds = %do.body110.i.i
  br label %while.body121.i.i

do.body110.i.i.cleanup89_crit_edge:               ; preds = %do.body110.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

while.body121.i.i:                                ; preds = %while.body121.i.i.while.body121.i.i_crit_edge, %do.body110.i.i.while.body121.i.i_crit_edge
  %__ms117.0321.i.i = phi i32 [ %dec119.i.i, %while.body121.i.i.while.body121.i.i_crit_edge ], [ 50, %do.body110.i.i.while.body121.i.i_crit_edge ]
  %dec119.i.i = add nsw i32 %__ms117.0321.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %379 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %379(i32 noundef 214748000) #8
  %tobool120.not.i.i = icmp eq i32 %dec119.i.i, 0
  br i1 %tobool120.not.i.i, label %while.end122.i.i, label %while.body121.i.i.while.body121.i.i_crit_edge

while.body121.i.i.while.body121.i.i_crit_edge:    ; preds = %while.body121.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body121.i.i

while.end122.i.i:                                 ; preds = %while.body121.i.i
  %call124.i.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 1556, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i.i)
  %cmp125.i.i = icmp slt i32 %call124.i.i, 0
  br i1 %cmp125.i.i, label %while.end122.i.i.cleanup89_crit_edge, label %do.end129.i.i

while.end122.i.i.cleanup89_crit_edge:             ; preds = %while.end122.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.end129.i.i:                                    ; preds = %while.end122.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %380 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %380(i32 noundef 214748000) #8
  %call131.i.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 1556, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i.i)
  %cmp132.i.i = icmp slt i32 %call131.i.i, 0
  br i1 %cmp132.i.i, label %do.end129.i.i.cleanup89_crit_edge, label %do.end136.i.i

do.end129.i.i.cleanup89_crit_edge:                ; preds = %do.end129.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.end136.i.i:                                    ; preds = %do.end129.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %381 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %381(i32 noundef 214748000) #8
  %call138.i.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 1556, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i.i)
  %cmp139.i.i = icmp slt i32 %call138.i.i, 0
  br i1 %cmp139.i.i, label %do.end136.i.i.cleanup89_crit_edge, label %do.end143.i.i

do.end136.i.i.cleanup89_crit_edge:                ; preds = %do.end136.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.end143.i.i:                                    ; preds = %do.end136.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %382 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %382(i32 noundef 214748000) #8
  %call145.i.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 1556, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i.i)
  %cmp146.i.i = icmp slt i32 %call145.i.i, 0
  br i1 %cmp146.i.i, label %do.end143.i.i.cleanup89_crit_edge, label %do.end150.i.i

do.end143.i.i.cleanup89_crit_edge:                ; preds = %do.end143.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.end150.i.i:                                    ; preds = %do.end143.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %383 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %383(i32 noundef 214748000) #8
  %call152.i.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 1556, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152.i.i)
  %cmp153.i.i = icmp slt i32 %call152.i.i, 0
  br i1 %cmp153.i.i, label %do.end150.i.i.cleanup89_crit_edge, label %do.end157.i.i

do.end150.i.i.cleanup89_crit_edge:                ; preds = %do.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.end157.i.i:                                    ; preds = %do.end150.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %384 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %384(i32 noundef 214748000) #8
  %call159.i.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 1556, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159.i.i)
  %cmp160.i.i = icmp slt i32 %call159.i.i, 0
  br i1 %cmp160.i.i, label %do.end157.i.i.cleanup89_crit_edge, label %do.end164.i.i

do.end157.i.i.cleanup89_crit_edge:                ; preds = %do.end157.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.end164.i.i:                                    ; preds = %do.end157.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %385 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %385(i32 noundef 214748000) #8
  br label %do.body166.i.i

do.body166.i.i:                                   ; preds = %while.body180.preheader.i.i.do.body166.i.i_crit_edge, %do.end164.i.i
  %i.0323.i.i = phi i32 [ 0, %do.end164.i.i ], [ %inc.i.i, %while.body180.preheader.i.i.do.body166.i.i_crit_edge ]
  %call167.i.i = call fastcc i32 @__mt9t112_reg_read(ptr noundef %1, i16 noundef zeroext 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167.i.i)
  %cmp168.i.i = icmp slt i32 %call167.i.i, 0
  br i1 %cmp168.i.i, label %do.body166.i.i.cleanup89_crit_edge, label %do.end172.i.i

do.body166.i.i.cleanup89_crit_edge:               ; preds = %do.body166.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.end172.i.i:                                    ; preds = %do.body166.i.i
  %and.i.i = and i32 %call167.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool173.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool173.not.i.i, label %do.end172.i.i.do.body8.i_crit_edge, label %while.body180.preheader.i.i

do.end172.i.i.do.body8.i_crit_edge:               ; preds = %do.end172.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8.i

while.body180.preheader.i.i:                      ; preds = %do.end172.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %386 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %386(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %387 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %387(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %388 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %388(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %389 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %389(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %390 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %390(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %391 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %391(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %392 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %392(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %393 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %393(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %394 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %394(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %395 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %395(i32 noundef 214748000) #8
  %inc.i.i = add nuw nsw i32 %i.0323.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %while.body180.preheader.i.i.do.body8.i_crit_edge, label %while.body180.preheader.i.i.do.body166.i.i_crit_edge

while.body180.preheader.i.i.do.body166.i.i_crit_edge: ; preds = %while.body180.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body166.i.i

while.body180.preheader.i.i.do.body8.i_crit_edge: ; preds = %while.body180.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8.i

mt9t112_init_pll.exit.i:                          ; preds = %do.body68.i.i.mt9t112_init_pll.exit.i_crit_edge, %do.body61.i.i.mt9t112_init_pll.exit.i_crit_edge, %while.body.preheader.i.i.mt9t112_init_pll.exit.i_crit_edge, %do.body47.i.i.mt9t112_init_pll.exit.i_crit_edge, %do.body40.i.i.mt9t112_init_pll.exit.i_crit_edge, %do.body33.i.i.mt9t112_init_pll.exit.i_crit_edge, %mt9t112_set_pll_dividers.exit.i.i.mt9t112_init_pll.exit.i_crit_edge, %do.body2.i.i.mt9t112_init_pll.exit.i_crit_edge, %__mt9t112_reg_mask_set.exit.i163.i.mt9t112_init_pll.exit.i_crit_edge
  %retval.0.i164.i = phi i32 [ %108, %__mt9t112_reg_mask_set.exit.i163.i.mt9t112_init_pll.exit.i_crit_edge ], [ %121, %do.body2.i.i.mt9t112_init_pll.exit.i_crit_edge ], [ %290, %mt9t112_set_pll_dividers.exit.i.i.mt9t112_init_pll.exit.i_crit_edge ], [ %303, %do.body33.i.i.mt9t112_init_pll.exit.i_crit_edge ], [ %316, %do.body40.i.i.mt9t112_init_pll.exit.i_crit_edge ], [ %329, %do.body47.i.i.mt9t112_init_pll.exit.i_crit_edge ], [ %352, %while.body.preheader.i.i.mt9t112_init_pll.exit.i_crit_edge ], [ %365, %do.body61.i.i.mt9t112_init_pll.exit.i_crit_edge ], [ %378, %do.body68.i.i.mt9t112_init_pll.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i164.i)
  %cmp3.i = icmp slt i32 %retval.0.i164.i, 0
  br i1 %cmp3.i, label %mt9t112_init_pll.exit.i.cleanup89_crit_edge, label %mt9t112_init_pll.exit.i.do.body8.i_crit_edge

mt9t112_init_pll.exit.i.do.body8.i_crit_edge:     ; preds = %mt9t112_init_pll.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8.i

mt9t112_init_pll.exit.i.cleanup89_crit_edge:      ; preds = %mt9t112_init_pll.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body8.i:                                       ; preds = %mt9t112_init_pll.exit.i.do.body8.i_crit_edge, %while.body180.preheader.i.i.do.body8.i_crit_edge, %do.end172.i.i.do.body8.i_crit_edge
  %call.i.i = call fastcc i32 @__mt9t112_mcu_mask_set(ptr noundef %1, i16 noundef zeroext 26784) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i167.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i167.i, label %do.body8.i.cleanup89_crit_edge, label %do.body1.i.i

do.body8.i.cleanup89_crit_edge:                   ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body1.i.i:                                     ; preds = %do.body8.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i165.i) #8
  %396 = getelementptr inbounds i8, ptr %msg.i.i.i165.i, i32 4
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 327679, ptr %396, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i166.i) #8
  %398 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i166.i, i32 0, i32 2
  %399 = ptrtoint ptr %buf.i.i.i166.i to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 -29175, ptr %buf.i.i.i166.i, align 2
  %400 = ptrtoint ptr %398 to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 3144, ptr %398, align 2
  %401 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %addr.i.i.i.i, align 2
  %403 = ptrtoint ptr %msg.i.i.i165.i to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 %402, ptr %msg.i.i.i165.i, align 4
  %flags.i.i.i169.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i165.i, i32 0, i32 1
  %404 = ptrtoint ptr %flags.i.i.i169.i to i32
  call void @__asan_store2_noabort(i32 %404)
  store i16 0, ptr %flags.i.i.i169.i, align 2
  %buf5.i.i.i170.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i165.i, i32 0, i32 3
  %405 = ptrtoint ptr %buf5.i.i.i170.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %buf.i.i.i166.i, ptr %buf5.i.i.i170.i, align 4
  %406 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i.i172.i = call i32 @i2c_transfer(ptr noundef %407, ptr noundef nonnull %msg.i.i.i165.i, i32 noundef 1) #8
  %408 = call i32 @llvm.smin.i32(i32 %call.i.i.i172.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i166.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i165.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i172.i)
  %cmp.i.i173.i = icmp slt i32 %call.i.i.i172.i, 0
  br i1 %cmp.i.i173.i, label %do.body1.i.i.__mt9t112_mcu_write.exit.i.i_crit_edge, label %if.end.i.i.i

do.body1.i.i.__mt9t112_mcu_write.exit.i.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i.i.i) #8
  %409 = getelementptr inbounds i8, ptr %msg.i4.i.i.i, i32 4
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 327679, ptr %409, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i.i.i) #8
  %411 = getelementptr inbounds [4 x i8], ptr %buf.i5.i.i.i, i32 0, i32 2
  %412 = ptrtoint ptr %buf.i5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %412)
  store i16 -28663, ptr %buf.i5.i.i.i, align 2
  %413 = ptrtoint ptr %411 to i32
  call void @__asan_store2_noabort(i32 %413)
  store i16 9216, ptr %411, align 2
  %414 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %addr.i.i.i.i, align 2
  %416 = ptrtoint ptr %msg.i4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 %415, ptr %msg.i4.i.i.i, align 4
  %flags.i7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i.i.i, i32 0, i32 1
  %417 = ptrtoint ptr %flags.i7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 0, ptr %flags.i7.i.i.i, align 2
  %buf5.i9.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i.i.i, i32 0, i32 3
  %418 = ptrtoint ptr %buf5.i9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %buf.i5.i.i.i, ptr %buf5.i9.i.i.i, align 4
  %419 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i.i.i = call i32 @i2c_transfer(ptr noundef %420, ptr noundef nonnull %msg.i4.i.i.i, i32 noundef 1) #8
  %421 = call i32 @llvm.smin.i32(i32 %call.i11.i.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i.i.i) #8
  br label %__mt9t112_mcu_write.exit.i.i

__mt9t112_mcu_write.exit.i.i:                     ; preds = %if.end.i.i.i, %do.body1.i.i.__mt9t112_mcu_write.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %421, %if.end.i.i.i ], [ %408, %do.body1.i.i.__mt9t112_mcu_write.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp3.i.i, label %__mt9t112_mcu_write.exit.i.i.cleanup89_crit_edge, label %do.body8.i.i

__mt9t112_mcu_write.exit.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body8.i.i:                                     ; preds = %__mt9t112_mcu_write.exit.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i475.i.i) #8
  %422 = getelementptr inbounds i8, ptr %msg.i.i475.i.i, i32 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 327679, ptr %422, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i476.i.i) #8
  %424 = getelementptr inbounds [4 x i8], ptr %buf.i.i476.i.i, i32 0, i32 2
  %425 = ptrtoint ptr %buf.i.i476.i.i to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 -29175, ptr %buf.i.i476.i.i, align 2
  %426 = ptrtoint ptr %424 to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 3912, ptr %424, align 2
  %427 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %427)
  %428 = load i16, ptr %addr.i.i.i.i, align 2
  %429 = ptrtoint ptr %msg.i.i475.i.i to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 %428, ptr %msg.i.i475.i.i, align 4
  %flags.i.i478.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i475.i.i, i32 0, i32 1
  %430 = ptrtoint ptr %flags.i.i478.i.i to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 0, ptr %flags.i.i478.i.i, align 2
  %buf5.i.i479.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i475.i.i, i32 0, i32 3
  %431 = ptrtoint ptr %buf5.i.i479.i.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %buf.i.i476.i.i, ptr %buf5.i.i479.i.i, align 4
  %432 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i481.i.i = call i32 @i2c_transfer(ptr noundef %433, ptr noundef nonnull %msg.i.i475.i.i, i32 noundef 1) #8
  %434 = call i32 @llvm.smin.i32(i32 %call.i.i481.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i476.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i475.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i481.i.i)
  %cmp.i482.i.i = icmp slt i32 %call.i.i481.i.i, 0
  br i1 %cmp.i482.i.i, label %do.body8.i.i.__mt9t112_mcu_write.exit488.i.i_crit_edge, label %if.end.i486.i.i

do.body8.i.i.__mt9t112_mcu_write.exit488.i.i_crit_edge: ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit488.i.i

if.end.i486.i.i:                                  ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i473.i.i) #8
  %435 = getelementptr inbounds i8, ptr %msg.i4.i473.i.i, i32 4
  %436 = ptrtoint ptr %435 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 327679, ptr %435, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i474.i.i) #8
  %437 = getelementptr inbounds [4 x i8], ptr %buf.i5.i474.i.i, i32 0, i32 2
  %438 = ptrtoint ptr %buf.i5.i474.i.i to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 -28663, ptr %buf.i5.i474.i.i, align 2
  %439 = ptrtoint ptr %437 to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 -13312, ptr %437, align 2
  %440 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %440)
  %441 = load i16, ptr %addr.i.i.i.i, align 2
  %442 = ptrtoint ptr %msg.i4.i473.i.i to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 %441, ptr %msg.i4.i473.i.i, align 4
  %flags.i7.i483.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i473.i.i, i32 0, i32 1
  %443 = ptrtoint ptr %flags.i7.i483.i.i to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 0, ptr %flags.i7.i483.i.i, align 2
  %buf5.i9.i484.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i473.i.i, i32 0, i32 3
  %444 = ptrtoint ptr %buf5.i9.i484.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %buf.i5.i474.i.i, ptr %buf5.i9.i484.i.i, align 4
  %445 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i485.i.i = call i32 @i2c_transfer(ptr noundef %446, ptr noundef nonnull %msg.i4.i473.i.i, i32 noundef 1) #8
  %447 = call i32 @llvm.smin.i32(i32 %call.i11.i485.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i474.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i473.i.i) #8
  br label %__mt9t112_mcu_write.exit488.i.i

__mt9t112_mcu_write.exit488.i.i:                  ; preds = %if.end.i486.i.i, %do.body8.i.i.__mt9t112_mcu_write.exit488.i.i_crit_edge
  %retval.0.i487.i.i = phi i32 [ %447, %if.end.i486.i.i ], [ %434, %do.body8.i.i.__mt9t112_mcu_write.exit488.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i487.i.i)
  %cmp10.i.i = icmp slt i32 %retval.0.i487.i.i, 0
  br i1 %cmp10.i.i, label %__mt9t112_mcu_write.exit488.i.i.cleanup89_crit_edge, label %do.body15.i.i

__mt9t112_mcu_write.exit488.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit488.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body15.i.i:                                    ; preds = %__mt9t112_mcu_write.exit488.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i491.i.i) #8
  %448 = getelementptr inbounds i8, ptr %msg.i.i491.i.i, i32 4
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 327679, ptr %448, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i492.i.i) #8
  %450 = getelementptr inbounds [4 x i8], ptr %buf.i.i492.i.i, i32 0, i32 2
  %451 = ptrtoint ptr %buf.i.i492.i.i to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 -29175, ptr %buf.i.i492.i.i, align 2
  %452 = ptrtoint ptr %450 to i32
  call void @__asan_store2_noabort(i32 %452)
  store i16 4424, ptr %450, align 2
  %453 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %453)
  %454 = load i16, ptr %addr.i.i.i.i, align 2
  %455 = ptrtoint ptr %msg.i.i491.i.i to i32
  call void @__asan_store2_noabort(i32 %455)
  store i16 %454, ptr %msg.i.i491.i.i, align 4
  %flags.i.i494.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i491.i.i, i32 0, i32 1
  %456 = ptrtoint ptr %flags.i.i494.i.i to i32
  call void @__asan_store2_noabort(i32 %456)
  store i16 0, ptr %flags.i.i494.i.i, align 2
  %buf5.i.i495.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i491.i.i, i32 0, i32 3
  %457 = ptrtoint ptr %buf5.i.i495.i.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %buf.i.i492.i.i, ptr %buf5.i.i495.i.i, align 4
  %458 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i497.i.i = call i32 @i2c_transfer(ptr noundef %459, ptr noundef nonnull %msg.i.i491.i.i, i32 noundef 1) #8
  %460 = call i32 @llvm.smin.i32(i32 %call.i.i497.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i492.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i491.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i497.i.i)
  %cmp.i498.i.i = icmp slt i32 %call.i.i497.i.i, 0
  br i1 %cmp.i498.i.i, label %do.body15.i.i.__mt9t112_mcu_write.exit504.i.i_crit_edge, label %if.end.i502.i.i

do.body15.i.i.__mt9t112_mcu_write.exit504.i.i_crit_edge: ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit504.i.i

if.end.i502.i.i:                                  ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i489.i.i) #8
  %461 = getelementptr inbounds i8, ptr %msg.i4.i489.i.i, i32 4
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 327679, ptr %461, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i490.i.i) #8
  %463 = getelementptr inbounds [4 x i8], ptr %buf.i5.i490.i.i, i32 0, i32 2
  %464 = ptrtoint ptr %buf.i5.i490.i.i to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 -28663, ptr %buf.i5.i490.i.i, align 2
  %465 = ptrtoint ptr %463 to i32
  call void @__asan_store2_noabort(i32 %465)
  store i16 -3839, ptr %463, align 2
  %466 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %addr.i.i.i.i, align 2
  %468 = ptrtoint ptr %msg.i4.i489.i.i to i32
  call void @__asan_store2_noabort(i32 %468)
  store i16 %467, ptr %msg.i4.i489.i.i, align 4
  %flags.i7.i499.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i489.i.i, i32 0, i32 1
  %469 = ptrtoint ptr %flags.i7.i499.i.i to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 0, ptr %flags.i7.i499.i.i, align 2
  %buf5.i9.i500.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i489.i.i, i32 0, i32 3
  %470 = ptrtoint ptr %buf5.i9.i500.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %buf.i5.i490.i.i, ptr %buf5.i9.i500.i.i, align 4
  %471 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i501.i.i = call i32 @i2c_transfer(ptr noundef %472, ptr noundef nonnull %msg.i4.i489.i.i, i32 noundef 1) #8
  %473 = call i32 @llvm.smin.i32(i32 %call.i11.i501.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i490.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i489.i.i) #8
  br label %__mt9t112_mcu_write.exit504.i.i

__mt9t112_mcu_write.exit504.i.i:                  ; preds = %if.end.i502.i.i, %do.body15.i.i.__mt9t112_mcu_write.exit504.i.i_crit_edge
  %retval.0.i503.i.i = phi i32 [ %473, %if.end.i502.i.i ], [ %460, %do.body15.i.i.__mt9t112_mcu_write.exit504.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i503.i.i)
  %cmp17.i.i = icmp slt i32 %retval.0.i503.i.i, 0
  br i1 %cmp17.i.i, label %__mt9t112_mcu_write.exit504.i.i.cleanup89_crit_edge, label %do.body22.i.i

__mt9t112_mcu_write.exit504.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit504.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body22.i.i:                                    ; preds = %__mt9t112_mcu_write.exit504.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i507.i.i) #8
  %474 = getelementptr inbounds i8, ptr %msg.i.i507.i.i, i32 4
  %475 = ptrtoint ptr %474 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 327679, ptr %474, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i508.i.i) #8
  %476 = getelementptr inbounds [4 x i8], ptr %buf.i.i508.i.i, i32 0, i32 2
  %477 = ptrtoint ptr %buf.i.i508.i.i to i32
  call void @__asan_store2_noabort(i32 %477)
  store i16 -29175, ptr %buf.i.i508.i.i, align 2
  %478 = ptrtoint ptr %476 to i32
  call void @__asan_store2_noabort(i32 %478)
  store i16 4936, ptr %476, align 2
  %479 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %479)
  %480 = load i16, ptr %addr.i.i.i.i, align 2
  %481 = ptrtoint ptr %msg.i.i507.i.i to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 %480, ptr %msg.i.i507.i.i, align 4
  %flags.i.i510.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i507.i.i, i32 0, i32 1
  %482 = ptrtoint ptr %flags.i.i510.i.i to i32
  call void @__asan_store2_noabort(i32 %482)
  store i16 0, ptr %flags.i.i510.i.i, align 2
  %buf5.i.i511.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i507.i.i, i32 0, i32 3
  %483 = ptrtoint ptr %buf5.i.i511.i.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store ptr %buf.i.i508.i.i, ptr %buf5.i.i511.i.i, align 4
  %484 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i513.i.i = call i32 @i2c_transfer(ptr noundef %485, ptr noundef nonnull %msg.i.i507.i.i, i32 noundef 1) #8
  %486 = call i32 @llvm.smin.i32(i32 %call.i.i513.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i508.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i507.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i513.i.i)
  %cmp.i514.i.i = icmp slt i32 %call.i.i513.i.i, 0
  br i1 %cmp.i514.i.i, label %do.body22.i.i.__mt9t112_mcu_write.exit520.i.i_crit_edge, label %if.end.i518.i.i

do.body22.i.i.__mt9t112_mcu_write.exit520.i.i_crit_edge: ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit520.i.i

if.end.i518.i.i:                                  ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i505.i.i) #8
  %487 = getelementptr inbounds i8, ptr %msg.i4.i505.i.i, i32 4
  %488 = ptrtoint ptr %487 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 327679, ptr %487, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i506.i.i) #8
  %489 = getelementptr inbounds [4 x i8], ptr %buf.i5.i506.i.i, i32 0, i32 2
  %490 = ptrtoint ptr %buf.i5.i506.i.i to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 -28663, ptr %buf.i5.i506.i.i, align 2
  %491 = ptrtoint ptr %489 to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 -256, ptr %489, align 2
  %492 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %492)
  %493 = load i16, ptr %addr.i.i.i.i, align 2
  %494 = ptrtoint ptr %msg.i4.i505.i.i to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 %493, ptr %msg.i4.i505.i.i, align 4
  %flags.i7.i515.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i505.i.i, i32 0, i32 1
  %495 = ptrtoint ptr %flags.i7.i515.i.i to i32
  call void @__asan_store2_noabort(i32 %495)
  store i16 0, ptr %flags.i7.i515.i.i, align 2
  %buf5.i9.i516.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i505.i.i, i32 0, i32 3
  %496 = ptrtoint ptr %buf5.i9.i516.i.i to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr %buf.i5.i506.i.i, ptr %buf5.i9.i516.i.i, align 4
  %497 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i517.i.i = call i32 @i2c_transfer(ptr noundef %498, ptr noundef nonnull %msg.i4.i505.i.i, i32 noundef 1) #8
  %499 = call i32 @llvm.smin.i32(i32 %call.i11.i517.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i506.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i505.i.i) #8
  br label %__mt9t112_mcu_write.exit520.i.i

__mt9t112_mcu_write.exit520.i.i:                  ; preds = %if.end.i518.i.i, %do.body22.i.i.__mt9t112_mcu_write.exit520.i.i_crit_edge
  %retval.0.i519.i.i = phi i32 [ %499, %if.end.i518.i.i ], [ %486, %do.body22.i.i.__mt9t112_mcu_write.exit520.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i519.i.i)
  %cmp24.i.i = icmp slt i32 %retval.0.i519.i.i, 0
  br i1 %cmp24.i.i, label %__mt9t112_mcu_write.exit520.i.i.cleanup89_crit_edge, label %do.body29.i.i

__mt9t112_mcu_write.exit520.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit520.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body29.i.i:                                    ; preds = %__mt9t112_mcu_write.exit520.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i523.i.i) #8
  %500 = getelementptr inbounds i8, ptr %msg.i.i523.i.i, i32 4
  %501 = ptrtoint ptr %500 to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 327679, ptr %500, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i524.i.i) #8
  %502 = getelementptr inbounds [4 x i8], ptr %buf.i.i524.i.i, i32 0, i32 2
  %503 = ptrtoint ptr %buf.i.i524.i.i to i32
  call void @__asan_store2_noabort(i32 %503)
  store i16 -29175, ptr %buf.i.i524.i.i, align 2
  %504 = ptrtoint ptr %502 to i32
  call void @__asan_store2_noabort(i32 %504)
  store i16 7496, ptr %502, align 2
  %505 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %505)
  %506 = load i16, ptr %addr.i.i.i.i, align 2
  %507 = ptrtoint ptr %msg.i.i523.i.i to i32
  call void @__asan_store2_noabort(i32 %507)
  store i16 %506, ptr %msg.i.i523.i.i, align 4
  %flags.i.i526.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i523.i.i, i32 0, i32 1
  %508 = ptrtoint ptr %flags.i.i526.i.i to i32
  call void @__asan_store2_noabort(i32 %508)
  store i16 0, ptr %flags.i.i526.i.i, align 2
  %buf5.i.i527.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i523.i.i, i32 0, i32 3
  %509 = ptrtoint ptr %buf5.i.i527.i.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %buf.i.i524.i.i, ptr %buf5.i.i527.i.i, align 4
  %510 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i529.i.i = call i32 @i2c_transfer(ptr noundef %511, ptr noundef nonnull %msg.i.i523.i.i, i32 noundef 1) #8
  %512 = call i32 @llvm.smin.i32(i32 %call.i.i529.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i524.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i523.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i529.i.i)
  %cmp.i530.i.i = icmp slt i32 %call.i.i529.i.i, 0
  br i1 %cmp.i530.i.i, label %do.body29.i.i.__mt9t112_mcu_write.exit536.i.i_crit_edge, label %if.end.i534.i.i

do.body29.i.i.__mt9t112_mcu_write.exit536.i.i_crit_edge: ; preds = %do.body29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit536.i.i

if.end.i534.i.i:                                  ; preds = %do.body29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i521.i.i) #8
  %513 = getelementptr inbounds i8, ptr %msg.i4.i521.i.i, i32 4
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 327679, ptr %513, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i522.i.i) #8
  %515 = getelementptr inbounds [4 x i8], ptr %buf.i5.i522.i.i, i32 0, i32 2
  %516 = ptrtoint ptr %buf.i5.i522.i.i to i32
  call void @__asan_store2_noabort(i32 %516)
  store i16 -28663, ptr %buf.i5.i522.i.i, align 2
  %517 = ptrtoint ptr %515 to i32
  call void @__asan_store2_noabort(i32 %517)
  store i16 11523, ptr %515, align 2
  %518 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %518)
  %519 = load i16, ptr %addr.i.i.i.i, align 2
  %520 = ptrtoint ptr %msg.i4.i521.i.i to i32
  call void @__asan_store2_noabort(i32 %520)
  store i16 %519, ptr %msg.i4.i521.i.i, align 4
  %flags.i7.i531.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i521.i.i, i32 0, i32 1
  %521 = ptrtoint ptr %flags.i7.i531.i.i to i32
  call void @__asan_store2_noabort(i32 %521)
  store i16 0, ptr %flags.i7.i531.i.i, align 2
  %buf5.i9.i532.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i521.i.i, i32 0, i32 3
  %522 = ptrtoint ptr %buf5.i9.i532.i.i to i32
  call void @__asan_store4_noabort(i32 %522)
  store ptr %buf.i5.i522.i.i, ptr %buf5.i9.i532.i.i, align 4
  %523 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i533.i.i = call i32 @i2c_transfer(ptr noundef %524, ptr noundef nonnull %msg.i4.i521.i.i, i32 noundef 1) #8
  %525 = call i32 @llvm.smin.i32(i32 %call.i11.i533.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i522.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i521.i.i) #8
  br label %__mt9t112_mcu_write.exit536.i.i

__mt9t112_mcu_write.exit536.i.i:                  ; preds = %if.end.i534.i.i, %do.body29.i.i.__mt9t112_mcu_write.exit536.i.i_crit_edge
  %retval.0.i535.i.i = phi i32 [ %525, %if.end.i534.i.i ], [ %512, %do.body29.i.i.__mt9t112_mcu_write.exit536.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i535.i.i)
  %cmp31.i.i = icmp slt i32 %retval.0.i535.i.i, 0
  br i1 %cmp31.i.i, label %__mt9t112_mcu_write.exit536.i.i.cleanup89_crit_edge, label %do.body36.i.i

__mt9t112_mcu_write.exit536.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit536.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body36.i.i:                                    ; preds = %__mt9t112_mcu_write.exit536.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i539.i.i) #8
  %526 = getelementptr inbounds i8, ptr %msg.i.i539.i.i, i32 4
  %527 = ptrtoint ptr %526 to i32
  call void @__asan_store4_noabort(i32 %527)
  store i32 327679, ptr %526, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i540.i.i) #8
  %528 = getelementptr inbounds [4 x i8], ptr %buf.i.i540.i.i, i32 0, i32 2
  %529 = ptrtoint ptr %buf.i.i540.i.i to i32
  call void @__asan_store2_noabort(i32 %529)
  store i16 -29175, ptr %buf.i.i540.i.i, align 2
  %530 = ptrtoint ptr %528 to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 8008, ptr %528, align 2
  %531 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %531)
  %532 = load i16, ptr %addr.i.i.i.i, align 2
  %533 = ptrtoint ptr %msg.i.i539.i.i to i32
  call void @__asan_store2_noabort(i32 %533)
  store i16 %532, ptr %msg.i.i539.i.i, align 4
  %flags.i.i542.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i539.i.i, i32 0, i32 1
  %534 = ptrtoint ptr %flags.i.i542.i.i to i32
  call void @__asan_store2_noabort(i32 %534)
  store i16 0, ptr %flags.i.i542.i.i, align 2
  %buf5.i.i543.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i539.i.i, i32 0, i32 3
  %535 = ptrtoint ptr %buf5.i.i543.i.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr %buf.i.i540.i.i, ptr %buf5.i.i543.i.i, align 4
  %536 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i545.i.i = call i32 @i2c_transfer(ptr noundef %537, ptr noundef nonnull %msg.i.i539.i.i, i32 noundef 1) #8
  %538 = call i32 @llvm.smin.i32(i32 %call.i.i545.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i540.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i539.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i545.i.i)
  %cmp.i546.i.i = icmp slt i32 %call.i.i545.i.i, 0
  br i1 %cmp.i546.i.i, label %do.body36.i.i.__mt9t112_mcu_write.exit552.i.i_crit_edge, label %if.end.i550.i.i

do.body36.i.i.__mt9t112_mcu_write.exit552.i.i_crit_edge: ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit552.i.i

if.end.i550.i.i:                                  ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i537.i.i) #8
  %539 = getelementptr inbounds i8, ptr %msg.i4.i537.i.i, i32 4
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 327679, ptr %539, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i538.i.i) #8
  %541 = getelementptr inbounds [4 x i8], ptr %buf.i5.i538.i.i, i32 0, i32 2
  %542 = ptrtoint ptr %buf.i5.i538.i.i to i32
  call void @__asan_store2_noabort(i32 %542)
  store i16 -28663, ptr %buf.i5.i538.i.i, align 2
  %543 = ptrtoint ptr %541 to i32
  call void @__asan_store2_noabort(i32 %543)
  store i16 14855, ptr %541, align 2
  %544 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %544)
  %545 = load i16, ptr %addr.i.i.i.i, align 2
  %546 = ptrtoint ptr %msg.i4.i537.i.i to i32
  call void @__asan_store2_noabort(i32 %546)
  store i16 %545, ptr %msg.i4.i537.i.i, align 4
  %flags.i7.i547.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i537.i.i, i32 0, i32 1
  %547 = ptrtoint ptr %flags.i7.i547.i.i to i32
  call void @__asan_store2_noabort(i32 %547)
  store i16 0, ptr %flags.i7.i547.i.i, align 2
  %buf5.i9.i548.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i537.i.i, i32 0, i32 3
  %548 = ptrtoint ptr %buf5.i9.i548.i.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store ptr %buf.i5.i538.i.i, ptr %buf5.i9.i548.i.i, align 4
  %549 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i549.i.i = call i32 @i2c_transfer(ptr noundef %550, ptr noundef nonnull %msg.i4.i537.i.i, i32 noundef 1) #8
  %551 = call i32 @llvm.smin.i32(i32 %call.i11.i549.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i538.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i537.i.i) #8
  br label %__mt9t112_mcu_write.exit552.i.i

__mt9t112_mcu_write.exit552.i.i:                  ; preds = %if.end.i550.i.i, %do.body36.i.i.__mt9t112_mcu_write.exit552.i.i_crit_edge
  %retval.0.i551.i.i = phi i32 [ %551, %if.end.i550.i.i ], [ %538, %do.body36.i.i.__mt9t112_mcu_write.exit552.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i551.i.i)
  %cmp38.i.i = icmp slt i32 %retval.0.i551.i.i, 0
  br i1 %cmp38.i.i, label %__mt9t112_mcu_write.exit552.i.i.cleanup89_crit_edge, label %do.body43.i.i

__mt9t112_mcu_write.exit552.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit552.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body43.i.i:                                    ; preds = %__mt9t112_mcu_write.exit552.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i555.i.i) #8
  %552 = getelementptr inbounds i8, ptr %msg.i.i555.i.i, i32 4
  %553 = ptrtoint ptr %552 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 327679, ptr %552, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i556.i.i) #8
  %554 = getelementptr inbounds [4 x i8], ptr %buf.i.i556.i.i, i32 0, i32 2
  %555 = ptrtoint ptr %buf.i.i556.i.i to i32
  call void @__asan_store2_noabort(i32 %555)
  store i16 -29175, ptr %buf.i.i556.i.i, align 2
  %556 = ptrtoint ptr %554 to i32
  call void @__asan_store2_noabort(i32 %556)
  store i16 9544, ptr %554, align 2
  %557 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %addr.i.i.i.i, align 2
  %559 = ptrtoint ptr %msg.i.i555.i.i to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 %558, ptr %msg.i.i555.i.i, align 4
  %flags.i.i558.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i555.i.i, i32 0, i32 1
  %560 = ptrtoint ptr %flags.i.i558.i.i to i32
  call void @__asan_store2_noabort(i32 %560)
  store i16 0, ptr %flags.i.i558.i.i, align 2
  %buf5.i.i559.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i555.i.i, i32 0, i32 3
  %561 = ptrtoint ptr %buf5.i.i559.i.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store ptr %buf.i.i556.i.i, ptr %buf5.i.i559.i.i, align 4
  %562 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i561.i.i = call i32 @i2c_transfer(ptr noundef %563, ptr noundef nonnull %msg.i.i555.i.i, i32 noundef 1) #8
  %564 = call i32 @llvm.smin.i32(i32 %call.i.i561.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i556.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i555.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i561.i.i)
  %cmp.i562.i.i = icmp slt i32 %call.i.i561.i.i, 0
  br i1 %cmp.i562.i.i, label %do.body43.i.i.__mt9t112_mcu_write.exit568.i.i_crit_edge, label %if.end.i566.i.i

do.body43.i.i.__mt9t112_mcu_write.exit568.i.i_crit_edge: ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit568.i.i

if.end.i566.i.i:                                  ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i553.i.i) #8
  %565 = getelementptr inbounds i8, ptr %msg.i4.i553.i.i, i32 4
  %566 = ptrtoint ptr %565 to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 327679, ptr %565, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i554.i.i) #8
  %567 = getelementptr inbounds [4 x i8], ptr %buf.i5.i554.i.i, i32 0, i32 2
  %568 = ptrtoint ptr %buf.i5.i554.i.i to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 -28663, ptr %buf.i5.i554.i.i, align 2
  %569 = ptrtoint ptr %567 to i32
  call void @__asan_store2_noabort(i32 %569)
  store i16 -12281, ptr %567, align 2
  %570 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %570)
  %571 = load i16, ptr %addr.i.i.i.i, align 2
  %572 = ptrtoint ptr %msg.i4.i553.i.i to i32
  call void @__asan_store2_noabort(i32 %572)
  store i16 %571, ptr %msg.i4.i553.i.i, align 4
  %flags.i7.i563.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i553.i.i, i32 0, i32 1
  %573 = ptrtoint ptr %flags.i7.i563.i.i to i32
  call void @__asan_store2_noabort(i32 %573)
  store i16 0, ptr %flags.i7.i563.i.i, align 2
  %buf5.i9.i564.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i553.i.i, i32 0, i32 3
  %574 = ptrtoint ptr %buf5.i9.i564.i.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store ptr %buf.i5.i554.i.i, ptr %buf5.i9.i564.i.i, align 4
  %575 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i565.i.i = call i32 @i2c_transfer(ptr noundef %576, ptr noundef nonnull %msg.i4.i553.i.i, i32 noundef 1) #8
  %577 = call i32 @llvm.smin.i32(i32 %call.i11.i565.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i554.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i553.i.i) #8
  br label %__mt9t112_mcu_write.exit568.i.i

__mt9t112_mcu_write.exit568.i.i:                  ; preds = %if.end.i566.i.i, %do.body43.i.i.__mt9t112_mcu_write.exit568.i.i_crit_edge
  %retval.0.i567.i.i = phi i32 [ %577, %if.end.i566.i.i ], [ %564, %do.body43.i.i.__mt9t112_mcu_write.exit568.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i567.i.i)
  %cmp45.i.i = icmp slt i32 %retval.0.i567.i.i, 0
  br i1 %cmp45.i.i, label %__mt9t112_mcu_write.exit568.i.i.cleanup89_crit_edge, label %do.body50.i.i

__mt9t112_mcu_write.exit568.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit568.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body50.i.i:                                    ; preds = %__mt9t112_mcu_write.exit568.i.i
  %call51.i.i = call fastcc i32 @__mt9t112_mcu_mask_set(ptr noundef %1, i16 noundef zeroext 27808) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %cmp52.i.i = icmp slt i32 %call51.i.i, 0
  br i1 %cmp52.i.i, label %do.body50.i.i.cleanup89_crit_edge, label %do.body57.i.i

do.body50.i.i.cleanup89_crit_edge:                ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body57.i.i:                                    ; preds = %do.body50.i.i
  %call58.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18506, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %cmp59.i.i = icmp slt i32 %call58.i.i, 0
  br i1 %cmp59.i.i, label %do.body57.i.i.cleanup89_crit_edge, label %do.body64.i.i

do.body57.i.i.cleanup89_crit_edge:                ; preds = %do.body57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body64.i.i:                                    ; preds = %do.body57.i.i
  %call65.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18508, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i.i)
  %cmp66.i.i = icmp slt i32 %call65.i.i, 0
  br i1 %cmp66.i.i, label %do.body64.i.i.cleanup89_crit_edge, label %do.body71.i.i

do.body64.i.i.cleanup89_crit_edge:                ; preds = %do.body64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body71.i.i:                                    ; preds = %do.body64.i.i
  %call72.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18510, i16 noundef zeroext 1547) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i)
  %cmp73.i.i = icmp slt i32 %call72.i.i, 0
  br i1 %cmp73.i.i, label %do.body71.i.i.cleanup89_crit_edge, label %do.body78.i.i

do.body71.i.i.cleanup89_crit_edge:                ; preds = %do.body71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body78.i.i:                                    ; preds = %do.body71.i.i
  %call79.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18512, i16 noundef zeroext 2059) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i.i)
  %cmp80.i.i = icmp slt i32 %call79.i.i, 0
  br i1 %cmp80.i.i, label %do.body78.i.i.cleanup89_crit_edge, label %do.body85.i.i

do.body78.i.i.cleanup89_crit_edge:                ; preds = %do.body78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body85.i.i:                                    ; preds = %do.body78.i.i
  %call86.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18519, i16 noundef zeroext 140) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %cmp87.i.i = icmp slt i32 %call86.i.i, 0
  br i1 %cmp87.i.i, label %do.body85.i.i.cleanup89_crit_edge, label %do.body92.i.i

do.body85.i.i.cleanup89_crit_edge:                ; preds = %do.body85.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body92.i.i:                                    ; preds = %do.body85.i.i
  %call93.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18521, i16 noundef zeroext 497) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i.i)
  %cmp94.i.i = icmp slt i32 %call93.i.i, 0
  br i1 %cmp94.i.i, label %do.body92.i.i.cleanup89_crit_edge, label %do.body99.i.i

do.body92.i.i.cleanup89_crit_edge:                ; preds = %do.body92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body99.i.i:                                    ; preds = %do.body92.i.i
  %call100.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18523, i16 noundef zeroext 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i.i)
  %cmp101.i.i = icmp slt i32 %call100.i.i, 0
  br i1 %cmp101.i.i, label %do.body99.i.i.cleanup89_crit_edge, label %do.body106.i.i

do.body99.i.i.cleanup89_crit_edge:                ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body106.i.i:                                   ; preds = %do.body99.i.i
  %call107.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18533, i16 noundef zeroext 1640) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i.i)
  %cmp108.i.i = icmp slt i32 %call107.i.i, 0
  br i1 %cmp108.i.i, label %do.body106.i.i.cleanup89_crit_edge, label %do.body113.i.i

do.body106.i.i.cleanup89_crit_edge:               ; preds = %do.body106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body113.i.i:                                   ; preds = %do.body106.i.i
  %call114.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18535, i16 noundef zeroext 2800) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i.i)
  %cmp115.i.i = icmp slt i32 %call114.i.i, 0
  br i1 %cmp115.i.i, label %do.body113.i.i.cleanup89_crit_edge, label %do.body120.i.i

do.body113.i.i.cleanup89_crit_edge:               ; preds = %do.body113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body120.i.i:                                   ; preds = %do.body113.i.i
  %call121.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18541, i16 noundef zeroext 2800) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i.i)
  %cmp122.i.i = icmp slt i32 %call121.i.i, 0
  br i1 %cmp122.i.i, label %do.body120.i.i.cleanup89_crit_edge, label %do.body127.i.i

do.body120.i.i.cleanup89_crit_edge:               ; preds = %do.body120.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body127.i.i:                                   ; preds = %do.body120.i.i
  %call128.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -24571, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i.i)
  %cmp129.i.i = icmp slt i32 %call128.i.i, 0
  br i1 %cmp129.i.i, label %do.body127.i.i.cleanup89_crit_edge, label %do.body134.i.i

do.body127.i.i.cleanup89_crit_edge:               ; preds = %do.body127.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body134.i.i:                                   ; preds = %do.body127.i.i
  %call135.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 27665, i16 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i.i)
  %cmp136.i.i = icmp slt i32 %call135.i.i, 0
  br i1 %cmp136.i.i, label %do.body134.i.i.cleanup89_crit_edge, label %do.body141.i.i

do.body134.i.i.cleanup89_crit_edge:               ; preds = %do.body134.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body141.i.i:                                   ; preds = %do.body134.i.i
  %call142.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 26641, i16 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i.i)
  %cmp143.i.i = icmp slt i32 %call142.i.i, 0
  br i1 %cmp143.i.i, label %do.body141.i.i.cleanup89_crit_edge, label %do.body148.i.i

do.body141.i.i.cleanup89_crit_edge:               ; preds = %do.body141.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body148.i.i:                                   ; preds = %do.body141.i.i
  %call149.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14171, i16 noundef zeroext 37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %cmp150.i.i = icmp slt i32 %call149.i.i, 0
  br i1 %cmp150.i.i, label %do.body148.i.i.cleanup89_crit_edge, label %do.body155.i.i

do.body148.i.i.cleanup89_crit_edge:               ; preds = %do.body148.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body155.i.i:                                   ; preds = %do.body148.i.i
  %call156.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14170, i16 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i.i)
  %cmp157.i.i = icmp slt i32 %call156.i.i, 0
  br i1 %cmp157.i.i, label %do.body155.i.i.cleanup89_crit_edge, label %do.body162.i.i

do.body155.i.i.cleanup89_crit_edge:               ; preds = %do.body155.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body162.i.i:                                   ; preds = %do.body155.i.i
  %call163.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14169, i16 noundef zeroext 44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163.i.i)
  %cmp164.i.i = icmp slt i32 %call163.i.i, 0
  br i1 %cmp164.i.i, label %do.body162.i.i.cleanup89_crit_edge, label %do.body169.i.i

do.body162.i.i.cleanup89_crit_edge:               ; preds = %do.body162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body169.i.i:                                   ; preds = %do.body162.i.i
  %call170.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14168, i16 noundef zeroext 47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170.i.i)
  %cmp171.i.i = icmp slt i32 %call170.i.i, 0
  br i1 %cmp171.i.i, label %do.body169.i.i.cleanup89_crit_edge, label %do.body176.i.i

do.body169.i.i.cleanup89_crit_edge:               ; preds = %do.body169.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body176.i.i:                                   ; preds = %do.body169.i.i
  %call177.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14268, i16 noundef zeroext 186) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177.i.i)
  %cmp178.i.i = icmp slt i32 %call177.i.i, 0
  br i1 %cmp178.i.i, label %do.body176.i.i.cleanup89_crit_edge, label %do.body183.i.i

do.body176.i.i.cleanup89_crit_edge:               ; preds = %do.body176.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body183.i.i:                                   ; preds = %do.body176.i.i
  %call184.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14033, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184.i.i)
  %cmp185.i.i = icmp slt i32 %call184.i.i, 0
  br i1 %cmp185.i.i, label %do.body183.i.i.cleanup89_crit_edge, label %do.body190.i.i

do.body183.i.i.cleanup89_crit_edge:               ; preds = %do.body183.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body190.i.i:                                   ; preds = %do.body183.i.i
  %call191.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14267, i16 noundef zeroext 155) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.i.i)
  %cmp192.i.i = icmp slt i32 %call191.i.i, 0
  br i1 %cmp192.i.i, label %do.body190.i.i.cleanup89_crit_edge, label %do.body197.i.i

do.body190.i.i.cleanup89_crit_edge:               ; preds = %do.body190.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body197.i.i:                                   ; preds = %do.body190.i.i
  %call198.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14035, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198.i.i)
  %cmp199.i.i = icmp slt i32 %call198.i.i, 0
  br i1 %cmp199.i.i, label %do.body197.i.i.cleanup89_crit_edge, label %do.body204.i.i

do.body197.i.i.cleanup89_crit_edge:               ; preds = %do.body197.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body204.i.i:                                   ; preds = %do.body197.i.i
  %call205.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14196, i16 noundef zeroext 130) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205.i.i)
  %cmp206.i.i = icmp slt i32 %call205.i.i, 0
  br i1 %cmp206.i.i, label %do.body204.i.i.cleanup89_crit_edge, label %do.body211.i.i

do.body204.i.i.cleanup89_crit_edge:               ; preds = %do.body204.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body211.i.i:                                   ; preds = %do.body204.i.i
  %call212.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14032, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212.i.i)
  %cmp213.i.i = icmp slt i32 %call212.i.i, 0
  br i1 %cmp213.i.i, label %do.body211.i.i.cleanup89_crit_edge, label %do.body218.i.i

do.body211.i.i.cleanup89_crit_edge:               ; preds = %do.body211.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body218.i.i:                                   ; preds = %do.body211.i.i
  %call219.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14195, i16 noundef zeroext 109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219.i.i)
  %cmp220.i.i = icmp slt i32 %call219.i.i, 0
  br i1 %cmp220.i.i, label %do.body218.i.i.cleanup89_crit_edge, label %do.body225.i.i

do.body218.i.i.cleanup89_crit_edge:               ; preds = %do.body218.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body225.i.i:                                   ; preds = %do.body218.i.i
  %call226.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14034, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226.i.i)
  %cmp227.i.i = icmp slt i32 %call226.i.i, 0
  br i1 %cmp227.i.i, label %do.body225.i.i.cleanup89_crit_edge, label %do.body232.i.i

do.body225.i.i.cleanup89_crit_edge:               ; preds = %do.body225.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body232.i.i:                                   ; preds = %do.body225.i.i
  %call233.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -24574, i16 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233.i.i)
  %cmp234.i.i = icmp slt i32 %call233.i.i, 0
  br i1 %cmp234.i.i, label %do.body232.i.i.cleanup89_crit_edge, label %do.body239.i.i

do.body232.i.i.cleanup89_crit_edge:               ; preds = %do.body232.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body239.i.i:                                   ; preds = %do.body232.i.i
  %call240.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -24567, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240.i.i)
  %cmp241.i.i = icmp slt i32 %call240.i.i, 0
  br i1 %cmp241.i.i, label %do.body239.i.i.cleanup89_crit_edge, label %do.body246.i.i

do.body239.i.i.cleanup89_crit_edge:               ; preds = %do.body239.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body246.i.i:                                   ; preds = %do.body239.i.i
  %call247.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -24566, i16 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247.i.i)
  %cmp248.i.i = icmp slt i32 %call247.i.i, 0
  br i1 %cmp248.i.i, label %do.body246.i.i.cleanup89_crit_edge, label %do.body253.i.i

do.body246.i.i.cleanup89_crit_edge:               ; preds = %do.body246.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body253.i.i:                                   ; preds = %do.body246.i.i
  %call254.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -24564, i16 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254.i.i)
  %cmp255.i.i = icmp slt i32 %call254.i.i, 0
  br i1 %cmp255.i.i, label %do.body253.i.i.cleanup89_crit_edge, label %do.body260.i.i

do.body253.i.i.cleanup89_crit_edge:               ; preds = %do.body253.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body260.i.i:                                   ; preds = %do.body253.i.i
  %call261.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18502, i16 noundef zeroext 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261.i.i)
  %cmp262.i.i = icmp slt i32 %call261.i.i, 0
  br i1 %cmp262.i.i, label %do.body260.i.i.cleanup89_crit_edge, label %do.body267.i.i

do.body260.i.i.cleanup89_crit_edge:               ; preds = %do.body260.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body267.i.i:                                   ; preds = %do.body260.i.i
  %call268.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 18574, i16 noundef zeroext 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268.i.i)
  %cmp269.i.i = icmp slt i32 %call268.i.i, 0
  br i1 %cmp269.i.i, label %do.body267.i.i.cleanup89_crit_edge, label %do.body274.i.i

do.body267.i.i.cleanup89_crit_edge:               ; preds = %do.body267.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body274.i.i:                                   ; preds = %do.body267.i.i
  %call275.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14268, i16 noundef zeroext 133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275.i.i)
  %cmp276.i.i = icmp slt i32 %call275.i.i, 0
  br i1 %cmp276.i.i, label %do.body274.i.i.cleanup89_crit_edge, label %do.body281.i.i

do.body274.i.i.cleanup89_crit_edge:               ; preds = %do.body274.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body281.i.i:                                   ; preds = %do.body274.i.i
  %call282.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14267, i16 noundef zeroext 110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282.i.i)
  %cmp283.i.i = icmp slt i32 %call282.i.i, 0
  br i1 %cmp283.i.i, label %do.body281.i.i.cleanup89_crit_edge, label %do.body288.i.i

do.body281.i.i.cleanup89_crit_edge:               ; preds = %do.body281.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body288.i.i:                                   ; preds = %do.body281.i.i
  %call289.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14196, i16 noundef zeroext 130) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289.i.i)
  %cmp290.i.i = icmp slt i32 %call289.i.i, 0
  br i1 %cmp290.i.i, label %do.body288.i.i.cleanup89_crit_edge, label %do.body295.i.i

do.body288.i.i.cleanup89_crit_edge:               ; preds = %do.body288.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body295.i.i:                                   ; preds = %do.body288.i.i
  %call296.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14195, i16 noundef zeroext 108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296.i.i)
  %cmp297.i.i = icmp slt i32 %call296.i.i, 0
  br i1 %cmp297.i.i, label %do.body295.i.i.cleanup89_crit_edge, label %do.body302.i.i

do.body295.i.i.cleanup89_crit_edge:               ; preds = %do.body295.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body302.i.i:                                   ; preds = %do.body295.i.i
  %call303.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14171, i16 noundef zeroext 27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303.i.i)
  %cmp304.i.i = icmp slt i32 %call303.i.i, 0
  br i1 %cmp304.i.i, label %do.body302.i.i.cleanup89_crit_edge, label %do.body309.i.i

do.body302.i.i.cleanup89_crit_edge:               ; preds = %do.body302.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body309.i.i:                                   ; preds = %do.body302.i.i
  %call310.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14170, i16 noundef zeroext 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310.i.i)
  %cmp311.i.i = icmp slt i32 %call310.i.i, 0
  br i1 %cmp311.i.i, label %do.body309.i.i.cleanup89_crit_edge, label %do.body316.i.i

do.body309.i.i.cleanup89_crit_edge:               ; preds = %do.body309.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body316.i.i:                                   ; preds = %do.body309.i.i
  %call317.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14169, i16 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317.i.i)
  %cmp318.i.i = icmp slt i32 %call317.i.i, 0
  br i1 %cmp318.i.i, label %do.body316.i.i.cleanup89_crit_edge, label %mt9t112_init_setting.exit.i

do.body316.i.i.cleanup89_crit_edge:               ; preds = %do.body316.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

mt9t112_init_setting.exit.i:                      ; preds = %do.body316.i.i
  %call324.i.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -14168, i16 noundef zeroext 35) #8
  %578 = call i32 @llvm.smin.i32(i32 %call324.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324.i.i)
  %cmp10.i = icmp slt i32 %call324.i.i, 0
  br i1 %cmp10.i, label %mt9t112_init_setting.exit.i.mt9t112_init_camera.exit_crit_edge, label %do.body15.i

mt9t112_init_setting.exit.i.mt9t112_init_camera.exit_crit_edge: ; preds = %mt9t112_init_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_camera.exit

do.body15.i:                                      ; preds = %mt9t112_init_setting.exit.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i179.i) #8
  %579 = getelementptr inbounds i8, ptr %msg.i.i.i179.i, i32 4
  %580 = ptrtoint ptr %579 to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 327679, ptr %579, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i180.i) #8
  %581 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i180.i, i32 0, i32 2
  %582 = ptrtoint ptr %buf.i.i.i180.i to i32
  call void @__asan_store2_noabort(i32 %582)
  store i16 -29175, ptr %buf.i.i.i180.i, align 2
  %583 = ptrtoint ptr %581 to i32
  call void @__asan_store2_noabort(i32 %583)
  store i16 3376, ptr %581, align 2
  %584 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %584)
  %585 = load i16, ptr %addr.i.i.i.i, align 2
  %586 = ptrtoint ptr %msg.i.i.i179.i to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 %585, ptr %msg.i.i.i179.i, align 4
  %flags.i.i.i182.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i179.i, i32 0, i32 1
  %587 = ptrtoint ptr %flags.i.i.i182.i to i32
  call void @__asan_store2_noabort(i32 %587)
  store i16 0, ptr %flags.i.i.i182.i, align 2
  %buf5.i.i.i183.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i179.i, i32 0, i32 3
  %588 = ptrtoint ptr %buf5.i.i.i183.i to i32
  call void @__asan_store4_noabort(i32 %588)
  store ptr %buf.i.i.i180.i, ptr %buf5.i.i.i183.i, align 4
  %589 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i.i185.i = call i32 @i2c_transfer(ptr noundef %590, ptr noundef nonnull %msg.i.i.i179.i, i32 noundef 1) #8
  %591 = call i32 @llvm.smin.i32(i32 %call.i.i.i185.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i180.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i179.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i185.i)
  %cmp.i.i186.i = icmp slt i32 %call.i.i.i185.i, 0
  br i1 %cmp.i.i186.i, label %do.body15.i.__mt9t112_mcu_write.exit.i193.i_crit_edge, label %if.end.i.i190.i

do.body15.i.__mt9t112_mcu_write.exit.i193.i_crit_edge: ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit.i193.i

if.end.i.i190.i:                                  ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i.i177.i) #8
  %592 = getelementptr inbounds i8, ptr %msg.i4.i.i177.i, i32 4
  %593 = ptrtoint ptr %592 to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 327679, ptr %592, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i.i178.i) #8
  %594 = getelementptr inbounds [4 x i8], ptr %buf.i5.i.i178.i, i32 0, i32 2
  %595 = ptrtoint ptr %buf.i5.i.i178.i to i32
  call void @__asan_store2_noabort(i32 %595)
  store i16 -28663, ptr %buf.i5.i.i178.i, align 2
  %596 = ptrtoint ptr %594 to i32
  call void @__asan_store2_noabort(i32 %596)
  store i16 3840, ptr %594, align 2
  %597 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %597)
  %598 = load i16, ptr %addr.i.i.i.i, align 2
  %599 = ptrtoint ptr %msg.i4.i.i177.i to i32
  call void @__asan_store2_noabort(i32 %599)
  store i16 %598, ptr %msg.i4.i.i177.i, align 4
  %flags.i7.i.i187.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i.i177.i, i32 0, i32 1
  %600 = ptrtoint ptr %flags.i7.i.i187.i to i32
  call void @__asan_store2_noabort(i32 %600)
  store i16 0, ptr %flags.i7.i.i187.i, align 2
  %buf5.i9.i.i188.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i.i177.i, i32 0, i32 3
  %601 = ptrtoint ptr %buf5.i9.i.i188.i to i32
  call void @__asan_store4_noabort(i32 %601)
  store ptr %buf.i5.i.i178.i, ptr %buf5.i9.i.i188.i, align 4
  %602 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i.i189.i = call i32 @i2c_transfer(ptr noundef %603, ptr noundef nonnull %msg.i4.i.i177.i, i32 noundef 1) #8
  %604 = call i32 @llvm.smin.i32(i32 %call.i11.i.i189.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i.i178.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i.i177.i) #8
  br label %__mt9t112_mcu_write.exit.i193.i

__mt9t112_mcu_write.exit.i193.i:                  ; preds = %if.end.i.i190.i, %do.body15.i.__mt9t112_mcu_write.exit.i193.i_crit_edge
  %retval.0.i.i191.i = phi i32 [ %604, %if.end.i.i190.i ], [ %591, %do.body15.i.__mt9t112_mcu_write.exit.i193.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i191.i)
  %cmp.i192.i = icmp slt i32 %retval.0.i.i191.i, 0
  br i1 %cmp.i192.i, label %__mt9t112_mcu_write.exit.i193.i.cleanup89_crit_edge, label %do.body1.i194.i

__mt9t112_mcu_write.exit.i193.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit.i193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body1.i194.i:                                  ; preds = %__mt9t112_mcu_write.exit.i193.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i115.i.i) #8
  %605 = getelementptr inbounds i8, ptr %msg.i.i115.i.i, i32 4
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 327679, ptr %605, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i116.i.i) #8
  %607 = getelementptr inbounds [4 x i8], ptr %buf.i.i116.i.i, i32 0, i32 2
  %608 = ptrtoint ptr %buf.i.i116.i.i to i32
  call void @__asan_store2_noabort(i32 %608)
  store i16 -29175, ptr %buf.i.i116.i.i, align 2
  %609 = ptrtoint ptr %607 to i32
  call void @__asan_store2_noabort(i32 %609)
  store i16 5936, ptr %607, align 2
  %610 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %610)
  %611 = load i16, ptr %addr.i.i.i.i, align 2
  %612 = ptrtoint ptr %msg.i.i115.i.i to i32
  call void @__asan_store2_noabort(i32 %612)
  store i16 %611, ptr %msg.i.i115.i.i, align 4
  %flags.i.i118.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i115.i.i, i32 0, i32 1
  %613 = ptrtoint ptr %flags.i.i118.i.i to i32
  call void @__asan_store2_noabort(i32 %613)
  store i16 0, ptr %flags.i.i118.i.i, align 2
  %buf5.i.i119.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i115.i.i, i32 0, i32 3
  %614 = ptrtoint ptr %buf5.i.i119.i.i to i32
  call void @__asan_store4_noabort(i32 %614)
  store ptr %buf.i.i116.i.i, ptr %buf5.i.i119.i.i, align 4
  %615 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i121.i.i = call i32 @i2c_transfer(ptr noundef %616, ptr noundef nonnull %msg.i.i115.i.i, i32 noundef 1) #8
  %617 = call i32 @llvm.smin.i32(i32 %call.i.i121.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i116.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i115.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121.i.i)
  %cmp.i122.i.i = icmp slt i32 %call.i.i121.i.i, 0
  br i1 %cmp.i122.i.i, label %do.body1.i194.i.__mt9t112_mcu_write.exit128.i.i_crit_edge, label %if.end.i126.i.i

do.body1.i194.i.__mt9t112_mcu_write.exit128.i.i_crit_edge: ; preds = %do.body1.i194.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit128.i.i

if.end.i126.i.i:                                  ; preds = %do.body1.i194.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i113.i.i) #8
  %618 = getelementptr inbounds i8, ptr %msg.i4.i113.i.i, i32 4
  %619 = ptrtoint ptr %618 to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 327679, ptr %618, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i114.i.i) #8
  %620 = getelementptr inbounds [4 x i8], ptr %buf.i5.i114.i.i, i32 0, i32 2
  %621 = ptrtoint ptr %buf.i5.i114.i.i to i32
  call void @__asan_store2_noabort(i32 %621)
  store i16 -28663, ptr %buf.i5.i114.i.i, align 2
  %622 = ptrtoint ptr %620 to i32
  call void @__asan_store2_noabort(i32 %622)
  store i16 3855, ptr %620, align 2
  %623 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %623)
  %624 = load i16, ptr %addr.i.i.i.i, align 2
  %625 = ptrtoint ptr %msg.i4.i113.i.i to i32
  call void @__asan_store2_noabort(i32 %625)
  store i16 %624, ptr %msg.i4.i113.i.i, align 4
  %flags.i7.i123.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i113.i.i, i32 0, i32 1
  %626 = ptrtoint ptr %flags.i7.i123.i.i to i32
  call void @__asan_store2_noabort(i32 %626)
  store i16 0, ptr %flags.i7.i123.i.i, align 2
  %buf5.i9.i124.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i113.i.i, i32 0, i32 3
  %627 = ptrtoint ptr %buf5.i9.i124.i.i to i32
  call void @__asan_store4_noabort(i32 %627)
  store ptr %buf.i5.i114.i.i, ptr %buf5.i9.i124.i.i, align 4
  %628 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i125.i.i = call i32 @i2c_transfer(ptr noundef %629, ptr noundef nonnull %msg.i4.i113.i.i, i32 noundef 1) #8
  %630 = call i32 @llvm.smin.i32(i32 %call.i11.i125.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i114.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i113.i.i) #8
  br label %__mt9t112_mcu_write.exit128.i.i

__mt9t112_mcu_write.exit128.i.i:                  ; preds = %if.end.i126.i.i, %do.body1.i194.i.__mt9t112_mcu_write.exit128.i.i_crit_edge
  %retval.0.i127.i.i = phi i32 [ %630, %if.end.i126.i.i ], [ %617, %do.body1.i194.i.__mt9t112_mcu_write.exit128.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i127.i.i)
  %cmp3.i195.i = icmp slt i32 %retval.0.i127.i.i, 0
  br i1 %cmp3.i195.i, label %__mt9t112_mcu_write.exit128.i.i.cleanup89_crit_edge, label %do.body8.i196.i

__mt9t112_mcu_write.exit128.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body8.i196.i:                                  ; preds = %__mt9t112_mcu_write.exit128.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i131.i.i) #8
  %631 = getelementptr inbounds i8, ptr %msg.i.i131.i.i, i32 4
  %632 = ptrtoint ptr %631 to i32
  call void @__asan_store4_noabort(i32 %632)
  store i32 327679, ptr %631, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i132.i.i) #8
  %633 = getelementptr inbounds [4 x i8], ptr %buf.i.i132.i.i, i32 0, i32 2
  %634 = ptrtoint ptr %buf.i.i132.i.i to i32
  call void @__asan_store2_noabort(i32 %634)
  store i16 -29175, ptr %buf.i.i132.i.i, align 2
  %635 = ptrtoint ptr %633 to i32
  call void @__asan_store2_noabort(i32 %635)
  store i16 132, ptr %633, align 2
  %636 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %636)
  %637 = load i16, ptr %addr.i.i.i.i, align 2
  %638 = ptrtoint ptr %msg.i.i131.i.i to i32
  call void @__asan_store2_noabort(i32 %638)
  store i16 %637, ptr %msg.i.i131.i.i, align 4
  %flags.i.i134.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i131.i.i, i32 0, i32 1
  %639 = ptrtoint ptr %flags.i.i134.i.i to i32
  call void @__asan_store2_noabort(i32 %639)
  store i16 0, ptr %flags.i.i134.i.i, align 2
  %buf5.i.i135.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i131.i.i, i32 0, i32 3
  %640 = ptrtoint ptr %buf5.i.i135.i.i to i32
  call void @__asan_store4_noabort(i32 %640)
  store ptr %buf.i.i132.i.i, ptr %buf5.i.i135.i.i, align 4
  %641 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i137.i.i = call i32 @i2c_transfer(ptr noundef %642, ptr noundef nonnull %msg.i.i131.i.i, i32 noundef 1) #8
  %643 = call i32 @llvm.smin.i32(i32 %call.i.i137.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i132.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i131.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137.i.i)
  %cmp.i138.i.i = icmp slt i32 %call.i.i137.i.i, 0
  br i1 %cmp.i138.i.i, label %do.body8.i196.i.__mt9t112_mcu_write.exit144.i.i_crit_edge, label %if.end.i142.i.i

do.body8.i196.i.__mt9t112_mcu_write.exit144.i.i_crit_edge: ; preds = %do.body8.i196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit144.i.i

if.end.i142.i.i:                                  ; preds = %do.body8.i196.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i129.i.i) #8
  %644 = getelementptr inbounds i8, ptr %msg.i4.i129.i.i, i32 4
  %645 = ptrtoint ptr %644 to i32
  call void @__asan_store4_noabort(i32 %645)
  store i32 327679, ptr %644, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i130.i.i) #8
  %646 = getelementptr inbounds [4 x i8], ptr %buf.i5.i130.i.i, i32 0, i32 2
  %647 = ptrtoint ptr %buf.i5.i130.i.i to i32
  call void @__asan_store2_noabort(i32 %647)
  store i16 -28663, ptr %buf.i5.i130.i.i, align 2
  %648 = ptrtoint ptr %646 to i32
  call void @__asan_store2_noabort(i32 %648)
  store i16 1536, ptr %646, align 2
  %649 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %649)
  %650 = load i16, ptr %addr.i.i.i.i, align 2
  %651 = ptrtoint ptr %msg.i4.i129.i.i to i32
  call void @__asan_store2_noabort(i32 %651)
  store i16 %650, ptr %msg.i4.i129.i.i, align 4
  %flags.i7.i139.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i129.i.i, i32 0, i32 1
  %652 = ptrtoint ptr %flags.i7.i139.i.i to i32
  call void @__asan_store2_noabort(i32 %652)
  store i16 0, ptr %flags.i7.i139.i.i, align 2
  %buf5.i9.i140.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i129.i.i, i32 0, i32 3
  %653 = ptrtoint ptr %buf5.i9.i140.i.i to i32
  call void @__asan_store4_noabort(i32 %653)
  store ptr %buf.i5.i130.i.i, ptr %buf5.i9.i140.i.i, align 4
  %654 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i141.i.i = call i32 @i2c_transfer(ptr noundef %655, ptr noundef nonnull %msg.i4.i129.i.i, i32 noundef 1) #8
  %656 = call i32 @llvm.smin.i32(i32 %call.i11.i141.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i130.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i129.i.i) #8
  br label %__mt9t112_mcu_write.exit144.i.i

__mt9t112_mcu_write.exit144.i.i:                  ; preds = %if.end.i142.i.i, %do.body8.i196.i.__mt9t112_mcu_write.exit144.i.i_crit_edge
  %retval.0.i143.i.i = phi i32 [ %656, %if.end.i142.i.i ], [ %643, %do.body8.i196.i.__mt9t112_mcu_write.exit144.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i143.i.i)
  %cmp10.i197.i = icmp slt i32 %retval.0.i143.i.i, 0
  br i1 %cmp10.i197.i, label %__mt9t112_mcu_write.exit144.i.i.cleanup89_crit_edge, label %do.body15.i202.i

__mt9t112_mcu_write.exit144.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit144.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body15.i202.i:                                 ; preds = %__mt9t112_mcu_write.exit144.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i175.i) #8
  %657 = getelementptr inbounds i8, ptr %msg.i.i175.i, i32 4
  %658 = ptrtoint ptr %657 to i32
  call void @__asan_store4_noabort(i32 %658)
  store i32 327679, ptr %657, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i176.i) #8
  %659 = getelementptr inbounds [4 x i8], ptr %buf.i.i176.i, i32 0, i32 2
  %660 = ptrtoint ptr %buf.i.i176.i to i32
  call void @__asan_store2_noabort(i32 %660)
  store i16 5126, ptr %buf.i.i176.i, align 2
  %661 = ptrtoint ptr %659 to i32
  call void @__asan_store2_noabort(i32 %661)
  store i16 0, ptr %659, align 2
  %662 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %662)
  %663 = load i16, ptr %addr.i.i.i.i, align 2
  %664 = ptrtoint ptr %msg.i.i175.i to i32
  call void @__asan_store2_noabort(i32 %664)
  store i16 %663, ptr %msg.i.i175.i, align 4
  %flags.i.i198.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i175.i, i32 0, i32 1
  %665 = ptrtoint ptr %flags.i.i198.i to i32
  call void @__asan_store2_noabort(i32 %665)
  store i16 0, ptr %flags.i.i198.i, align 2
  %buf5.i.i199.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i175.i, i32 0, i32 3
  %666 = ptrtoint ptr %buf5.i.i199.i to i32
  call void @__asan_store4_noabort(i32 %666)
  store ptr %buf.i.i176.i, ptr %buf5.i.i199.i, align 4
  %667 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i200.i = call i32 @i2c_transfer(ptr noundef %668, ptr noundef nonnull %msg.i.i175.i, i32 noundef 1) #8
  %669 = call i32 @llvm.smin.i32(i32 %call.i.i200.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i176.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i175.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i200.i)
  %cmp17.i201.i = icmp slt i32 %call.i.i200.i, 0
  br i1 %cmp17.i201.i, label %do.body15.i202.i.mt9t112_auto_focus_setting.exit.i_crit_edge, label %do.body22.i203.i

do.body15.i202.i.mt9t112_auto_focus_setting.exit.i_crit_edge: ; preds = %do.body15.i202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_auto_focus_setting.exit.i

do.body22.i203.i:                                 ; preds = %do.body15.i202.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i147.i.i) #8
  %670 = getelementptr inbounds i8, ptr %msg.i.i147.i.i, i32 4
  %671 = ptrtoint ptr %670 to i32
  call void @__asan_store4_noabort(i32 %671)
  store i32 327679, ptr %670, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i148.i.i) #8
  %672 = getelementptr inbounds [4 x i8], ptr %buf.i.i148.i.i, i32 0, i32 2
  %673 = ptrtoint ptr %buf.i.i148.i.i to i32
  call void @__asan_store2_noabort(i32 %673)
  store i16 -29175, ptr %buf.i.i148.i.i, align 2
  %674 = ptrtoint ptr %672 to i32
  call void @__asan_store2_noabort(i32 %674)
  store i16 132, ptr %672, align 2
  %675 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %675)
  %676 = load i16, ptr %addr.i.i.i.i, align 2
  %677 = ptrtoint ptr %msg.i.i147.i.i to i32
  call void @__asan_store2_noabort(i32 %677)
  store i16 %676, ptr %msg.i.i147.i.i, align 4
  %flags.i.i150.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i147.i.i, i32 0, i32 1
  %678 = ptrtoint ptr %flags.i.i150.i.i to i32
  call void @__asan_store2_noabort(i32 %678)
  store i16 0, ptr %flags.i.i150.i.i, align 2
  %buf5.i.i151.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i147.i.i, i32 0, i32 3
  %679 = ptrtoint ptr %buf5.i.i151.i.i to i32
  call void @__asan_store4_noabort(i32 %679)
  store ptr %buf.i.i148.i.i, ptr %buf5.i.i151.i.i, align 4
  %680 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i153.i.i = call i32 @i2c_transfer(ptr noundef %681, ptr noundef nonnull %msg.i.i147.i.i, i32 noundef 1) #8
  %682 = call i32 @llvm.smin.i32(i32 %call.i.i153.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i148.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i147.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i153.i.i)
  %cmp.i154.i.i = icmp slt i32 %call.i.i153.i.i, 0
  br i1 %cmp.i154.i.i, label %do.body22.i203.i.__mt9t112_mcu_write.exit160.i.i_crit_edge, label %if.end.i158.i.i

do.body22.i203.i.__mt9t112_mcu_write.exit160.i.i_crit_edge: ; preds = %do.body22.i203.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit160.i.i

if.end.i158.i.i:                                  ; preds = %do.body22.i203.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i145.i.i) #8
  %683 = getelementptr inbounds i8, ptr %msg.i4.i145.i.i, i32 4
  %684 = ptrtoint ptr %683 to i32
  call void @__asan_store4_noabort(i32 %684)
  store i32 327679, ptr %683, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i146.i.i) #8
  %685 = getelementptr inbounds [4 x i8], ptr %buf.i5.i146.i.i, i32 0, i32 2
  %686 = ptrtoint ptr %buf.i5.i146.i.i to i32
  call void @__asan_store2_noabort(i32 %686)
  store i16 -28663, ptr %buf.i5.i146.i.i, align 2
  %687 = ptrtoint ptr %685 to i32
  call void @__asan_store2_noabort(i32 %687)
  store i16 1280, ptr %685, align 2
  %688 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %688)
  %689 = load i16, ptr %addr.i.i.i.i, align 2
  %690 = ptrtoint ptr %msg.i4.i145.i.i to i32
  call void @__asan_store2_noabort(i32 %690)
  store i16 %689, ptr %msg.i4.i145.i.i, align 4
  %flags.i7.i155.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i145.i.i, i32 0, i32 1
  %691 = ptrtoint ptr %flags.i7.i155.i.i to i32
  call void @__asan_store2_noabort(i32 %691)
  store i16 0, ptr %flags.i7.i155.i.i, align 2
  %buf5.i9.i156.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i145.i.i, i32 0, i32 3
  %692 = ptrtoint ptr %buf5.i9.i156.i.i to i32
  call void @__asan_store4_noabort(i32 %692)
  store ptr %buf.i5.i146.i.i, ptr %buf5.i9.i156.i.i, align 4
  %693 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i157.i.i = call i32 @i2c_transfer(ptr noundef %694, ptr noundef nonnull %msg.i4.i145.i.i, i32 noundef 1) #8
  %695 = call i32 @llvm.smin.i32(i32 %call.i11.i157.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i146.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i145.i.i) #8
  br label %__mt9t112_mcu_write.exit160.i.i

__mt9t112_mcu_write.exit160.i.i:                  ; preds = %if.end.i158.i.i, %do.body22.i203.i.__mt9t112_mcu_write.exit160.i.i_crit_edge
  %retval.0.i159.i.i = phi i32 [ %695, %if.end.i158.i.i ], [ %682, %do.body22.i203.i.__mt9t112_mcu_write.exit160.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i159.i.i)
  %cmp24.i204.i = icmp slt i32 %retval.0.i159.i.i, 0
  br i1 %cmp24.i204.i, label %__mt9t112_mcu_write.exit160.i.i.cleanup89_crit_edge, label %do.body29.i205.i

__mt9t112_mcu_write.exit160.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit160.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body29.i205.i:                                 ; preds = %__mt9t112_mcu_write.exit160.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i163.i.i) #8
  %696 = getelementptr inbounds i8, ptr %msg.i.i163.i.i, i32 4
  %697 = ptrtoint ptr %696 to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 327679, ptr %696, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i164.i.i) #8
  %698 = getelementptr inbounds [4 x i8], ptr %buf.i.i164.i.i, i32 0, i32 2
  %699 = ptrtoint ptr %buf.i.i164.i.i to i32
  call void @__asan_store2_noabort(i32 %699)
  store i16 -29175, ptr %buf.i.i164.i.i, align 2
  %700 = ptrtoint ptr %698 to i32
  call void @__asan_store2_noabort(i32 %700)
  store i16 688, ptr %698, align 2
  %701 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %701)
  %702 = load i16, ptr %addr.i.i.i.i, align 2
  %703 = ptrtoint ptr %msg.i.i163.i.i to i32
  call void @__asan_store2_noabort(i32 %703)
  store i16 %702, ptr %msg.i.i163.i.i, align 4
  %flags.i.i166.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i163.i.i, i32 0, i32 1
  %704 = ptrtoint ptr %flags.i.i166.i.i to i32
  call void @__asan_store2_noabort(i32 %704)
  store i16 0, ptr %flags.i.i166.i.i, align 2
  %buf5.i.i167.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i163.i.i, i32 0, i32 3
  %705 = ptrtoint ptr %buf5.i.i167.i.i to i32
  call void @__asan_store4_noabort(i32 %705)
  store ptr %buf.i.i164.i.i, ptr %buf5.i.i167.i.i, align 4
  %706 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i169.i.i = call i32 @i2c_transfer(ptr noundef %707, ptr noundef nonnull %msg.i.i163.i.i, i32 noundef 1) #8
  %708 = call i32 @llvm.smin.i32(i32 %call.i.i169.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i164.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i163.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169.i.i)
  %cmp.i170.i.i = icmp slt i32 %call.i.i169.i.i, 0
  br i1 %cmp.i170.i.i, label %do.body29.i205.i.__mt9t112_mcu_write.exit176.i.i_crit_edge, label %if.end.i174.i.i

do.body29.i205.i.__mt9t112_mcu_write.exit176.i.i_crit_edge: ; preds = %do.body29.i205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit176.i.i

if.end.i174.i.i:                                  ; preds = %do.body29.i205.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i161.i.i) #8
  %709 = getelementptr inbounds i8, ptr %msg.i4.i161.i.i, i32 4
  %710 = ptrtoint ptr %709 to i32
  call void @__asan_store4_noabort(i32 %710)
  store i32 327679, ptr %709, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i162.i.i) #8
  %711 = getelementptr inbounds [4 x i8], ptr %buf.i5.i162.i.i, i32 0, i32 2
  %712 = ptrtoint ptr %buf.i5.i162.i.i to i32
  call void @__asan_store2_noabort(i32 %712)
  store i16 -28663, ptr %buf.i5.i162.i.i, align 2
  %713 = ptrtoint ptr %711 to i32
  call void @__asan_store2_noabort(i32 %713)
  store i16 512, ptr %711, align 2
  %714 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %714)
  %715 = load i16, ptr %addr.i.i.i.i, align 2
  %716 = ptrtoint ptr %msg.i4.i161.i.i to i32
  call void @__asan_store2_noabort(i32 %716)
  store i16 %715, ptr %msg.i4.i161.i.i, align 4
  %flags.i7.i171.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i161.i.i, i32 0, i32 1
  %717 = ptrtoint ptr %flags.i7.i171.i.i to i32
  call void @__asan_store2_noabort(i32 %717)
  store i16 0, ptr %flags.i7.i171.i.i, align 2
  %buf5.i9.i172.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i161.i.i, i32 0, i32 3
  %718 = ptrtoint ptr %buf5.i9.i172.i.i to i32
  call void @__asan_store4_noabort(i32 %718)
  store ptr %buf.i5.i162.i.i, ptr %buf5.i9.i172.i.i, align 4
  %719 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i173.i.i = call i32 @i2c_transfer(ptr noundef %720, ptr noundef nonnull %msg.i4.i161.i.i, i32 noundef 1) #8
  %721 = call i32 @llvm.smin.i32(i32 %call.i11.i173.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i162.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i161.i.i) #8
  br label %__mt9t112_mcu_write.exit176.i.i

__mt9t112_mcu_write.exit176.i.i:                  ; preds = %if.end.i174.i.i, %do.body29.i205.i.__mt9t112_mcu_write.exit176.i.i_crit_edge
  %retval.0.i175.i.i = phi i32 [ %721, %if.end.i174.i.i ], [ %708, %do.body29.i205.i.__mt9t112_mcu_write.exit176.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i175.i.i)
  %cmp31.i206.i = icmp slt i32 %retval.0.i175.i.i, 0
  br i1 %cmp31.i206.i, label %__mt9t112_mcu_write.exit176.i.i.cleanup89_crit_edge, label %do.body36.i207.i

__mt9t112_mcu_write.exit176.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit176.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body36.i207.i:                                 ; preds = %__mt9t112_mcu_write.exit176.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i179.i.i) #8
  %722 = getelementptr inbounds i8, ptr %msg.i.i179.i.i, i32 4
  %723 = ptrtoint ptr %722 to i32
  call void @__asan_store4_noabort(i32 %723)
  store i32 327679, ptr %722, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i180.i.i) #8
  %724 = getelementptr inbounds [4 x i8], ptr %buf.i.i180.i.i, i32 0, i32 2
  %725 = ptrtoint ptr %buf.i.i180.i.i to i32
  call void @__asan_store2_noabort(i32 %725)
  store i16 -29175, ptr %buf.i.i180.i.i, align 2
  %726 = ptrtoint ptr %724 to i32
  call void @__asan_store2_noabort(i32 %726)
  store i16 816, ptr %724, align 2
  %727 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %727)
  %728 = load i16, ptr %addr.i.i.i.i, align 2
  %729 = ptrtoint ptr %msg.i.i179.i.i to i32
  call void @__asan_store2_noabort(i32 %729)
  store i16 %728, ptr %msg.i.i179.i.i, align 4
  %flags.i.i182.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i179.i.i, i32 0, i32 1
  %730 = ptrtoint ptr %flags.i.i182.i.i to i32
  call void @__asan_store2_noabort(i32 %730)
  store i16 0, ptr %flags.i.i182.i.i, align 2
  %buf5.i.i183.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i179.i.i, i32 0, i32 3
  %731 = ptrtoint ptr %buf5.i.i183.i.i to i32
  call void @__asan_store4_noabort(i32 %731)
  store ptr %buf.i.i180.i.i, ptr %buf5.i.i183.i.i, align 4
  %732 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i185.i.i = call i32 @i2c_transfer(ptr noundef %733, ptr noundef nonnull %msg.i.i179.i.i, i32 noundef 1) #8
  %734 = call i32 @llvm.smin.i32(i32 %call.i.i185.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i180.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i179.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i185.i.i)
  %cmp.i186.i.i = icmp slt i32 %call.i.i185.i.i, 0
  br i1 %cmp.i186.i.i, label %do.body36.i207.i.__mt9t112_mcu_write.exit192.i.i_crit_edge, label %if.end.i190.i.i

do.body36.i207.i.__mt9t112_mcu_write.exit192.i.i_crit_edge: ; preds = %do.body36.i207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit192.i.i

if.end.i190.i.i:                                  ; preds = %do.body36.i207.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i177.i.i) #8
  %735 = getelementptr inbounds i8, ptr %msg.i4.i177.i.i, i32 4
  %736 = ptrtoint ptr %735 to i32
  call void @__asan_store4_noabort(i32 %736)
  store i32 327679, ptr %735, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i178.i.i) #8
  %737 = getelementptr inbounds [4 x i8], ptr %buf.i5.i178.i.i, i32 0, i32 2
  %738 = ptrtoint ptr %buf.i5.i178.i.i to i32
  call void @__asan_store2_noabort(i32 %738)
  store i16 -28663, ptr %buf.i5.i178.i.i, align 2
  %739 = ptrtoint ptr %737 to i32
  call void @__asan_store2_noabort(i32 %739)
  store i16 512, ptr %737, align 2
  %740 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %740)
  %741 = load i16, ptr %addr.i.i.i.i, align 2
  %742 = ptrtoint ptr %msg.i4.i177.i.i to i32
  call void @__asan_store2_noabort(i32 %742)
  store i16 %741, ptr %msg.i4.i177.i.i, align 4
  %flags.i7.i187.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i177.i.i, i32 0, i32 1
  %743 = ptrtoint ptr %flags.i7.i187.i.i to i32
  call void @__asan_store2_noabort(i32 %743)
  store i16 0, ptr %flags.i7.i187.i.i, align 2
  %buf5.i9.i188.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i177.i.i, i32 0, i32 3
  %744 = ptrtoint ptr %buf5.i9.i188.i.i to i32
  call void @__asan_store4_noabort(i32 %744)
  store ptr %buf.i5.i178.i.i, ptr %buf5.i9.i188.i.i, align 4
  %745 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i189.i.i = call i32 @i2c_transfer(ptr noundef %746, ptr noundef nonnull %msg.i4.i177.i.i, i32 noundef 1) #8
  %747 = call i32 @llvm.smin.i32(i32 %call.i11.i189.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i178.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i177.i.i) #8
  br label %__mt9t112_mcu_write.exit192.i.i

__mt9t112_mcu_write.exit192.i.i:                  ; preds = %if.end.i190.i.i, %do.body36.i207.i.__mt9t112_mcu_write.exit192.i.i_crit_edge
  %retval.0.i191.i.i = phi i32 [ %747, %if.end.i190.i.i ], [ %734, %do.body36.i207.i.__mt9t112_mcu_write.exit192.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i191.i.i)
  %cmp38.i208.i = icmp slt i32 %retval.0.i191.i.i, 0
  br i1 %cmp38.i208.i, label %__mt9t112_mcu_write.exit192.i.i.cleanup89_crit_edge, label %do.body43.i209.i

__mt9t112_mcu_write.exit192.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit192.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body43.i209.i:                                 ; preds = %__mt9t112_mcu_write.exit192.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i195.i.i) #8
  %748 = getelementptr inbounds i8, ptr %msg.i.i195.i.i, i32 4
  %749 = ptrtoint ptr %748 to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 327679, ptr %748, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i196.i.i) #8
  %750 = getelementptr inbounds [4 x i8], ptr %buf.i.i196.i.i, i32 0, i32 2
  %751 = ptrtoint ptr %buf.i.i196.i.i to i32
  call void @__asan_store2_noabort(i32 %751)
  store i16 -29175, ptr %buf.i.i196.i.i, align 2
  %752 = ptrtoint ptr %750 to i32
  call void @__asan_store2_noabort(i32 %752)
  store i16 836, ptr %750, align 2
  %753 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %753)
  %754 = load i16, ptr %addr.i.i.i.i, align 2
  %755 = ptrtoint ptr %msg.i.i195.i.i to i32
  call void @__asan_store2_noabort(i32 %755)
  store i16 %754, ptr %msg.i.i195.i.i, align 4
  %flags.i.i198.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i195.i.i, i32 0, i32 1
  %756 = ptrtoint ptr %flags.i.i198.i.i to i32
  call void @__asan_store2_noabort(i32 %756)
  store i16 0, ptr %flags.i.i198.i.i, align 2
  %buf5.i.i199.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i195.i.i, i32 0, i32 3
  %757 = ptrtoint ptr %buf5.i.i199.i.i to i32
  call void @__asan_store4_noabort(i32 %757)
  store ptr %buf.i.i196.i.i, ptr %buf5.i.i199.i.i, align 4
  %758 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i201.i.i = call i32 @i2c_transfer(ptr noundef %759, ptr noundef nonnull %msg.i.i195.i.i, i32 noundef 1) #8
  %760 = call i32 @llvm.smin.i32(i32 %call.i.i201.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i196.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i195.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201.i.i)
  %cmp.i202.i.i = icmp slt i32 %call.i.i201.i.i, 0
  br i1 %cmp.i202.i.i, label %do.body43.i209.i.__mt9t112_mcu_write.exit208.i.i_crit_edge, label %if.end.i206.i.i

do.body43.i209.i.__mt9t112_mcu_write.exit208.i.i_crit_edge: ; preds = %do.body43.i209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit208.i.i

if.end.i206.i.i:                                  ; preds = %do.body43.i209.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i193.i.i) #8
  %761 = getelementptr inbounds i8, ptr %msg.i4.i193.i.i, i32 4
  %762 = ptrtoint ptr %761 to i32
  call void @__asan_store4_noabort(i32 %762)
  store i32 327679, ptr %761, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i194.i.i) #8
  %763 = getelementptr inbounds [4 x i8], ptr %buf.i5.i194.i.i, i32 0, i32 2
  %764 = ptrtoint ptr %buf.i5.i194.i.i to i32
  call void @__asan_store2_noabort(i32 %764)
  store i16 -28663, ptr %buf.i5.i194.i.i, align 2
  %765 = ptrtoint ptr %763 to i32
  call void @__asan_store2_noabort(i32 %765)
  store i16 384, ptr %763, align 2
  %766 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %766)
  %767 = load i16, ptr %addr.i.i.i.i, align 2
  %768 = ptrtoint ptr %msg.i4.i193.i.i to i32
  call void @__asan_store2_noabort(i32 %768)
  store i16 %767, ptr %msg.i4.i193.i.i, align 4
  %flags.i7.i203.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i193.i.i, i32 0, i32 1
  %769 = ptrtoint ptr %flags.i7.i203.i.i to i32
  call void @__asan_store2_noabort(i32 %769)
  store i16 0, ptr %flags.i7.i203.i.i, align 2
  %buf5.i9.i204.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i193.i.i, i32 0, i32 3
  %770 = ptrtoint ptr %buf5.i9.i204.i.i to i32
  call void @__asan_store4_noabort(i32 %770)
  store ptr %buf.i5.i194.i.i, ptr %buf5.i9.i204.i.i, align 4
  %771 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i205.i.i = call i32 @i2c_transfer(ptr noundef %772, ptr noundef nonnull %msg.i4.i193.i.i, i32 noundef 1) #8
  %773 = call i32 @llvm.smin.i32(i32 %call.i11.i205.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i194.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i193.i.i) #8
  br label %__mt9t112_mcu_write.exit208.i.i

__mt9t112_mcu_write.exit208.i.i:                  ; preds = %if.end.i206.i.i, %do.body43.i209.i.__mt9t112_mcu_write.exit208.i.i_crit_edge
  %retval.0.i207.i.i = phi i32 [ %773, %if.end.i206.i.i ], [ %760, %do.body43.i209.i.__mt9t112_mcu_write.exit208.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i207.i.i)
  %cmp45.i210.i = icmp slt i32 %retval.0.i207.i.i, 0
  br i1 %cmp45.i210.i, label %__mt9t112_mcu_write.exit208.i.i.cleanup89_crit_edge, label %do.body50.i211.i

__mt9t112_mcu_write.exit208.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit208.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body50.i211.i:                                 ; preds = %__mt9t112_mcu_write.exit208.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i211.i.i) #8
  %774 = getelementptr inbounds i8, ptr %msg.i.i211.i.i, i32 4
  %775 = ptrtoint ptr %774 to i32
  call void @__asan_store4_noabort(i32 %775)
  store i32 327679, ptr %774, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i212.i.i) #8
  %776 = getelementptr inbounds [4 x i8], ptr %buf.i.i212.i.i, i32 0, i32 2
  %777 = ptrtoint ptr %buf.i.i212.i.i to i32
  call void @__asan_store2_noabort(i32 %777)
  store i16 -29175, ptr %buf.i.i212.i.i, align 2
  %778 = ptrtoint ptr %776 to i32
  call void @__asan_store2_noabort(i32 %778)
  store i16 2884, ptr %776, align 2
  %779 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %779)
  %780 = load i16, ptr %addr.i.i.i.i, align 2
  %781 = ptrtoint ptr %msg.i.i211.i.i to i32
  call void @__asan_store2_noabort(i32 %781)
  store i16 %780, ptr %msg.i.i211.i.i, align 4
  %flags.i.i214.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211.i.i, i32 0, i32 1
  %782 = ptrtoint ptr %flags.i.i214.i.i to i32
  call void @__asan_store2_noabort(i32 %782)
  store i16 0, ptr %flags.i.i214.i.i, align 2
  %buf5.i.i215.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211.i.i, i32 0, i32 3
  %783 = ptrtoint ptr %buf5.i.i215.i.i to i32
  call void @__asan_store4_noabort(i32 %783)
  store ptr %buf.i.i212.i.i, ptr %buf5.i.i215.i.i, align 4
  %784 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i217.i.i = call i32 @i2c_transfer(ptr noundef %785, ptr noundef nonnull %msg.i.i211.i.i, i32 noundef 1) #8
  %786 = call i32 @llvm.smin.i32(i32 %call.i.i217.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i212.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i211.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i217.i.i)
  %cmp.i218.i.i = icmp slt i32 %call.i.i217.i.i, 0
  br i1 %cmp.i218.i.i, label %do.body50.i211.i.__mt9t112_mcu_write.exit224.i.i_crit_edge, label %if.end.i222.i.i

do.body50.i211.i.__mt9t112_mcu_write.exit224.i.i_crit_edge: ; preds = %do.body50.i211.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit224.i.i

if.end.i222.i.i:                                  ; preds = %do.body50.i211.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i209.i.i) #8
  %787 = getelementptr inbounds i8, ptr %msg.i4.i209.i.i, i32 4
  %788 = ptrtoint ptr %787 to i32
  call void @__asan_store4_noabort(i32 %788)
  store i32 327679, ptr %787, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i210.i.i) #8
  %789 = getelementptr inbounds [4 x i8], ptr %buf.i5.i210.i.i, i32 0, i32 2
  %790 = ptrtoint ptr %buf.i5.i210.i.i to i32
  call void @__asan_store2_noabort(i32 %790)
  store i16 -28663, ptr %buf.i5.i210.i.i, align 2
  %791 = ptrtoint ptr %789 to i32
  call void @__asan_store2_noabort(i32 %791)
  store i16 9472, ptr %789, align 2
  %792 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %792)
  %793 = load i16, ptr %addr.i.i.i.i, align 2
  %794 = ptrtoint ptr %msg.i4.i209.i.i to i32
  call void @__asan_store2_noabort(i32 %794)
  store i16 %793, ptr %msg.i4.i209.i.i, align 4
  %flags.i7.i219.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i209.i.i, i32 0, i32 1
  %795 = ptrtoint ptr %flags.i7.i219.i.i to i32
  call void @__asan_store2_noabort(i32 %795)
  store i16 0, ptr %flags.i7.i219.i.i, align 2
  %buf5.i9.i220.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i209.i.i, i32 0, i32 3
  %796 = ptrtoint ptr %buf5.i9.i220.i.i to i32
  call void @__asan_store4_noabort(i32 %796)
  store ptr %buf.i5.i210.i.i, ptr %buf5.i9.i220.i.i, align 4
  %797 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i11.i221.i.i = call i32 @i2c_transfer(ptr noundef %798, ptr noundef nonnull %msg.i4.i209.i.i, i32 noundef 1) #8
  %799 = call i32 @llvm.smin.i32(i32 %call.i11.i221.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i210.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i209.i.i) #8
  br label %__mt9t112_mcu_write.exit224.i.i

__mt9t112_mcu_write.exit224.i.i:                  ; preds = %if.end.i222.i.i, %do.body50.i211.i.__mt9t112_mcu_write.exit224.i.i_crit_edge
  %retval.0.i223.i.i = phi i32 [ %799, %if.end.i222.i.i ], [ %786, %do.body50.i211.i.__mt9t112_mcu_write.exit224.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i223.i.i)
  %cmp52.i212.i = icmp slt i32 %retval.0.i223.i.i, 0
  br i1 %cmp52.i212.i, label %__mt9t112_mcu_write.exit224.i.i.cleanup89_crit_edge, label %do.body57.i215.i

__mt9t112_mcu_write.exit224.i.i.cleanup89_crit_edge: ; preds = %__mt9t112_mcu_write.exit224.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body57.i215.i:                                 ; preds = %__mt9t112_mcu_write.exit224.i.i
  %call58.i213.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 17421, i16 noundef zeroext 403) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i213.i)
  %cmp59.i214.i = icmp slt i32 %call58.i213.i, 0
  br i1 %cmp59.i214.i, label %do.body57.i215.i.cleanup89_crit_edge, label %do.body64.i218.i

do.body57.i215.i.cleanup89_crit_edge:             ; preds = %do.body57.i215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body64.i218.i:                                 ; preds = %do.body57.i215.i
  %call65.i216.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -15327, i16 noundef zeroext 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i216.i)
  %cmp66.i217.i = icmp slt i32 %call65.i216.i, 0
  br i1 %cmp66.i217.i, label %do.body64.i218.i.cleanup89_crit_edge, label %do.body71.i220.i

do.body64.i218.i.cleanup89_crit_edge:             ; preds = %do.body64.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body71.i220.i:                                 ; preds = %do.body64.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  %call72.i219.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -31744, i16 noundef zeroext 5) #8
  %800 = call i32 @llvm.smin.i32(i32 %call72.i219.i, i32 0) #8
  br label %mt9t112_auto_focus_setting.exit.i

mt9t112_auto_focus_setting.exit.i:                ; preds = %do.body71.i220.i, %do.body15.i202.i.mt9t112_auto_focus_setting.exit.i_crit_edge
  %retval.0.i221.i = phi i32 [ %669, %do.body15.i202.i.mt9t112_auto_focus_setting.exit.i_crit_edge ], [ %800, %do.body71.i220.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i221.i)
  %cmp17.i = icmp slt i32 %retval.0.i221.i, 0
  br i1 %cmp17.i, label %mt9t112_auto_focus_setting.exit.i.cleanup89_crit_edge, label %do.body22.i

mt9t112_auto_focus_setting.exit.i.cleanup89_crit_edge: ; preds = %mt9t112_auto_focus_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body22.i:                                      ; preds = %mt9t112_auto_focus_setting.exit.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i222.i) #8
  %801 = getelementptr inbounds i8, ptr %msg.i.i222.i, i32 4
  %802 = call ptr @memset(ptr %801, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i223.i) #8
  %803 = ptrtoint ptr %buf.i.i223.i to i32
  call void @__asan_store1_noabort(i32 %803)
  store i8 -1, ptr %buf.i.i223.i, align 2, !annotation !74
  %804 = getelementptr inbounds [2 x i8], ptr %buf.i.i223.i, i32 0, i32 1
  %805 = ptrtoint ptr %804 to i32
  call void @__asan_store1_noabort(i32 %805)
  store i8 -1, ptr %804, align 1, !annotation !74
  %806 = ptrtoint ptr %command.addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %806)
  store i16 6144, ptr %command.addr.i.i.i, align 2
  %807 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %807)
  %808 = load i16, ptr %addr.i.i.i.i, align 2
  %809 = ptrtoint ptr %msg.i.i222.i to i32
  call void @__asan_store2_noabort(i32 %809)
  store i16 %808, ptr %msg.i.i222.i, align 4
  %flags.i.i224.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i222.i, i32 0, i32 1
  %810 = ptrtoint ptr %flags.i.i224.i to i32
  call void @__asan_store2_noabort(i32 %810)
  store i16 0, ptr %flags.i.i224.i, align 2
  %811 = ptrtoint ptr %801 to i32
  call void @__asan_store2_noabort(i32 %811)
  store i16 2, ptr %801, align 4
  %buf5.i.i225.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i222.i, i32 0, i32 3
  %812 = ptrtoint ptr %buf5.i.i225.i to i32
  call void @__asan_store4_noabort(i32 %812)
  store ptr %command.addr.i.i.i, ptr %buf5.i.i225.i, align 4
  %arrayidx7.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i222.i, i32 0, i32 1
  %813 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %813)
  store i16 %808, ptr %arrayidx7.i.i.i, align 4
  %flags10.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i222.i, i32 0, i32 1, i32 1
  %814 = ptrtoint ptr %flags10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %814)
  store i16 1, ptr %flags10.i.i.i, align 2
  %len12.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i222.i, i32 0, i32 1, i32 2
  %815 = ptrtoint ptr %len12.i.i.i to i32
  call void @__asan_store2_noabort(i32 %815)
  store i16 2, ptr %len12.i.i.i, align 4
  %buf14.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i222.i, i32 0, i32 1, i32 3
  %816 = ptrtoint ptr %buf14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %816)
  store ptr %buf.i.i223.i, ptr %buf14.i.i.i, align 4
  %817 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i226.i = call i32 @i2c_transfer(ptr noundef %818, ptr noundef nonnull %msg.i.i222.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i226.i)
  %cmp.i.i227.i = icmp slt i32 %call.i.i226.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i223.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i222.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i.i) #8
  br i1 %cmp.i.i227.i, label %do.body22.i.cleanup89_crit_edge, label %__mt9t112_reg_mask_set.exit.i

do.body22.i.cleanup89_crit_edge:                  ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

__mt9t112_reg_mask_set.exit.i:                    ; preds = %do.body22.i
  %conv.i.i228.i = trunc i32 %call.i.i226.i to i16
  %819 = and i16 %conv.i.i228.i, -1025
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14.i.i) #8
  %820 = getelementptr inbounds i8, ptr %msg.i14.i.i, i32 4
  %821 = ptrtoint ptr %820 to i32
  call void @__asan_store4_noabort(i32 %821)
  store i32 327679, ptr %820, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i15.i.i) #8
  %822 = getelementptr inbounds [4 x i8], ptr %buf.i15.i.i, i32 0, i32 2
  %823 = ptrtoint ptr %buf.i15.i.i to i32
  call void @__asan_store2_noabort(i32 %823)
  store i16 6144, ptr %buf.i15.i.i, align 2
  %824 = ptrtoint ptr %822 to i32
  call void @__asan_store2_noabort(i32 %824)
  store i16 %819, ptr %822, align 2
  %825 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %825)
  %826 = load i16, ptr %addr.i.i.i.i, align 2
  %827 = ptrtoint ptr %msg.i14.i.i to i32
  call void @__asan_store2_noabort(i32 %827)
  store i16 %826, ptr %msg.i14.i.i, align 4
  %flags.i17.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i.i, i32 0, i32 1
  %828 = ptrtoint ptr %flags.i17.i.i to i32
  call void @__asan_store2_noabort(i32 %828)
  store i16 0, ptr %flags.i17.i.i, align 2
  %buf5.i19.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i.i, i32 0, i32 3
  %829 = ptrtoint ptr %buf5.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %829)
  store ptr %buf.i15.i.i, ptr %buf5.i19.i.i, align 4
  %830 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i21.i.i = call i32 @i2c_transfer(ptr noundef %831, ptr noundef nonnull %msg.i14.i.i, i32 noundef 1) #8
  %832 = call i32 @llvm.smin.i32(i32 %call.i21.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i15.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %cmp24.i = icmp slt i32 %call.i21.i.i, 0
  br i1 %cmp24.i, label %__mt9t112_reg_mask_set.exit.i.mt9t112_init_camera.exit_crit_edge, label %do.body29.i

__mt9t112_reg_mask_set.exit.i.mt9t112_init_camera.exit_crit_edge: ; preds = %__mt9t112_reg_mask_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_camera.exit

do.body29.i:                                      ; preds = %__mt9t112_reg_mask_set.exit.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %833 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %834 = ptrtoint ptr %833 to i32
  call void @__asan_store4_noabort(i32 %834)
  store i32 327679, ptr %833, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %835 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %836 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %836)
  store i16 -31696, ptr %buf.i.i, align 2
  %837 = ptrtoint ptr %835 to i32
  call void @__asan_store2_noabort(i32 %837)
  store i16 2340, ptr %835, align 2
  %838 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %838)
  %839 = load i16, ptr %addr.i.i.i.i, align 2
  %840 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %840)
  store i16 %839, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %841 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %841)
  store i16 0, ptr %flags.i.i, align 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %842 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %842)
  store ptr %buf.i.i, ptr %buf5.i.i, align 4
  %843 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i231.i = call i32 @i2c_transfer(ptr noundef %844, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  %845 = call i32 @llvm.smin.i32(i32 %call.i231.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231.i)
  %cmp31.i = icmp slt i32 %call.i231.i, 0
  br i1 %cmp31.i, label %do.body29.i.mt9t112_init_camera.exit_crit_edge, label %do.body36.i

do.body29.i.mt9t112_init_camera.exit_crit_edge:   ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_camera.exit

do.body36.i:                                      ; preds = %do.body29.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i232.i) #8
  %846 = getelementptr inbounds i8, ptr %msg.i232.i, i32 4
  %847 = ptrtoint ptr %846 to i32
  call void @__asan_store4_noabort(i32 %847)
  store i32 327679, ptr %846, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i233.i) #8
  %848 = getelementptr inbounds [4 x i8], ptr %buf.i233.i, i32 0, i32 2
  %849 = ptrtoint ptr %buf.i233.i to i32
  call void @__asan_store2_noabort(i32 %849)
  store i16 -28112, ptr %buf.i233.i, align 2
  %850 = ptrtoint ptr %848 to i32
  call void @__asan_store2_noabort(i32 %850)
  store i16 18698, ptr %848, align 2
  %851 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %851)
  %852 = load i16, ptr %addr.i.i.i.i, align 2
  %853 = ptrtoint ptr %msg.i232.i to i32
  call void @__asan_store2_noabort(i32 %853)
  store i16 %852, ptr %msg.i232.i, align 4
  %flags.i235.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i232.i, i32 0, i32 1
  %854 = ptrtoint ptr %flags.i235.i to i32
  call void @__asan_store2_noabort(i32 %854)
  store i16 0, ptr %flags.i235.i, align 2
  %buf5.i237.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i232.i, i32 0, i32 3
  %855 = ptrtoint ptr %buf5.i237.i to i32
  call void @__asan_store4_noabort(i32 %855)
  store ptr %buf.i233.i, ptr %buf5.i237.i, align 4
  %856 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i239.i = call i32 @i2c_transfer(ptr noundef %857, ptr noundef nonnull %msg.i232.i, i32 noundef 1) #8
  %858 = call i32 @llvm.smin.i32(i32 %call.i239.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i233.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i232.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239.i)
  %cmp38.i = icmp slt i32 %call.i239.i, 0
  br i1 %cmp38.i, label %do.body36.i.mt9t112_init_camera.exit_crit_edge, label %do.body43.i

do.body36.i.mt9t112_init_camera.exit_crit_edge:   ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_camera.exit

do.body43.i:                                      ; preds = %do.body36.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i240.i) #8
  %859 = getelementptr inbounds i8, ptr %msg.i240.i, i32 4
  %860 = ptrtoint ptr %859 to i32
  call void @__asan_store4_noabort(i32 %860)
  store i32 327679, ptr %859, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i241.i) #8
  %861 = getelementptr inbounds [4 x i8], ptr %buf.i241.i, i32 0, i32 2
  %862 = ptrtoint ptr %buf.i241.i to i32
  call void @__asan_store2_noabort(i32 %862)
  store i16 -27600, ptr %buf.i241.i, align 2
  %863 = ptrtoint ptr %861 to i32
  call void @__asan_store2_noabort(i32 %863)
  store i16 18761, ptr %861, align 2
  %864 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %864)
  %865 = load i16, ptr %addr.i.i.i.i, align 2
  %866 = ptrtoint ptr %msg.i240.i to i32
  call void @__asan_store2_noabort(i32 %866)
  store i16 %865, ptr %msg.i240.i, align 4
  %flags.i243.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i240.i, i32 0, i32 1
  %867 = ptrtoint ptr %flags.i243.i to i32
  call void @__asan_store2_noabort(i32 %867)
  store i16 0, ptr %flags.i243.i, align 2
  %buf5.i245.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i240.i, i32 0, i32 3
  %868 = ptrtoint ptr %buf5.i245.i to i32
  call void @__asan_store4_noabort(i32 %868)
  store ptr %buf.i241.i, ptr %buf5.i245.i, align 4
  %869 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i247.i = call i32 @i2c_transfer(ptr noundef %870, ptr noundef nonnull %msg.i240.i, i32 noundef 1) #8
  %871 = call i32 @llvm.smin.i32(i32 %call.i247.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i241.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i240.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247.i)
  %cmp45.i = icmp slt i32 %call.i247.i, 0
  br i1 %cmp45.i, label %do.body43.i.mt9t112_init_camera.exit_crit_edge, label %do.body50.i

do.body43.i.mt9t112_init_camera.exit_crit_edge:   ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_camera.exit

do.body50.i:                                      ; preds = %do.body43.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i248.i) #8
  %872 = getelementptr inbounds i8, ptr %msg.i248.i, i32 4
  %873 = ptrtoint ptr %872 to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 327679, ptr %872, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i249.i) #8
  %874 = getelementptr inbounds [4 x i8], ptr %buf.i249.i, i32 0, i32 2
  %875 = ptrtoint ptr %buf.i249.i to i32
  call void @__asan_store2_noabort(i32 %875)
  store i16 -27088, ptr %buf.i249.i, align 2
  %876 = ptrtoint ptr %874 to i32
  call void @__asan_store2_noabort(i32 %876)
  store i16 20553, ptr %874, align 2
  %877 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %877)
  %878 = load i16, ptr %addr.i.i.i.i, align 2
  %879 = ptrtoint ptr %msg.i248.i to i32
  call void @__asan_store2_noabort(i32 %879)
  store i16 %878, ptr %msg.i248.i, align 4
  %flags.i251.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i248.i, i32 0, i32 1
  %880 = ptrtoint ptr %flags.i251.i to i32
  call void @__asan_store2_noabort(i32 %880)
  store i16 0, ptr %flags.i251.i, align 2
  %buf5.i253.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i248.i, i32 0, i32 3
  %881 = ptrtoint ptr %buf5.i253.i to i32
  call void @__asan_store4_noabort(i32 %881)
  store ptr %buf.i249.i, ptr %buf5.i253.i, align 4
  %882 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i255.i = call i32 @i2c_transfer(ptr noundef %883, ptr noundef nonnull %msg.i248.i, i32 noundef 1) #8
  %884 = call i32 @llvm.smin.i32(i32 %call.i255.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i249.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i248.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255.i)
  %cmp52.i = icmp slt i32 %call.i255.i, 0
  br i1 %cmp52.i, label %do.body50.i.mt9t112_init_camera.exit_crit_edge, label %do.body57.i

do.body50.i.mt9t112_init_camera.exit_crit_edge:   ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_init_camera.exit

do.body57.i:                                      ; preds = %do.body50.i
  %call58.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 26784, i16 noundef zeroext 2606) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp59.i = icmp slt i32 %call58.i, 0
  br i1 %cmp59.i, label %do.body57.i.cleanup89_crit_edge, label %do.body64.i

do.body57.i.cleanup89_crit_edge:                  ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body64.i:                                      ; preds = %do.body57.i
  %call65.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 27808, i16 noundef zeroext 2606) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp66.i = icmp slt i32 %call65.i, 0
  br i1 %cmp66.i, label %do.body64.i.cleanup89_crit_edge, label %do.body71.i

do.body64.i.cleanup89_crit_edge:                  ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body71.i:                                      ; preds = %do.body64.i
  %call72.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext 27792, i16 noundef zeroext 3252) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %cmp73.i = icmp slt i32 %call72.i, 0
  br i1 %cmp73.i, label %do.body71.i.cleanup89_crit_edge, label %do.body78.i

do.body71.i.cleanup89_crit_edge:                  ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body78.i:                                      ; preds = %do.body71.i
  %call79.i = call fastcc i32 @__mt9t112_mcu_write(ptr noundef %1, i16 noundef zeroext -4978, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.i = icmp slt i32 %call79.i, 0
  br i1 %cmp80.i, label %do.body78.i.cleanup89_crit_edge, label %do.body85.i

do.body78.i.cleanup89_crit_edge:                  ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body85.i:                                      ; preds = %do.body78.i
  %call86.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 12652, i16 noundef zeroext 13583) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %cmp87.i = icmp slt i32 %call86.i, 0
  br i1 %cmp87.i, label %do.body85.i.cleanup89_crit_edge, label %do.body92.i

do.body85.i.cleanup89_crit_edge:                  ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body92.i:                                      ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #10
  %call93.i = call fastcc i32 @__mt9t112_reg_write(ptr noundef %1, i16 noundef zeroext 30, i16 noundef zeroext 1911) #8
  %885 = call i32 @llvm.smin.i32(i32 %call93.i, i32 0) #8
  br label %mt9t112_init_camera.exit

mt9t112_init_camera.exit:                         ; preds = %do.body92.i, %do.body50.i.mt9t112_init_camera.exit_crit_edge, %do.body43.i.mt9t112_init_camera.exit_crit_edge, %do.body36.i.mt9t112_init_camera.exit_crit_edge, %do.body29.i.mt9t112_init_camera.exit_crit_edge, %__mt9t112_reg_mask_set.exit.i.mt9t112_init_camera.exit_crit_edge, %mt9t112_init_setting.exit.i.mt9t112_init_camera.exit_crit_edge
  %retval.0.i128 = phi i32 [ %578, %mt9t112_init_setting.exit.i.mt9t112_init_camera.exit_crit_edge ], [ %832, %__mt9t112_reg_mask_set.exit.i.mt9t112_init_camera.exit_crit_edge ], [ %845, %do.body29.i.mt9t112_init_camera.exit_crit_edge ], [ %858, %do.body36.i.mt9t112_init_camera.exit_crit_edge ], [ %871, %do.body43.i.mt9t112_init_camera.exit_crit_edge ], [ %884, %do.body50.i.mt9t112_init_camera.exit_crit_edge ], [ %885, %do.body92.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i128)
  %cmp = icmp slt i32 %retval.0.i128, 0
  br i1 %cmp, label %mt9t112_init_camera.exit.cleanup89_crit_edge, label %do.body10

mt9t112_init_camera.exit.cleanup89_crit_edge:     ; preds = %mt9t112_init_camera.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body10:                                        ; preds = %mt9t112_init_camera.exit
  %886 = trunc i32 %9 to i16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %887 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %888 = ptrtoint ptr %887 to i32
  call void @__asan_store4_noabort(i32 %888)
  store i32 327679, ptr %887, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %889 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %890 = shl i16 %886, 8
  %891 = and i16 %890, 256
  %892 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %892)
  store i16 8252, ptr %buf.i, align 2
  %893 = ptrtoint ptr %889 to i32
  call void @__asan_store2_noabort(i32 %893)
  store i16 %891, ptr %889, align 2
  %894 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %894)
  %895 = load i16, ptr %addr.i.i.i.i, align 2
  %896 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %896)
  store i16 %895, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %897 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %897)
  store i16 0, ptr %flags.i, align 2
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %898 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %898)
  store ptr %buf.i, ptr %buf5.i, align 4
  %899 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %900, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  %901 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %do.body10.cleanup89_crit_edge, label %while.body.preheader

do.body10.cleanup89_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

while.body.preheader:                             ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %902 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %902(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %903 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %903(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %904 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %904(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %905 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %905(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %906 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %906(i32 noundef 214748000) #8
  %907 = ptrtoint ptr %init_done to i32
  call void @__asan_store1_noabort(i32 %907)
  store i8 1, ptr %init_done, align 4
  br label %do.body21

do.body21:                                        ; preds = %while.body.preheader, %if.end.do.body21_crit_edge
  %format = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 6
  %908 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %format, align 4
  %fmt = getelementptr inbounds %struct.mt9t112_format, ptr %909, i32 0, i32 2
  %910 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %910)
  %911 = load i16, ptr %fmt, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i129) #8
  %912 = getelementptr inbounds i8, ptr %msg.i.i129, i32 4
  %913 = ptrtoint ptr %912 to i32
  call void @__asan_store4_noabort(i32 %913)
  store i32 327679, ptr %912, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i130) #8
  %914 = getelementptr inbounds [4 x i8], ptr %buf.i.i130, i32 0, i32 2
  %915 = ptrtoint ptr %buf.i.i130 to i32
  call void @__asan_store2_noabort(i32 %915)
  store i16 -29175, ptr %buf.i.i130, align 2
  %916 = ptrtoint ptr %914 to i32
  call void @__asan_store2_noabort(i32 %916)
  store i16 1896, ptr %914, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %917 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %917)
  %918 = load i16, ptr %addr.i.i, align 2
  %919 = ptrtoint ptr %msg.i.i129 to i32
  call void @__asan_store2_noabort(i32 %919)
  store i16 %918, ptr %msg.i.i129, align 4
  %flags.i.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129, i32 0, i32 1
  %920 = ptrtoint ptr %flags.i.i131 to i32
  call void @__asan_store2_noabort(i32 %920)
  store i16 0, ptr %flags.i.i131, align 2
  %buf5.i.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129, i32 0, i32 3
  %921 = ptrtoint ptr %buf5.i.i132 to i32
  call void @__asan_store4_noabort(i32 %921)
  store ptr %buf.i.i130, ptr %buf5.i.i132, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %922 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i133 = call i32 @i2c_transfer(ptr noundef %923, ptr noundef nonnull %msg.i.i129, i32 noundef 1) #8
  %924 = call i32 @llvm.smin.i32(i32 %call.i.i133, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i130) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i129) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133)
  %cmp.i134 = icmp slt i32 %call.i.i133, 0
  br i1 %cmp.i134, label %do.body21.__mt9t112_mcu_write.exit_crit_edge, label %if.end.i

do.body21.__mt9t112_mcu_write.exit_crit_edge:     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit

if.end.i:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i) #8
  %925 = getelementptr inbounds i8, ptr %msg.i4.i, i32 4
  %926 = ptrtoint ptr %925 to i32
  call void @__asan_store4_noabort(i32 %926)
  store i32 327679, ptr %925, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i) #8
  %927 = getelementptr inbounds [4 x i8], ptr %buf.i5.i, i32 0, i32 2
  %928 = call i16 @llvm.bswap.i16(i16 %911) #8
  %929 = ptrtoint ptr %buf.i5.i to i32
  call void @__asan_store2_noabort(i32 %929)
  store i16 -28663, ptr %buf.i5.i, align 2
  %930 = ptrtoint ptr %927 to i32
  call void @__asan_store2_noabort(i32 %930)
  store i16 %928, ptr %927, align 2
  %931 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %931)
  %932 = load i16, ptr %addr.i.i, align 2
  %933 = ptrtoint ptr %msg.i4.i to i32
  call void @__asan_store2_noabort(i32 %933)
  store i16 %932, ptr %msg.i4.i, align 4
  %flags.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 1
  %934 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_store2_noabort(i32 %934)
  store i16 0, ptr %flags.i7.i, align 2
  %buf5.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 3
  %935 = ptrtoint ptr %buf5.i9.i to i32
  call void @__asan_store4_noabort(i32 %935)
  store ptr %buf.i5.i, ptr %buf5.i9.i, align 4
  %936 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %937, ptr noundef nonnull %msg.i4.i, i32 noundef 1) #8
  %938 = call i32 @llvm.smin.i32(i32 %call.i11.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i) #8
  br label %__mt9t112_mcu_write.exit

__mt9t112_mcu_write.exit:                         ; preds = %if.end.i, %do.body21.__mt9t112_mcu_write.exit_crit_edge
  %retval.0.i135 = phi i32 [ %938, %if.end.i ], [ %924, %do.body21.__mt9t112_mcu_write.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i135)
  %cmp23 = icmp slt i32 %retval.0.i135, 0
  br i1 %cmp23, label %__mt9t112_mcu_write.exit.cleanup89_crit_edge, label %do.body29

__mt9t112_mcu_write.exit.cleanup89_crit_edge:     ; preds = %__mt9t112_mcu_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body29:                                        ; preds = %__mt9t112_mcu_write.exit
  %939 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %format, align 4
  %order = getelementptr inbounds %struct.mt9t112_format, ptr %940, i32 0, i32 3
  %941 = ptrtoint ptr %order to i32
  call void @__asan_load2_noabort(i32 %941)
  %942 = load i16, ptr %order, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i138) #8
  %943 = getelementptr inbounds i8, ptr %msg.i.i138, i32 4
  %944 = ptrtoint ptr %943 to i32
  call void @__asan_store4_noabort(i32 %944)
  store i32 327679, ptr %943, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i139) #8
  %945 = getelementptr inbounds [4 x i8], ptr %buf.i.i139, i32 0, i32 2
  %946 = ptrtoint ptr %buf.i.i139 to i32
  call void @__asan_store2_noabort(i32 %946)
  store i16 -29175, ptr %buf.i.i139, align 2
  %947 = ptrtoint ptr %945 to i32
  call void @__asan_store2_noabort(i32 %947)
  store i16 2408, ptr %945, align 2
  %948 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %948)
  %949 = load i16, ptr %addr.i.i, align 2
  %950 = ptrtoint ptr %msg.i.i138 to i32
  call void @__asan_store2_noabort(i32 %950)
  store i16 %949, ptr %msg.i.i138, align 4
  %flags.i.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i138, i32 0, i32 1
  %951 = ptrtoint ptr %flags.i.i141 to i32
  call void @__asan_store2_noabort(i32 %951)
  store i16 0, ptr %flags.i.i141, align 2
  %buf5.i.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i138, i32 0, i32 3
  %952 = ptrtoint ptr %buf5.i.i142 to i32
  call void @__asan_store4_noabort(i32 %952)
  store ptr %buf.i.i139, ptr %buf5.i.i142, align 4
  %953 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i144 = call i32 @i2c_transfer(ptr noundef %954, ptr noundef nonnull %msg.i.i138, i32 noundef 1) #8
  %955 = call i32 @llvm.smin.i32(i32 %call.i.i144, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i139) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i144)
  %cmp.i145 = icmp slt i32 %call.i.i144, 0
  br i1 %cmp.i145, label %do.body29.__mt9t112_mcu_write.exit151_crit_edge, label %if.end.i149

do.body29.__mt9t112_mcu_write.exit151_crit_edge:  ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit151

if.end.i149:                                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i136) #8
  %956 = getelementptr inbounds i8, ptr %msg.i4.i136, i32 4
  %957 = ptrtoint ptr %956 to i32
  call void @__asan_store4_noabort(i32 %957)
  store i32 327679, ptr %956, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i137) #8
  %958 = getelementptr inbounds [4 x i8], ptr %buf.i5.i137, i32 0, i32 2
  %959 = call i16 @llvm.bswap.i16(i16 %942) #8
  %960 = ptrtoint ptr %buf.i5.i137 to i32
  call void @__asan_store2_noabort(i32 %960)
  store i16 -28663, ptr %buf.i5.i137, align 2
  %961 = ptrtoint ptr %958 to i32
  call void @__asan_store2_noabort(i32 %961)
  store i16 %959, ptr %958, align 2
  %962 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %962)
  %963 = load i16, ptr %addr.i.i, align 2
  %964 = ptrtoint ptr %msg.i4.i136 to i32
  call void @__asan_store2_noabort(i32 %964)
  store i16 %963, ptr %msg.i4.i136, align 4
  %flags.i7.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i136, i32 0, i32 1
  %965 = ptrtoint ptr %flags.i7.i146 to i32
  call void @__asan_store2_noabort(i32 %965)
  store i16 0, ptr %flags.i7.i146, align 2
  %buf5.i9.i147 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i136, i32 0, i32 3
  %966 = ptrtoint ptr %buf5.i9.i147 to i32
  call void @__asan_store4_noabort(i32 %966)
  store ptr %buf.i5.i137, ptr %buf5.i9.i147, align 4
  %967 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i148 = call i32 @i2c_transfer(ptr noundef %968, ptr noundef nonnull %msg.i4.i136, i32 noundef 1) #8
  %969 = call i32 @llvm.smin.i32(i32 %call.i11.i148, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i137) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i136) #8
  br label %__mt9t112_mcu_write.exit151

__mt9t112_mcu_write.exit151:                      ; preds = %if.end.i149, %do.body29.__mt9t112_mcu_write.exit151_crit_edge
  %retval.0.i150 = phi i32 [ %969, %if.end.i149 ], [ %955, %do.body29.__mt9t112_mcu_write.exit151_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i150)
  %cmp32 = icmp slt i32 %retval.0.i150, 0
  br i1 %cmp32, label %__mt9t112_mcu_write.exit151.cleanup89_crit_edge, label %do.body38

__mt9t112_mcu_write.exit151.cleanup89_crit_edge:  ; preds = %__mt9t112_mcu_write.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body38:                                        ; preds = %__mt9t112_mcu_write.exit151
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i154) #8
  %970 = getelementptr inbounds i8, ptr %msg.i.i154, i32 4
  %971 = ptrtoint ptr %970 to i32
  call void @__asan_store4_noabort(i32 %971)
  store i32 327679, ptr %970, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i155) #8
  %972 = getelementptr inbounds [4 x i8], ptr %buf.i.i155, i32 0, i32 2
  %973 = ptrtoint ptr %buf.i.i155 to i32
  call void @__asan_store2_noabort(i32 %973)
  store i16 -29175, ptr %buf.i.i155, align 2
  %974 = ptrtoint ptr %972 to i32
  call void @__asan_store2_noabort(i32 %974)
  store i16 132, ptr %972, align 2
  %975 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %975)
  %976 = load i16, ptr %addr.i.i, align 2
  %977 = ptrtoint ptr %msg.i.i154 to i32
  call void @__asan_store2_noabort(i32 %977)
  store i16 %976, ptr %msg.i.i154, align 4
  %flags.i.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i154, i32 0, i32 1
  %978 = ptrtoint ptr %flags.i.i157 to i32
  call void @__asan_store2_noabort(i32 %978)
  store i16 0, ptr %flags.i.i157, align 2
  %buf5.i.i158 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i154, i32 0, i32 3
  %979 = ptrtoint ptr %buf5.i.i158 to i32
  call void @__asan_store4_noabort(i32 %979)
  store ptr %buf.i.i155, ptr %buf5.i.i158, align 4
  %980 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i160 = call i32 @i2c_transfer(ptr noundef %981, ptr noundef nonnull %msg.i.i154, i32 noundef 1) #8
  %982 = call i32 @llvm.smin.i32(i32 %call.i.i160, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i155) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %cmp.i161 = icmp slt i32 %call.i.i160, 0
  br i1 %cmp.i161, label %do.body38.__mt9t112_mcu_write.exit167_crit_edge, label %if.end.i165

do.body38.__mt9t112_mcu_write.exit167_crit_edge:  ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit167

if.end.i165:                                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i152) #8
  %983 = getelementptr inbounds i8, ptr %msg.i4.i152, i32 4
  %984 = ptrtoint ptr %983 to i32
  call void @__asan_store4_noabort(i32 %984)
  store i32 327679, ptr %983, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i153) #8
  %985 = getelementptr inbounds [4 x i8], ptr %buf.i5.i153, i32 0, i32 2
  %986 = ptrtoint ptr %buf.i5.i153 to i32
  call void @__asan_store2_noabort(i32 %986)
  store i16 -28663, ptr %buf.i5.i153, align 2
  %987 = ptrtoint ptr %985 to i32
  call void @__asan_store2_noabort(i32 %987)
  store i16 1536, ptr %985, align 2
  %988 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %988)
  %989 = load i16, ptr %addr.i.i, align 2
  %990 = ptrtoint ptr %msg.i4.i152 to i32
  call void @__asan_store2_noabort(i32 %990)
  store i16 %989, ptr %msg.i4.i152, align 4
  %flags.i7.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i152, i32 0, i32 1
  %991 = ptrtoint ptr %flags.i7.i162 to i32
  call void @__asan_store2_noabort(i32 %991)
  store i16 0, ptr %flags.i7.i162, align 2
  %buf5.i9.i163 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i152, i32 0, i32 3
  %992 = ptrtoint ptr %buf5.i9.i163 to i32
  call void @__asan_store4_noabort(i32 %992)
  store ptr %buf.i5.i153, ptr %buf5.i9.i163, align 4
  %993 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i164 = call i32 @i2c_transfer(ptr noundef %994, ptr noundef nonnull %msg.i4.i152, i32 noundef 1) #8
  %995 = call i32 @llvm.smin.i32(i32 %call.i11.i164, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i153) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i152) #8
  br label %__mt9t112_mcu_write.exit167

__mt9t112_mcu_write.exit167:                      ; preds = %if.end.i165, %do.body38.__mt9t112_mcu_write.exit167_crit_edge
  %retval.0.i166 = phi i32 [ %995, %if.end.i165 ], [ %982, %do.body38.__mt9t112_mcu_write.exit167_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i166)
  %cmp40 = icmp slt i32 %retval.0.i166, 0
  br i1 %cmp40, label %__mt9t112_mcu_write.exit167.cleanup89_crit_edge, label %do.end45

__mt9t112_mcu_write.exit167.cleanup89_crit_edge:  ; preds = %__mt9t112_mcu_write.exit167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.end45:                                         ; preds = %__mt9t112_mcu_write.exit167
  %width = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 3, i32 2
  %996 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load i32, ptr %width, align 4
  %conv46 = trunc i32 %997 to i16
  %height = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 3, i32 3
  %998 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %998)
  %999 = load i32, ptr %height, align 4
  %conv48 = trunc i32 %999 to i16
  call fastcc void @mt9t112_set_a_frame_size(ptr noundef %1, i16 noundef zeroext %conv46, i16 noundef zeroext %conv48)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i168) #8
  %1000 = getelementptr inbounds i8, ptr %msg.i.i.i168, i32 4
  %1001 = ptrtoint ptr %1000 to i32
  call void @__asan_store4_noabort(i32 %1001)
  store i32 327679, ptr %1000, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i169) #8
  %1002 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i169, i32 0, i32 2
  %1003 = ptrtoint ptr %buf.i.i.i169 to i32
  call void @__asan_store2_noabort(i32 %1003)
  store i16 -29175, ptr %buf.i.i.i169, align 2
  %1004 = ptrtoint ptr %1002 to i32
  call void @__asan_store2_noabort(i32 %1004)
  store i16 6576, ptr %1002, align 2
  %1005 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %1005)
  %1006 = load i16, ptr %addr.i.i, align 2
  %1007 = ptrtoint ptr %msg.i.i.i168 to i32
  call void @__asan_store2_noabort(i32 %1007)
  store i16 %1006, ptr %msg.i.i.i168, align 4
  %flags.i.i.i170 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i168, i32 0, i32 1
  %1008 = ptrtoint ptr %flags.i.i.i170 to i32
  call void @__asan_store2_noabort(i32 %1008)
  store i16 0, ptr %flags.i.i.i170, align 2
  %buf5.i.i.i171 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i168, i32 0, i32 3
  %1009 = ptrtoint ptr %buf5.i.i.i171 to i32
  call void @__asan_store4_noabort(i32 %1009)
  store ptr %buf.i.i.i169, ptr %buf5.i.i.i171, align 4
  %1010 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i.i172 = call i32 @i2c_transfer(ptr noundef %1011, ptr noundef nonnull %msg.i.i.i168, i32 noundef 1) #8
  %1012 = call i32 @llvm.smin.i32(i32 %call.i.i.i172, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i169) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i168) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i172)
  %cmp.i.i173 = icmp slt i32 %call.i.i.i172, 0
  br i1 %cmp.i.i173, label %do.end45.mt9t112_auto_focus_trigger.exit_crit_edge, label %if.end.i.i

do.end45.mt9t112_auto_focus_trigger.exit_crit_edge: ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt9t112_auto_focus_trigger.exit

if.end.i.i:                                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i.i) #8
  %1013 = getelementptr inbounds i8, ptr %msg.i4.i.i, i32 4
  %1014 = ptrtoint ptr %1013 to i32
  call void @__asan_store4_noabort(i32 %1014)
  store i32 327679, ptr %1013, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i.i) #8
  %1015 = getelementptr inbounds [4 x i8], ptr %buf.i5.i.i, i32 0, i32 2
  %1016 = ptrtoint ptr %buf.i5.i.i to i32
  call void @__asan_store2_noabort(i32 %1016)
  store i16 -28663, ptr %buf.i5.i.i, align 2
  %1017 = ptrtoint ptr %1015 to i32
  call void @__asan_store2_noabort(i32 %1017)
  store i16 256, ptr %1015, align 2
  %1018 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %1018)
  %1019 = load i16, ptr %addr.i.i, align 2
  %1020 = ptrtoint ptr %msg.i4.i.i to i32
  call void @__asan_store2_noabort(i32 %1020)
  store i16 %1019, ptr %msg.i4.i.i, align 4
  %flags.i7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i.i, i32 0, i32 1
  %1021 = ptrtoint ptr %flags.i7.i.i to i32
  call void @__asan_store2_noabort(i32 %1021)
  store i16 0, ptr %flags.i7.i.i, align 2
  %buf5.i9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i.i, i32 0, i32 3
  %1022 = ptrtoint ptr %buf5.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %1022)
  store ptr %buf.i5.i.i, ptr %buf5.i9.i.i, align 4
  %1023 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i.i = call i32 @i2c_transfer(ptr noundef %1024, ptr noundef nonnull %msg.i4.i.i, i32 noundef 1) #8
  %1025 = call i32 @llvm.smin.i32(i32 %call.i11.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i.i) #8
  br label %mt9t112_auto_focus_trigger.exit

mt9t112_auto_focus_trigger.exit:                  ; preds = %if.end.i.i, %do.end45.mt9t112_auto_focus_trigger.exit_crit_edge
  %retval.0.i.i174 = phi i32 [ %1025, %if.end.i.i ], [ %1012, %do.end45.mt9t112_auto_focus_trigger.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i174)
  %cmp52 = icmp slt i32 %retval.0.i.i174, 0
  br i1 %cmp52, label %mt9t112_auto_focus_trigger.exit.cleanup89_crit_edge, label %do.body58

mt9t112_auto_focus_trigger.exit.cleanup89_crit_edge: ; preds = %mt9t112_auto_focus_trigger.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body58:                                        ; preds = %mt9t112_auto_focus_trigger.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9t112_s_stream.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9t112_s_stream, %if.then63)) #8
          to label %do.body68 [label %if.then63], !srcloc !76

if.then63:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %1026 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %format, align 4
  %1028 = ptrtoint ptr %1027 to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load i32, ptr %1027, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9t112_s_stream.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %1029) #8
  br label %do.body68

do.body68:                                        ; preds = %if.then63, %do.body58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9t112_s_stream.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9t112_s_stream, %if.then80)) #8
          to label %cleanup89 [label %if.then80], !srcloc !76

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  %dev81 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %1030 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load i32, ptr %width, align 4
  %1032 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load i32, ptr %height, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9t112_s_stream.__UNIQUE_ID_ddebug293, ptr noundef %dev81, ptr noundef nonnull @.str.16, i32 noundef %1031, i32 noundef %1033) #8
  br label %cleanup89

cleanup89:                                        ; preds = %if.then80, %do.body68, %mt9t112_auto_focus_trigger.exit.cleanup89_crit_edge, %__mt9t112_mcu_write.exit167.cleanup89_crit_edge, %__mt9t112_mcu_write.exit151.cleanup89_crit_edge, %__mt9t112_mcu_write.exit.cleanup89_crit_edge, %do.body10.cleanup89_crit_edge, %mt9t112_init_camera.exit.cleanup89_crit_edge, %do.body85.i.cleanup89_crit_edge, %do.body78.i.cleanup89_crit_edge, %do.body71.i.cleanup89_crit_edge, %do.body64.i.cleanup89_crit_edge, %do.body57.i.cleanup89_crit_edge, %do.body22.i.cleanup89_crit_edge, %mt9t112_auto_focus_setting.exit.i.cleanup89_crit_edge, %do.body64.i218.i.cleanup89_crit_edge, %do.body57.i215.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit224.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit208.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit192.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit176.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit160.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit144.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit128.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit.i193.i.cleanup89_crit_edge, %do.body316.i.i.cleanup89_crit_edge, %do.body309.i.i.cleanup89_crit_edge, %do.body302.i.i.cleanup89_crit_edge, %do.body295.i.i.cleanup89_crit_edge, %do.body288.i.i.cleanup89_crit_edge, %do.body281.i.i.cleanup89_crit_edge, %do.body274.i.i.cleanup89_crit_edge, %do.body267.i.i.cleanup89_crit_edge, %do.body260.i.i.cleanup89_crit_edge, %do.body253.i.i.cleanup89_crit_edge, %do.body246.i.i.cleanup89_crit_edge, %do.body239.i.i.cleanup89_crit_edge, %do.body232.i.i.cleanup89_crit_edge, %do.body225.i.i.cleanup89_crit_edge, %do.body218.i.i.cleanup89_crit_edge, %do.body211.i.i.cleanup89_crit_edge, %do.body204.i.i.cleanup89_crit_edge, %do.body197.i.i.cleanup89_crit_edge, %do.body190.i.i.cleanup89_crit_edge, %do.body183.i.i.cleanup89_crit_edge, %do.body176.i.i.cleanup89_crit_edge, %do.body169.i.i.cleanup89_crit_edge, %do.body162.i.i.cleanup89_crit_edge, %do.body155.i.i.cleanup89_crit_edge, %do.body148.i.i.cleanup89_crit_edge, %do.body141.i.i.cleanup89_crit_edge, %do.body134.i.i.cleanup89_crit_edge, %do.body127.i.i.cleanup89_crit_edge, %do.body120.i.i.cleanup89_crit_edge, %do.body113.i.i.cleanup89_crit_edge, %do.body106.i.i.cleanup89_crit_edge, %do.body99.i.i.cleanup89_crit_edge, %do.body92.i.i.cleanup89_crit_edge, %do.body85.i.i.cleanup89_crit_edge, %do.body78.i.i.cleanup89_crit_edge, %do.body71.i.i.cleanup89_crit_edge, %do.body64.i.i.cleanup89_crit_edge, %do.body57.i.i.cleanup89_crit_edge, %do.body50.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit568.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit552.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit536.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit520.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit504.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit488.i.i.cleanup89_crit_edge, %__mt9t112_mcu_write.exit.i.i.cleanup89_crit_edge, %do.body8.i.cleanup89_crit_edge, %mt9t112_init_pll.exit.i.cleanup89_crit_edge, %do.body166.i.i.cleanup89_crit_edge, %do.end157.i.i.cleanup89_crit_edge, %do.end150.i.i.cleanup89_crit_edge, %do.end143.i.i.cleanup89_crit_edge, %do.end136.i.i.cleanup89_crit_edge, %do.end129.i.i.cleanup89_crit_edge, %while.end122.i.i.cleanup89_crit_edge, %do.body110.i.i.cleanup89_crit_edge, %do.body103.i.i.cleanup89_crit_edge, %do.body96.i.i.cleanup89_crit_edge, %do.body89.i.i.cleanup89_crit_edge, %do.body82.i.i.cleanup89_crit_edge, %do.body75.i.i.cleanup89_crit_edge, %do.body1.i.cleanup89_crit_edge, %mt9t112_reset.exit.i.cleanup89_crit_edge, %do.end.i.i.cleanup89_crit_edge, %if.then4.cleanup89_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ %retval.0.i135, %__mt9t112_mcu_write.exit.cleanup89_crit_edge ], [ %retval.0.i150, %__mt9t112_mcu_write.exit151.cleanup89_crit_edge ], [ %retval.0.i166, %__mt9t112_mcu_write.exit167.cleanup89_crit_edge ], [ %retval.0.i.i174, %mt9t112_auto_focus_trigger.exit.cleanup89_crit_edge ], [ 0, %if.then80 ], [ 0, %do.body68 ], [ %901, %do.body10.cleanup89_crit_edge ], [ %retval.0.i128, %mt9t112_init_camera.exit.cleanup89_crit_edge ], [ %call.i.i226.i, %do.body22.i.cleanup89_crit_edge ], [ %retval.0.i.i191.i, %__mt9t112_mcu_write.exit.i193.i.cleanup89_crit_edge ], [ %retval.0.i127.i.i, %__mt9t112_mcu_write.exit128.i.i.cleanup89_crit_edge ], [ %retval.0.i143.i.i, %__mt9t112_mcu_write.exit144.i.i.cleanup89_crit_edge ], [ %retval.0.i159.i.i, %__mt9t112_mcu_write.exit160.i.i.cleanup89_crit_edge ], [ %retval.0.i175.i.i, %__mt9t112_mcu_write.exit176.i.i.cleanup89_crit_edge ], [ %retval.0.i191.i.i, %__mt9t112_mcu_write.exit192.i.i.cleanup89_crit_edge ], [ %retval.0.i207.i.i, %__mt9t112_mcu_write.exit208.i.i.cleanup89_crit_edge ], [ %retval.0.i223.i.i, %__mt9t112_mcu_write.exit224.i.i.cleanup89_crit_edge ], [ %call58.i213.i, %do.body57.i215.i.cleanup89_crit_edge ], [ %call65.i216.i, %do.body64.i218.i.cleanup89_crit_edge ], [ %call.i.i, %do.body8.i.cleanup89_crit_edge ], [ %retval.0.i.i.i, %__mt9t112_mcu_write.exit.i.i.cleanup89_crit_edge ], [ %retval.0.i487.i.i, %__mt9t112_mcu_write.exit488.i.i.cleanup89_crit_edge ], [ %retval.0.i503.i.i, %__mt9t112_mcu_write.exit504.i.i.cleanup89_crit_edge ], [ %retval.0.i519.i.i, %__mt9t112_mcu_write.exit520.i.i.cleanup89_crit_edge ], [ %retval.0.i535.i.i, %__mt9t112_mcu_write.exit536.i.i.cleanup89_crit_edge ], [ %retval.0.i551.i.i, %__mt9t112_mcu_write.exit552.i.i.cleanup89_crit_edge ], [ %retval.0.i567.i.i, %__mt9t112_mcu_write.exit568.i.i.cleanup89_crit_edge ], [ %call51.i.i, %do.body50.i.i.cleanup89_crit_edge ], [ %call58.i.i, %do.body57.i.i.cleanup89_crit_edge ], [ %call65.i.i, %do.body64.i.i.cleanup89_crit_edge ], [ %call72.i.i, %do.body71.i.i.cleanup89_crit_edge ], [ %call79.i.i, %do.body78.i.i.cleanup89_crit_edge ], [ %call86.i.i, %do.body85.i.i.cleanup89_crit_edge ], [ %call93.i.i, %do.body92.i.i.cleanup89_crit_edge ], [ %call100.i.i, %do.body99.i.i.cleanup89_crit_edge ], [ %call107.i.i, %do.body106.i.i.cleanup89_crit_edge ], [ %call114.i.i, %do.body113.i.i.cleanup89_crit_edge ], [ %call121.i.i, %do.body120.i.i.cleanup89_crit_edge ], [ %call128.i.i, %do.body127.i.i.cleanup89_crit_edge ], [ %call135.i.i, %do.body134.i.i.cleanup89_crit_edge ], [ %call142.i.i, %do.body141.i.i.cleanup89_crit_edge ], [ %call149.i.i, %do.body148.i.i.cleanup89_crit_edge ], [ %call156.i.i, %do.body155.i.i.cleanup89_crit_edge ], [ %call163.i.i, %do.body162.i.i.cleanup89_crit_edge ], [ %call170.i.i, %do.body169.i.i.cleanup89_crit_edge ], [ %call177.i.i, %do.body176.i.i.cleanup89_crit_edge ], [ %call184.i.i, %do.body183.i.i.cleanup89_crit_edge ], [ %call191.i.i, %do.body190.i.i.cleanup89_crit_edge ], [ %call198.i.i, %do.body197.i.i.cleanup89_crit_edge ], [ %call205.i.i, %do.body204.i.i.cleanup89_crit_edge ], [ %call212.i.i, %do.body211.i.i.cleanup89_crit_edge ], [ %call219.i.i, %do.body218.i.i.cleanup89_crit_edge ], [ %call226.i.i, %do.body225.i.i.cleanup89_crit_edge ], [ %call233.i.i, %do.body232.i.i.cleanup89_crit_edge ], [ %call240.i.i, %do.body239.i.i.cleanup89_crit_edge ], [ %call247.i.i, %do.body246.i.i.cleanup89_crit_edge ], [ %call254.i.i, %do.body253.i.i.cleanup89_crit_edge ], [ %call261.i.i, %do.body260.i.i.cleanup89_crit_edge ], [ %call268.i.i, %do.body267.i.i.cleanup89_crit_edge ], [ %call275.i.i, %do.body274.i.i.cleanup89_crit_edge ], [ %call282.i.i, %do.body281.i.i.cleanup89_crit_edge ], [ %call289.i.i, %do.body288.i.i.cleanup89_crit_edge ], [ %call296.i.i, %do.body295.i.i.cleanup89_crit_edge ], [ %call303.i.i, %do.body302.i.i.cleanup89_crit_edge ], [ %call310.i.i, %do.body309.i.i.cleanup89_crit_edge ], [ %call317.i.i, %do.body316.i.i.cleanup89_crit_edge ], [ %call76.i.i, %do.body75.i.i.cleanup89_crit_edge ], [ %call83.i.i, %do.body82.i.i.cleanup89_crit_edge ], [ %call90.i.i, %do.body89.i.i.cleanup89_crit_edge ], [ %call97.i.i, %do.body96.i.i.cleanup89_crit_edge ], [ %call104.i.i, %do.body103.i.i.cleanup89_crit_edge ], [ %call111.i.i, %do.body110.i.i.cleanup89_crit_edge ], [ %call124.i.i, %while.end122.i.i.cleanup89_crit_edge ], [ %call131.i.i, %do.end129.i.i.cleanup89_crit_edge ], [ %call138.i.i, %do.end136.i.i.cleanup89_crit_edge ], [ %call145.i.i, %do.end143.i.i.cleanup89_crit_edge ], [ %call152.i.i, %do.end150.i.i.cleanup89_crit_edge ], [ %call159.i.i, %do.end157.i.i.cleanup89_crit_edge ], [ %call.i.i.i156.i, %do.body1.i.cleanup89_crit_edge ], [ %call.i.i.i.i, %if.then4.cleanup89_crit_edge ], [ %call.i.i26.i.i, %do.end.i.i.cleanup89_crit_edge ], [ %call86.i, %do.body85.i.cleanup89_crit_edge ], [ %call79.i, %do.body78.i.cleanup89_crit_edge ], [ %call72.i, %do.body71.i.cleanup89_crit_edge ], [ %call65.i, %do.body64.i.cleanup89_crit_edge ], [ %call58.i, %do.body57.i.cleanup89_crit_edge ], [ %retval.0.i221.i, %mt9t112_auto_focus_setting.exit.i.cleanup89_crit_edge ], [ %retval.0.i164.i, %mt9t112_init_pll.exit.i.cleanup89_crit_edge ], [ %retval.0.i.i, %mt9t112_reset.exit.i.cleanup89_crit_edge ], [ %call167.i.i, %do.body166.i.i.cleanup89_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt9t112_set_a_frame_size(ptr nocapture noundef readonly %client, i16 noundef zeroext %width, i16 noundef zeroext %height) unnamed_addr #2 align 64 {
entry:
  %msg.i4.i113 = alloca %struct.i2c_msg, align 4
  %buf.i5.i114 = alloca [4 x i8], align 2
  %msg.i.i115 = alloca %struct.i2c_msg, align 4
  %buf.i.i116 = alloca [4 x i8], align 2
  %msg.i4.i97 = alloca %struct.i2c_msg, align 4
  %buf.i5.i98 = alloca [4 x i8], align 2
  %msg.i.i99 = alloca %struct.i2c_msg, align 4
  %buf.i.i100 = alloca [4 x i8], align 2
  %msg.i4.i81 = alloca %struct.i2c_msg, align 4
  %buf.i5.i82 = alloca [4 x i8], align 2
  %msg.i.i83 = alloca %struct.i2c_msg, align 4
  %buf.i.i84 = alloca [4 x i8], align 2
  %msg.i4.i65 = alloca %struct.i2c_msg, align 4
  %buf.i5.i66 = alloca [4 x i8], align 2
  %msg.i.i67 = alloca %struct.i2c_msg, align 4
  %buf.i.i68 = alloca [4 x i8], align 2
  %msg.i4.i49 = alloca %struct.i2c_msg, align 4
  %buf.i5.i50 = alloca [4 x i8], align 2
  %msg.i.i51 = alloca %struct.i2c_msg, align 4
  %buf.i.i52 = alloca [4 x i8], align 2
  %msg.i4.i33 = alloca %struct.i2c_msg, align 4
  %buf.i5.i34 = alloca [4 x i8], align 2
  %msg.i.i35 = alloca %struct.i2c_msg, align 4
  %buf.i.i36 = alloca [4 x i8], align 2
  %msg.i4.i17 = alloca %struct.i2c_msg, align 4
  %buf.i5.i18 = alloca [4 x i8], align 2
  %msg.i.i19 = alloca %struct.i2c_msg, align 4
  %buf.i.i20 = alloca [4 x i8], align 2
  %msg.i4.i1 = alloca %struct.i2c_msg, align 4
  %buf.i5.i2 = alloca [4 x i8], align 2
  %msg.i.i3 = alloca %struct.i2c_msg, align 4
  %buf.i.i4 = alloca [4 x i8], align 2
  %msg.i4.i = alloca %struct.i2c_msg, align 4
  %buf.i5.i = alloca [4 x i8], align 2
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [4 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %width to i32
  %sub = sub nsw i32 2048, %conv
  %div = sdiv i32 %sub, 2
  %conv2 = zext i16 %height to i32
  %sub3 = sub nsw i32 1536, %conv2
  %div4 = sdiv i32 %sub3, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %0 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 327679, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -29175, ptr %buf.i.i, align 2
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 104, ptr %2, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i.i, align 2
  %7 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i.i, align 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf.i.i, ptr %buf5.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  %12 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.__mt9t112_mcu_write.exit_crit_edge, label %if.end.i

entry.__mt9t112_mcu_write.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i) #8
  %13 = getelementptr inbounds i8, ptr %msg.i4.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 327679, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i) #8
  %15 = getelementptr inbounds [4 x i8], ptr %buf.i5.i, i32 0, i32 2
  %16 = call i16 @llvm.bswap.i16(i16 %width) #8
  %17 = ptrtoint ptr %buf.i5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -28663, ptr %buf.i5.i, align 2
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %16, ptr %15, align 2
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i.i, align 2
  %21 = ptrtoint ptr %msg.i4.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %msg.i4.i, align 4
  %flags.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i7.i, align 2
  %buf5.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf5.i9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i5.i, ptr %buf5.i9.i, align 4
  %24 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i4.i, i32 noundef 1) #8
  %26 = call i32 @llvm.smin.i32(i32 %call.i11.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i) #8
  br label %__mt9t112_mcu_write.exit

__mt9t112_mcu_write.exit:                         ; preds = %if.end.i, %entry.__mt9t112_mcu_write.exit_crit_edge
  %retval.0.i = phi i32 [ %26, %if.end.i ], [ %12, %entry.__mt9t112_mcu_write.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %__mt9t112_mcu_write.exit.cleanup_crit_edge, label %do.body7

__mt9t112_mcu_write.exit.cleanup_crit_edge:       ; preds = %__mt9t112_mcu_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7:                                         ; preds = %__mt9t112_mcu_write.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i3) #8
  %27 = getelementptr inbounds i8, ptr %msg.i.i3, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327679, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i4) #8
  %29 = getelementptr inbounds [4 x i8], ptr %buf.i.i4, i32 0, i32 2
  %30 = ptrtoint ptr %buf.i.i4 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -29175, ptr %buf.i.i4, align 2
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 616, ptr %29, align 2
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr.i.i, align 2
  %34 = ptrtoint ptr %msg.i.i3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %msg.i.i3, align 4
  %flags.i.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i3, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i.i6 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i.i6, align 2
  %buf5.i.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i3, i32 0, i32 3
  %36 = ptrtoint ptr %buf5.i.i7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i.i4, ptr %buf5.i.i7, align 4
  %37 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i9 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i.i3, i32 noundef 1) #8
  %39 = call i32 @llvm.smin.i32(i32 %call.i.i9, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i10 = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i10, label %do.body7.__mt9t112_mcu_write.exit16_crit_edge, label %if.end.i14

do.body7.__mt9t112_mcu_write.exit16_crit_edge:    ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit16

if.end.i14:                                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i1) #8
  %40 = getelementptr inbounds i8, ptr %msg.i4.i1, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 327679, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i2) #8
  %42 = getelementptr inbounds [4 x i8], ptr %buf.i5.i2, i32 0, i32 2
  %43 = call i16 @llvm.bswap.i16(i16 %height) #8
  %44 = ptrtoint ptr %buf.i5.i2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -28663, ptr %buf.i5.i2, align 2
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %43, ptr %42, align 2
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr.i.i, align 2
  %48 = ptrtoint ptr %msg.i4.i1 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %msg.i4.i1, align 4
  %flags.i7.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i1, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i7.i11 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i7.i11, align 2
  %buf5.i9.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i1, i32 0, i32 3
  %50 = ptrtoint ptr %buf5.i9.i12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf.i5.i2, ptr %buf5.i9.i12, align 4
  %51 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i13 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i4.i1, i32 noundef 1) #8
  %53 = call i32 @llvm.smin.i32(i32 %call.i11.i13, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i2) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i1) #8
  br label %__mt9t112_mcu_write.exit16

__mt9t112_mcu_write.exit16:                       ; preds = %if.end.i14, %do.body7.__mt9t112_mcu_write.exit16_crit_edge
  %retval.0.i15 = phi i32 [ %53, %if.end.i14 ], [ %39, %do.body7.__mt9t112_mcu_write.exit16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i15)
  %cmp9 = icmp slt i32 %retval.0.i15, 0
  br i1 %cmp9, label %__mt9t112_mcu_write.exit16.cleanup_crit_edge, label %do.body15

__mt9t112_mcu_write.exit16.cleanup_crit_edge:     ; preds = %__mt9t112_mcu_write.exit16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body15:                                        ; preds = %__mt9t112_mcu_write.exit16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i19) #8
  %54 = getelementptr inbounds i8, ptr %msg.i.i19, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 327679, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i20) #8
  %56 = getelementptr inbounds [4 x i8], ptr %buf.i.i20, i32 0, i32 2
  %57 = ptrtoint ptr %buf.i.i20 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -29175, ptr %buf.i.i20, align 2
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 11080, ptr %56, align 2
  %59 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %addr.i.i, align 2
  %61 = ptrtoint ptr %msg.i.i19 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %msg.i.i19, align 4
  %flags.i.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i19, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i.i22 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i.i22, align 2
  %buf5.i.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i19, i32 0, i32 3
  %63 = ptrtoint ptr %buf5.i.i23 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf.i.i20, ptr %buf5.i.i23, align 4
  %64 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i25 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i.i19, i32 noundef 1) #8
  %66 = call i32 @llvm.smin.i32(i32 %call.i.i25, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i20) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %cmp.i26 = icmp slt i32 %call.i.i25, 0
  br i1 %cmp.i26, label %do.body15.__mt9t112_mcu_write.exit32_crit_edge, label %if.end.i30

do.body15.__mt9t112_mcu_write.exit32_crit_edge:   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit32

if.end.i30:                                       ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i16 %width, 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i17) #8
  %67 = getelementptr inbounds i8, ptr %msg.i4.i17, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 327679, ptr %67, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i18) #8
  %69 = getelementptr inbounds [4 x i8], ptr %buf.i5.i18, i32 0, i32 2
  %70 = call i16 @llvm.bswap.i16(i16 %add) #8
  %71 = ptrtoint ptr %buf.i5.i18 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -28663, ptr %buf.i5.i18, align 2
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %70, ptr %69, align 2
  %73 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %addr.i.i, align 2
  %75 = ptrtoint ptr %msg.i4.i17 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %msg.i4.i17, align 4
  %flags.i7.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i17, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i7.i27 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i7.i27, align 2
  %buf5.i9.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i17, i32 0, i32 3
  %77 = ptrtoint ptr %buf5.i9.i28 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i5.i18, ptr %buf5.i9.i28, align 4
  %78 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i29 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i4.i17, i32 noundef 1) #8
  %80 = call i32 @llvm.smin.i32(i32 %call.i11.i29, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i18) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i17) #8
  br label %__mt9t112_mcu_write.exit32

__mt9t112_mcu_write.exit32:                       ; preds = %if.end.i30, %do.body15.__mt9t112_mcu_write.exit32_crit_edge
  %retval.0.i31 = phi i32 [ %80, %if.end.i30 ], [ %66, %do.body15.__mt9t112_mcu_write.exit32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i31)
  %cmp19 = icmp slt i32 %retval.0.i31, 0
  br i1 %cmp19, label %__mt9t112_mcu_write.exit32.cleanup_crit_edge, label %do.body25

__mt9t112_mcu_write.exit32.cleanup_crit_edge:     ; preds = %__mt9t112_mcu_write.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body25:                                        ; preds = %__mt9t112_mcu_write.exit32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i35) #8
  %81 = getelementptr inbounds i8, ptr %msg.i.i35, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 327679, ptr %81, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i36) #8
  %83 = getelementptr inbounds [4 x i8], ptr %buf.i.i36, i32 0, i32 2
  %84 = ptrtoint ptr %buf.i.i36 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -29175, ptr %buf.i.i36, align 2
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 11592, ptr %83, align 2
  %86 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %addr.i.i, align 2
  %88 = ptrtoint ptr %msg.i.i35 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %msg.i.i35, align 4
  %flags.i.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i35, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i.i38 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags.i.i38, align 2
  %buf5.i.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i35, i32 0, i32 3
  %90 = ptrtoint ptr %buf5.i.i39 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %buf.i.i36, ptr %buf5.i.i39, align 4
  %91 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i41 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %msg.i.i35, i32 noundef 1) #8
  %93 = call i32 @llvm.smin.i32(i32 %call.i.i41, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i36) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.i42 = icmp slt i32 %call.i.i41, 0
  br i1 %cmp.i42, label %do.body25.__mt9t112_mcu_write.exit48_crit_edge, label %if.end.i46

do.body25.__mt9t112_mcu_write.exit48_crit_edge:   ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit48

if.end.i46:                                       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %add27 = add i16 %height, 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i33) #8
  %94 = getelementptr inbounds i8, ptr %msg.i4.i33, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 327679, ptr %94, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i34) #8
  %96 = getelementptr inbounds [4 x i8], ptr %buf.i5.i34, i32 0, i32 2
  %97 = call i16 @llvm.bswap.i16(i16 %add27) #8
  %98 = ptrtoint ptr %buf.i5.i34 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -28663, ptr %buf.i5.i34, align 2
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %97, ptr %96, align 2
  %100 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %addr.i.i, align 2
  %102 = ptrtoint ptr %msg.i4.i33 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %msg.i4.i33, align 4
  %flags.i7.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i33, i32 0, i32 1
  %103 = ptrtoint ptr %flags.i7.i43 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %flags.i7.i43, align 2
  %buf5.i9.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i33, i32 0, i32 3
  %104 = ptrtoint ptr %buf5.i9.i44 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %buf.i5.i34, ptr %buf5.i9.i44, align 4
  %105 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i45 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %msg.i4.i33, i32 noundef 1) #8
  %107 = call i32 @llvm.smin.i32(i32 %call.i11.i45, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i34) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i33) #8
  br label %__mt9t112_mcu_write.exit48

__mt9t112_mcu_write.exit48:                       ; preds = %if.end.i46, %do.body25.__mt9t112_mcu_write.exit48_crit_edge
  %retval.0.i47 = phi i32 [ %107, %if.end.i46 ], [ %93, %do.body25.__mt9t112_mcu_write.exit48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i47)
  %cmp30 = icmp slt i32 %retval.0.i47, 0
  br i1 %cmp30, label %__mt9t112_mcu_write.exit48.cleanup_crit_edge, label %do.body36

__mt9t112_mcu_write.exit48.cleanup_crit_edge:     ; preds = %__mt9t112_mcu_write.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body36:                                        ; preds = %__mt9t112_mcu_write.exit48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i51) #8
  %108 = getelementptr inbounds i8, ptr %msg.i.i51, i32 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 327679, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i52) #8
  %110 = getelementptr inbounds [4 x i8], ptr %buf.i.i52, i32 0, i32 2
  %111 = ptrtoint ptr %buf.i.i52 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -29175, ptr %buf.i.i52, align 2
  %112 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 584, ptr %110, align 2
  %113 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %addr.i.i, align 2
  %115 = ptrtoint ptr %msg.i.i51 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %msg.i.i51, align 4
  %flags.i.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i51, i32 0, i32 1
  %116 = ptrtoint ptr %flags.i.i54 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %flags.i.i54, align 2
  %buf5.i.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i51, i32 0, i32 3
  %117 = ptrtoint ptr %buf5.i.i55 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %buf.i.i52, ptr %buf5.i.i55, align 4
  %118 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i57 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i.i51, i32 noundef 1) #8
  %120 = call i32 @llvm.smin.i32(i32 %call.i.i57, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i52) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %cmp.i58 = icmp slt i32 %call.i.i57, 0
  br i1 %cmp.i58, label %do.body36.__mt9t112_mcu_write.exit64_crit_edge, label %if.end.i62

do.body36.__mt9t112_mcu_write.exit64_crit_edge:   ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit64

if.end.i62:                                       ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %121 = trunc i32 %div4 to i16
  %conv39 = add nsw i16 %121, 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i49) #8
  %122 = getelementptr inbounds i8, ptr %msg.i4.i49, i32 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 327679, ptr %122, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i50) #8
  %124 = getelementptr inbounds [4 x i8], ptr %buf.i5.i50, i32 0, i32 2
  %125 = call i16 @llvm.bswap.i16(i16 %conv39) #8
  %126 = ptrtoint ptr %buf.i5.i50 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -28663, ptr %buf.i5.i50, align 2
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %125, ptr %124, align 2
  %128 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %addr.i.i, align 2
  %130 = ptrtoint ptr %msg.i4.i49 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %msg.i4.i49, align 4
  %flags.i7.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i49, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i7.i59 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i7.i59, align 2
  %buf5.i9.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i49, i32 0, i32 3
  %132 = ptrtoint ptr %buf5.i9.i60 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %buf.i5.i50, ptr %buf5.i9.i60, align 4
  %133 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i61 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i4.i49, i32 noundef 1) #8
  %135 = call i32 @llvm.smin.i32(i32 %call.i11.i61, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i50) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i49) #8
  br label %__mt9t112_mcu_write.exit64

__mt9t112_mcu_write.exit64:                       ; preds = %if.end.i62, %do.body36.__mt9t112_mcu_write.exit64_crit_edge
  %retval.0.i63 = phi i32 [ %135, %if.end.i62 ], [ %120, %do.body36.__mt9t112_mcu_write.exit64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i63)
  %cmp41 = icmp slt i32 %retval.0.i63, 0
  br i1 %cmp41, label %__mt9t112_mcu_write.exit64.cleanup_crit_edge, label %do.body47

__mt9t112_mcu_write.exit64.cleanup_crit_edge:     ; preds = %__mt9t112_mcu_write.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body47:                                        ; preds = %__mt9t112_mcu_write.exit64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i67) #8
  %136 = getelementptr inbounds i8, ptr %msg.i.i67, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 327679, ptr %136, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i68) #8
  %138 = getelementptr inbounds [4 x i8], ptr %buf.i.i68, i32 0, i32 2
  %139 = ptrtoint ptr %buf.i.i68 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -29175, ptr %buf.i.i68, align 2
  %140 = ptrtoint ptr %138 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 1096, ptr %138, align 2
  %141 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %addr.i.i, align 2
  %143 = ptrtoint ptr %msg.i.i67 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %msg.i.i67, align 4
  %flags.i.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i67, i32 0, i32 1
  %144 = ptrtoint ptr %flags.i.i70 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %flags.i.i70, align 2
  %buf5.i.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i67, i32 0, i32 3
  %145 = ptrtoint ptr %buf5.i.i71 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %buf.i.i68, ptr %buf5.i.i71, align 4
  %146 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i73 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %msg.i.i67, i32 noundef 1) #8
  %148 = call i32 @llvm.smin.i32(i32 %call.i.i73, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i68) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %cmp.i74 = icmp slt i32 %call.i.i73, 0
  br i1 %cmp.i74, label %do.body47.__mt9t112_mcu_write.exit80_crit_edge, label %if.end.i78

do.body47.__mt9t112_mcu_write.exit80_crit_edge:   ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit80

if.end.i78:                                       ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %149 = trunc i32 %div to i16
  %conv50 = add nsw i16 %149, 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i65) #8
  %150 = getelementptr inbounds i8, ptr %msg.i4.i65, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 327679, ptr %150, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i66) #8
  %152 = getelementptr inbounds [4 x i8], ptr %buf.i5.i66, i32 0, i32 2
  %153 = call i16 @llvm.bswap.i16(i16 %conv50) #8
  %154 = ptrtoint ptr %buf.i5.i66 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 -28663, ptr %buf.i5.i66, align 2
  %155 = ptrtoint ptr %152 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %153, ptr %152, align 2
  %156 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %addr.i.i, align 2
  %158 = ptrtoint ptr %msg.i4.i65 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %msg.i4.i65, align 4
  %flags.i7.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i65, i32 0, i32 1
  %159 = ptrtoint ptr %flags.i7.i75 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %flags.i7.i75, align 2
  %buf5.i9.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i65, i32 0, i32 3
  %160 = ptrtoint ptr %buf5.i9.i76 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %buf.i5.i66, ptr %buf5.i9.i76, align 4
  %161 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i77 = call i32 @i2c_transfer(ptr noundef %162, ptr noundef nonnull %msg.i4.i65, i32 noundef 1) #8
  %163 = call i32 @llvm.smin.i32(i32 %call.i11.i77, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i66) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i65) #8
  br label %__mt9t112_mcu_write.exit80

__mt9t112_mcu_write.exit80:                       ; preds = %if.end.i78, %do.body47.__mt9t112_mcu_write.exit80_crit_edge
  %retval.0.i79 = phi i32 [ %163, %if.end.i78 ], [ %148, %do.body47.__mt9t112_mcu_write.exit80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i79)
  %cmp52 = icmp slt i32 %retval.0.i79, 0
  br i1 %cmp52, label %__mt9t112_mcu_write.exit80.cleanup_crit_edge, label %do.body58

__mt9t112_mcu_write.exit80.cleanup_crit_edge:     ; preds = %__mt9t112_mcu_write.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body58:                                        ; preds = %__mt9t112_mcu_write.exit80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i83) #8
  %164 = getelementptr inbounds i8, ptr %msg.i.i83, i32 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 327679, ptr %164, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i84) #8
  %166 = getelementptr inbounds [4 x i8], ptr %buf.i.i84, i32 0, i32 2
  %167 = ptrtoint ptr %buf.i.i84 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -29175, ptr %buf.i.i84, align 2
  %168 = ptrtoint ptr %166 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 1608, ptr %166, align 2
  %169 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %addr.i.i, align 2
  %171 = ptrtoint ptr %msg.i.i83 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %msg.i.i83, align 4
  %flags.i.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i83, i32 0, i32 1
  %172 = ptrtoint ptr %flags.i.i86 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %flags.i.i86, align 2
  %buf5.i.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i83, i32 0, i32 3
  %173 = ptrtoint ptr %buf5.i.i87 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %buf.i.i84, ptr %buf5.i.i87, align 4
  %174 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i89 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %msg.i.i83, i32 noundef 1) #8
  %176 = call i32 @llvm.smin.i32(i32 %call.i.i89, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i84) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %cmp.i90 = icmp slt i32 %call.i.i89, 0
  br i1 %cmp.i90, label %do.body58.__mt9t112_mcu_write.exit96_crit_edge, label %if.end.i94

do.body58.__mt9t112_mcu_write.exit96_crit_edge:   ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit96

if.end.i94:                                       ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %add60 = add nuw nsw i32 %conv2, 11
  %add62 = add nsw i32 %add60, %div4
  %conv63 = trunc i32 %add62 to i16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i81) #8
  %177 = getelementptr inbounds i8, ptr %msg.i4.i81, i32 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 327679, ptr %177, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i82) #8
  %179 = getelementptr inbounds [4 x i8], ptr %buf.i5.i82, i32 0, i32 2
  %180 = call i16 @llvm.bswap.i16(i16 %conv63) #8
  %181 = ptrtoint ptr %buf.i5.i82 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 -28663, ptr %buf.i5.i82, align 2
  %182 = ptrtoint ptr %179 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %180, ptr %179, align 2
  %183 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %addr.i.i, align 2
  %185 = ptrtoint ptr %msg.i4.i81 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %msg.i4.i81, align 4
  %flags.i7.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i81, i32 0, i32 1
  %186 = ptrtoint ptr %flags.i7.i91 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 0, ptr %flags.i7.i91, align 2
  %buf5.i9.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i81, i32 0, i32 3
  %187 = ptrtoint ptr %buf5.i9.i92 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %buf.i5.i82, ptr %buf5.i9.i92, align 4
  %188 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i93 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %msg.i4.i81, i32 noundef 1) #8
  %190 = call i32 @llvm.smin.i32(i32 %call.i11.i93, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i82) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i81) #8
  br label %__mt9t112_mcu_write.exit96

__mt9t112_mcu_write.exit96:                       ; preds = %if.end.i94, %do.body58.__mt9t112_mcu_write.exit96_crit_edge
  %retval.0.i95 = phi i32 [ %190, %if.end.i94 ], [ %176, %do.body58.__mt9t112_mcu_write.exit96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i95)
  %cmp65 = icmp slt i32 %retval.0.i95, 0
  br i1 %cmp65, label %__mt9t112_mcu_write.exit96.cleanup_crit_edge, label %do.body71

__mt9t112_mcu_write.exit96.cleanup_crit_edge:     ; preds = %__mt9t112_mcu_write.exit96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body71:                                        ; preds = %__mt9t112_mcu_write.exit96
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i99) #8
  %191 = getelementptr inbounds i8, ptr %msg.i.i99, i32 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 327679, ptr %191, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i100) #8
  %193 = getelementptr inbounds [4 x i8], ptr %buf.i.i100, i32 0, i32 2
  %194 = ptrtoint ptr %buf.i.i100 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -29175, ptr %buf.i.i100, align 2
  %195 = ptrtoint ptr %193 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 2120, ptr %193, align 2
  %196 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %addr.i.i, align 2
  %198 = ptrtoint ptr %msg.i.i99 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %197, ptr %msg.i.i99, align 4
  %flags.i.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i99, i32 0, i32 1
  %199 = ptrtoint ptr %flags.i.i102 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %flags.i.i102, align 2
  %buf5.i.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i99, i32 0, i32 3
  %200 = ptrtoint ptr %buf5.i.i103 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %buf.i.i100, ptr %buf5.i.i103, align 4
  %201 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i105 = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %msg.i.i99, i32 noundef 1) #8
  %203 = call i32 @llvm.smin.i32(i32 %call.i.i105, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i100) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %cmp.i106 = icmp slt i32 %call.i.i105, 0
  br i1 %cmp.i106, label %do.body71.__mt9t112_mcu_write.exit112_crit_edge, label %if.end.i110

do.body71.__mt9t112_mcu_write.exit112_crit_edge:  ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt9t112_mcu_write.exit112

if.end.i110:                                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %add73 = add nuw nsw i32 %conv, 11
  %add75 = add nsw i32 %add73, %div
  %conv76 = trunc i32 %add75 to i16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i97) #8
  %204 = getelementptr inbounds i8, ptr %msg.i4.i97, i32 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 327679, ptr %204, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i98) #8
  %206 = getelementptr inbounds [4 x i8], ptr %buf.i5.i98, i32 0, i32 2
  %207 = call i16 @llvm.bswap.i16(i16 %conv76) #8
  %208 = ptrtoint ptr %buf.i5.i98 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 -28663, ptr %buf.i5.i98, align 2
  %209 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %207, ptr %206, align 2
  %210 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %addr.i.i, align 2
  %212 = ptrtoint ptr %msg.i4.i97 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %211, ptr %msg.i4.i97, align 4
  %flags.i7.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i97, i32 0, i32 1
  %213 = ptrtoint ptr %flags.i7.i107 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 0, ptr %flags.i7.i107, align 2
  %buf5.i9.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i97, i32 0, i32 3
  %214 = ptrtoint ptr %buf5.i9.i108 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %buf.i5.i98, ptr %buf5.i9.i108, align 4
  %215 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i109 = call i32 @i2c_transfer(ptr noundef %216, ptr noundef nonnull %msg.i4.i97, i32 noundef 1) #8
  %217 = call i32 @llvm.smin.i32(i32 %call.i11.i109, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i98) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i97) #8
  br label %__mt9t112_mcu_write.exit112

__mt9t112_mcu_write.exit112:                      ; preds = %if.end.i110, %do.body71.__mt9t112_mcu_write.exit112_crit_edge
  %retval.0.i111 = phi i32 [ %217, %if.end.i110 ], [ %203, %do.body71.__mt9t112_mcu_write.exit112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i111)
  %cmp78 = icmp slt i32 %retval.0.i111, 0
  br i1 %cmp78, label %__mt9t112_mcu_write.exit112.cleanup_crit_edge, label %do.body84

__mt9t112_mcu_write.exit112.cleanup_crit_edge:    ; preds = %__mt9t112_mcu_write.exit112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body84:                                        ; preds = %__mt9t112_mcu_write.exit112
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i115) #8
  %218 = getelementptr inbounds i8, ptr %msg.i.i115, i32 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 327679, ptr %218, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i116) #8
  %220 = getelementptr inbounds [4 x i8], ptr %buf.i.i116, i32 0, i32 2
  %221 = ptrtoint ptr %buf.i.i116 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 -29175, ptr %buf.i.i116, align 2
  %222 = ptrtoint ptr %220 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 132, ptr %220, align 2
  %223 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %addr.i.i, align 2
  %225 = ptrtoint ptr %msg.i.i115 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %224, ptr %msg.i.i115, align 4
  %flags.i.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i115, i32 0, i32 1
  %226 = ptrtoint ptr %flags.i.i118 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %flags.i.i118, align 2
  %buf5.i.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i115, i32 0, i32 3
  %227 = ptrtoint ptr %buf5.i.i119 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %buf.i.i116, ptr %buf5.i.i119, align 4
  %228 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i121 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %msg.i.i115, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i116) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i115) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %cmp.i122 = icmp slt i32 %call.i.i121, 0
  br i1 %cmp.i122, label %do.body84.cleanup_crit_edge, label %if.end.i126

do.body84.cleanup_crit_edge:                      ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i126:                                      ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i113) #8
  %230 = getelementptr inbounds i8, ptr %msg.i4.i113, i32 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 327679, ptr %230, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i114) #8
  %232 = getelementptr inbounds [4 x i8], ptr %buf.i5.i114, i32 0, i32 2
  %233 = ptrtoint ptr %buf.i5.i114 to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 -28663, ptr %buf.i5.i114, align 2
  %234 = ptrtoint ptr %232 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 1536, ptr %232, align 2
  %235 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %addr.i.i, align 2
  %237 = ptrtoint ptr %msg.i4.i113 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %236, ptr %msg.i4.i113, align 4
  %flags.i7.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i113, i32 0, i32 1
  %238 = ptrtoint ptr %flags.i7.i123 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 0, ptr %flags.i7.i123, align 2
  %buf5.i9.i124 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i113, i32 0, i32 3
  %239 = ptrtoint ptr %buf5.i9.i124 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %buf.i5.i114, ptr %buf5.i9.i124, align 4
  %240 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i125 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %msg.i4.i113, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i114) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i113) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i126, %do.body84.cleanup_crit_edge, %__mt9t112_mcu_write.exit112.cleanup_crit_edge, %__mt9t112_mcu_write.exit96.cleanup_crit_edge, %__mt9t112_mcu_write.exit80.cleanup_crit_edge, %__mt9t112_mcu_write.exit64.cleanup_crit_edge, %__mt9t112_mcu_write.exit48.cleanup_crit_edge, %__mt9t112_mcu_write.exit32.cleanup_crit_edge, %__mt9t112_mcu_write.exit16.cleanup_crit_edge, %__mt9t112_mcu_write.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt9t112_mcu_write(ptr nocapture noundef readonly %client, i16 noundef zeroext %command, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i5 = alloca [4 x i8], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 327679, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %command) #8
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -29175, ptr %buf.i, align 2
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %3, ptr %2, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
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
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf.i, ptr %buf5.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  %13 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #8
  %14 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 327679, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5) #8
  %16 = getelementptr inbounds [4 x i8], ptr %buf.i5, i32 0, i32 2
  %17 = call i16 @llvm.bswap.i16(i16 %data) #8
  %18 = ptrtoint ptr %buf.i5 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -28663, ptr %buf.i5, align 2
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %16, align 2
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i, align 2
  %22 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i7, align 2
  %buf5.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %24 = ptrtoint ptr %buf5.i9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i5, ptr %buf5.i9, align 4
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i11 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i4, i32 noundef 1) #8
  %27 = call i32 @llvm.smin.i32(i32 %call.i11, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.end ], [ %13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt9t112_reg_mask_set(ptr nocapture noundef readonly %client, i16 noundef zeroext %command, i16 noundef zeroext %mask, i16 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  %msg.i14 = alloca %struct.i2c_msg, align 4
  %buf.i15 = alloca [4 x i8], align 2
  %command.addr.i = alloca i16, align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf.i, align 2, !annotation !74
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !74
  %5 = tail call i16 @llvm.bswap.i16(i16 %command) #8
  %6 = ptrtoint ptr %command.addr.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %command.addr.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %0, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %command.addr.i, ptr %buf5.i, align 4
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %arrayidx7.i, align 4
  %flags10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags10.i, align 2
  %len12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %len12.i, align 4
  %buf14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf14.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %call.i to i16
  %19 = call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %neg = xor i16 %mask, -1
  %and = and i16 %19, %neg
  %and313 = and i16 %set, %mask
  %conv4 = or i16 %and, %and313
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14) #8
  %20 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 327679, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i15) #8
  %22 = getelementptr inbounds [4 x i8], ptr %buf.i15, i32 0, i32 2
  %23 = call i16 @llvm.bswap.i16(i16 %conv4) #8
  %24 = ptrtoint ptr %buf.i15 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %5, ptr %buf.i15, align 2
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %23, ptr %22, align 2
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr.i, align 2
  %28 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %msg.i14, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i17, align 2
  %buf5.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %30 = ptrtoint ptr %buf5.i19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i15, ptr %buf5.i19, align 4
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 8
  %call.i21 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i14, i32 noundef 1) #8
  %33 = call i32 @llvm.smin.i32(i32 %call.i21, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i15) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt9t112_mcu_mask_set(ptr nocapture noundef readonly %client, i16 noundef zeroext %command) unnamed_addr #2 align 64 {
entry:
  %msg.i4.i1 = alloca %struct.i2c_msg, align 4
  %buf.i5.i2 = alloca [4 x i8], align 2
  %msg.i.i3 = alloca %struct.i2c_msg, align 4
  %buf.i.i4 = alloca [4 x i8], align 2
  %command.addr.i.i = alloca i16, align 2
  %msg.i4.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i5.i = alloca [2 x i8], align 2
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [4 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %0 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 327679, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %command) #8
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -29175, ptr %buf.i.i, align 2
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %3, ptr %2, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr.i.i, align 2
  %8 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i.i, align 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf.i.i, ptr %buf5.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.addr.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i4.i) #8
  %13 = getelementptr inbounds i8, ptr %msg.i4.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i5.i) #8
  %15 = ptrtoint ptr %buf.i5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %buf.i5.i, align 2, !annotation !74
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i5.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !74
  %18 = ptrtoint ptr %command.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -28663, ptr %command.addr.i.i, align 2
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i.i, align 2
  %21 = ptrtoint ptr %msg.i4.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %msg.i4.i, align 4
  %flags.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i7.i, align 2
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %13, align 4
  %buf5.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf5.i9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %command.addr.i.i, ptr %buf5.i9.i, align 4
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i4.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %20, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i4.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i4.i, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %len12.i.i, align 4
  %buf14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i4.i, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %buf14.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i5.i, ptr %buf14.i.i, align 4
  %29 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i4.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i.i = icmp slt i32 %call.i11.i, 0
  %conv.i.i = trunc i32 %call.i11.i to i16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i5.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i4.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.addr.i.i) #8
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i3) #8
  %31 = getelementptr inbounds i8, ptr %msg.i.i3, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 327679, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i4) #8
  %33 = getelementptr inbounds [4 x i8], ptr %buf.i.i4, i32 0, i32 2
  %34 = ptrtoint ptr %buf.i.i4 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -29175, ptr %buf.i.i4, align 2
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %3, ptr %33, align 2
  %36 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr.i.i, align 2
  %38 = ptrtoint ptr %msg.i.i3 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %msg.i.i3, align 4
  %flags.i.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i3, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i.i6 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i.i6, align 2
  %buf5.i.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i3, i32 0, i32 3
  %40 = ptrtoint ptr %buf5.i.i7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i.i4, ptr %buf5.i.i7, align 4
  %41 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i9 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i.i3, i32 noundef 1) #8
  %43 = call i32 @llvm.smin.i32(i32 %call.i.i9, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i10 = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i10, label %if.end.cleanup_crit_edge, label %if.end.i14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i14:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %44 = and i16 %conv.i.i, -16385
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i1) #8
  %45 = getelementptr inbounds i8, ptr %msg.i4.i1, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 327679, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i5.i2) #8
  %47 = getelementptr inbounds [4 x i8], ptr %buf.i5.i2, i32 0, i32 2
  %48 = ptrtoint ptr %buf.i5.i2 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -28663, ptr %buf.i5.i2, align 2
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %44, ptr %47, align 2
  %50 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr.i.i, align 2
  %52 = ptrtoint ptr %msg.i4.i1 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %msg.i4.i1, align 4
  %flags.i7.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i1, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i7.i11 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i7.i11, align 2
  %buf5.i9.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i1, i32 0, i32 3
  %54 = ptrtoint ptr %buf5.i9.i12 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i5.i2, ptr %buf5.i9.i12, align 4
  %55 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i.i, align 8
  %call.i11.i13 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i4.i1, i32 noundef 1) #8
  %57 = call i32 @llvm.smin.i32(i32 %call.i11.i13, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i5.i2) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i14, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %57, %if.end.i14 ], [ %43, %if.end.cleanup_crit_edge ], [ %call.i11.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9t112_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %num_formats = getelementptr inbounds %struct.mt9t112_priv, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ult i32 %7, %9
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [6 x %struct.mt9t112_format], ptr @mt9t112_cfmts, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %code4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %12 = ptrtoint ptr %code4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9t112_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #6 align 64 {
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
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %width = getelementptr inbounds %struct.mt9t112_priv, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %8 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %format1, align 4
  %height = getelementptr inbounds %struct.mt9t112_priv, ptr %5, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height5, align 4
  %format6 = getelementptr inbounds %struct.mt9t112_priv, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %format6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format6, align 4
  %colorspace = getelementptr inbounds %struct.mt9t112_format, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %colorspace, align 4
  %colorspace7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %colorspace7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %colorspace7, align 4
  %17 = load ptr, ptr %format6, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %code9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %code9, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t112_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_formats = getelementptr inbounds %struct.mt9t112_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp39 = icmp sgt i32 %7, 0
  br i1 %cmp39, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %code3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %code3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code3, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.mt9t112_format], ptr @mt9t112_cfmts, i32 0, i32 %i.040
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp4 = icmp eq i32 %11, %9
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.if.then9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.040, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %7)
  %cmp8 = icmp eq i32 %i.0.lcssa, %7
  br i1 %cmp8, label %for.end.if.then9_crit_edge, label %if.else

for.end.if.then9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %for.end.if.then9_crit_edge, %for.inc.if.then9_crit_edge
  %code10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8198, ptr %code10, align 4
  br label %if.end14

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %colorspace12 = getelementptr [6 x %struct.mt9t112_format], ptr @mt9t112_cfmts, i32 0, i32 %i.0.lcssa, i32 1
  %13 = ptrtoint ptr %colorspace12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %colorspace12, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %.sink = phi i32 [ 7, %if.then9 ], [ %14, %if.else ]
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %15, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format1, i32 noundef 0, i32 noundef 2048, i32 noundef 0, ptr noundef %height, i32 noundef 0, i32 noundef 1536, i32 noundef 0, i32 noundef 0) #8
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field, align 4
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp15 = icmp eq i32 %19, 1
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %20 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %24 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %format1, align 4
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %code.i, align 4
  %num_formats.i.i = getelementptr inbounds %struct.mt9t112_priv, ptr %23, i32 0, i32 7
  %30 = ptrtoint ptr %num_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_formats.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp18.i.i = icmp sgt i32 %31, 0
  br i1 %cmp18.i.i, label %if.then16.for.body.i.i_crit_edge, label %if.then16.for.end.i.i_crit_edge

if.then16.for.end.i.i_crit_edge:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then16.for.body.i.i_crit_edge:                 ; preds = %if.then16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then16.for.body.i.i_crit_edge
  %i.019.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then16.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [6 x %struct.mt9t112_format], ptr @mt9t112_cfmts, i32 0, i32 %i.019.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %29)
  %cmp2.i.i = icmp eq i32 %33, %29
  br i1 %cmp2.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.inc.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %31
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then16.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.then16.for.end.i.i_crit_edge ], [ %i.019.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %31)
  %cmp4.i.i = icmp eq i32 %i.0.lcssa.i.i, %31
  br i1 %cmp4.i.i, label %for.end.i.i.cleanup_crit_edge, label %if.then.i

for.end.i.i.cleanup_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rect.sroa.7.0.frame.i.sroa_idx.i = getelementptr inbounds %struct.mt9t112_priv, ptr %23, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %rect.sroa.7.0.frame.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %25, ptr %rect.sroa.7.0.frame.i.sroa_idx.i, align 4
  %rect.sroa.9.0.frame.i.sroa_idx.i = getelementptr inbounds %struct.mt9t112_priv, ptr %23, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %rect.sroa.9.0.frame.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %27, ptr %rect.sroa.9.0.frame.i.sroa_idx.i, align 4
  tail call void @v4l_bound_align_image(ptr noundef %rect.sroa.7.0.frame.i.sroa_idx.i, i32 noundef 0, i32 noundef 2048, i32 noundef 0, ptr noundef %rect.sroa.9.0.frame.i.sroa_idx.i, i32 noundef 0, i32 noundef 1536, i32 noundef 0, i32 noundef 0) #8
  %add.ptr.i.i = getelementptr %struct.mt9t112_format, ptr @mt9t112_cfmts, i32 %i.0.lcssa.i.i
  %format.i.i = getelementptr inbounds %struct.mt9t112_priv, ptr %23, i32 0, i32 6
  %36 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i.i, ptr %format.i.i, align 4
  %colorspace.i = getelementptr %struct.mt9t112_format, ptr @mt9t112_cfmts, i32 %i.0.lcssa.i.i, i32 1
  %37 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %colorspace.i, align 4
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %15, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd_state, align 4
  %42 = call ptr @memcpy(ptr %41, ptr %format1, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then.i, %for.end.i.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ -22, %for.end.i.i.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9t112_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2048, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1536, ptr %height, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %r6 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %frame = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %r6, ptr %frame, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9t112_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef readonly %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %format = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %num_formats.i = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18.i = icmp sgt i32 %13, 0
  br i1 %cmp18.i, label %if.end.for.body.i_crit_edge, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x %struct.mt9t112_format], ptr @mt9t112_cfmts, i32 0, i32 %i.019.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp2.i = icmp eq i32 %15, %11
  br i1 %cmp2.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.for.end.i_crit_edge ], [ %i.019.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %13)
  %cmp4.i = icmp eq i32 %i.0.lcssa.i, %13
  br i1 %cmp4.i, label %for.end.i.cleanup_crit_edge, label %if.end6.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %frame.i = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %frame.i, ptr %r, i32 16)
  %width.i = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 3, i32 2
  %height.i = getelementptr inbounds %struct.mt9t112_priv, ptr %3, i32 0, i32 3, i32 3
  tail call void @v4l_bound_align_image(ptr noundef %width.i, i32 noundef 0, i32 noundef 2048, i32 noundef 0, ptr noundef %height.i, i32 noundef 0, i32 noundef 1536, i32 noundef 0, i32 noundef 0) #8
  %add.ptr.i = getelementptr %struct.mt9t112_format, ptr @mt9t112_cfmts, i32 %i.0.lcssa.i
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %format, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end6.i ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_mt9t112__294_1130_mt9t112_i2c_driver_init6, !1, !"__initcall__kmod_mt9t112__294_1130_mt9t112_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/mt9t112.c", i32 1130, i32 1}
!2 = !{ptr @__exitcall_mt9t112_i2c_driver_exit, !1, !"__exitcall_mt9t112_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/mt9t112.c", i32 1132, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/mt9t112.c", i32 1133, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/mt9t112.c", i32 1134, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/mt9t112.c", i32 1123, i32 11}
!12 = !{ptr @mt9t112_i2c_driver, !13, !"mt9t112_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/mt9t112.c", i32 1121, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/mt9t112.c", i32 1070, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt9t112_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt9t112_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/mt9t112.c", i32 1083, i32 41}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/mt9t112.c", i32 1087, i32 3}
!26 = !{ptr @mt9t112_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt9t112_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/mt9t112.c", i32 1091, i32 61}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/mt9t112.c", i32 1094, i32 3}
!32 = !{ptr @mt9t112_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mt9t112_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mt9t112_subdev_ops, !35, !"mt9t112_subdev_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/mt9t112.c", i32 1020, i32 37}
!36 = !{ptr @mt9t112_subdev_core_ops, !37, !"mt9t112_subdev_core_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/mt9t112.c", i32 783, i32 42}
!38 = !{ptr @mt9t112_subdev_video_ops, !39, !"mt9t112_subdev_video_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/mt9t112.c", i32 1005, i32 43}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/mt9t112.c", i32 835, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mt9t112_s_stream.__UNIQUE_ID_ddebug292, !41, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/mt9t112.c", i32 836, i32 2}
!46 = !{ptr @mt9t112_s_stream.__UNIQUE_ID_ddebug293, !45, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!47 = !{ptr @mt9t112_subdev_pad_ops, !48, !"mt9t112_subdev_pad_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/mt9t112.c", i32 1009, i32 41}
!49 = !{ptr @mt9t112_cfmts, !50, !"mt9t112_cfmts", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/mt9t112.c", i32 106, i32 36}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/mt9t112.c", i32 1042, i32 13}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/mt9t112.c", i32 1050, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mt9t112_camera_probe._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mt9t112_camera_probe._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/mt9t112.c", i32 1055, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mt9t112_camera_probe._entry.20, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mt9t112_camera_probe._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mt9t112_id, !64, !"mt9t112_id", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/mt9t112.c", i32 1115, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
!76 = !{i64 2148748455, i64 2148748460, i64 2148748473, i64 2148748517, i64 2148748551, i64 2148748572}
