; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/bt819.c_pt.bc'
source_filename = "../drivers/media/i2c/bt819.c"
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timing = type { i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.bt819 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, [32 x i8], i64, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [53 x i8] c"bt819.description=Brooktree-819 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [39 x i8] c"bt819.author=Mike Bernson & Dave Perks\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [35 x i8] c"bt819.file=drivers/media/i2c/bt819\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [18 x i8] c"bt819.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [12 x i8] c"bt819.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [25 x i8] c"bt819.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [35 x i8] c"bt819.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_bt819__298_478_bt819_driver_init6 = internal global ptr @bt819_driver_init, section ".initcall6.init", align 4
@bt819_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bt819_probe, ptr @bt819_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bt819_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bt819_driver_exit = internal global ptr @bt819_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bt819\00", [26 x i8] zeroinitializer }, align 32
@bt819_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bt819a\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bt817a\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bt815a\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bt819_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @bt819_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bt819a\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bt817a\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bt815a\00", [25 x i8] zeroinitializer }, align 32
@bt819_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: unknown chip version 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bt819_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/media/i2c/bt819.c\00", [38 x i8] zeroinitializer }, align 32
@bt819_probe._entry_ptr = internal global ptr @bt819_probe._entry, section ".printk_index", align 4
@bt819_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s %d-%04x: %s found @ 0x%x (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@bt819_probe._entry_ptr.9 = internal global ptr @bt819_probe._entry.7, section ".printk_index", align 4
@bt819_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: init status %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bt819_probe._entry_ptr.12 = internal global ptr @bt819_probe._entry.10, section ".printk_index", align 4
@bt819_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bt819:429:(&decoder->hdl)->_lock\00", [63 x i8] zeroinitializer }, align 32
@bt819_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @bt819_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@bt819_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @bt819_s_routing, ptr null, ptr null, ptr @bt819_s_std, ptr null, ptr null, ptr @bt819_querystd, ptr null, ptr null, ptr @bt819_g_input_status, ptr @bt819_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bt819_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: set input %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bt819_s_routing\00", [16 x i8] zeroinitializer }, align 32
@bt819_s_routing._entry_ptr = internal global ptr @bt819_s_routing._entry, section ".printk_index", align 4
@bt819_s_routing._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.6, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: no notify found!\0A\00", [40 x i8] zeroinitializer }, align 32
@bt819_s_routing._entry_ptr.18 = internal global ptr @bt819_s_routing._entry.16, section ".printk_index", align 4
@bt819_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: set norm %llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bt819_s_std\00", [20 x i8] zeroinitializer }, align 32
@bt819_s_std._entry_ptr = internal global ptr @bt819_s_std._entry, section ".printk_index", align 4
@bt819_s_std._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.20, ptr @.str.6, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bt819_s_std._entry_ptr.22 = internal global ptr @bt819_s_std._entry.21, section ".printk_index", align 4
@timing_data = internal constant { [2 x %struct.timing], [48 x i8] } { [2 x %struct.timing] [%struct.timing { i32 840, i32 20, i32 623, i32 1, i32 1284, i32 0 }, %struct.timing { i32 834, i32 20, i32 523, i32 1, i32 248, i32 0 }], [48 x i8] zeroinitializer }, align 32
@bt819_s_std._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.6, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: unsupported norm %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@bt819_s_std._entry_ptr.25 = internal global ptr @bt819_s_std._entry.23, section ".printk_index", align 4
@bt819_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: get status %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bt819_status\00", [19 x i8] zeroinitializer }, align 32
@bt819_status._entry_ptr = internal global ptr @bt819_status._entry, section ".printk_index", align 4
@bt819_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: enable output %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bt819_s_stream\00", [17 x i8] zeroinitializer }, align 32
@bt819_s_stream._entry_ptr = internal global ptr @bt819_s_stream._entry, section ".printk_index", align 4
@bt819_init.init = internal global { [44 x i8], [52 x i8] } { [44 x i8] c"\01Y\02\00\03\12\04\16\05\E0\06\80\07\D0\08\00\09\F8\0A\00\0B0\0C\D8\0D\FE\0E\B4\0F\00\12\04\13 \14\00\16\07\18h\19]\1A\80", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 96, i64 112]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779]
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 33, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"bt819_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 469, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 471, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"bt819_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 461, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"bt819_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 377, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 404, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 407, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 410, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 413, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 418, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 427, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 429, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"bt819_ctrl_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 365, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"bt819_video_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 369, i32 43 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 289, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 295, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 240, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 243, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"timing_data\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 70, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 264, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 221, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 317, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.146 = private constant [29 x i8] c"../drivers/media/i2c/bt819.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 140, i32 23 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_bt819_driver_exit, ptr @__initcall__kmod_bt819__298_478_bt819_driver_init6, ptr @__param_debug, ptr @bt819_driver_exit, ptr @bt819_probe._entry, ptr @bt819_probe._entry.10, ptr @bt819_probe._entry.7, ptr @bt819_probe._entry_ptr, ptr @bt819_probe._entry_ptr.12, ptr @bt819_probe._entry_ptr.9, ptr @bt819_s_routing._entry, ptr @bt819_s_routing._entry.16, ptr @bt819_s_routing._entry_ptr, ptr @bt819_s_routing._entry_ptr.18, ptr @bt819_s_std._entry, ptr @bt819_s_std._entry.21, ptr @bt819_s_std._entry.23, ptr @bt819_s_std._entry_ptr, ptr @bt819_s_std._entry_ptr.22, ptr @bt819_s_std._entry_ptr.25, ptr @bt819_s_stream._entry, ptr @bt819_s_stream._entry_ptr, ptr @bt819_status._entry, ptr @bt819_status._entry_ptr, ptr @debug, ptr @bt819_driver, ptr @.str, ptr @bt819_id, ptr @bt819_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @bt819_probe._key, ptr @.str.13, ptr @bt819_ctrl_ops, ptr @bt819_video_ops, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @timing_data, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @bt819_init.init], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_s_routing._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_s_std._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timing_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_s_std._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_init.init to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bt819_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bt819_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bt819_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @bt819_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt819_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %block_data.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 432, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @bt819_ops) #5
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 23) #5
  %8 = trunc i32 %call1.i to i8
  %trunc = and i8 %8, -16
  %9 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.body [
    i8 112, label %if.end3.do.end18_crit_edge
    i8 96, label %sw.bb6
    i8 32, label %sw.bb7
  ]

if.end3.do.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

sw.bb6:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

sw.bb7:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

do.body:                                          ; preds = %if.end3
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp sgt i32 %10, 0
  br i1 %cmp8, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name11 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name11, i32 noundef %call1.i) #8
  br label %cleanup

do.end18:                                         ; preds = %sw.bb7, %sw.bb6, %if.end3.do.end18_crit_edge
  %name.0 = phi ptr [ @.str.3, %sw.bb7 ], [ @.str.2, %sw.bb6 ], [ @.str.1, %if.end3.do.end18_crit_edge ]
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr, align 2
  %conv = zext i16 %20 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name27 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %14, i32 noundef %18, i32 noundef %conv, ptr noundef nonnull %name.0, i32 noundef %shl, ptr noundef %name27) #8
  %norm = getelementptr inbounds %struct.bt819, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 45056, ptr %norm, align 8
  %input = getelementptr inbounds %struct.bt819, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %input, align 8
  %enable = getelementptr inbounds %struct.bt819, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %enable, align 4
  store i8 35, ptr getelementptr inbounds ([44 x i8], ptr @bt819_init.init, i32 0, i32 5), align 1
  store i8 1, ptr getelementptr inbounds ([44 x i8], ptr @bt819_init.init, i32 0, i32 7), align 1
  store i8 11, ptr getelementptr inbounds ([44 x i8], ptr @bt819_init.init, i32 0, i32 9), align 1
  store i8 20, ptr getelementptr inbounds ([44 x i8], ptr @bt819_init.init, i32 0, i32 11), align 1
  store i8 66, ptr getelementptr inbounds ([44 x i8], ptr @bt819_init.init, i32 0, i32 13), align 1
  store i8 0, ptr getelementptr inbounds ([44 x i8], ptr @bt819_init.init, i32 0, i32 15), align 1
  store i8 -8, ptr getelementptr inbounds ([44 x i8], ptr @bt819_init.init, i32 0, i32 17), align 1
  store i8 93, ptr getelementptr inbounds ([44 x i8], ptr @bt819_init.init, i32 0, i32 41), align 1
  %24 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.bt819, ptr %call.i, i32 0, i32 2, i32 31
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx.i.i, align 1
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 31, i8 noundef zeroext 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #5
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter.i.i, align 8
  %algo.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %algo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %algo.i.i.i.i, align 8
  %functionality.i.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %functionality.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %functionality.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %35(ptr noundef %31) #5
  %and.i.i.i = and i32 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.end18.while.body23.i.i_crit_edge, label %if.then.i.i

do.end18.while.body23.i.i_crit_edge:              ; preds = %do.end18
  br label %while.body23.i.i

if.then.i.i:                                      ; preds = %do.end18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_data.i.i) #5
  %36 = call ptr @memset(ptr %block_data.i.i, i32 255, i32 32)
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %if.then.i.i
  %len.addr.02.i.i = phi i32 [ 44, %if.then.i.i ], [ %sub.i.i, %do.end.i.i.while.body.i.i_crit_edge ]
  %data.addr.01.i.i = phi ptr [ @bt819_init.init, %if.then.i.i ], [ %add.ptr.i.i, %do.end.i.i.while.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %data.addr.01.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data.addr.01.i.i, align 1
  %39 = ptrtoint ptr %block_data.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %block_data.i.i, align 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.lhs.true.i.i.do.body.i.i_crit_edge, %while.body.i.i
  %data.addr.1.i.i = phi ptr [ %data.addr.01.i.i, %while.body.i.i ], [ %add.ptr.i.i, %land.lhs.true.i.i.do.body.i.i_crit_edge ]
  %len.addr.1.i.i = phi i32 [ %len.addr.02.i.i, %while.body.i.i ], [ %sub.i.i, %land.lhs.true.i.i.do.body.i.i_crit_edge ]
  %reg.0.i.i = phi i8 [ %38, %while.body.i.i ], [ %inc5.i.i, %land.lhs.true.i.i.do.body.i.i_crit_edge ]
  %block_len.0.i.i = phi i32 [ 1, %while.body.i.i ], [ %inc7.i.i, %land.lhs.true.i.i.do.body.i.i_crit_edge ]
  %arrayidx3.i.i = getelementptr i8, ptr %data.addr.1.i.i, i32 1
  %40 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx3.i.i, align 1
  %idxprom.i.i = zext i8 %reg.0.i.i to i32
  %arrayidx6.i.i = getelementptr %struct.bt819, ptr %call.i, i32 0, i32 2, i32 %idxprom.i.i
  %42 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx6.i.i, align 1
  %inc7.i.i = add nuw nsw i32 %block_len.0.i.i, 1
  %arrayidx8.i.i = getelementptr [32 x i8], ptr %block_data.i.i, i32 0, i32 %block_len.0.i.i
  %43 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %arrayidx8.i.i, align 1
  %sub.i.i = add i32 %len.addr.1.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp9.i.i = icmp ugt i32 %sub.i.i, 1
  br i1 %cmp9.i.i, label %land.lhs.true.i.i, label %do.end.thread.i.i

do.end.thread.i.i:                                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %block_data.i.i, i32 noundef %inc7.i.i, i16 noundef zeroext 0) #5
  br label %while.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data.addr.1.i.i, i32 2
  %inc5.i.i = add i8 %reg.0.i.i, 1
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %inc5.i.i)
  %cmp12.i.i = icmp eq i8 %45, %inc5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %block_len.0.i.i)
  %cmp14.i.i = icmp ult i32 %block_len.0.i.i, 31
  %or.cond.i.i = select i1 %cmp12.i.i, i1 %cmp14.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.do.body.i.i_crit_edge, label %do.end.i.i

land.lhs.true.i.i.do.body.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %block_data.i.i, i32 noundef %inc7.i.i, i16 noundef zeroext 0) #5
  %cmp17.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp17.i.i, label %do.end.i.i.while.body.i.i_crit_edge, label %do.end.i.i.while.end.i.i_crit_edge

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.end.thread.i.i
  %call.i10.i.i = phi i32 [ %call.i7.i.i, %do.end.thread.i.i ], [ %call.i.i.i, %do.end.i.i.while.end.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_data.i.i) #5
  br label %bt819_init.exit

while.body23.i.i:                                 ; preds = %while.body23.i.i.while.body23.i.i_crit_edge, %do.end18.while.body23.i.i_crit_edge
  %len.addr.24.i.i = phi i32 [ %sub30.i.i, %while.body23.i.i.while.body23.i.i_crit_edge ], [ 44, %do.end18.while.body23.i.i_crit_edge ]
  %data.addr.23.i.i = phi ptr [ %incdec.ptr24.i.i, %while.body23.i.i.while.body23.i.i_crit_edge ], [ @bt819_init.init, %do.end18.while.body23.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %data.addr.23.i.i, i32 1
  %46 = ptrtoint ptr %data.addr.23.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data.addr.23.i.i, align 1
  %48 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.i.i, align 1
  %50 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i, align 4
  %idxprom.i.i.i = zext i8 %47 to i32
  %arrayidx.i.i.i = getelementptr %struct.bt819, ptr %call.i, i32 0, i32 2, i32 %idxprom.i.i.i
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %arrayidx.i.i.i, align 1
  %call2.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext %47, i8 noundef zeroext %49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp26.i.i = icmp slt i32 %call2.i.i.i, 0
  %incdec.ptr24.i.i = getelementptr i8, ptr %data.addr.23.i.i, i32 2
  %sub30.i.i = add nsw i32 %len.addr.24.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30.i.i)
  %cmp21.not.i.i = icmp eq i32 %sub30.i.i, 0
  %or.cond5.i.i = select i1 %cmp26.i.i, i1 true, i1 %cmp21.not.i.i
  br i1 %or.cond5.i.i, label %while.body23.i.i.bt819_init.exit_crit_edge, label %while.body23.i.i.while.body23.i.i_crit_edge

while.body23.i.i.while.body23.i.i_crit_edge:      ; preds = %while.body23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body23.i.i

while.body23.i.i.bt819_init.exit_crit_edge:       ; preds = %while.body23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bt819_init.exit

bt819_init.exit:                                  ; preds = %while.body23.i.i.bt819_init.exit_crit_edge, %while.end.i.i
  %ret.3.i.i = phi i32 [ %call.i10.i.i, %while.end.i.i ], [ %call2.i.i.i, %while.body23.i.i.bt819_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i.i)
  %cmp31 = icmp slt i32 %ret.3.i.i, 0
  br i1 %cmp31, label %do.body34, label %bt819_init.exit.if.end48_crit_edge

bt819_init.exit.if.end48_crit_edge:               ; preds = %bt819_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

do.body34:                                        ; preds = %bt819_init.exit
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp35 = icmp sgt i32 %53, 0
  br i1 %cmp35, label %do.end40, label %do.body34.if.end48_crit_edge

do.body34.if.end48_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %name42 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name42, i32 noundef %ret.3.i.i) #8
  br label %if.end48

if.end48:                                         ; preds = %do.end40, %do.body34.if.end48_crit_edge, %bt819_init.exit.if.end48_crit_edge
  %hdl = getelementptr inbounds %struct.bt819, ptr %call.i, i32 0, i32 1
  %call50 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 4, ptr noundef nonnull @bt819_probe._key, ptr noundef nonnull @.str.13) #5
  %call52 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @bt819_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #5
  %call54 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @bt819_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 511, i64 noundef 1, i64 noundef 216) #5
  %call56 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @bt819_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 511, i64 noundef 1, i64 noundef 254) #5
  %call58 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @bt819_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #5
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %54 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.bt819, ptr %call.i, i32 0, i32 1, i32 9
  %55 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool61.not = icmp eq i32 %56, 0
  br i1 %tobool61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  br label %cleanup

if.end66:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %call68 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then62, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %56, %if.then62 ], [ 0, %if.end66 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %do.end ], [ -19, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt819_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  %hdl = getelementptr inbounds %struct.bt819, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt819_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %input) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %input)
  %cmp5 = icmp ugt i32 %input, 7
  br i1 %cmp5, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %1 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %v4l2_dev, align 4
  %cmp8 = icmp eq ptr %2, null
  br i1 %cmp8, label %if.end7.do.end14_crit_edge, label %lor.lhs.false

if.end7.do.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

lor.lhs.false:                                    ; preds = %if.end7
  %notify = getelementptr inbounds %struct.v4l2_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %notify, align 4
  %cmp10 = icmp eq ptr %4, null
  br i1 %cmp10, label %lor.lhs.false.do.end14_crit_edge, label %lor.lhs.false.if.end19_crit_edge

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.end14:                                         ; preds = %lor.lhs.false.do.end14_crit_edge, %if.end7.do.end14_crit_edge
  %name16 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name16) #8
  br label %if.end19

if.end19:                                         ; preds = %do.end14, %lor.lhs.false.if.end19_crit_edge
  %input20 = getelementptr inbounds %struct.bt819, ptr %sd, i32 0, i32 4
  %5 = ptrtoint ptr %input20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %input)
  %cmp21.not = icmp eq i32 %6, %input
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  %tobool.not.i = icmp eq ptr %sd, null
  br i1 %tobool.not.i, label %if.then22.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true.i

if.then22.v4l2_subdev_notify.exit_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit

land.lhs.true.i:                                  ; preds = %if.then22
  %7 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4l2_dev, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %notify.i = getelementptr inbounds %struct.v4l2_device, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notify.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, label %if.then.i

land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %10(ptr noundef nonnull %sd, i32 noundef 25088, ptr noundef null) #5
  br label %v4l2_subdev_notify.exit

v4l2_subdev_notify.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, %if.then22.v4l2_subdev_notify.exit_crit_edge
  %11 = ptrtoint ptr %input20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %input, ptr %input20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %cmp25 = icmp eq i32 %input, 0
  %arrayidx.i = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %v4l2_subdev_notify.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = and i8 %13, -65
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %15 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %arrayidx.i, align 1
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 11, i8 noundef zeroext %14) #5
  %arrayidx.i48 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 26
  %18 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i48, align 1
  %20 = or i8 %19, 2
  %21 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %20, ptr %arrayidx.i48, align 1
  %call2.i.i53 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 26, i8 noundef zeroext %20) #5
  br label %if.end31

if.else:                                          ; preds = %v4l2_subdev_notify.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = or i8 %13, 64
  %dev_priv.i.i.i59 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %24 = ptrtoint ptr %dev_priv.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i.i59, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %arrayidx.i, align 1
  %call2.i.i60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 11, i8 noundef zeroext %23) #5
  %arrayidx.i61 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 26
  %27 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i61, align 1
  %29 = and i8 %28, -3
  %30 = ptrtoint ptr %dev_priv.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i.i59, align 4
  store i8 %29, ptr %arrayidx.i61, align 1
  %call2.i.i66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 26, i8 noundef zeroext %29) #5
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  br i1 %tobool.not.i, label %if.end31.cleanup_crit_edge, label %land.lhs.true.i70

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i70:                                ; preds = %if.end31
  %32 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %v4l2_dev, align 4
  %tobool1.not.i69 = icmp eq ptr %33, null
  br i1 %tobool1.not.i69, label %land.lhs.true.i70.cleanup_crit_edge, label %land.lhs.true2.i73

land.lhs.true.i70.cleanup_crit_edge:              ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true2.i73:                               ; preds = %land.lhs.true.i70
  %notify.i71 = getelementptr inbounds %struct.v4l2_device, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %notify.i71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %notify.i71, align 4
  %tobool4.not.i72 = icmp eq ptr %35, null
  br i1 %tobool4.not.i72, label %land.lhs.true2.i73.cleanup_crit_edge, label %if.then.i74

land.lhs.true2.i73.cleanup_crit_edge:             ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i74:                                      ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %35(ptr noundef nonnull %sd, i32 noundef 25089, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i74, %land.lhs.true2.i73.cleanup_crit_edge, %land.lhs.true.i70.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %land.lhs.true.i70.cleanup_crit_edge ], [ 0, %land.lhs.true2.i73.cleanup_crit_edge ], [ 0, %if.then.i74 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt819_s_std(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, i64 noundef %std) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %1 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %v4l2_dev, align 4
  %cmp5 = icmp eq ptr %2, null
  br i1 %cmp5, label %do.end4.do.end11_crit_edge, label %lor.lhs.false

do.end4.do.end11_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

lor.lhs.false:                                    ; preds = %do.end4
  %notify = getelementptr inbounds %struct.v4l2_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %notify, align 4
  %cmp7 = icmp eq ptr %4, null
  br i1 %cmp7, label %lor.lhs.false.do.end11_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

do.end11:                                         ; preds = %lor.lhs.false.do.end11_crit_edge, %do.end4.do.end11_crit_edge
  %name13 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name13) #8
  br label %if.end16

if.end16:                                         ; preds = %do.end11, %lor.lhs.false.if.end16_crit_edge
  %and = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end16
  %tobool.not.i = icmp eq ptr %sd, null
  br i1 %tobool.not.i, label %if.then17.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true.i

if.then17.v4l2_subdev_notify.exit_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit

land.lhs.true.i:                                  ; preds = %if.then17
  %5 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %v4l2_dev, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %notify.i = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %notify.i, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, label %if.then.i

land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %8(ptr noundef nonnull %sd, i32 noundef 25088, ptr noundef null) #5
  br label %v4l2_subdev_notify.exit

v4l2_subdev_notify.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, %if.then17.v4l2_subdev_notify.exit_crit_edge
  %arrayidx.i = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = or i8 %10, 1
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %11, ptr %arrayidx.i, align 1
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 1, i8 noundef zeroext %11) #5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = and i8 %15, -3
  %17 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %16, ptr %arrayidx.i, align 1
  %call2.i.i127 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 1, i8 noundef zeroext %16) #5
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %21 = and i8 %20, -33
  %22 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %21, ptr %arrayidx.i, align 1
  %call2.i.i133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 1, i8 noundef zeroext %21) #5
  br label %if.end46

if.else:                                          ; preds = %if.end16
  %and23 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %do.body32, label %if.then25

if.then25:                                        ; preds = %if.else
  %tobool.not.i138 = icmp eq ptr %sd, null
  br i1 %tobool.not.i138, label %if.then25.v4l2_subdev_notify.exit146_crit_edge, label %land.lhs.true.i141

if.then25.v4l2_subdev_notify.exit146_crit_edge:   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit146

land.lhs.true.i141:                               ; preds = %if.then25
  %24 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %v4l2_dev, align 4
  %tobool1.not.i140 = icmp eq ptr %25, null
  br i1 %tobool1.not.i140, label %land.lhs.true.i141.v4l2_subdev_notify.exit146_crit_edge, label %land.lhs.true2.i144

land.lhs.true.i141.v4l2_subdev_notify.exit146_crit_edge: ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit146

land.lhs.true2.i144:                              ; preds = %land.lhs.true.i141
  %notify.i142 = getelementptr inbounds %struct.v4l2_device, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %notify.i142 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %notify.i142, align 4
  %tobool4.not.i143 = icmp eq ptr %27, null
  br i1 %tobool4.not.i143, label %land.lhs.true2.i144.v4l2_subdev_notify.exit146_crit_edge, label %if.then.i145

land.lhs.true2.i144.v4l2_subdev_notify.exit146_crit_edge: ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit146

if.then.i145:                                     ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %27(ptr noundef nonnull %sd, i32 noundef 25088, ptr noundef null) #5
  br label %v4l2_subdev_notify.exit146

v4l2_subdev_notify.exit146:                       ; preds = %if.then.i145, %land.lhs.true2.i144.v4l2_subdev_notify.exit146_crit_edge, %land.lhs.true.i141.v4l2_subdev_notify.exit146_crit_edge, %if.then25.v4l2_subdev_notify.exit146_crit_edge
  %arrayidx.i147 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i147, align 1
  %30 = or i8 %29, 1
  %dev_priv.i.i.i152 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %31 = ptrtoint ptr %dev_priv.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i.i152, align 4
  store i8 %30, ptr %arrayidx.i147, align 1
  %call2.i.i153 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 1, i8 noundef zeroext %30) #5
  %33 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i147, align 1
  %35 = or i8 %34, 2
  %36 = ptrtoint ptr %dev_priv.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i.i152, align 4
  store i8 %35, ptr %arrayidx.i147, align 1
  %call2.i.i160 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 1, i8 noundef zeroext %35) #5
  %38 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i147, align 1
  %40 = or i8 %39, 32
  %41 = ptrtoint ptr %dev_priv.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i.i152, align 4
  store i8 %40, ptr %arrayidx.i147, align 1
  %call2.i.i167 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 1, i8 noundef zeroext %40) #5
  br label %if.end46

do.body32:                                        ; preds = %if.else
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp33 = icmp sgt i32 %43, 0
  br i1 %cmp33, label %do.end37, label %do.body32.cleanup_crit_edge

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end37:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  %name39 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name39, i64 noundef %std) #8
  br label %cleanup

if.end46:                                         ; preds = %v4l2_subdev_notify.exit146, %v4l2_subdev_notify.exit
  %dev_priv.i.i.i152.sink208 = phi ptr [ %dev_priv.i.i.i152, %v4l2_subdev_notify.exit146 ], [ %dev_priv.i.i.i, %v4l2_subdev_notify.exit ]
  %.sink207 = phi i8 [ 127, %v4l2_subdev_notify.exit146 ], [ 104, %v4l2_subdev_notify.exit ]
  %.sink205 = phi i8 [ 114, %v4l2_subdev_notify.exit146 ], [ 93, %v4l2_subdev_notify.exit ]
  %timing.0 = phi ptr [ @timing_data, %v4l2_subdev_notify.exit146 ], [ getelementptr inbounds ([2 x %struct.timing], ptr @timing_data, i32 0, i32 1), %v4l2_subdev_notify.exit ]
  %44 = ptrtoint ptr %dev_priv.i.i.i152.sink208 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i.i152.sink208, align 4
  %arrayidx.i169 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 24
  %46 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink207, ptr %arrayidx.i169, align 1
  %call2.i170 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 24, i8 noundef zeroext %.sink207) #5
  %47 = ptrtoint ptr %dev_priv.i.i.i152.sink208 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i.i152.sink208, align 4
  %arrayidx.i172 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 25
  %49 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink205, ptr %arrayidx.i172, align 1
  %call2.i173 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 25, i8 noundef zeroext %.sink205) #5
  %vdelay = getelementptr inbounds %struct.timing, ptr %timing.0, i32 0, i32 3
  %50 = ptrtoint ptr %vdelay to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vdelay, align 4
  %52 = lshr i32 %51, 2
  %shl = and i32 %52, 192
  %vactive = getelementptr inbounds %struct.timing, ptr %timing.0, i32 0, i32 2
  %53 = ptrtoint ptr %vactive to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vactive, align 4
  %55 = lshr i32 %54, 4
  %shl50 = and i32 %55, 48
  %or = or i32 %shl50, %shl
  %hdelay = getelementptr inbounds %struct.timing, ptr %timing.0, i32 0, i32 1
  %56 = ptrtoint ptr %hdelay to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hdelay, align 4
  %58 = lshr i32 %57, 6
  %shl53 = and i32 %58, 12
  %or54 = or i32 %or, %shl53
  %59 = ptrtoint ptr %timing.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %timing.0, align 4
  %61 = lshr i32 %60, 8
  %and56 = and i32 %61, 3
  %or57 = or i32 %or54, %and56
  %conv = trunc i32 %or57 to i8
  %dev_priv.i.i174 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %62 = ptrtoint ptr %dev_priv.i.i174 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i174, align 4
  %arrayidx.i175 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv, ptr %arrayidx.i175, align 1
  %call2.i176 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 3, i8 noundef zeroext %conv) #5
  %65 = ptrtoint ptr %vdelay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vdelay, align 4
  %conv61 = trunc i32 %66 to i8
  %67 = ptrtoint ptr %dev_priv.i.i174 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_priv.i.i174, align 4
  %arrayidx.i178 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv61, ptr %arrayidx.i178, align 1
  %call2.i179 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext 4, i8 noundef zeroext %conv61) #5
  %70 = ptrtoint ptr %vactive to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vactive, align 4
  %conv65 = trunc i32 %71 to i8
  %72 = ptrtoint ptr %dev_priv.i.i174 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_priv.i.i174, align 4
  %arrayidx.i181 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 5
  %74 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv65, ptr %arrayidx.i181, align 1
  %call2.i182 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext 5, i8 noundef zeroext %conv65) #5
  %75 = ptrtoint ptr %hdelay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hdelay, align 4
  %conv69 = trunc i32 %76 to i8
  %77 = ptrtoint ptr %dev_priv.i.i174 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_priv.i.i174, align 4
  %arrayidx.i184 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 6
  %79 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv69, ptr %arrayidx.i184, align 1
  %call2.i185 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext 6, i8 noundef zeroext %conv69) #5
  %80 = ptrtoint ptr %timing.0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %timing.0, align 4
  %conv73 = trunc i32 %81 to i8
  %82 = ptrtoint ptr %dev_priv.i.i174 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_priv.i.i174, align 4
  %arrayidx.i187 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 7
  %84 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv73, ptr %arrayidx.i187, align 1
  %call2.i188 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 7, i8 noundef zeroext %conv73) #5
  %hscale = getelementptr inbounds %struct.timing, ptr %timing.0, i32 0, i32 4
  %85 = ptrtoint ptr %hscale to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hscale, align 4
  %87 = lshr i32 %86, 8
  %conv77 = trunc i32 %87 to i8
  %88 = ptrtoint ptr %dev_priv.i.i174 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_priv.i.i174, align 4
  %arrayidx.i190 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 8
  %90 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv77, ptr %arrayidx.i190, align 1
  %call2.i191 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext 8, i8 noundef zeroext %conv77) #5
  %91 = ptrtoint ptr %hscale to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hscale, align 4
  %conv81 = trunc i32 %92 to i8
  %93 = ptrtoint ptr %dev_priv.i.i174 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_priv.i.i174, align 4
  %arrayidx.i193 = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 9
  %95 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv81, ptr %arrayidx.i193, align 1
  %call2.i194 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %94, i8 noundef zeroext 9, i8 noundef zeroext %conv81) #5
  %norm = getelementptr inbounds %struct.bt819, ptr %sd, i32 0, i32 3
  %96 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %std, ptr %norm, align 8
  %tobool.not.i195 = icmp eq ptr %sd, null
  br i1 %tobool.not.i195, label %if.end46.cleanup_crit_edge, label %land.lhs.true.i198

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i198:                               ; preds = %if.end46
  %97 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %v4l2_dev, align 4
  %tobool1.not.i197 = icmp eq ptr %98, null
  br i1 %tobool1.not.i197, label %land.lhs.true.i198.cleanup_crit_edge, label %land.lhs.true2.i201

land.lhs.true.i198.cleanup_crit_edge:             ; preds = %land.lhs.true.i198
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true2.i201:                              ; preds = %land.lhs.true.i198
  %notify.i199 = getelementptr inbounds %struct.v4l2_device, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %notify.i199 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %notify.i199, align 4
  %tobool4.not.i200 = icmp eq ptr %100, null
  br i1 %tobool4.not.i200, label %land.lhs.true2.i201.cleanup_crit_edge, label %if.then.i202

land.lhs.true2.i201.cleanup_crit_edge:            ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i202:                                     ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %100(ptr noundef nonnull %sd, i32 noundef 25089, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i202, %land.lhs.true2.i201.cleanup_crit_edge, %land.lhs.true.i198.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end37, %do.body32.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end37 ], [ -22, %do.body32.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ], [ 0, %land.lhs.true.i198.cleanup_crit_edge ], [ 0, %land.lhs.true2.i201.cleanup_crit_edge ], [ 0, %if.then.i202 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt819_querystd(ptr noundef %sd, ptr noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #5
  %tobool.not.i = icmp eq ptr %std, null
  br i1 %tobool.not.i, label %entry.if.end12.i_crit_edge, label %if.then11.i

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %and.i = and i32 %call1.i.i, 128
  %and3.i = and i32 %call1.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %.cond.i = select i1 %tobool2.not.i, i64 0, i64 %3
  %std.1.v.i = select i1 %tobool4.not.i, i64 45056, i64 255
  %std.1.i = and i64 %.cond.i, %std.1.v.i
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %std.1.i, ptr %std, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %entry.if.end12.i_crit_edge
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp sgt i32 %5, 0
  br i1 %cmp.i, label %do.end.i, label %if.end12.i.bt819_status.exit_crit_edge

if.end12.i.bt819_status.exit_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bt819_status.exit

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, i32 noundef %call1.i.i) #8
  br label %bt819_status.exit

bt819_status.exit:                                ; preds = %do.end.i, %if.end12.i.bt819_status.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt819_g_input_status(ptr noundef %sd, ptr noundef writeonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #5
  %tobool13.not.i = icmp eq ptr %status, null
  br i1 %tobool13.not.i, label %entry.do.body.i_crit_edge, label %if.then14.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and2.i = lshr i32 %call1.i.i, 6
  %.in.i = and i32 %and2.i, 2
  %2 = xor i32 %.in.i, 2
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %status, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then14.i, %entry.do.body.i_crit_edge
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp sgt i32 %4, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.bt819_status.exit_crit_edge

do.body.i.bt819_status.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bt819_status.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, i32 noundef %call1.i.i) #8
  br label %bt819_status.exit

bt819_status.exit:                                ; preds = %do.end.i, %do.body.i.bt819_status.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt819_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, i32 noundef %enable) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %enable5 = getelementptr inbounds %struct.bt819, ptr %sd, i32 0, i32 5
  %1 = ptrtoint ptr %enable5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enable5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %enable)
  %cmp6.not = icmp eq i32 %2, %enable
  br i1 %cmp6.not, label %do.end4.if.end10_crit_edge, label %if.then7

do.end4.if.end10_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %enable5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %enable, ptr %enable5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not.not = icmp eq i32 %enable, 0
  %arrayidx.i = getelementptr %struct.bt819, ptr %sd, i32 0, i32 2, i32 22
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %spec.select.i = select i1 %tobool.not.not, i8 -128, i8 0
  %6 = and i8 %5, 127
  %or.i = or i8 %6, %spec.select.i
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %or.i, ptr %arrayidx.i, align 1
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 22, i8 noundef zeroext %or.i) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end4.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt819_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb3
    i32 9963778, label %sw.bb11
    i32 9963779, label %sw.bb31
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 194
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx.i, align 1
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 10, i8 noundef zeroext %conv) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val4, align 4
  %conv5 = trunc i32 %11 to i8
  %dev_priv.i.i56 = getelementptr i8, ptr %1, i32 -44
  %12 = ptrtoint ptr %dev_priv.i.i56 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i56, align 4
  %arrayidx.i57 = getelementptr i8, ptr %1, i32 196
  %14 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5, ptr %arrayidx.i57, align 1
  %call2.i58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 12, i8 noundef zeroext %conv5) #5
  %15 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val4, align 4
  %arrayidx.i59 = getelementptr i8, ptr %1, i32 195
  %17 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i59, align 1
  %19 = lshr i32 %16, 6
  %20 = and i8 %18, -5
  %21 = trunc i32 %19 to i8
  %22 = and i8 %21, 4
  %conv6.i = or i8 %22, %20
  %23 = ptrtoint ptr %dev_priv.i.i56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i56, align 4
  store i8 %conv6.i, ptr %arrayidx.i59, align 1
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 11, i8 noundef zeroext %conv6.i) #5
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val12, align 4
  %27 = lshr i32 %26, 7
  %conv15 = trunc i32 %27 to i8
  %dev_priv.i.i60 = getelementptr i8, ptr %1, i32 -44
  %28 = ptrtoint ptr %dev_priv.i.i60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i60, align 4
  %arrayidx.i61 = getelementptr i8, ptr %1, i32 197
  %30 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv15, ptr %arrayidx.i61, align 1
  %call2.i62 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 13, i8 noundef zeroext %conv15) #5
  %31 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val12, align 4
  %arrayidx.i63 = getelementptr i8, ptr %1, i32 195
  %33 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i63, align 1
  %35 = lshr i32 %32, 14
  %36 = and i8 %34, -3
  %37 = trunc i32 %35 to i8
  %38 = and i8 %37, 2
  %conv6.i69 = or i8 %38, %36
  %39 = ptrtoint ptr %dev_priv.i.i60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i60, align 4
  store i8 %conv6.i69, ptr %arrayidx.i63, align 1
  %call2.i.i71 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 11, i8 noundef zeroext %conv6.i69) #5
  %41 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val12, align 4
  %mul = mul i32 %42, 180
  %div = sdiv i32 %mul, 254
  %43 = lshr i32 %div, 7
  %conv25 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %dev_priv.i.i60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i60, align 4
  %arrayidx.i73 = getelementptr i8, ptr %1, i32 198
  %46 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv25, ptr %arrayidx.i73, align 1
  %call2.i74 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 14, i8 noundef zeroext %conv25) #5
  %47 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i63, align 1
  %49 = lshr i32 %div, 15
  %50 = and i8 %48, -2
  %51 = trunc i32 %49 to i8
  %52 = and i8 %51, 1
  %conv6.i81 = or i8 %52, %50
  %53 = ptrtoint ptr %dev_priv.i.i60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i60, align 4
  store i8 %conv6.i81, ptr %arrayidx.i63, align 1
  %call2.i.i83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 11, i8 noundef zeroext %conv6.i81) #5
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %55 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val32, align 4
  %conv33 = trunc i32 %56 to i8
  %dev_priv.i.i84 = getelementptr i8, ptr %1, i32 -44
  %57 = ptrtoint ptr %dev_priv.i.i84 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_priv.i.i84, align 4
  %arrayidx.i85 = getelementptr i8, ptr %1, i32 199
  %59 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv33, ptr %arrayidx.i85, align 1
  %call2.i86 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext 15, i8 noundef zeroext %conv33) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb31, %sw.bb11, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb31 ], [ 0, %sw.bb11 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/bt819.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/bt819.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/bt819.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/bt819.c", i32 34, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/bt819.c", i32 35, i32 1}
!12 = !{ptr @__initcall__kmod_bt819__298_478_bt819_driver_init6, !13, !"__initcall__kmod_bt819__298_478_bt819_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/bt819.c", i32 478, i32 1}
!14 = !{ptr @__exitcall_bt819_driver_exit, !13, !"__exitcall_bt819_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/bt819.c", i32 33, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/bt819.c", i32 471, i32 11}
!20 = !{ptr @bt819_driver, !21, !"bt819_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/bt819.c", i32 469, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/bt819.c", i32 404, i32 10}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/bt819.c", i32 407, i32 10}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/bt819.c", i32 410, i32 10}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/bt819.c", i32 413, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bt819_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @bt819_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/bt819.c", i32 418, i32 2}
!36 = !{ptr @bt819_probe._entry.7, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bt819_probe._entry_ptr.9, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/bt819.c", i32 427, i32 3}
!40 = !{ptr @bt819_probe._entry.10, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bt819_probe._entry_ptr.12, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @bt819_probe._key, !43, !"_key", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/bt819.c", i32 429, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bt819_ops, !46, !"bt819_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/bt819.c", i32 377, i32 37}
!47 = !{ptr @bt819_video_ops, !48, !"bt819_video_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/bt819.c", i32 369, i32 43}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/bt819.c", i32 289, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bt819_s_routing._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bt819_s_routing._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/bt819.c", i32 295, i32 3}
!56 = !{ptr @bt819_s_routing._entry.16, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bt819_s_routing._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/bt819.c", i32 240, i32 2}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bt819_s_std._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bt819_s_std._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @bt819_s_std._entry.21, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/bt819.c", i32 243, i32 3}
!65 = !{ptr @bt819_s_std._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/bt819.c", i32 264, i32 3}
!68 = !{ptr @bt819_s_std._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @bt819_s_std._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @timing_data, !71, !"timing_data", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/bt819.c", i32 70, i32 22}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/bt819.c", i32 221, i32 2}
!74 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @bt819_status._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @bt819_status._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/bt819.c", i32 317, i32 2}
!79 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @bt819_s_stream._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @bt819_s_stream._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @bt819_init.init, !83, !"init", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/bt819.c", i32 140, i32 23}
!84 = !{ptr @bt819_ctrl_ops, !85, !"bt819_ctrl_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/bt819.c", i32 365, i32 35}
!86 = !{ptr @bt819_id, !87, !"bt819_id", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/bt819.c", i32 461, i32 35}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
