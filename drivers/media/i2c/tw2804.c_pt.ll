; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tw2804.c_pt.bc'
source_filename = "../drivers/media/i2c/tw2804.c"
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tw2804 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_tw2804__293_433_tw2804_driver_init6 = internal global ptr @tw2804_driver_init, section ".initcall6.init", align 4
@tw2804_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tw2804_probe, ptr @tw2804_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tw2804_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tw2804_driver_exit = internal global ptr @tw2804_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file294 = internal constant [37 x i8] c"tw2804.file=drivers/media/i2c/tw2804\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"tw2804.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [49 x i8] c"tw2804.description=TW2804/TW2802 V4L2 i2c driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [31 x i8] c"tw2804.author=Micronas USA Inc\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw2804\00", [25 x i8] zeroinitializer }, align 32
@tw2804_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tw2804\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tw2804_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tw2804_core_ops, ptr null, ptr null, ptr @tw2804_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tw2804_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tw2804:366:(&state->hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@tw2804_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @tw2804_g_volatile_ctrl, ptr null, ptr @tw2804_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tw2804_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tw2804_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/tw2804.c\00", [37 x i8] zeroinitializer }, align 32
@tw2804_probe._entry_ptr = internal global ptr @tw2804_probe._entry, section ".printk_index", align 4
@tw2804_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @tw2804_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tw2804_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @tw2804_s_video_routing, ptr null, ptr null, ptr @tw2804_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tw2804_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: Standard: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tw2804_log_status\00", [46 x i8] zeroinitializer }, align 32
@tw2804_log_status._entry_ptr = internal global ptr @tw2804_log_status._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"60 Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"50 Hz\00", [26 x i8] zeroinitializer }, align 32
@tw2804_log_status._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Channel: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@tw2804_log_status._entry_ptr.11 = internal global ptr @tw2804_log_status._entry.9, section ".printk_index", align 4
@tw2804_log_status._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.4, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: Input: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@tw2804_log_status._entry_ptr.14 = internal global ptr @tw2804_log_status._entry.12, section ".printk_index", align 4
@tw2804_s_video_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 284, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"channel %d is not between 1 and 4!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tw2804_s_video_routing\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tw2804_s_video_routing._entry_ptr = internal global ptr @tw2804_s_video_routing._entry, section ".printk_index", align 4
@tw2804_s_video_routing.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.19, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"initializing TW2804 channel %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tw2804_s_video_routing._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.4, i32 293, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error initializing TW2804 global registers\0A\00", [52 x i8] zeroinitializer }, align 32
@tw2804_s_video_routing._entry_ptr.22 = internal global ptr @tw2804_s_video_routing._entry.20, section ".printk_index", align 4
@channel_registers = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\01\C4\02\A5\03 \04\D0\05 \06\D0\07\88\08 \09\07\0A\F0\0B\07\0C\F0\0D@\0E\D2\0F\80\10\80\11\80\12\80\13\1F\14\00\15\00\16\00\17\00\18\FF\19\FF\1A\FF\1B\FF\1C\FF\1D\FF\1E\FF\1F\FF \07!\07\22\00#\91$Q%\03&\00'\00(\00)\00*\00+\00,\00-\00.\00/\000\001\002\003\004\005\006\007\00\FF\FF", [48 x i8] zeroinitializer }, align 32
@tw2804_s_video_routing._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.4, i32 299, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error initializing TW2804 channel %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tw2804_s_video_routing._entry_ptr.25 = internal global ptr @tw2804_s_video_routing._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963790, i64 9963791, i64 9963795, i64 9963812]
@__sancov_gen_cov_switch_values.26 = internal global [12 x i64] [i64 10, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963790, i64 9963791, i64 9963794, i64 9963795, i64 9963806, i64 9963812]
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"tw2804_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 424, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 426, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"tw2804_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 418, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"tw2804_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 341, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 366, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"tw2804_ctrl_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 327, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 402, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"tw2804_core_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 337, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"tw2804_video_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 332, i32 43 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 144, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 146, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 147, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 283, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 288, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 292, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"channel_registers\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 47, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [30 x i8] c"../drivers/media/i2c/tw2804.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 297, i32 4 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_tw2804_driver_exit, ptr @__initcall__kmod_tw2804__293_433_tw2804_driver_init6, ptr @tw2804_driver_exit, ptr @tw2804_log_status._entry, ptr @tw2804_log_status._entry.12, ptr @tw2804_log_status._entry.9, ptr @tw2804_log_status._entry_ptr, ptr @tw2804_log_status._entry_ptr.11, ptr @tw2804_log_status._entry_ptr.14, ptr @tw2804_probe._entry, ptr @tw2804_probe._entry_ptr, ptr @tw2804_s_video_routing._entry, ptr @tw2804_s_video_routing._entry.20, ptr @tw2804_s_video_routing._entry.23, ptr @tw2804_s_video_routing._entry_ptr, ptr @tw2804_s_video_routing._entry_ptr.22, ptr @tw2804_s_video_routing._entry_ptr.25, ptr @tw2804_driver, ptr @.str, ptr @tw2804_id, ptr @tw2804_ops, ptr @tw2804_probe._key, ptr @.str.1, ptr @tw2804_ctrl_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tw2804_core_ops, ptr @tw2804_video_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @channel_registers, ptr @.str.24], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_log_status._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_log_status._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_s_video_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_s_video_routing._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_registers to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw2804_s_video_routing._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tw2804_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tw2804_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tw2804_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tw2804_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw2804_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 388, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @tw2804_ops) #5
  %channel = getelementptr inbounds %struct.tw2804, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %channel, align 4
  %bf.set = or i8 %bf.load, -64
  store i8 %bf.set, ptr %channel, align 4
  %norm = getelementptr inbounds %struct.tw2804, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %norm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 45056, ptr %norm, align 4
  %hdl = getelementptr inbounds %struct.tw2804, ptr %call.i, i32 0, i32 1
  %call6 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 10, ptr noundef nonnull @tw2804_probe._key, ptr noundef nonnull @.str.1) #5
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963806, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end4.if.end23_crit_edge, label %if.then22

if.end4.if.end23_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then22:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call20, i32 0, i32 20
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 128
  store i32 %or, ptr %flags, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end4.if.end23_crit_edge
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963812, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %flags28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call25, i32 0, i32 20
  %10 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags28, align 4
  %or29 = or i32 %11, 128
  store i32 %or29, ptr %flags28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  %call32 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 122) #5
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end30.if.end37_crit_edge, label %if.then34

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %flags35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call32, i32 0, i32 20
  %12 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags35, align 4
  %or36 = or i32 %13, 128
  store i32 %or36, ptr %flags35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge
  %call39 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tw2804_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 122) #5
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end37.if.end44_crit_edge, label %if.then41

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %flags42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call39, i32 0, i32 20
  %14 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags42, align 4
  %or43 = or i32 %15, 128
  store i32 %or43, ptr %flags42, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end37.if.end44_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.tw2804, ptr %call.i, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool47.not = icmp eq i32 %18, 0
  br i1 %tobool47.not, label %do.end, label %if.then48

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  br label %cleanup

do.end:                                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter1, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr, align 2
  %conv = zext i16 %28 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name58 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 12
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %22, i32 noundef %26, i32 noundef %conv, i32 noundef %shl, ptr noundef %name58) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then48, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then48 ], [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw2804_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  %hdl = getelementptr inbounds %struct.tw2804, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw2804_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %norm = getelementptr inbounds %struct.tw2804, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %norm, align 4
  %2 = and i32 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef nonnull %cond) #8
  %channel = getelementptr inbounds %struct.tw2804, ptr %sd, i32 0, i32 2
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %channel, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv8 = zext i8 %bf.lshr to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %conv8) #8
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load16 = load i8, ptr %channel, align 4
  %bf.lshr17 = lshr i8 %bf.load16, 5
  %bf.clear = and i8 %bf.lshr17, 1
  %conv18 = zext i8 %bf.clear to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %conv18) #8
  %call20 = tail call i32 @v4l2_ctrl_subdev_log_status(ptr noundef %sd) #5
  ret i32 %call20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw2804_s_video_routing(ptr nocapture noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %config)
  %tobool.not = icmp eq i32 %config, 0
  br i1 %tobool.not, label %entry.if.end56_crit_edge, label %land.lhs.true

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

land.lhs.true:                                    ; preds = %entry
  %sub = add i32 %config, -1
  %channel = getelementptr inbounds %struct.tw2804, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %channel, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp.not = icmp eq i32 %sub, %conv
  br i1 %cmp.not, label %land.lhs.true.if.end56_crit_edge, label %if.then

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %config)
  %cmp3 = icmp ugt i32 %config, 4
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %config) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %conv7 = trunc i32 %sub to i8
  %bf.shl = shl nuw i8 %conv7, 6
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set, ptr %channel, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw2804_s_video_routing.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw2804_s_video_routing, %if.then15)) #5
          to label %do.end23 [label %if.then15], !srcloc !79

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load18 = load i8, ptr %channel, align 4
  %bf.lshr19 = lshr i8 %bf.load18, 6
  %conv20 = zext i8 %bf.lshr19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw2804_s_video_routing.__UNIQUE_ID_ddebug292, ptr noundef %dev16, ptr noundef nonnull @.str.19, i32 noundef %conv20) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then15, %if.end
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load25 = load i8, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load25)
  %cmp28 = icmp ult i8 %bf.load25, 64
  br i1 %cmp28, label %for.body.i.preheader, label %do.end23.if.end39_crit_edge

do.end23.if.end39_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

for.body.i.preheader:                             ; preds = %do.end23
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 57, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %for.body.i.preheader.do.end37_crit_edge, label %for.cond.i

for.body.i.preheader.do.end37_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

for.cond.i:                                       ; preds = %for.body.i.preheader
  %call.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 58, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp7.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp7.i.1, label %for.cond.i.do.end37_crit_edge, label %for.cond.i.1

for.cond.i.do.end37_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

for.cond.i.1:                                     ; preds = %for.cond.i
  %call.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 59, i8 noundef zeroext -124) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp7.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp7.i.2, label %for.cond.i.1.do.end37_crit_edge, label %for.cond.i.2

for.cond.i.1.do.end37_crit_edge:                  ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %call.i.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 60, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp7.i.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp7.i.3, label %for.cond.i.2.do.end37_crit_edge, label %for.cond.i.3

for.cond.i.2.do.end37_crit_edge:                  ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %call.i.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 61, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp7.i.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp7.i.4, label %for.cond.i.3.do.end37_crit_edge, label %for.cond.i.4

for.cond.i.3.do.end37_crit_edge:                  ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %call.i.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 62, i8 noundef zeroext -126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp7.i.5 = icmp slt i32 %call.i.5, 0
  br i1 %cmp7.i.5, label %for.cond.i.4.do.end37_crit_edge, label %for.cond.i.5

for.cond.i.4.do.end37_crit_edge:                  ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %call.i.6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 63, i8 noundef zeroext -126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %cmp7.i.6 = icmp slt i32 %call.i.6, 0
  br i1 %cmp7.i.6, label %for.cond.i.5.do.end37_crit_edge, label %for.cond.i.6

for.cond.i.5.do.end37_crit_edge:                  ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

for.cond.i.6:                                     ; preds = %for.cond.i.5
  %call.i.7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 120, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7)
  %cmp7.i.7 = icmp slt i32 %call.i.7, 0
  br i1 %cmp7.i.7, label %for.cond.i.6.do.end37_crit_edge, label %for.cond.i.6.if.end39_crit_edge

for.cond.i.6.if.end39_crit_edge:                  ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

for.cond.i.6.do.end37_crit_edge:                  ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

do.end37:                                         ; preds = %for.cond.i.6.do.end37_crit_edge, %for.cond.i.5.do.end37_crit_edge, %for.cond.i.4.do.end37_crit_edge, %for.cond.i.3.do.end37_crit_edge, %for.cond.i.2.do.end37_crit_edge, %for.cond.i.1.do.end37_crit_edge, %for.cond.i.do.end37_crit_edge, %for.body.i.preheader.do.end37_crit_edge
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end39:                                         ; preds = %for.cond.i.6.if.end39_crit_edge, %do.end23.if.end39_crit_edge
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load41 = load i8, ptr %channel, align 4
  %bf.lshr42 = and i8 %bf.load41, -64
  br label %for.body.i140

for.cond.i134:                                    ; preds = %for.body.i140
  %add9.i131 = add nuw nsw i32 %i.018.i135, 2
  %arrayidx.i132 = getelementptr i8, ptr @channel_registers, i32 %add9.i131
  %7 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i132, align 1
  %cmp.not.i133 = icmp eq i8 %8, -1
  br i1 %cmp.not.i133, label %for.cond.i134.if.end56_crit_edge, label %for.cond.i134.for.body.i140_crit_edge

for.cond.i134.for.body.i140_crit_edge:            ; preds = %for.cond.i134
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i140

for.cond.i134.if.end56_crit_edge:                 ; preds = %for.cond.i134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

for.body.i140:                                    ; preds = %for.cond.i134.for.body.i140_crit_edge, %if.end39
  %9 = phi i8 [ %8, %for.cond.i134.for.body.i140_crit_edge ], [ 1, %if.end39 ]
  %i.018.i135 = phi i32 [ %add9.i131, %for.cond.i134.for.body.i140_crit_edge ], [ 0, %if.end39 ]
  %or.i = or i8 %9, %bf.lshr42
  %add.i136 = or i32 %i.018.i135, 1
  %arrayidx6.i137 = getelementptr i8, ptr @channel_registers, i32 %add.i136
  %10 = ptrtoint ptr %arrayidx6.i137 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6.i137, align 1
  %call.i138 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %or.i, i8 noundef zeroext %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp7.i139 = icmp slt i32 %call.i138, 0
  br i1 %cmp7.i139, label %do.end49, label %for.cond.i134

do.end49:                                         ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #7
  %dev50 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load52 = load i8, ptr %channel, align 4
  %bf.lshr53 = lshr i8 %bf.load52, 6
  %conv54 = zext i8 %bf.lshr53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.24, i32 noundef %conv54) #8
  br label %cleanup

if.end56:                                         ; preds = %for.cond.i134.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %entry.if.end56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %input)
  %cmp57 = icmp ugt i32 %input, 1
  br i1 %cmp57, label %if.end56.cleanup_crit_edge, label %if.end60

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  %input61 = getelementptr inbounds %struct.tw2804, ptr %sd, i32 0, i32 2
  %13 = ptrtoint ptr %input61 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load62 = load i8, ptr %input61, align 4
  %bf.lshr63 = lshr i8 %bf.load62, 5
  %bf.clear64 = and i8 %bf.lshr63, 1
  %conv65 = zext i8 %bf.clear64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv65, i32 %input)
  %cmp66 = icmp eq i32 %conv65, %input
  br i1 %cmp66, label %if.end60.cleanup_crit_edge, label %if.end69

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end69:                                         ; preds = %if.end60
  %bf.lshr72 = and i8 %bf.load62, -64
  %or.i144 = or i8 %bf.lshr72, 34
  %call.i145 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %or.i144) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i145)
  %cmp74 = icmp sgt i32 %call.i145, -1
  br i1 %cmp74, label %if.end86, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end86:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %cmp77 = icmp eq i32 %input, 0
  %and = and i32 %call.i145, 251
  %masksel = select i1 %cmp77, i32 0, i32 4
  %reg.0 = or i32 %and, %masksel
  %conv81 = trunc i32 %reg.0 to i8
  %14 = ptrtoint ptr %input61 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load83 = load i8, ptr %input61, align 4
  %bf.lshr84 = and i8 %bf.load83, -64
  %or.i147 = or i8 %bf.lshr84, 34
  %call.i148 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %or.i147, i8 noundef zeroext %conv81) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i148)
  %cmp87 = icmp sgt i32 %call.i148, -1
  br i1 %cmp87, label %if.then89, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %conv90 = trunc i32 %input to i8
  %15 = ptrtoint ptr %input61 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load92 = load i8, ptr %input61, align 4
  %bf.value93 = shl nuw nsw i8 %conv90, 5
  %bf.shl94 = and i8 %bf.value93, 32
  %bf.clear95 = and i8 %bf.load92, -33
  %bf.set96 = or i8 %bf.clear95, %bf.shl94
  store i8 %bf.set96, ptr %input61, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.end86.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %do.end49, %do.end37, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end37 ], [ -5, %do.end49 ], [ 0, %if.then89 ], [ -22, %if.end56.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ %call.i148, %if.end86.cleanup_crit_edge ], [ %call.i145, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw2804_s_std(ptr nocapture noundef %sd, i64 noundef %norm) #2 align 64 {
entry:
  %regs = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %and = and i64 %norm, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %regs) #5
  %2 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 1
  %3 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 2
  %4 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 3
  %5 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 4
  %6 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 5
  %7 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 6
  %8 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 7
  %9 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 8
  %10 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 9
  %11 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 10
  %12 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 11
  %13 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 12
  %14 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 13
  %15 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 14
  %16 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 15
  %17 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 16
  %18 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 17
  %19 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 18
  %20 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 19
  %21 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 20
  %22 = getelementptr inbounds [22 x i8], ptr %regs, i32 0, i32 21
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %regs, align 1
  %conv = select i1 %tobool.not, i8 -124, i8 -60
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %2, align 1
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %3, align 1
  %conv8 = select i1 %tobool.not, i8 4, i8 7
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv8, ptr %4, align 1
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 10, ptr %5, align 1
  %conv14 = select i1 %tobool.not, i8 32, i8 -16
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv14, ptr %6, align 1
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 11, ptr %7, align 1
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv8, ptr %8, align 1
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 12, ptr %9, align 1
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv14, ptr %10, align 1
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 13, ptr %11, align 1
  %conv32 = select i1 %tobool.not, i8 74, i8 64
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv32, ptr %12, align 1
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 22, ptr %13, align 1
  %conv38 = select i1 %tobool.not, i8 64, i8 0
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv38, ptr %14, align 1
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 23, ptr %15, align 1
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv38, ptr %16, align 1
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 32, ptr %17, align 1
  %conv50 = select i1 %tobool.not, i8 15, i8 7
  %40 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv50, ptr %18, align 1
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 33, ptr %19, align 1
  %42 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv50, ptr %20, align 1
  %43 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %21, align 1
  %44 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %22, align 1
  %channel = getelementptr inbounds %struct.tw2804, ptr %sd, i32 0, i32 2
  %45 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %channel, align 4
  %bf.lshr = and i8 %bf.load, -64
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %add9.i = add i32 %i.018.i, 2
  %arrayidx.i = getelementptr i8, ptr %regs, i32 %add9.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %cmp.not.i = icmp eq i8 %47, -1
  br i1 %cmp.not.i, label %for.cond.i.write_regs.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.write_regs.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_regs.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %48 = phi i8 [ %47, %for.cond.i.for.body.i_crit_edge ], [ 1, %entry ]
  %i.018.i = phi i32 [ %add9.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry ]
  %or.i = or i8 %48, %bf.lshr
  %add.i = or i32 %i.018.i, 1
  %arrayidx6.i = getelementptr i8, ptr %regs, i32 %add.i
  %49 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx6.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %or.i, i8 noundef zeroext %50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %for.body.i.write_regs.exit_crit_edge, label %for.cond.i

for.body.i.write_regs.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_regs.exit

write_regs.exit:                                  ; preds = %for.body.i.write_regs.exit_crit_edge, %for.cond.i.write_regs.exit_crit_edge
  %conv60 = trunc i64 %norm to i32
  %norm61 = getelementptr inbounds %struct.tw2804, ptr %sd, i32 0, i32 3
  %51 = ptrtoint ptr %norm61 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv60, ptr %norm61, align 4
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %regs) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw2804_g_volatile_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963795, label %entry.cleanup.sink.split_crit_edge
    i32 9963812, label %sw.bb3
    i32 9963791, label %sw.bb6
    i32 9963790, label %sw.bb9
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb9, %sw.bb6, %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 63, %sw.bb9 ], [ 62, %sw.bb6 ], [ 61, %sw.bb3 ], [ 60, %entry.cleanup.sink.split_crit_edge ]
  %call.i23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %.sink) #5
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i23, ptr %val11, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw2804_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963794, label %sw.bb
    i32 9963806, label %sw.bb14
    i32 9963795, label %sw.bb35
    i32 9963812, label %sw.bb39
    i32 9963791, label %sw.bb43
    i32 9963790, label %sw.bb47
    i32 9963776, label %sw.bb51
    i32 9963777, label %sw.bb58
    i32 9963778, label %sw.bb65
    i32 9963779, label %sw.bb72
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel = getelementptr i8, ptr %1, i32 184
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %channel, align 4
  %bf.lshr = and i8 %bf.load, -64
  %or.i = or i8 %bf.lshr, 2
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4 = icmp eq i32 %9, 0
  %and = and i32 %call.i, 127
  %masksel = select i1 %cmp4, i32 0, i32 128
  %reg.0 = or i32 %masksel, %and
  %conv9 = trunc i32 %reg.0 to i8
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load11 = load i8, ptr %channel, align 4
  %bf.lshr12 = and i8 %bf.load11, -64
  %or.i124 = or i8 %bf.lshr12, 2
  %call.i125 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %or.i124, i8 noundef zeroext %conv9) #5
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %channel16 = getelementptr i8, ptr %1, i32 184
  %11 = ptrtoint ptr %channel16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load17 = load i8, ptr %channel16, align 4
  %bf.lshr18 = and i8 %bf.load17, -64
  %or.i127 = or i8 %bf.lshr18, 20
  %call.i128 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %or.i127) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp20 = icmp slt i32 %call.i128, 0
  br i1 %cmp20, label %sw.bb14.cleanup_crit_edge, label %if.end23

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  %and24 = and i32 %call.i128, 252
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp26 = icmp eq i32 %13, 0
  %cond = select i1 %cmp26, i32 2, i32 3
  %or28 = or i32 %cond, %and24
  %conv30 = trunc i32 %or28 to i8
  %14 = ptrtoint ptr %channel16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load32 = load i8, ptr %channel16, align 4
  %bf.lshr33 = and i8 %bf.load32, -64
  %or.i130 = or i8 %bf.lshr33, 20
  %call.i131 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %or.i130, i8 noundef zeroext %conv30) #5
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val36, align 4
  %conv37 = trunc i32 %16 to i8
  %call.i132 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 60, i8 noundef zeroext %conv37) #5
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val40, align 4
  %conv41 = trunc i32 %18 to i8
  %call.i133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 61, i8 noundef zeroext %conv41) #5
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val44, align 4
  %conv45 = trunc i32 %20 to i8
  %call.i134 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 62, i8 noundef zeroext %conv45) #5
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val48, align 4
  %conv49 = trunc i32 %22 to i8
  %call.i135 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 63, i8 noundef zeroext %conv49) #5
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val52, align 4
  %conv53 = trunc i32 %24 to i8
  %channel54 = getelementptr i8, ptr %1, i32 184
  %25 = ptrtoint ptr %channel54 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load55 = load i8, ptr %channel54, align 4
  %bf.lshr56 = and i8 %bf.load55, -64
  %or.i137 = or i8 %bf.lshr56, 18
  %call.i138 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %or.i137, i8 noundef zeroext %conv53) #5
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val59 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val59, align 4
  %conv60 = trunc i32 %27 to i8
  %channel61 = getelementptr i8, ptr %1, i32 184
  %28 = ptrtoint ptr %channel61 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load62 = load i8, ptr %channel61, align 4
  %bf.lshr63 = and i8 %bf.load62, -64
  %or.i140 = or i8 %bf.lshr63, 17
  %call.i141 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %or.i140, i8 noundef zeroext %conv60) #5
  br label %cleanup

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val66 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val66, align 4
  %conv67 = trunc i32 %30 to i8
  %channel68 = getelementptr i8, ptr %1, i32 184
  %31 = ptrtoint ptr %channel68 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load69 = load i8, ptr %channel68, align 4
  %bf.lshr70 = and i8 %bf.load69, -64
  %or.i143 = or i8 %bf.lshr70, 16
  %call.i144 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %or.i143, i8 noundef zeroext %conv67) #5
  br label %cleanup

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val73 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val73, align 4
  %conv74 = trunc i32 %33 to i8
  %channel75 = getelementptr i8, ptr %1, i32 184
  %34 = ptrtoint ptr %channel75 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load76 = load i8, ptr %channel75, align 4
  %bf.lshr77 = and i8 %bf.load76, -64
  %or.i146 = or i8 %bf.lshr77, 15
  %call.i147 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %or.i146, i8 noundef zeroext %conv74) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb72, %sw.bb65, %sw.bb58, %sw.bb51, %sw.bb47, %sw.bb43, %sw.bb39, %sw.bb35, %if.end23, %sw.bb14.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i147, %sw.bb72 ], [ %call.i144, %sw.bb65 ], [ %call.i141, %sw.bb58 ], [ %call.i138, %sw.bb51 ], [ %call.i135, %sw.bb47 ], [ %call.i134, %sw.bb43 ], [ %call.i133, %sw.bb39 ], [ %call.i132, %sw.bb35 ], [ %call.i131, %if.end23 ], [ %call.i125, %if.end ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i128, %sw.bb14.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_tw2804__293_433_tw2804_driver_init6, !1, !"__initcall__kmod_tw2804__293_433_tw2804_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tw2804.c", i32 433, i32 1}
!2 = !{ptr @__exitcall_tw2804_driver_exit, !1, !"__exitcall_tw2804_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file294, !4, !"__UNIQUE_ID_file294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/tw2804.c", i32 435, i32 1}
!5 = !{ptr @__UNIQUE_ID_license295, !4, !"__UNIQUE_ID_license295", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description296, !7, !"__UNIQUE_ID_description296", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/tw2804.c", i32 436, i32 1}
!8 = !{ptr @__UNIQUE_ID_author297, !9, !"__UNIQUE_ID_author297", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/tw2804.c", i32 437, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/tw2804.c", i32 426, i32 11}
!12 = !{ptr @tw2804_driver, !13, !"tw2804_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/tw2804.c", i32 424, i32 26}
!14 = !{ptr @tw2804_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/tw2804.c", i32 366, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/tw2804.c", i32 402, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tw2804_probe._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @tw2804_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @tw2804_ops, !24, !"tw2804_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/tw2804.c", i32 341, i32 37}
!25 = !{ptr @tw2804_core_ops, !26, !"tw2804_core_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/tw2804.c", i32 337, i32 42}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/tw2804.c", i32 144, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tw2804_log_status._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @tw2804_log_status._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/tw2804.c", i32 146, i32 2}
!36 = !{ptr @tw2804_log_status._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tw2804_log_status._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/tw2804.c", i32 147, i32 2}
!40 = !{ptr @tw2804_log_status._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tw2804_log_status._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @tw2804_video_ops, !43, !"tw2804_video_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/tw2804.c", i32 332, i32 43}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/tw2804.c", i32 283, i32 4}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tw2804_s_video_routing._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @tw2804_s_video_routing._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/tw2804.c", i32 288, i32 3}
!53 = !{ptr @tw2804_s_video_routing.__UNIQUE_ID_ddebug292, !52, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/tw2804.c", i32 292, i32 4}
!56 = !{ptr @tw2804_s_video_routing._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tw2804_s_video_routing._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/tw2804.c", i32 297, i32 4}
!60 = !{ptr @tw2804_s_video_routing._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tw2804_s_video_routing._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"global_registers", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/tw2804.c", i32 35, i32 17}
!64 = !{ptr @channel_registers, !65, !"channel_registers", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/tw2804.c", i32 47, i32 17}
!66 = !{ptr @tw2804_ctrl_ops, !67, !"tw2804_ctrl_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/tw2804.c", i32 327, i32 35}
!68 = !{ptr @tw2804_id, !69, !"tw2804_id", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/tw2804.c", i32 418, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148962017, i64 2148962022, i64 2148962035, i64 2148962079, i64 2148962113, i64 2148962134}
