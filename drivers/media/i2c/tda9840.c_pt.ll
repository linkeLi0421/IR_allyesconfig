; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tda9840.c_pt.bc'
source_filename = "../drivers/media/i2c/tda9840.c"
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
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@__UNIQUE_ID_author292 = internal constant [48 x i8] c"tda9840.author=Michael Hunold <michael@mihu.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [35 x i8] c"tda9840.description=tda9840 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"tda9840.file=drivers/media/i2c/tda9840\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"tda9840.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"tda9840.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"tda9840.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"tda9840.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_tda9840__298_201_tda9840_driver_init6 = internal global ptr @tda9840_driver_init, section ".initcall6.init", align 4
@tda9840_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tda9840_probe, ptr @tda9840_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda9840_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tda9840_driver_exit = internal global ptr @tda9840_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9840\00", [24 x i8] zeroinitializer }, align 32
@tda9840_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda9840\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tda9840_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda9840_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/tda9840.c\00", [36 x i8] zeroinitializer }, align 32
@tda9840_probe._entry_ptr = internal global ptr @tda9840_probe._entry, section ".printk_index", align 4
@tda9840_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr @tda9840_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tda9840_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda9840_g_tuner, ptr @tda9840_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@tda9840_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: i2c_master_recv() failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda9840_status\00", [17 x i8] zeroinitializer }, align 32
@tda9840_status._entry_ptr = internal global ptr @tda9840_status._entry, section ".printk_index", align 4
@tda9840_status._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: TDA9840_DETECT: register contents invalid\0A\00", [47 x i8] zeroinitializer }, align 32
@tda9840_status._entry_ptr.8 = internal global ptr @tda9840_status._entry.6, section ".printk_index", align 4
@tda9840_status._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: TDA9840_DETECT: byte: 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@tda9840_status._entry_ptr.11 = internal global ptr @tda9840_status._entry.9, section ".printk_index", align 4
@tda9840_s_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: TDA9840_SWITCH: 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda9840_s_tuner\00", [16 x i8] zeroinitializer }, align 32
@tda9840_s_tuner._entry_ptr = internal global ptr @tda9840_s_tuner._entry, section ".printk_index", align 4
@tda9840_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: error writing %02x to %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda9840_write\00", [18 x i8] zeroinitializer }, align 32
@tda9840_write._entry_ptr = internal global ptr @tda9840_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 64, i64 96]
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 27, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"tda9840_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 192, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 194, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"tda9840_id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 186, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 163, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"tda9840_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 146, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"tda9840_tuner_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 141, i32 43 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 64, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 72, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 77, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 108, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [31 x i8] c"../drivers/media/i2c/tda9840.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 52, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_tda9840_driver_exit, ptr @__initcall__kmod_tda9840__298_201_tda9840_driver_init6, ptr @__param_debug, ptr @tda9840_driver_exit, ptr @tda9840_probe._entry, ptr @tda9840_probe._entry_ptr, ptr @tda9840_s_tuner._entry, ptr @tda9840_s_tuner._entry_ptr, ptr @tda9840_status._entry, ptr @tda9840_status._entry.6, ptr @tda9840_status._entry.9, ptr @tda9840_status._entry_ptr, ptr @tda9840_status._entry_ptr.11, ptr @tda9840_status._entry_ptr.8, ptr @tda9840_write._entry, ptr @tda9840_write._entry_ptr, ptr @debug, ptr @tda9840_driver, ptr @.str, ptr @tda9840_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tda9840_ops, ptr @tda9840_tuner_ops, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_status._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_status._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_s_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9840_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tda9840_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tda9840_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tda9840_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9840_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 196, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @tda9840_ops) #6
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end12.tda9840_write.exit_crit_edge, label %do.body.i

if.end12.tda9840_write.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9840_write.exit

do.body.i:                                        ; preds = %if.end12
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i24 = icmp sgt i32 %18, 0
  br i1 %cmp.i24, label %do.end.i, label %do.body.i.tda9840_write.exit_crit_edge

do.body.i.tda9840_write.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9840_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef 0, i32 noundef 2) #9
  br label %tda9840_write.exit

tda9840_write.exit:                               ; preds = %do.end.i, %do.body.i.tda9840_write.exit_crit_edge, %if.end12.tda9840_write.exit_crit_edge
  %19 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %tda9840_write.exit.tda9840_write.exit33_crit_edge, label %do.body.i29

tda9840_write.exit.tda9840_write.exit33_crit_edge: ; preds = %tda9840_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9840_write.exit33

do.body.i29:                                      ; preds = %tda9840_write.exit
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i28 = icmp sgt i32 %21, 0
  br i1 %cmp.i28, label %do.end.i32, label %do.body.i29.tda9840_write.exit33_crit_edge

do.body.i29.tda9840_write.exit33_crit_edge:       ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9840_write.exit33

do.end.i32:                                       ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #8
  %name.i30 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call5.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i30, i32 noundef 0, i32 noundef 3) #9
  br label %tda9840_write.exit33

tda9840_write.exit33:                             ; preds = %do.end.i32, %do.body.i29.tda9840_write.exit33_crit_edge, %tda9840_write.exit.tda9840_write.exit33_crit_edge
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext 42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %tda9840_write.exit33.cleanup_crit_edge, label %do.body.i38

tda9840_write.exit33.cleanup_crit_edge:           ; preds = %tda9840_write.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i38:                                      ; preds = %tda9840_write.exit33
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i37 = icmp sgt i32 %24, 0
  br i1 %cmp.i37, label %do.end.i41, label %do.body.i38.cleanup_crit_edge

do.body.i38.cleanup_crit_edge:                    ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i41:                                       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #8
  %name.i39 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call5.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i39, i32 noundef 42, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i41, %do.body.i38.cleanup_crit_edge, %tda9840_write.exit33.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %tda9840_write.exit33.cleanup_crit_edge ], [ 0, %do.body.i38.cleanup_crit_edge ], [ 0, %do.end.i41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9840_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9840_g_tuner(ptr noundef %sd, ptr nocapture noundef writeonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tda9840_status(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %and = and i32 %call, 96
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 0, label %if.end.cleanup.sink.split_crit_edge
    i32 32, label %sw.bb2
    i32 64, label %sw.bb4
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.default, %sw.bb4, %sw.bb2, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 12, %sw.bb2 ], [ 3, %sw.bb4 ], [ 0, %sw.default ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  %1 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %rxsubchans, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9840_s_tuner(ptr noundef %sd, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tda9840_status(ptr noundef %sd)
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %2, label %if.else8 [
    i32 0, label %if.end.do.body_crit_edge
    i32 96, label %if.end.do.body_crit_edge32
    i32 64, label %if.then5
  ]

if.end.do.body_crit_edge32:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  %cond7 = select i1 %cmp6, i32 16, i32 42
  br label %do.body

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %audmode9 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %6 = ptrtoint ptr %audmode9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audmode9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 2
  %switch.select = select i1 %switch.selectcmp, i32 30, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch.selectcmp30 = icmp eq i32 %7, 4
  %switch.select31 = select i1 %switch.selectcmp30, i32 26, i32 %switch.select
  br label %do.body

do.body:                                          ; preds = %if.else8, %if.then5, %if.end.do.body_crit_edge, %if.end.do.body_crit_edge32
  %byte.0 = phi i32 [ %cond7, %if.then5 ], [ 16, %if.end.do.body_crit_edge ], [ 16, %if.end.do.body_crit_edge32 ], [ %switch.select31, %if.else8 ]
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13 = icmp sgt i32 %8, 0
  br i1 %cmp13, label %do.end, label %do.body.do.end19_crit_edge

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %byte.0) #9
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %conv = trunc i32 %byte.0 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %9 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.end19.cleanup_crit_edge, label %do.body.i

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %do.end19
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp sgt i32 %11, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %byte.0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %do.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end19.cleanup_crit_edge ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda9840_status(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #6
  %2 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %byte, align 1, !annotation !66
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %byte, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  %call1. = select i1 %cmp8, i32 %call.i, i32 -5
  br label %cleanup

if.end11:                                         ; preds = %entry
  %4 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %byte, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp29 = icmp sgt i32 %6, 0
  br i1 %tobool.not, label %do.body28, label %do.body13

do.body13:                                        ; preds = %if.end11
  br i1 %cmp29, label %do.end19, label %do.body13.cleanup_crit_edge

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %name21 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name21) #9
  br label %cleanup

do.body28:                                        ; preds = %if.end11
  br i1 %cmp29, label %do.end34, label %do.body28.do.end42_crit_edge

do.body28.do.end42_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %name36 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name36, i32 noundef %conv) #9
  br label %do.end42

do.end42:                                         ; preds = %do.end34, %do.body28.do.end42_crit_edge
  %7 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %byte, align 1
  %9 = and i8 %8, 96
  %and44 = zext i8 %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.end19, %do.body13.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ %and44, %do.end42 ], [ %call1., %do.end7 ], [ -22, %do.end19 ], [ -22, %do.body13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tda9840.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/tda9840.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/tda9840.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/tda9840.c", i32 28, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/tda9840.c", i32 30, i32 1}
!12 = !{ptr @__initcall__kmod_tda9840__298_201_tda9840_driver_init6, !13, !"__initcall__kmod_tda9840__298_201_tda9840_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/tda9840.c", i32 201, i32 1}
!14 = !{ptr @__exitcall_tda9840_driver_exit, !13, !"__exitcall_tda9840_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/tda9840.c", i32 27, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/tda9840.c", i32 194, i32 11}
!20 = !{ptr @tda9840_driver, !21, !"tda9840_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/tda9840.c", i32 192, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/tda9840.c", i32 163, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tda9840_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @tda9840_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @tda9840_ops, !29, !"tda9840_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/tda9840.c", i32 146, i32 37}
!30 = !{ptr @tda9840_tuner_ops, !31, !"tda9840_tuner_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/tda9840.c", i32 141, i32 43}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/tda9840.c", i32 64, i32 3}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tda9840_status._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @tda9840_status._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/tda9840.c", i32 72, i32 3}
!39 = !{ptr @tda9840_status._entry.6, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tda9840_status._entry_ptr.8, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/tda9840.c", i32 77, i32 2}
!43 = !{ptr @tda9840_status._entry.9, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tda9840_status._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/tda9840.c", i32 108, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tda9840_s_tuner._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tda9840_s_tuner._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/tda9840.c", i32 52, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @tda9840_write._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @tda9840_write._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @tda9840_id, !56, !"tda9840_id", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/tda9840.c", i32 186, i32 35}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
