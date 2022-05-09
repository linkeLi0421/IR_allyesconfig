; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/bt856.c_pt.bc'
source_filename = "../drivers/media/i2c/bt856.c"
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
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bt856 = type { %struct.v4l2_subdev, [6 x i8], i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }

@__UNIQUE_ID_description292 = internal constant [54 x i8] c"bt856.description=Brooktree-856A video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [39 x i8] c"bt856.author=Mike Bernson & Dave Perks\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [35 x i8] c"bt856.file=drivers/media/i2c/bt856\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [18 x i8] c"bt856.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [12 x i8] c"bt856.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [25 x i8] c"bt856.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [35 x i8] c"bt856.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_bt856__298_249_bt856_driver_init6 = internal global ptr @bt856_driver_init, section ".initcall6.init", align 4
@bt856_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bt856_probe, ptr @bt856_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bt856_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bt856_driver_exit = internal global ptr @bt856_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bt856\00", [26 x i8] zeroinitializer }, align 32
@bt856_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bt856\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bt856_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bt856_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/media/i2c/bt856.c\00", [38 x i8] zeroinitializer }, align 32
@bt856_probe._entry_ptr = internal global ptr @bt856_probe._entry, section ".printk_index", align 4
@bt856_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @bt856_core_ops, ptr null, ptr null, ptr @bt856_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bt856_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr @bt856_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bt856_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @bt856_s_routing, ptr null, ptr null, ptr null, ptr @bt856_s_std_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bt856_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: init\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bt856_init\00", [21 x i8] zeroinitializer }, align 32
@bt856_init._entry_ptr = internal global ptr @bt856_init._entry, section ".printk_index", align 4
@bt856_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: set input %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bt856_s_routing\00", [16 x i8] zeroinitializer }, align 32
@bt856_s_routing._entry_ptr = internal global ptr @bt856_s_routing._entry, section ".printk_index", align 4
@bt856_s_std_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: set norm %llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bt856_s_std_output\00", [45 x i8] zeroinitializer }, align 32
@bt856_s_std_output._entry_ptr = internal global ptr @bt856_s_std_output._entry, section ".printk_index", align 4
@bt856_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: register dump:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bt856_dump\00", [21 x i8] zeroinitializer }, align 32
@bt856_dump._entry_ptr = internal global ptr @bt856_dump._entry, section ".printk_index", align 4
@bt856_dump._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@bt856_dump._entry_ptr.14 = internal global ptr @bt856_dump._entry.12, section ".printk_index", align 4
@bt856_dump._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@bt856_dump._entry_ptr.17 = internal global ptr @bt856_dump._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 31, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"bt856_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 240, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 242, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"bt856_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 234, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 194, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"bt856_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 177, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"bt856_core_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 168, i32 42 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"bt856_video_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 172, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 87, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 135, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 113, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 74, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 76, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [29 x i8] c"../drivers/media/i2c/bt856.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 77, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_bt856_driver_exit, ptr @__initcall__kmod_bt856__298_249_bt856_driver_init6, ptr @__param_debug, ptr @bt856_driver_exit, ptr @bt856_dump._entry, ptr @bt856_dump._entry.12, ptr @bt856_dump._entry.15, ptr @bt856_dump._entry_ptr, ptr @bt856_dump._entry_ptr.14, ptr @bt856_dump._entry_ptr.17, ptr @bt856_init._entry, ptr @bt856_init._entry_ptr, ptr @bt856_probe._entry, ptr @bt856_probe._entry_ptr, ptr @bt856_s_routing._entry, ptr @bt856_s_routing._entry_ptr, ptr @bt856_s_std_output._entry, ptr @bt856_s_std_output._entry_ptr, ptr @debug, ptr @bt856_driver, ptr @.str, ptr @bt856_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bt856_ops, ptr @bt856_core_ops, ptr @bt856_video_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_s_std_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_dump._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_dump._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bt856_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bt856_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bt856_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @bt856_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt856_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv = zext i16 %15 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name6 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @bt856_ops) #4
  %norm = getelementptr inbounds %struct.bt856, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 45056, ptr %norm, align 8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr %struct.bt856, ptr %call.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 24, ptr %arrayidx.i, align 1
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -36, i8 noundef zeroext 24) #4
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i55 = getelementptr %struct.bt856, ptr %call.i, i32 0, i32 1, i32 0
  %22 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx.i55, align 1
  %call2.i56 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext -38, i8 noundef zeroext 0) #4
  %23 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i58 = getelementptr %struct.bt856, ptr %call.i, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx.i58, align 1
  %call2.i59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext -34, i8 noundef zeroext 0) #4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %28 = or i8 %27, 8
  %29 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %28, ptr %arrayidx.i, align 1
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext -36, i8 noundef zeroext %28) #4
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %33 = or i8 %32, 16
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %33, ptr %arrayidx.i, align 1
  %call2.i.i68 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext -36, i8 noundef zeroext %33) #4
  %36 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %norm, align 8
  %and = and i64 %37, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool20.not = icmp eq i64 %and, 0
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %40 = and i8 %39, -5
  %masksel = select i1 %tobool20.not, i8 4, i8 0
  %.sink106 = or i8 %40, %masksel
  %41 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %.sink106, ptr %arrayidx.i, align 1
  %call2.i.i81 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext -36, i8 noundef zeroext %.sink106) #4
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  %45 = or i8 %44, 2
  %46 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %45, ptr %arrayidx.i, align 1
  %call2.i.i88 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext -36, i8 noundef zeroext %45) #4
  %48 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i58, align 1
  %50 = and i8 %49, -17
  %51 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %50, ptr %arrayidx.i58, align 1
  %call2.i.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext -34, i8 noundef zeroext %50) #4
  %53 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i58, align 1
  %55 = or i8 %54, 8
  %56 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %55, ptr %arrayidx.i58, align 1
  %call2.i.i101 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext -34, i8 noundef zeroext %55) #4
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp28.not = icmp eq i32 %58, 0
  br i1 %cmp28.not, label %if.end12.cleanup_crit_edge, label %if.then30

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then30:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i) #7
  %59 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i55, align 1
  %conv.i104 = zext i8 %60 to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.i104) #7
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i, align 1
  %conv.1.i = zext i8 %62 to i32
  %call5.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.1.i) #7
  %63 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i58, align 1
  %conv.2.i = zext i8 %64 to i32
  %call5.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.2.i) #7
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end12.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt856_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt856_init(ptr noundef %sd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %arrayidx.i, align 1
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -36, i8 noundef zeroext 24) #4
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i33 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.i33, align 1
  %call2.i34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -38, i8 noundef zeroext 0) #4
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i36 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i36, align 1
  %call2.i37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -34, i8 noundef zeroext 0) #4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = or i8 %11, 8
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %12, ptr %arrayidx.i, align 1
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext -36, i8 noundef zeroext %12) #4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %17 = or i8 %16, 16
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %17, ptr %arrayidx.i, align 1
  %call2.i.i45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -36, i8 noundef zeroext %17) #4
  %norm = getelementptr inbounds %struct.bt856, ptr %sd, i32 0, i32 2
  %20 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %norm, align 8
  %and = and i64 %21, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %24 = and i8 %23, -5
  %masksel = select i1 %tobool.not, i8 4, i8 0
  %.sink81 = or i8 %24, %masksel
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %.sink81, ptr %arrayidx.i, align 1
  %call2.i.i58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -36, i8 noundef zeroext %.sink81) #4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %29 = or i8 %28, 2
  %30 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %29, ptr %arrayidx.i, align 1
  %call2.i.i65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -36, i8 noundef zeroext %29) #4
  %32 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i36, align 1
  %34 = and i8 %33, -17
  %35 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %34, ptr %arrayidx.i36, align 1
  %call2.i.i71 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext -34, i8 noundef zeroext %34) #4
  %37 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i36, align 1
  %39 = or i8 %38, 8
  %40 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i, align 4
  store i8 %39, ptr %arrayidx.i36, align 1
  %call2.i.i78 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext -34, i8 noundef zeroext %39) #4
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp17.not = icmp eq i32 %42, 0
  br i1 %cmp17.not, label %do.end4.if.end19_crit_edge, label %if.then18

do.end4.if.end19_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then18:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i) #7
  %43 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i33, align 1
  %conv.i = zext i8 %44 to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.i) #7
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  %conv.1.i = zext i8 %46 to i32
  %call5.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.1.i) #7
  %47 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i36, align 1
  %conv.2.i = zext i8 %48 to i32
  %call5.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.2.i) #7
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.end4.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt856_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %input) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %input, label %do.end4.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb14
  ]

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = and i8 %3, -17
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %4, ptr %arrayidx.i, align 1
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -34, i8 noundef zeroext %4) #4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = or i8 %8, 8
  %10 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %9, ptr %arrayidx.i, align 1
  %call2.i.i37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -34, i8 noundef zeroext %9) #4
  %arrayidx.i38 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i38, align 1
  %14 = or i8 %13, 8
  %15 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %14, ptr %arrayidx.i38, align 1
  %call2.i.i44 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -36, i8 noundef zeroext %14) #4
  %17 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i38, align 1
  %19 = and i8 %18, -65
  %20 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %19, ptr %arrayidx.i38, align 1
  %call2.i.i50 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext -36, i8 noundef zeroext %19) #4
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i51 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i51, align 1
  %24 = and i8 %23, -17
  %dev_priv.i.i.i55 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %25 = ptrtoint ptr %dev_priv.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i.i55, align 4
  store i8 %24, ptr %arrayidx.i51, align 1
  %call2.i.i56 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -34, i8 noundef zeroext %24) #4
  %27 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i51, align 1
  %29 = or i8 %28, 8
  %30 = ptrtoint ptr %dev_priv.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i.i55, align 4
  store i8 %29, ptr %arrayidx.i51, align 1
  %call2.i.i63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -34, i8 noundef zeroext %29) #4
  %arrayidx.i64 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i64, align 1
  %34 = or i8 %33, 8
  %35 = ptrtoint ptr %dev_priv.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i.i55, align 4
  store i8 %34, ptr %arrayidx.i64, align 1
  %call2.i.i70 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext -36, i8 noundef zeroext %34) #4
  %37 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i64, align 1
  %39 = or i8 %38, 64
  %40 = ptrtoint ptr %dev_priv.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i.i55, align 4
  store i8 %39, ptr %arrayidx.i64, align 1
  %call2.i.i77 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext -36, i8 noundef zeroext %39) #4
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i78 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i78, align 1
  %44 = and i8 %43, -9
  %dev_priv.i.i.i82 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %45 = ptrtoint ptr %dev_priv.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i.i.i82, align 4
  store i8 %44, ptr %arrayidx.i78, align 1
  %call2.i.i83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext -36, i8 noundef zeroext %44) #4
  %arrayidx.i84 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i84, align 1
  %49 = or i8 %48, 16
  %50 = ptrtoint ptr %dev_priv.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i.i82, align 4
  store i8 %49, ptr %arrayidx.i84, align 1
  %call2.i.i90 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext -34, i8 noundef zeroext %49) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb9, %sw.bb
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp17.not = icmp eq i32 %52, 0
  br i1 %cmp17.not, label %sw.epilog.cleanup_crit_edge, label %if.then18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i) #7
  %arrayidx.i91 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 0
  %53 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i91, align 1
  %conv.i = zext i8 %54 to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.i) #7
  %arrayidx.1.i = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %56 to i32
  %call5.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.1.i) #7
  %arrayidx.2.i = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %58 to i32
  %call5.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.2.i) #7
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %sw.epilog.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt856_s_std_output(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i64 noundef %std) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %and = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %3 = and i8 %2, -5
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  store i8 %3, ptr %arrayidx.i, align 1
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -36, i8 noundef zeroext %3) #4
  br label %if.end14

if.else:                                          ; preds = %do.end4
  %and7 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i26 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i26, align 1
  %8 = or i8 %7, 4
  %dev_priv.i.i.i30 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %9 = ptrtoint ptr %dev_priv.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i.i30, align 4
  store i8 %8, ptr %arrayidx.i26, align 1
  %call2.i.i31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext -36, i8 noundef zeroext %8) #4
  %arrayidx.i32 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 0
  %11 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i32, align 1
  %13 = and i8 %12, -2
  %14 = ptrtoint ptr %dev_priv.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i.i30, align 4
  store i8 %13, ptr %arrayidx.i32, align 1
  %call2.i.i37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -38, i8 noundef zeroext %13) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then5
  %norm = getelementptr inbounds %struct.bt856, ptr %sd, i32 0, i32 2
  %16 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %std, ptr %norm, align 8
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15.not = icmp eq i32 %17, 0
  br i1 %cmp15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i) #7
  %arrayidx.i38 = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 0
  %18 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i38, align 1
  %conv.i = zext i8 %19 to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.i) #7
  %arrayidx.1.i = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %21 to i32
  %call5.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.1.i) #7
  %arrayidx.2.i = getelementptr %struct.bt856, ptr %sd, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %23 to i32
  %call5.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.2.i) #7
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/bt856.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/bt856.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/bt856.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/bt856.c", i32 32, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/bt856.c", i32 33, i32 1}
!12 = !{ptr @__initcall__kmod_bt856__298_249_bt856_driver_init6, !13, !"__initcall__kmod_bt856__298_249_bt856_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/bt856.c", i32 249, i32 1}
!14 = !{ptr @__exitcall_bt856_driver_exit, !13, !"__exitcall_bt856_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/bt856.c", i32 31, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/bt856.c", i32 242, i32 11}
!20 = !{ptr @bt856_driver, !21, !"bt856_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/bt856.c", i32 240, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/bt856.c", i32 194, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bt856_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @bt856_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @bt856_ops, !29, !"bt856_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/bt856.c", i32 177, i32 37}
!30 = !{ptr @bt856_core_ops, !31, !"bt856_core_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/bt856.c", i32 168, i32 42}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/bt856.c", i32 87, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bt856_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @bt856_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @bt856_video_ops, !38, !"bt856_video_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/bt856.c", i32 172, i32 43}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/bt856.c", i32 135, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @bt856_s_routing._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @bt856_s_routing._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/bt856.c", i32 113, i32 2}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @bt856_s_std_output._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @bt856_s_std_output._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/bt856.c", i32 74, i32 2}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bt856_dump._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bt856_dump._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/bt856.c", i32 76, i32 3}
!56 = !{ptr @bt856_dump._entry.12, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bt856_dump._entry_ptr.14, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/bt856.c", i32 77, i32 2}
!60 = !{ptr @bt856_dump._entry.15, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bt856_dump._entry_ptr.17, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @bt856_id, !63, !"bt856_id", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/bt856.c", i32 234, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
