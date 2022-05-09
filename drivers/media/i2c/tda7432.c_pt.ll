; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tda7432.c_pt.bc'
source_filename = "../drivers/media/i2c/tda7432.c"
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
%struct.tda7432 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, %struct.anon.119, %struct.anon.120 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author292 = internal constant [55 x i8] c"tda7432.author=Eric Sandeen <eric_sandeen@bigfoot.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [69 x i8] c"tda7432.description=bttv driver for the tda7432 audio processor chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"tda7432.file=drivers/media/i2c/tda7432\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"tda7432.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"tda7432.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"tda7432.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [71 x i8] c"tda7432.parm=debug:Set debugging level from 0 to 3. Default is off(0).\00", section ".modinfo", align 1
@__param_str_loudness = internal constant [17 x i8] c"tda7432.loudness\00", align 1
@loudness = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_loudness = internal constant %struct.kernel_param { ptr @__param_str_loudness, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @loudness } }, section "__param", align 4
@__UNIQUE_ID_loudnesstype298 = internal constant [30 x i8] c"tda7432.parmtype=loudness:int\00", section ".modinfo", align 1
@__UNIQUE_ID_loudness299 = internal constant [74 x i8] c"tda7432.parm=loudness:Turn loudness on(1) else off(0). Default is off(0).\00", section ".modinfo", align 1
@__param_str_maxvol = internal constant [15 x i8] c"tda7432.maxvol\00", align 1
@maxvol = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_maxvol = internal constant %struct.kernel_param { ptr @__param_str_maxvol, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @maxvol } }, section "__param", align 4
@__UNIQUE_ID_maxvoltype300 = internal constant [28 x i8] c"tda7432.parmtype=maxvol:int\00", section ".modinfo", align 1
@__UNIQUE_ID_maxvol301 = internal constant [86 x i8] c"tda7432.parm=maxvol:Set maximum volume to +20dB(0) else +0dB(1). Default is +20dB(0).\00", section ".modinfo", align 1
@__initcall__kmod_tda7432__302_419_tda7432_driver_init6 = internal global ptr @tda7432_driver_init, section ".initcall6.init", align 4
@tda7432_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tda7432_probe, ptr @tda7432_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda7432_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tda7432_driver_exit = internal global ptr @tda7432_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda7432\00", [24 x i8] zeroinitializer }, align 32
@tda7432_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda7432\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tda7432_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda7432_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/tda7432.c\00", [36 x i8] zeroinitializer }, align 32
@tda7432_probe._entry_ptr = internal global ptr @tda7432_probe._entry, section ".printk_index", align 4
@tda7432_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tda7432_core_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tda7432_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tda7432:360:(&t->hdl)->_lock\00", [35 x i8] zeroinitializer }, align 32
@tda7432_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tda7432_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tda7432_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: loudness parameter must be between 0 and 15\0A\00", [45 x i8] zeroinitializer }, align 32
@tda7432_probe._entry_ptr.7 = internal global ptr @tda7432_probe._entry.5, section ".printk_index", align 4
@tda7432_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @tda7432_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda7432_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: In tda7432_write\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda7432_write\00", [18 x i8] zeroinitializer }, align 32
@tda7432_write._entry_ptr = internal global ptr @tda7432_write._entry, section ".printk_index", align 4
@tda7432_write._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Writing %d 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@tda7432_write._entry_ptr.12 = internal global ptr @tda7432_write._entry.10, section ".printk_index", align 4
@tda7432_write._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: I/O error, trying (write %d 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@tda7432_write._entry_ptr.15 = internal global ptr @tda7432_write._entry.13, section ".printk_index", align 4
@tda7432_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: I/O error, trying tda7432_set\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tda7432_set\00", [20 x i8] zeroinitializer }, align 32
@tda7432_set._entry_ptr = internal global ptr @tda7432_set._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 9963781, i64 9963783, i64 9963785]
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 51, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"loudness\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 50, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"maxvol\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 49, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"tda7432_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 410, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 412, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"tda7432_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 404, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 352, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"tda7432_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 336, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 360, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"tda7432_ctrl_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 328, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 382, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"tda7432_core_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 332, i32 42 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 225, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 226, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 230, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [31 x i8] c"../drivers/media/i2c/tda7432.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 256, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_loudness299, ptr @__UNIQUE_ID_loudnesstype298, ptr @__UNIQUE_ID_maxvol301, ptr @__UNIQUE_ID_maxvoltype300, ptr @__exitcall_tda7432_driver_exit, ptr @__initcall__kmod_tda7432__302_419_tda7432_driver_init6, ptr @__param_debug, ptr @__param_loudness, ptr @__param_maxvol, ptr @tda7432_driver_exit, ptr @tda7432_probe._entry, ptr @tda7432_probe._entry.5, ptr @tda7432_probe._entry_ptr, ptr @tda7432_probe._entry_ptr.7, ptr @tda7432_set._entry, ptr @tda7432_set._entry_ptr, ptr @tda7432_write._entry, ptr @tda7432_write._entry.10, ptr @tda7432_write._entry.13, ptr @tda7432_write._entry_ptr, ptr @tda7432_write._entry_ptr.12, ptr @tda7432_write._entry_ptr.15, ptr @debug, ptr @loudness, ptr @maxvol, ptr @tda7432_driver, ptr @.str, ptr @tda7432_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tda7432_ops, ptr @tda7432_probe._key, ptr @.str.4, ptr @tda7432_ctrl_ops, ptr @.str.6, ptr @tda7432_core_ops, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loudness to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxvol to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_write._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_write._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda7432_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tda7432_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tda7432_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tda7432_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tda7432_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda7432_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 2
  %conv = zext i16 %9 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name4 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %7, i32 noundef %conv, i32 noundef %shl, ptr noundef %name4) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 396, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @tda7432_ops) #6
  %hdl = getelementptr inbounds %struct.tda7432, ptr %call.i, i32 0, i32 1
  %call10 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 5, ptr noundef nonnull @tda7432_probe._key, ptr noundef nonnull @.str.4) #6
  %10 = load i32, ptr @maxvol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool12.not, i32 79, i32 104
  %11 = zext i32 %cond to i64
  %cond15 = select i1 %tobool12.not, i32 71, i32 93
  %12 = zext i32 %cond15 to i64
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tda7432_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef %11, i64 noundef 1, i64 noundef %12) #6
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tda7432_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %13 = getelementptr inbounds %struct.tda7432, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call19, ptr %13, align 4
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tda7432_ctrl_ops, i32 noundef 9963782, i64 noundef -31, i64 noundef 31, i64 noundef 1, i64 noundef 0) #6
  %balance = getelementptr inbounds %struct.tda7432, ptr %call.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %balance to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call21, ptr %balance, align 4
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tda7432_ctrl_ops, i32 noundef 9963783, i64 noundef 0, i64 noundef 14, i64 noundef 1, i64 noundef 7) #6
  %16 = getelementptr inbounds %struct.tda7432, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23, ptr %16, align 4
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tda7432_ctrl_ops, i32 noundef 9963784, i64 noundef 0, i64 noundef 14, i64 noundef 1, i64 noundef 7) #6
  %treble = getelementptr inbounds %struct.tda7432, ptr %call.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %treble to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call25, ptr %treble, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.tda7432, ptr %call.i, i32 0, i32 1, i32 9
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not = icmp eq i32 %21, 0
  br i1 %tobool28.not, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  br label %cleanup

if.end33:                                         ; preds = %if.end
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %16) #6
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %13) #6
  %call37 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #6
  %22 = load i32, ptr @loudness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %22)
  %23 = icmp ugt i32 %22, 15
  br i1 %23, label %do.end44, label %if.end33.if.end57_crit_edge

if.end33.if.end57_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.end44:                                         ; preds = %if.end33
  %name46 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name46) #9
  %24 = load i32, ptr @loudness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp49 = icmp slt i32 %24, 0
  br i1 %cmp49, label %do.end44.if.end57.sink.split_crit_edge, label %if.end52

do.end44.if.end57.sink.split_crit_edge:           ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.sink.split

if.end52:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %24)
  %cmp53 = icmp ugt i32 %24, 15
  br i1 %cmp53, label %if.end52.if.end57.sink.split_crit_edge, label %if.end52.if.end57_crit_edge

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end52.if.end57.sink.split_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.end52.if.end57.sink.split_crit_edge, %do.end44.if.end57.sink.split_crit_edge
  %.sink = phi i32 [ 0, %do.end44.if.end57.sink.split_crit_edge ], [ 15, %if.end52.if.end57.sink.split_crit_edge ]
  store i32 %.sink, ptr @loudness, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.end52.if.end57_crit_edge, %if.end33.if.end57_crit_edge
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #6
  %27 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 1
  %28 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 2
  %29 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 3
  %30 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 4
  %31 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 8
  %32 = getelementptr inbounds i8, ptr %buf.i, i32 9
  %33 = call ptr @memset(ptr %32, i32 255, i32 7)
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %buf.i, align 1
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 24, ptr %27, align 1
  %36 = load i32, ptr @loudness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 59, i8 -69
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %spec.store.select.i, ptr %28, align 1
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %29, align 1
  %conv10.i = trunc i32 %36 to i8
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %30, align 1
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv10.i, ptr %31, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buf.i, i32 noundef 9, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 9
  br i1 %cmp.not.i, label %if.end57.tda7432_set.exit_crit_edge, label %do.end.i

if.end57.tda7432_set.exit_crit_edge:              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda7432_set.exit

do.end.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i) #9
  br label %tda7432_set.exit

tda7432_set.exit:                                 ; preds = %do.end.i, %if.end57.tda7432_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #6
  br label %cleanup

cleanup:                                          ; preds = %tda7432_set.exit, %if.then29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then29 ], [ 0, %tda7432_set.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda7432_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #6
  %4 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 2
  %6 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 3
  %7 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 4
  %8 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 8
  %9 = getelementptr inbounds i8, ptr %buf.i, i32 9
  %10 = call ptr @memset(ptr %9, i32 255, i32 7)
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf.i, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 24, ptr %4, align 1
  %13 = load i32, ptr @loudness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 59, i8 -69
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.store.select.i, ptr %5, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %6, align 1
  %conv10.i = trunc i32 %13 to i8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %7, align 1
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.i, ptr %8, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 9, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 9
  br i1 %cmp.not.i, label %entry.tda7432_set.exit_crit_edge, label %do.end.i

entry.tda7432_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda7432_set.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i) #9
  br label %tda7432_set.exit

tda7432_set.exit:                                 ; preds = %do.end.i, %entry.tda7432_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #6
  call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  %hdl = getelementptr inbounds %struct.tda7432, ptr %1, i32 0, i32 1
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda7432_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl = getelementptr inbounds %struct.tda7432, ptr %sd, i32 0, i32 1
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda7432_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buffer.i187 = alloca [2 x i8], align 1
  %buffer.i168 = alloca [2 x i8], align 1
  %buffer.i149 = alloca [2 x i8], align 1
  %buffer.i130 = alloca [2 x i8], align 1
  %buffer.i111 = alloca [2 x i8], align 1
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963785, label %sw.bb
    i32 9963781, label %sw.bb36
    i32 9963783, label %sw.bb48
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = getelementptr i8, ptr %1, i32 192
  %balance = getelementptr i8, ptr %1, i32 196
  %6 = ptrtoint ptr %balance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %balance, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  %10 = trunc i32 %9 to i8
  %conv = sub i8 0, %10
  %11 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %12 = trunc i32 %11 to i8
  %rr.0 = select i1 %cmp, i8 %conv, i8 0
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  %17 = or i8 %12, 32
  %18 = or i8 %rr.0, 32
  %lf.1 = select i1 %tobool.not, i8 %12, i8 %17
  %rf.1 = select i1 %tobool.not, i8 %rr.0, i8 %18
  %conv28 = zext i8 %lf.1 to i32
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %19 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #6
  %21 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp sgt i32 %22, 1
  br i1 %cmp.i, label %do.end.i, label %sw.bb.do.body5.i_crit_edge

sw.bb.do.body5.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr i8, ptr %1, i32 -80
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i) #9
  %.pr.i = load i32, ptr @debug, align 4
  br label %do.body5.i

do.body5.i:                                       ; preds = %do.end.i, %sw.bb.do.body5.i_crit_edge
  %23 = phi i32 [ %22, %sw.bb.do.body5.i_crit_edge ], [ %.pr.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp6.i = icmp sgt i32 %23, 0
  br i1 %cmp6.i, label %do.end10.i, label %do.body5.i.do.end17.i_crit_edge

do.body5.i.do.end17.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i

do.end10.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  %name12.i = getelementptr i8, ptr %1, i32 -80
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i, i32 noundef 3, i32 noundef %conv28) #9
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end10.i, %do.body5.i.do.end17.i_crit_edge
  %24 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %buffer.i, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %lf.1, ptr %21, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp22.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp22.not.i, label %do.end17.i.tda7432_write.exit_crit_edge, label %do.end27.i

do.end17.i.tda7432_write.exit_crit_edge:          ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda7432_write.exit

do.end27.i:                                       ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %name29.i = getelementptr i8, ptr %1, i32 -80
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name29.i, i32 noundef 3, i32 noundef %conv28) #9
  br label %tda7432_write.exit

tda7432_write.exit:                               ; preds = %do.end27.i, %do.end17.i.tda7432_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #6
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i111) #6
  %28 = getelementptr inbounds [2 x i8], ptr %buffer.i111, i32 0, i32 1
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i113 = icmp sgt i32 %29, 1
  br i1 %cmp.i113, label %do.end.i117, label %tda7432_write.exit.do.body5.i119_crit_edge

tda7432_write.exit.do.body5.i119_crit_edge:       ; preds = %tda7432_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i119

do.end.i117:                                      ; preds = %tda7432_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name.i114 = getelementptr i8, ptr %1, i32 -80
  %call2.i115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i114) #9
  %.pr.i116 = load i32, ptr @debug, align 4
  br label %do.body5.i119

do.body5.i119:                                    ; preds = %do.end.i117, %tda7432_write.exit.do.body5.i119_crit_edge
  %30 = phi i32 [ %29, %tda7432_write.exit.do.body5.i119_crit_edge ], [ %.pr.i116, %do.end.i117 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp6.i118 = icmp sgt i32 %30, 0
  br i1 %cmp6.i118, label %do.end10.i122, label %do.body5.i119.do.end17.i125_crit_edge

do.body5.i119.do.end17.i125_crit_edge:            ; preds = %do.body5.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i125

do.end10.i122:                                    ; preds = %do.body5.i119
  call void @__sanitizer_cov_trace_pc() #8
  %name12.i120 = getelementptr i8, ptr %1, i32 -80
  %call14.i121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i120, i32 noundef 4, i32 noundef %conv28) #9
  br label %do.end17.i125

do.end17.i125:                                    ; preds = %do.end10.i122, %do.body5.i119.do.end17.i125_crit_edge
  %31 = ptrtoint ptr %buffer.i111 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %buffer.i111, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %lf.1, ptr %28, align 1
  %call.i.i123 = call i32 @i2c_transfer_buffer_flags(ptr noundef %27, ptr noundef nonnull %buffer.i111, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i123)
  %cmp22.not.i124 = icmp eq i32 %call.i.i123, 2
  br i1 %cmp22.not.i124, label %do.end17.i125.tda7432_write.exit129_crit_edge, label %do.end27.i128

do.end17.i125.tda7432_write.exit129_crit_edge:    ; preds = %do.end17.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda7432_write.exit129

do.end27.i128:                                    ; preds = %do.end17.i125
  call void @__sanitizer_cov_trace_pc() #8
  %name29.i126 = getelementptr i8, ptr %1, i32 -80
  %call31.i127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name29.i126, i32 noundef 4, i32 noundef %conv28) #9
  br label %tda7432_write.exit129

tda7432_write.exit129:                            ; preds = %do.end27.i128, %do.end17.i125.tda7432_write.exit129_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i111) #6
  %conv32 = zext i8 %rf.1 to i32
  %33 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i130) #6
  %35 = getelementptr inbounds [2 x i8], ptr %buffer.i130, i32 0, i32 1
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i132 = icmp sgt i32 %36, 1
  br i1 %cmp.i132, label %do.end.i136, label %tda7432_write.exit129.do.body5.i138_crit_edge

tda7432_write.exit129.do.body5.i138_crit_edge:    ; preds = %tda7432_write.exit129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i138

do.end.i136:                                      ; preds = %tda7432_write.exit129
  call void @__sanitizer_cov_trace_pc() #8
  %name.i133 = getelementptr i8, ptr %1, i32 -80
  %call2.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i133) #9
  %.pr.i135 = load i32, ptr @debug, align 4
  br label %do.body5.i138

do.body5.i138:                                    ; preds = %do.end.i136, %tda7432_write.exit129.do.body5.i138_crit_edge
  %37 = phi i32 [ %36, %tda7432_write.exit129.do.body5.i138_crit_edge ], [ %.pr.i135, %do.end.i136 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp6.i137 = icmp sgt i32 %37, 0
  br i1 %cmp6.i137, label %do.end10.i141, label %do.body5.i138.do.end17.i144_crit_edge

do.body5.i138.do.end17.i144_crit_edge:            ; preds = %do.body5.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i144

do.end10.i141:                                    ; preds = %do.body5.i138
  call void @__sanitizer_cov_trace_pc() #8
  %name12.i139 = getelementptr i8, ptr %1, i32 -80
  %call14.i140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i139, i32 noundef 5, i32 noundef %conv32) #9
  br label %do.end17.i144

do.end17.i144:                                    ; preds = %do.end10.i141, %do.body5.i138.do.end17.i144_crit_edge
  %38 = ptrtoint ptr %buffer.i130 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 5, ptr %buffer.i130, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %rf.1, ptr %35, align 1
  %call.i.i142 = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buffer.i130, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i142)
  %cmp22.not.i143 = icmp eq i32 %call.i.i142, 2
  br i1 %cmp22.not.i143, label %do.end17.i144.tda7432_write.exit148_crit_edge, label %do.end27.i147

do.end17.i144.tda7432_write.exit148_crit_edge:    ; preds = %do.end17.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda7432_write.exit148

do.end27.i147:                                    ; preds = %do.end17.i144
  call void @__sanitizer_cov_trace_pc() #8
  %name29.i145 = getelementptr i8, ptr %1, i32 -80
  %call31.i146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name29.i145, i32 noundef 5, i32 noundef %conv32) #9
  br label %tda7432_write.exit148

tda7432_write.exit148:                            ; preds = %do.end27.i147, %do.end17.i144.tda7432_write.exit148_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i130) #6
  %40 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i149) #6
  %42 = getelementptr inbounds [2 x i8], ptr %buffer.i149, i32 0, i32 1
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i151 = icmp sgt i32 %43, 1
  br i1 %cmp.i151, label %do.end.i155, label %tda7432_write.exit148.do.body5.i157_crit_edge

tda7432_write.exit148.do.body5.i157_crit_edge:    ; preds = %tda7432_write.exit148
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i157

do.end.i155:                                      ; preds = %tda7432_write.exit148
  call void @__sanitizer_cov_trace_pc() #8
  %name.i152 = getelementptr i8, ptr %1, i32 -80
  %call2.i153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i152) #9
  %.pr.i154 = load i32, ptr @debug, align 4
  br label %do.body5.i157

do.body5.i157:                                    ; preds = %do.end.i155, %tda7432_write.exit148.do.body5.i157_crit_edge
  %44 = phi i32 [ %43, %tda7432_write.exit148.do.body5.i157_crit_edge ], [ %.pr.i154, %do.end.i155 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp6.i156 = icmp sgt i32 %44, 0
  br i1 %cmp6.i156, label %do.end10.i160, label %do.body5.i157.do.end17.i163_crit_edge

do.body5.i157.do.end17.i163_crit_edge:            ; preds = %do.body5.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i163

do.end10.i160:                                    ; preds = %do.body5.i157
  call void @__sanitizer_cov_trace_pc() #8
  %name12.i158 = getelementptr i8, ptr %1, i32 -80
  %call14.i159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i158, i32 noundef 6, i32 noundef %conv32) #9
  br label %do.end17.i163

do.end17.i163:                                    ; preds = %do.end10.i160, %do.body5.i157.do.end17.i163_crit_edge
  %45 = ptrtoint ptr %buffer.i149 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 6, ptr %buffer.i149, align 1
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %rf.1, ptr %42, align 1
  %call.i.i161 = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %buffer.i149, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i161)
  %cmp22.not.i162 = icmp eq i32 %call.i.i161, 2
  br i1 %cmp22.not.i162, label %do.end17.i163.tda7432_write.exit167_crit_edge, label %do.end27.i166

do.end17.i163.tda7432_write.exit167_crit_edge:    ; preds = %do.end17.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda7432_write.exit167

do.end27.i166:                                    ; preds = %do.end17.i163
  call void @__sanitizer_cov_trace_pc() #8
  %name29.i164 = getelementptr i8, ptr %1, i32 -80
  %call31.i165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name29.i164, i32 noundef 6, i32 noundef %conv32) #9
  br label %tda7432_write.exit167

tda7432_write.exit167:                            ; preds = %do.end27.i166, %do.end17.i163.tda7432_write.exit167_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i149) #6
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val37, align 4
  %49 = trunc i32 %48 to i8
  %conv39 = sub i8 111, %49
  %50 = load i32, ptr @loudness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool40.not = icmp eq i32 %50, 0
  %51 = or i8 %conv39, -128
  %spec.select = select i1 %tobool40.not, i8 %conv39, i8 %51
  %conv46 = zext i8 %spec.select to i32
  %dev_priv.i.i169 = getelementptr i8, ptr %1, i32 -44
  %52 = ptrtoint ptr %dev_priv.i.i169 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i169, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i168) #6
  %54 = getelementptr inbounds [2 x i8], ptr %buffer.i168, i32 0, i32 1
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i170 = icmp sgt i32 %55, 1
  br i1 %cmp.i170, label %do.end.i174, label %sw.bb36.do.body5.i176_crit_edge

sw.bb36.do.body5.i176_crit_edge:                  ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i176

do.end.i174:                                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  %name.i171 = getelementptr i8, ptr %1, i32 -80
  %call2.i172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i171) #9
  %.pr.i173 = load i32, ptr @debug, align 4
  br label %do.body5.i176

do.body5.i176:                                    ; preds = %do.end.i174, %sw.bb36.do.body5.i176_crit_edge
  %56 = phi i32 [ %55, %sw.bb36.do.body5.i176_crit_edge ], [ %.pr.i173, %do.end.i174 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp6.i175 = icmp sgt i32 %56, 0
  br i1 %cmp6.i175, label %do.end10.i179, label %do.body5.i176.do.end17.i182_crit_edge

do.body5.i176.do.end17.i182_crit_edge:            ; preds = %do.body5.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i182

do.end10.i179:                                    ; preds = %do.body5.i176
  call void @__sanitizer_cov_trace_pc() #8
  %name12.i177 = getelementptr i8, ptr %1, i32 -80
  %call14.i178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i177, i32 noundef 1, i32 noundef %conv46) #9
  br label %do.end17.i182

do.end17.i182:                                    ; preds = %do.end10.i179, %do.body5.i176.do.end17.i182_crit_edge
  %57 = ptrtoint ptr %buffer.i168 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %buffer.i168, align 1
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %spec.select, ptr %54, align 1
  %call.i.i180 = call i32 @i2c_transfer_buffer_flags(ptr noundef %53, ptr noundef nonnull %buffer.i168, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i180)
  %cmp22.not.i181 = icmp eq i32 %call.i.i180, 2
  br i1 %cmp22.not.i181, label %do.end17.i182.tda7432_write.exit186_crit_edge, label %do.end27.i185

do.end17.i182.tda7432_write.exit186_crit_edge:    ; preds = %do.end17.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda7432_write.exit186

do.end27.i185:                                    ; preds = %do.end17.i182
  call void @__sanitizer_cov_trace_pc() #8
  %name29.i183 = getelementptr i8, ptr %1, i32 -80
  %call31.i184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name29.i183, i32 noundef 1, i32 noundef %conv46) #9
  br label %tda7432_write.exit186

tda7432_write.exit186:                            ; preds = %do.end27.i185, %do.end17.i182.tda7432_write.exit186_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i168) #6
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  %59 = getelementptr i8, ptr %1, i32 184
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %val50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %61, i32 0, i32 22
  %62 = ptrtoint ptr %val50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val50, align 4
  %treble52 = getelementptr i8, ptr %1, i32 188
  %64 = ptrtoint ptr %treble52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %treble52, align 4
  %val53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 22
  %66 = ptrtoint ptr %val53 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val53, align 4
  %conv55 = and i32 %63, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv55)
  %cmp56.not = icmp eq i32 %conv55, 0
  %sub61 = sub i32 22, %63
  %spec.select109 = select i1 %cmp56.not, i32 %63, i32 %sub61
  %conv64 = and i32 %67, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv64)
  %cmp65.not = icmp eq i32 %conv64, 0
  %sub70 = sub i32 22, %67
  %treble.0.in = select i1 %cmp65.not, i32 %67, i32 %sub70
  %conv73 = shl i32 %spec.select109, 4
  %shl = and i32 %conv73, 4064
  %conv75 = and i32 %treble.0.in, 239
  %or74 = or i32 %shl, %conv75
  %or76 = or i32 %or74, 16
  %dev_priv.i.i188 = getelementptr i8, ptr %1, i32 -44
  %68 = ptrtoint ptr %dev_priv.i.i188 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i188, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i187) #6
  %70 = getelementptr inbounds [2 x i8], ptr %buffer.i187, i32 0, i32 1
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i189 = icmp sgt i32 %71, 1
  br i1 %cmp.i189, label %do.end.i193, label %sw.bb48.do.body5.i195_crit_edge

sw.bb48.do.body5.i195_crit_edge:                  ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i195

do.end.i193:                                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #8
  %name.i190 = getelementptr i8, ptr %1, i32 -80
  %call2.i191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i190) #9
  %.pr.i192 = load i32, ptr @debug, align 4
  br label %do.body5.i195

do.body5.i195:                                    ; preds = %do.end.i193, %sw.bb48.do.body5.i195_crit_edge
  %72 = phi i32 [ %71, %sw.bb48.do.body5.i195_crit_edge ], [ %.pr.i192, %do.end.i193 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp6.i194 = icmp sgt i32 %72, 0
  br i1 %cmp6.i194, label %do.end10.i198, label %do.body5.i195.do.end17.i201_crit_edge

do.body5.i195.do.end17.i201_crit_edge:            ; preds = %do.body5.i195
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i201

do.end10.i198:                                    ; preds = %do.body5.i195
  call void @__sanitizer_cov_trace_pc() #8
  %name12.i196 = getelementptr i8, ptr %1, i32 -80
  %call14.i197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i196, i32 noundef 2, i32 noundef %or76) #9
  br label %do.end17.i201

do.end17.i201:                                    ; preds = %do.end10.i198, %do.body5.i195.do.end17.i201_crit_edge
  %73 = ptrtoint ptr %buffer.i187 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 2, ptr %buffer.i187, align 1
  %conv18.i = trunc i32 %or76 to i8
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv18.i, ptr %70, align 1
  %call.i.i199 = call i32 @i2c_transfer_buffer_flags(ptr noundef %69, ptr noundef nonnull %buffer.i187, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i199)
  %cmp22.not.i200 = icmp eq i32 %call.i.i199, 2
  br i1 %cmp22.not.i200, label %do.end17.i201.tda7432_write.exit205_crit_edge, label %do.end27.i204

do.end17.i201.tda7432_write.exit205_crit_edge:    ; preds = %do.end17.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda7432_write.exit205

do.end27.i204:                                    ; preds = %do.end17.i201
  call void @__sanitizer_cov_trace_pc() #8
  %name29.i202 = getelementptr i8, ptr %1, i32 -80
  %call31.i203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name29.i202, i32 noundef 2, i32 noundef %or76) #9
  br label %tda7432_write.exit205

tda7432_write.exit205:                            ; preds = %do.end27.i204, %do.end17.i201.tda7432_write.exit205_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i187) #6
  br label %cleanup

cleanup:                                          ; preds = %tda7432_write.exit205, %tda7432_write.exit186, %tda7432_write.exit167, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tda7432_write.exit205 ], [ 0, %tda7432_write.exit186 ], [ 0, %tda7432_write.exit167 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tda7432.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/tda7432.c", i32 46, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/tda7432.c", i32 47, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/tda7432.c", i32 52, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/tda7432.c", i32 53, i32 1}
!12 = !{ptr @__param_loudness, !13, !"__param_loudness", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/tda7432.c", i32 54, i32 1}
!14 = !{ptr @__UNIQUE_ID_loudnesstype298, !13, !"__UNIQUE_ID_loudnesstype298", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_loudness299, !16, !"__UNIQUE_ID_loudness299", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/tda7432.c", i32 55, i32 1}
!17 = !{ptr @__param_maxvol, !18, !"__param_maxvol", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/tda7432.c", i32 56, i32 1}
!19 = !{ptr @__UNIQUE_ID_maxvoltype300, !18, !"__UNIQUE_ID_maxvoltype300", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_maxvol301, !21, !"__UNIQUE_ID_maxvol301", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/tda7432.c", i32 57, i32 1}
!22 = !{ptr @__initcall__kmod_tda7432__302_419_tda7432_driver_init6, !23, !"__initcall__kmod_tda7432__302_419_tda7432_driver_init6", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/tda7432.c", i32 419, i32 1}
!24 = !{ptr @__exitcall_tda7432_driver_exit, !23, !"__exitcall_tda7432_driver_exit", i1 false, i1 false}
!25 = !{ptr @maxvol, !26, !"maxvol", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/tda7432.c", i32 49, i32 12}
!27 = !{ptr @loudness, !28, !"loudness", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/tda7432.c", i32 50, i32 12}
!29 = !{ptr @debug, !30, !"debug", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/tda7432.c", i32 51, i32 12}
!31 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!32 = !{ptr @__param_str_loudness, !13, !"__param_str_loudness", i1 false, i1 false}
!33 = !{ptr @__param_str_maxvol, !18, !"__param_str_maxvol", i1 false, i1 false}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/tda7432.c", i32 412, i32 11}
!36 = !{ptr @tda7432_driver, !37, !"tda7432_driver", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/tda7432.c", i32 410, i32 26}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/tda7432.c", i32 352, i32 2}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tda7432_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @tda7432_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @tda7432_probe._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/tda7432.c", i32 360, i32 2}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/tda7432.c", i32 382, i32 3}
!49 = !{ptr @tda7432_probe._entry.5, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tda7432_probe._entry_ptr.7, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @tda7432_ops, !52, !"tda7432_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/tda7432.c", i32 336, i32 37}
!53 = !{ptr @tda7432_core_ops, !54, !"tda7432_core_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/tda7432.c", i32 332, i32 42}
!55 = !{ptr @tda7432_ctrl_ops, !56, !"tda7432_ctrl_ops", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/tda7432.c", i32 328, i32 35}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/tda7432.c", i32 225, i32 2}
!59 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @tda7432_write._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @tda7432_write._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.11, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/tda7432.c", i32 226, i32 2}
!64 = !{ptr @tda7432_write._entry.10, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tda7432_write._entry_ptr.12, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/tda7432.c", i32 230, i32 3}
!68 = !{ptr @tda7432_write._entry.13, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tda7432_write._entry_ptr.15, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/tda7432.c", i32 256, i32 3}
!72 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tda7432_set._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @tda7432_set._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @tda7432_id, !76, !"tda7432_id", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/tda7432.c", i32 404, i32 35}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
