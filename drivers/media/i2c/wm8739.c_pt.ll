; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/wm8739.c_pt.bc'
source_filename = "../drivers/media/i2c/wm8739.c"
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
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
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
%struct.wm8739_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, %struct.anon.100, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [33 x i8] c"wm8739.description=wm8739 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [38 x i8] c"wm8739.author=T. Adachi, Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [37 x i8] c"wm8739.file=drivers/media/i2c/wm8739\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"wm8739.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"wm8739.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [26 x i8] c"wm8739.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [36 x i8] c"wm8739.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_wm8739__302_262_wm8739_driver_init6 = internal global ptr @wm8739_driver_init, section ".initcall6.init", align 4
@wm8739_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8739_probe, ptr @wm8739_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8739_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8739_driver_exit = internal global ptr @wm8739_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8739\00", [25 x i8] zeroinitializer }, align 32
@wm8739_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8739\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8739_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8739_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/wm8739.c\00", [37 x i8] zeroinitializer }, align 32
@wm8739_probe._entry_ptr = internal global ptr @wm8739_probe._entry, section ".printk_index", align 4
@wm8739_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @wm8739_core_ops, ptr null, ptr @wm8739_audio_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@wm8739_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wm8739:199:(&state->hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@wm8739_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @wm8739_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@wm8739_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @wm8739_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wm8739_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr @wm8739_s_clock_freq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@wm8739_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Frequency: %u Hz\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8739_log_status\00", [46 x i8] zeroinitializer }, align 32
@wm8739_log_status._entry_ptr = internal global ptr @wm8739_log_status._entry, section ".printk_index", align 4
@wm8739_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Invalid register R%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8739_write\00", [19 x i8] zeroinitializer }, align 32
@wm8739_write._entry_ptr = internal global ptr @wm8739_write._entry, section ".printk_index", align 4
@wm8739_write._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: write: %02x %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8739_write._entry_ptr.11 = internal global ptr @wm8739_write._entry.9, section ".printk_index", align 4
@wm8739_write._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: I2C: cannot write %03x to register R%d\0A\00", [50 x i8] zeroinitializer }, align 32
@wm8739_write._entry_ptr.14 = internal global ptr @wm8739_write._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 25, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"wm8739_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 253, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 255, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"wm8739_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 247, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 191, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"wm8739_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 172, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 199, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"wm8739_ctrl_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 160, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"wm8739_core_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 164, i32 42 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"wm8739_audio_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 168, i32 43 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 153, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 70, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 74, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [30 x i8] c"../drivers/media/i2c/wm8739.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 80, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_wm8739_driver_exit, ptr @__initcall__kmod_wm8739__302_262_wm8739_driver_init6, ptr @__param_debug, ptr @wm8739_driver_exit, ptr @wm8739_log_status._entry, ptr @wm8739_log_status._entry_ptr, ptr @wm8739_probe._entry, ptr @wm8739_probe._entry_ptr, ptr @wm8739_write._entry, ptr @wm8739_write._entry.12, ptr @wm8739_write._entry.9, ptr @wm8739_write._entry_ptr, ptr @wm8739_write._entry_ptr.11, ptr @wm8739_write._entry_ptr.14, ptr @debug, ptr @wm8739_driver, ptr @.str, ptr @wm8739_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wm8739_ops, ptr @wm8739_probe._key, ptr @.str.4, ptr @wm8739_ctrl_ops, ptr @wm8739_core_ops, ptr @wm8739_audio_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_write._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8739_write._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8739_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8739_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8739_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8739_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8739_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
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
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 396, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @wm8739_ops) #5
  %hdl = getelementptr inbounds %struct.wm8739_state, ptr %call.i, i32 0, i32 1
  %call15 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 2, ptr noundef nonnull @wm8739_probe._key, ptr noundef nonnull @.str.4) #5
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @wm8739_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 50736) #5
  %16 = getelementptr inbounds %struct.wm8739_state, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call17, ptr %16, align 4
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @wm8739_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %mute = getelementptr inbounds %struct.wm8739_state, ptr %call.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call19, ptr %mute, align 4
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @wm8739_ctrl_ops, i32 noundef 9963782, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 32768) #5
  %balance = getelementptr inbounds %struct.wm8739_state, ptr %call.i, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %balance to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call21, ptr %balance, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.wm8739_state, ptr %call.i, i32 0, i32 1, i32 9
  %21 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not = icmp eq i32 %22, 0
  br i1 %tobool24.not, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  br label %cleanup

if.end29:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_cluster(i32 noundef 3, ptr noundef %16) #5
  %clock_freq = getelementptr inbounds %struct.wm8739_state, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %clock_freq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 48000, ptr %clock_freq, align 4
  tail call fastcc void @wm8739_write(ptr noundef nonnull %call.i, i32 noundef 15, i16 noundef zeroext 0)
  tail call fastcc void @wm8739_write(ptr noundef nonnull %call.i, i32 noundef 5, i16 noundef zeroext 0)
  tail call fastcc void @wm8739_write(ptr noundef nonnull %call.i, i32 noundef 6, i16 noundef zeroext 0)
  tail call fastcc void @wm8739_write(ptr noundef nonnull %call.i, i32 noundef 7, i16 noundef zeroext 73)
  tail call fastcc void @wm8739_write(ptr noundef nonnull %call.i, i32 noundef 8, i16 noundef zeroext 0)
  tail call fastcc void @wm8739_write(ptr noundef nonnull %call.i, i32 noundef 9, i16 noundef zeroext 1)
  %call38 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then25, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then25 ], [ 0, %if.end29 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8739_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  %hdl = getelementptr inbounds %struct.wm8739_state, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8739_write(ptr noundef %sd, i32 noundef %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %do.end8, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name10 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv = zext i16 %val to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name10, i32 noundef %reg, i32 noundef %conv) #8
  br label %do.end15

do.end15:                                         ; preds = %do.end8, %entry.do.end15_crit_edge
  %shl = shl i32 %reg, 1
  %3 = lshr i16 %val, 8
  %4 = zext i16 %3 to i32
  %or = or i32 %shl, %4
  %conv19 = trunc i32 %or to i8
  %conv21 = trunc i16 %val to i8
  %call22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv19, i8 noundef zeroext %conv21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %do.end15.cleanup_crit_edge, label %for.cond

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %do.end15
  %call22.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv19, i8 noundef zeroext %conv21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.1)
  %cmp23.1 = icmp eq i32 %call22.1, 0
  br i1 %cmp23.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call22.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv19, i8 noundef zeroext %conv21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.2)
  %cmp23.2 = icmp eq i32 %call22.2, 0
  br i1 %cmp23.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  %name31 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv33 = zext i16 %val to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name31, i32 noundef %conv33, i32 noundef %reg) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end15.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8739_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %clock_freq = getelementptr inbounds %struct.wm8739_state, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_freq, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %1) #8
  %hdl = getelementptr inbounds %struct.wm8739_state, ptr %sd, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8739_s_clock_freq(ptr noundef %sd, i32 noundef %audiofreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_freq = getelementptr inbounds %struct.wm8739_state, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %clock_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %audiofreq, ptr %clock_freq, align 4
  tail call fastcc void @wm8739_write(ptr noundef %sd, i32 noundef 9, i16 noundef zeroext 0)
  %1 = zext i32 %audiofreq to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %audiofreq, label %entry.sw.epilog_crit_edge [
    i32 44100, label %entry.sw.epilog.sink.split_crit_edge
    i32 48000, label %sw.bb3
    i32 32000, label %sw.bb5
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ 24, %sw.bb5 ], [ 0, %sw.bb3 ], [ 32, %entry.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @wm8739_write(ptr noundef %sd, i32 noundef 8, i16 noundef zeroext %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  tail call fastcc void @wm8739_write(ptr noundef %sd, i32 noundef 9, i16 noundef zeroext 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8739_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963781, i32 %1)
  %cond40 = icmp eq i32 %1, 9963781
  br i1 %cond40, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -196
  %4 = getelementptr i8, ptr %3, i32 184
  %balance = getelementptr i8, ptr %3, i32 192
  %5 = ptrtoint ptr %balance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %balance, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %sub = sub i32 65536, %8
  %9 = tail call i32 @llvm.smin.i32(i32 %sub, i32 32768)
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val2, align 4
  %mul = mul i32 %9, %13
  %div = sdiv i32 %mul, 32768
  %14 = tail call i32 @llvm.smin.i32(i32 %8, i32 32768)
  %mul13 = mul i32 %13, %14
  %div14 = sdiv i32 %mul13, 32768
  %mul15 = mul nsw i32 %div, 31
  %div16 = sdiv i32 %mul15, 65535
  %mul17 = mul nsw i32 %div14, 31
  %div18 = sdiv i32 %mul17, 65535
  %mute20 = getelementptr i8, ptr %3, i32 188
  %15 = ptrtoint ptr %mute20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mute20, align 4
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %and = and i32 %div16, 31
  %conv25 = select i1 %tobool.not, i32 0, i32 128
  %or = or i32 %and, %conv25
  %conv26 = trunc i32 %or to i16
  tail call fastcc void @wm8739_write(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %conv26)
  %and29 = and i32 %div18, 31
  %or31 = or i32 %and29, %conv25
  %conv32 = trunc i32 %or31 to i16
  tail call fastcc void @wm8739_write(ptr noundef %add.ptr.i, i32 noundef 1, i16 noundef zeroext %conv32)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/wm8739.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/wm8739.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/wm8739.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/wm8739.c", i32 27, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/wm8739.c", i32 29, i32 1}
!12 = !{ptr @__initcall__kmod_wm8739__302_262_wm8739_driver_init6, !13, !"__initcall__kmod_wm8739__302_262_wm8739_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/wm8739.c", i32 262, i32 1}
!14 = !{ptr @__exitcall_wm8739_driver_exit, !13, !"__exitcall_wm8739_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/wm8739.c", i32 25, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/wm8739.c", i32 255, i32 11}
!20 = !{ptr @wm8739_driver, !21, !"wm8739_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/wm8739.c", i32 253, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/wm8739.c", i32 191, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wm8739_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @wm8739_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @wm8739_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/wm8739.c", i32 199, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wm8739_ops, !32, !"wm8739_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/wm8739.c", i32 172, i32 37}
!33 = !{ptr @wm8739_core_ops, !34, !"wm8739_core_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/wm8739.c", i32 164, i32 42}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/wm8739.c", i32 153, i32 2}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wm8739_log_status._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @wm8739_log_status._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @wm8739_audio_ops, !41, !"wm8739_audio_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/wm8739.c", i32 168, i32 43}
!42 = !{ptr @wm8739_ctrl_ops, !43, !"wm8739_ctrl_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/wm8739.c", i32 160, i32 35}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/wm8739.c", i32 70, i32 3}
!46 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @wm8739_write._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @wm8739_write._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/wm8739.c", i32 74, i32 2}
!51 = !{ptr @wm8739_write._entry.9, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @wm8739_write._entry_ptr.11, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/wm8739.c", i32 80, i32 2}
!55 = !{ptr @wm8739_write._entry.12, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @wm8739_write._entry_ptr.14, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @wm8739_id, !58, !"wm8739_id", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/wm8739.c", i32 247, i32 35}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
