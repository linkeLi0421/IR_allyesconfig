; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ml86v7667.c_pt.bc'
source_filename = "../drivers/media/i2c/ml86v7667.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ml86v7667_priv = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.116, i16, i16, i16, [10 x i16] }
%union.anon.116 = type { i16 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_ml86v7667__292_443_ml86v7667_i2c_driver_init6 = internal global ptr @ml86v7667_i2c_driver_init, section ".initcall6.init", align 4
@ml86v7667_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ml86v7667_probe, ptr @ml86v7667_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ml86v7667_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ml86v7667_i2c_driver_exit = internal global ptr @ml86v7667_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [71 x i8] c"ml86v7667.description=OKI Semiconductor ML86V7667 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [34 x i8] c"ml86v7667.author=Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [43 x i8] c"ml86v7667.file=drivers/media/i2c/ml86v7667\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"ml86v7667.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ml86v7667\00", [22 x i8] zeroinitializer }, align 32
@ml86v7667_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ml86v7667\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ml86v7667_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ml86v7667_subdev_core_ops, ptr null, ptr null, ptr @ml86v7667_subdev_video_ops, ptr null, ptr null, ptr null, ptr @ml86v7667_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ml86v7667_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ml86v7667:376:(&priv->hdl)->_lock\00", [62 x i8] zeroinitializer }, align 32
@ml86v7667_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ml86v7667_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ml86v7667_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ml86v7667_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/i2c/ml86v7667.c\00", [34 x i8] zeroinitializer }, align 32
@ml86v7667_probe._entry_ptr = internal global ptr @ml86v7667_probe._entry, section ".printk_index", align 4
@ml86v7667_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s %d-%04x: failed to probe @ 0x%02x (%s)\0A\00", [51 x i8] zeroinitializer }, align 32
@ml86v7667_probe._entry_ptr.7 = internal global ptr @ml86v7667_probe._entry.5, section ".printk_index", align 4
@ml86v7667_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ml86v7667_g_register, ptr @ml86v7667_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ml86v7667_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr @ml86v7667_g_std, ptr @ml86v7667_s_std, ptr null, ptr null, ptr @ml86v7667_querystd, ptr null, ptr null, ptr @ml86v7667_g_input_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ml86v7667_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ml86v7667_enum_mbus_code, ptr null, ptr null, ptr @ml86v7667_fill_fmt, ptr @ml86v7667_fill_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ml86v7667_get_mbus_config, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963777, i64 9963779, i64 9963790, i64 9963791, i64 9963803, i64 9963806, i64 9963812]
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"ml86v7667_i2c_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 434, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 436, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"ml86v7667_id\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 428, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"ml86v7667_subdev_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 311, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 376, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"ml86v7667_ctrl_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 286, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 405, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 412, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"ml86v7667_subdev_core_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 304, i32 42 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"ml86v7667_subdev_video_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 290, i32 43 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"ml86v7667_subdev_pad_ops\00", align 1
@___asan_gen_.54 = private constant [33 x i8] c"../drivers/media/i2c/ml86v7667.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 297, i32 41 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_ml86v7667_i2c_driver_exit, ptr @__initcall__kmod_ml86v7667__292_443_ml86v7667_i2c_driver_init6, ptr @ml86v7667_i2c_driver_exit, ptr @ml86v7667_probe._entry, ptr @ml86v7667_probe._entry.5, ptr @ml86v7667_probe._entry_ptr, ptr @ml86v7667_probe._entry_ptr.7, ptr @ml86v7667_i2c_driver, ptr @.str, ptr @ml86v7667_id, ptr @ml86v7667_subdev_ops, ptr @ml86v7667_probe._key, ptr @.str.1, ptr @ml86v7667_ctrl_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ml86v7667_subdev_core_ops, ptr @ml86v7667_subdev_video_ops, ptr @ml86v7667_subdev_pad_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml86v7667_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ml86v7667_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ml86v7667_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ml86v7667_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ml86v7667_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml86v7667_probe(ptr noundef %client, ptr nocapture noundef readnone %did) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup62_crit_edge

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 392, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup62_crit_edge, label %if.end4

if.end.cleanup62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end4:                                          ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ml86v7667_subdev_ops) #6
  %hdl = getelementptr inbounds %struct.ml86v7667_priv, ptr %call.i, i32 0, i32 1
  %call5 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 8, ptr noundef nonnull @ml86v7667_probe._key, ptr noundef nonnull @.str.1) #6
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963776, i64 noundef -64, i64 noundef 63, i64 noundef 1, i64 noundef 0) #6
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963777, i64 noundef -8, i64 noundef 7, i64 noundef 1, i64 noundef 0) #6
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963812, i64 noundef -32, i64 noundef 31, i64 noundef 1, i64 noundef 0) #6
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #6
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963790, i64 noundef -4, i64 noundef 3, i64 noundef 1, i64 noundef 0) #6
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963791, i64 noundef -4, i64 noundef 3, i64 noundef 1, i64 noundef 0) #6
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ml86v7667_ctrl_ops, i32 noundef 9963806, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hdl, ptr %ctrl_handler, align 8
  %error = getelementptr inbounds %struct.ml86v7667_priv, ptr %call.i, i32 0, i32 1, i32 9
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool25.not = icmp eq i32 %8, 0
  br i1 %tobool25.not, label %if.end27, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end4
  %call29 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #6
  %call30 = tail call fastcc i32 @ml86v7667_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.end, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr, align 2
  %conv = zext i16 %18 to i32
  %name41 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %12, i32 noundef %16, i32 noundef %conv, i32 noundef %conv, ptr noundef %name41) #9
  br label %cleanup62

cleanup:                                          ; preds = %if.end27.cleanup_crit_edge, %if.end4.cleanup_crit_edge
  %ret.0 = phi i32 [ %8, %if.end4.cleanup_crit_edge ], [ %call30, %if.end27.cleanup_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %call.i) #6
  %driver50 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %driver50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver50, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %nr.i95 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %nr.i95 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr.i95, align 4
  %addr54 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %27 = ptrtoint ptr %addr54 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr54, align 2
  %conv55 = zext i16 %28 to i32
  %name59 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 12
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %22, i32 noundef %26, i32 noundef %conv55, i32 noundef %conv55, ptr noundef %name59) #9
  br label %cleanup62

cleanup62:                                        ; preds = %cleanup, %do.end, %if.end.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ 0, %do.end ], [ -5, %entry.cleanup62_crit_edge ], [ -12, %if.end.cleanup62_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml86v7667_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hdl = getelementptr inbounds %struct.ml86v7667_priv, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ml86v7667_init(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ml86v7667_mask_set.exit_crit_edge, label %if.end.i

entry.ml86v7667_mask_set.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ml86v7667_mask_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = trunc i32 %call.i to i8
  %3 = and i8 %2, 62
  %conv4.i = or i8 %3, 1
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv4.i) #6
  br label %ml86v7667_mask_set.exit

ml86v7667_mask_set.exit:                          ; preds = %if.end.i, %entry.ml86v7667_mask_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ %call.i, %entry.ml86v7667_mask_set.exit_crit_edge ]
  %call.i38 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i39 = icmp slt i32 %call.i38, 0
  br i1 %cmp.i39, label %ml86v7667_mask_set.exit.ml86v7667_mask_set.exit45_crit_edge, label %if.end.i43

ml86v7667_mask_set.exit.ml86v7667_mask_set.exit45_crit_edge: ; preds = %ml86v7667_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ml86v7667_mask_set.exit45

if.end.i43:                                       ; preds = %ml86v7667_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  %4 = trunc i32 %call.i38 to i8
  %conv4.i41 = or i8 %4, -128
  %call5.i42 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 32, i8 noundef zeroext %conv4.i41) #6
  br label %ml86v7667_mask_set.exit45

ml86v7667_mask_set.exit45:                        ; preds = %if.end.i43, %ml86v7667_mask_set.exit.ml86v7667_mask_set.exit45_crit_edge
  %retval.0.i44 = phi i32 [ %call5.i42, %if.end.i43 ], [ %call.i38, %ml86v7667_mask_set.exit.ml86v7667_mask_set.exit45_crit_edge ]
  %call.i46 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i47 = icmp slt i32 %call.i46, 0
  br i1 %cmp.i47, label %ml86v7667_mask_set.exit45.ml86v7667_mask_set.exit53_crit_edge, label %if.end.i51

ml86v7667_mask_set.exit45.ml86v7667_mask_set.exit53_crit_edge: ; preds = %ml86v7667_mask_set.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %ml86v7667_mask_set.exit53

if.end.i51:                                       ; preds = %ml86v7667_mask_set.exit45
  call void @__sanitizer_cov_trace_pc() #8
  %5 = trunc i32 %call.i46 to i8
  %conv4.i49 = or i8 %5, 14
  %call5.i50 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 31, i8 noundef zeroext %conv4.i49) #6
  br label %ml86v7667_mask_set.exit53

ml86v7667_mask_set.exit53:                        ; preds = %if.end.i51, %ml86v7667_mask_set.exit45.ml86v7667_mask_set.exit53_crit_edge
  %retval.0.i52 = phi i32 [ %call5.i50, %if.end.i51 ], [ %call.i46, %ml86v7667_mask_set.exit45.ml86v7667_mask_set.exit53_crit_edge ]
  %call.i54 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i55 = icmp slt i32 %call.i54, 0
  br i1 %cmp.i55, label %ml86v7667_mask_set.exit53.ml86v7667_mask_set.exit61_crit_edge, label %if.end.i59

ml86v7667_mask_set.exit53.ml86v7667_mask_set.exit61_crit_edge: ; preds = %ml86v7667_mask_set.exit53
  call void @__sanitizer_cov_trace_pc() #8
  br label %ml86v7667_mask_set.exit61

if.end.i59:                                       ; preds = %ml86v7667_mask_set.exit53
  call void @__sanitizer_cov_trace_pc() #8
  %6 = trunc i32 %call.i54 to i8
  %conv4.i57 = or i8 %6, -128
  %call5.i58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext %conv4.i57) #6
  br label %ml86v7667_mask_set.exit61

ml86v7667_mask_set.exit61:                        ; preds = %if.end.i59, %ml86v7667_mask_set.exit53.ml86v7667_mask_set.exit61_crit_edge
  %retval.0.i60 = phi i32 [ %call5.i58, %if.end.i59 ], [ %call.i54, %ml86v7667_mask_set.exit53.ml86v7667_mask_set.exit61_crit_edge ]
  %call.i62 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.i63 = icmp slt i32 %call.i62, 0
  br i1 %cmp.i63, label %ml86v7667_mask_set.exit61.ml86v7667_mask_set.exit68_crit_edge, label %if.end.i66

ml86v7667_mask_set.exit61.ml86v7667_mask_set.exit68_crit_edge: ; preds = %ml86v7667_mask_set.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %ml86v7667_mask_set.exit68

if.end.i66:                                       ; preds = %ml86v7667_mask_set.exit61
  call void @__sanitizer_cov_trace_pc() #8
  %7 = trunc i32 %call.i62 to i8
  %8 = and i8 %7, 127
  %call5.i65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext %8) #6
  br label %ml86v7667_mask_set.exit68

ml86v7667_mask_set.exit68:                        ; preds = %if.end.i66, %ml86v7667_mask_set.exit61.ml86v7667_mask_set.exit68_crit_edge
  %retval.0.i67 = phi i32 [ %call5.i65, %if.end.i66 ], [ %call.i62, %ml86v7667_mask_set.exit61.ml86v7667_mask_set.exit68_crit_edge ]
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %ml86v7667_mask_set.exit68.cleanup_crit_edge, label %if.end

ml86v7667_mask_set.exit68.cleanup_crit_edge:      ; preds = %ml86v7667_mask_set.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ml86v7667_mask_set.exit68
  %or = or i32 %retval.0.i44, %retval.0.i
  %or4 = or i32 %or, %retval.0.i52
  %or6 = or i32 %or4, %retval.0.i60
  %or8 = or i32 %or6, %retval.0.i67
  %and = and i32 %call9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i64 63744, i64 16713471
  %std = getelementptr inbounds %struct.ml86v7667_priv, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %cond, ptr %std, align 8
  %call.i69 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %if.end.ml86v7667_mask_set.exit75_crit_edge, label %if.end.i73

if.end.ml86v7667_mask_set.exit75_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ml86v7667_mask_set.exit75

if.end.i73:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = trunc i32 %call.i69 to i8
  %11 = and i8 %10, 127
  %call5.i72 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %11) #6
  br label %ml86v7667_mask_set.exit75

ml86v7667_mask_set.exit75:                        ; preds = %if.end.i73, %if.end.ml86v7667_mask_set.exit75_crit_edge
  %retval.0.i74 = phi i32 [ %call5.i72, %if.end.i73 ], [ %call.i69, %if.end.ml86v7667_mask_set.exit75_crit_edge ]
  %or11 = or i32 %or8, %retval.0.i74
  %12 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %std, align 8
  %call.i76 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp.i77 = icmp slt i32 %call.i76, 0
  br i1 %cmp.i77, label %ml86v7667_mask_set.exit75.ml86v7667_mask_set.exit83_crit_edge, label %if.end.i81

ml86v7667_mask_set.exit75.ml86v7667_mask_set.exit83_crit_edge: ; preds = %ml86v7667_mask_set.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %ml86v7667_mask_set.exit83

if.end.i81:                                       ; preds = %ml86v7667_mask_set.exit75
  call void @__sanitizer_cov_trace_pc() #8
  %and13 = and i64 %13, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  %conv = select i1 %tobool14.not, i8 32, i8 0
  %14 = trunc i32 %call.i76 to i8
  %15 = and i8 %14, -57
  %conv4.i79 = or i8 %conv, %15
  %call5.i80 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv4.i79) #6
  br label %ml86v7667_mask_set.exit83

ml86v7667_mask_set.exit83:                        ; preds = %if.end.i81, %ml86v7667_mask_set.exit75.ml86v7667_mask_set.exit83_crit_edge
  %retval.0.i82 = phi i32 [ %call5.i80, %if.end.i81 ], [ %call.i76, %ml86v7667_mask_set.exit75.ml86v7667_mask_set.exit83_crit_edge ]
  %or17 = or i32 %or11, %retval.0.i82
  br label %cleanup

cleanup:                                          ; preds = %ml86v7667_mask_set.exit83, %ml86v7667_mask_set.exit68.cleanup_crit_edge
  %retval.0 = phi i32 [ %or17, %ml86v7667_mask_set.exit83 ], [ %call9, %ml86v7667_mask_set.exit68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml86v7667_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %3 to i8
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv410 = zext i32 %call2 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv410, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 1, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml86v7667_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %3 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  %conv2 = trunc i64 %5 to i8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv2) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ml86v7667_g_std(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %std) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %std1 = getelementptr inbounds %struct.ml86v7667_priv, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std1, align 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml86v7667_s_std(ptr nocapture noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %ml86v7667_mask_set.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ml86v7667_mask_set.exit:                          ; preds = %entry
  %and = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %conv = select i1 %tobool.not, i8 32, i8 0
  %2 = trunc i32 %call.i to i8
  %3 = and i8 %2, -57
  %conv4.i = or i8 %3, %conv
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp slt i32 %call5.i, 0
  br i1 %cmp, label %ml86v7667_mask_set.exit.cleanup_crit_edge, label %if.end

ml86v7667_mask_set.exit.cleanup_crit_edge:        ; preds = %ml86v7667_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ml86v7667_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  %std5 = getelementptr inbounds %struct.ml86v7667_priv, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %std5 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %std, ptr %std5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ml86v7667_mask_set.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call5.i, %ml86v7667_mask_set.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml86v7667_querystd(ptr nocapture noundef readonly %sd, ptr nocapture noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = and i32 %call1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool4.not, i64 63744, i64 16713471
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %and5 = and i64 %3, %cond
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %storemerge = phi i64 [ %and5, %if.then2 ], [ 0, %if.end.if.end6_crit_edge ]
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml86v7667_g_input_status(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = lshr i32 %call1, 2
  %2 = and i32 %and, 2
  %3 = xor i32 %2, 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ml86v7667_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8200, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ml86v7667_fill_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8200, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %field, align 4
  %5 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 720, ptr %format1, align 4
  %std = getelementptr inbounds %struct.ml86v7667_priv, ptr %sd, i32 0, i32 2
  %6 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %std, align 8
  %and = and i64 %7, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool2.not, i32 576, i32 480
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ml86v7667_get_mbus_config(ptr nocapture noundef readnone %sd, i32 noundef %pad, ptr nocapture noundef writeonly %cfg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 321, ptr %flags, align 4
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %cfg, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml86v7667_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -44
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb3
    i32 9963812, label %sw.bb7
    i32 9963779, label %sw.bb11
    i32 9963790, label %sw.bb15
    i32 9963791, label %sw.bb20
    i32 9963803, label %sw.bb25
    i32 9963806, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %8 to i8
  %and312.i = and i8 %conv, 127
  %9 = trunc i32 %call.i to i8
  %10 = and i8 %9, -128
  %conv4.i = or i8 %10, %and312.i
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext %conv4.i) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val4, align 4
  %call.i54 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i55 = icmp slt i32 %call.i54, 0
  br i1 %cmp.i55, label %sw.bb3.sw.epilog_crit_edge, label %if.end.i60

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i60:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = trunc i32 %12 to i8
  %and312.i57 = and i8 %conv5, 15
  %13 = trunc i32 %call.i54 to i8
  %14 = and i8 %13, -16
  %conv4.i58 = or i8 %14, %and312.i57
  %call5.i59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %conv4.i58) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val8, align 4
  %call.i63 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i64 = icmp slt i32 %call.i63, 0
  br i1 %cmp.i64, label %sw.bb7.sw.epilog_crit_edge, label %if.end.i68

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i68:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %.tr53 = trunc i32 %16 to i8
  %conv9 = shl i8 %.tr53, 2
  %17 = trunc i32 %call.i63 to i8
  %18 = and i8 %17, 3
  %conv4.i66 = or i8 %18, %conv9
  %call5.i67 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 21, i8 noundef zeroext %conv4.i66) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val12, align 4
  %call.i71 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp slt i32 %call.i71, 0
  br i1 %cmp.i72, label %sw.bb11.sw.epilog_crit_edge, label %if.end.i76

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i76:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %conv13 = trunc i32 %20 to i8
  %call5.i75 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 22, i8 noundef zeroext %conv13) #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val16, align 4
  %call.i79 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp.i80 = icmp slt i32 %call.i79, 0
  br i1 %cmp.i80, label %sw.bb15.sw.epilog_crit_edge, label %if.end.i85

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i85:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %.tr52 = trunc i32 %22 to i8
  %conv18 = shl i8 %.tr52, 3
  %and312.i82 = and i8 %conv18, 56
  %23 = trunc i32 %call.i79 to i8
  %24 = and i8 %23, -57
  %conv4.i83 = or i8 %and312.i82, %24
  %call5.i84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 20, i8 noundef zeroext %conv4.i83) #6
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val21, align 4
  %call.i88 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp.i89 = icmp slt i32 %call.i88, 0
  br i1 %cmp.i89, label %sw.bb20.sw.epilog_crit_edge, label %if.end.i94

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i94:                                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %conv23 = trunc i32 %26 to i8
  %and312.i91 = and i8 %conv23, 7
  %27 = trunc i32 %call.i88 to i8
  %28 = and i8 %27, -8
  %conv4.i92 = or i8 %28, %and312.i91
  %call5.i93 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 20, i8 noundef zeroext %conv4.i92) #6
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val26, align 4
  %call.i97 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp.i98 = icmp slt i32 %call.i97, 0
  br i1 %cmp.i98, label %sw.bb25.sw.epilog_crit_edge, label %if.end.i102

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i102:                                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %.tr51 = trunc i32 %30 to i8
  %conv28 = shl i8 %.tr51, 7
  %31 = trunc i32 %call.i97 to i8
  %32 = and i8 %31, 127
  %conv4.i100 = or i8 %32, %conv28
  %call5.i101 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 12, i8 noundef zeroext %conv4.i100) #6
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %val31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val31, align 4
  %call.i105 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp.i106 = icmp slt i32 %call.i105, 0
  br i1 %cmp.i106, label %sw.bb30.sw.epilog_crit_edge, label %if.end.i111

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i111:                                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  %.tr = trunc i32 %34 to i8
  %conv33 = shl i8 %.tr, 6
  %and312.i108 = and i8 %conv33, 64
  %35 = trunc i32 %call.i105 to i8
  %36 = and i8 %35, -65
  %conv4.i109 = or i8 %and312.i108, %36
  %call5.i110 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 18, i8 noundef zeroext %conv4.i109) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i111, %sw.bb30.sw.epilog_crit_edge, %if.end.i102, %sw.bb25.sw.epilog_crit_edge, %if.end.i94, %sw.bb20.sw.epilog_crit_edge, %if.end.i85, %sw.bb15.sw.epilog_crit_edge, %if.end.i76, %sw.bb11.sw.epilog_crit_edge, %if.end.i68, %sw.bb7.sw.epilog_crit_edge, %if.end.i60, %sw.bb3.sw.epilog_crit_edge, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call5.i, %if.end.i ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %call5.i59, %if.end.i60 ], [ %call.i54, %sw.bb3.sw.epilog_crit_edge ], [ %call5.i67, %if.end.i68 ], [ %call.i63, %sw.bb7.sw.epilog_crit_edge ], [ %call5.i75, %if.end.i76 ], [ %call.i71, %sw.bb11.sw.epilog_crit_edge ], [ %call5.i84, %if.end.i85 ], [ %call.i79, %sw.bb15.sw.epilog_crit_edge ], [ %call5.i93, %if.end.i94 ], [ %call.i88, %sw.bb20.sw.epilog_crit_edge ], [ %call5.i101, %if.end.i102 ], [ %call.i97, %sw.bb25.sw.epilog_crit_edge ], [ %call5.i110, %if.end.i111 ], [ %call.i105, %sw.bb30.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_ml86v7667__292_443_ml86v7667_i2c_driver_init6, !1, !"__initcall__kmod_ml86v7667__292_443_ml86v7667_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ml86v7667.c", i32 443, i32 1}
!2 = !{ptr @__exitcall_ml86v7667_i2c_driver_exit, !1, !"__exitcall_ml86v7667_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ml86v7667.c", i32 445, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ml86v7667.c", i32 446, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ml86v7667.c", i32 447, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ml86v7667.c", i32 436, i32 11}
!12 = !{ptr @ml86v7667_i2c_driver, !13, !"ml86v7667_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ml86v7667.c", i32 434, i32 26}
!14 = !{ptr @ml86v7667_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ml86v7667.c", i32 376, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/ml86v7667.c", i32 405, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ml86v7667_probe._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @ml86v7667_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/ml86v7667.c", i32 412, i32 2}
!25 = !{ptr @ml86v7667_probe._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ml86v7667_probe._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ml86v7667_subdev_ops, !28, !"ml86v7667_subdev_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/ml86v7667.c", i32 311, i32 37}
!29 = !{ptr @ml86v7667_subdev_core_ops, !30, !"ml86v7667_subdev_core_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/ml86v7667.c", i32 304, i32 42}
!31 = !{ptr @ml86v7667_subdev_video_ops, !32, !"ml86v7667_subdev_video_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/ml86v7667.c", i32 290, i32 43}
!33 = !{ptr @ml86v7667_subdev_pad_ops, !34, !"ml86v7667_subdev_pad_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ml86v7667.c", i32 297, i32 41}
!35 = !{ptr @ml86v7667_ctrl_ops, !36, !"ml86v7667_ctrl_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ml86v7667.c", i32 286, i32 35}
!37 = !{ptr @ml86v7667_id, !38, !"ml86v7667_id", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ml86v7667.c", i32 428, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
