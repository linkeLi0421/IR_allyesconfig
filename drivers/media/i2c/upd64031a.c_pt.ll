; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/upd64031a.c_pt.bc'
source_filename = "../drivers/media/i2c/upd64031a.c"
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
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.upd64031a_state = type { %struct.v4l2_subdev, [16 x i8], i8, i8, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }

@__UNIQUE_ID_description292 = internal constant [39 x i8] c"upd64031a.description=uPD64031A driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [58 x i8] c"upd64031a.author=T. Adachi, Takeru KOMORIYA, Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [43 x i8] c"upd64031a.file=drivers/media/i2c/upd64031a\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"upd64031a.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [16 x i8] c"upd64031a.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [29 x i8] c"upd64031a.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [39 x i8] c"upd64031a.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_upd64031a__298_238_upd64031a_driver_init6 = internal global ptr @upd64031a_driver_init, section ".initcall6.init", align 4
@upd64031a_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @upd64031a_probe, ptr @upd64031a_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @upd64031a_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_upd64031a_driver_exit = internal global ptr @upd64031a_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"upd64031a\00", [22 x i8] zeroinitializer }, align 32
@upd64031a_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"upd64031a\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@upd64031a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"upd64031a_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/i2c/upd64031a.c\00", [34 x i8] zeroinitializer }, align 32
@upd64031a_probe._entry_ptr = internal global ptr @upd64031a_probe._entry, section ".printk_index", align 4
@upd64031a_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @upd64031a_core_ops, ptr @upd64031a_tuner_ops, ptr null, ptr @upd64031a_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@upd64031a_init = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\B8H\D2\E6\03\10\0B\AF\7F\00\00\1D^\00\D0", [16 x i8] zeroinitializer }, align 32
@upd64031a_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @upd64031a_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @upd64031a_g_register, ptr @upd64031a_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@upd64031a_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr @upd64031a_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@upd64031a_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @upd64031a_s_routing, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@upd64031a_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: Status: SA00=0x%02x SA01=0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"upd64031a_log_status\00", [43 x i8] zeroinitializer }, align 32
@upd64031a_log_status._entry_ptr = internal global ptr @upd64031a_log_status._entry, section ".printk_index", align 4
@upd64031a_s_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: changed input or channel\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"upd64031a_s_frequency\00", [42 x i8] zeroinitializer }, align 32
@upd64031a_s_frequency._entry_ptr = internal global ptr @upd64031a_s_frequency._entry, section ".printk_index", align 4
@upd64031a_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: write reg: %02X val: %02X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"upd64031a_write\00", [16 x i8] zeroinitializer }, align 32
@upd64031a_write._entry_ptr = internal global ptr @upd64031a_write._entry, section ".printk_index", align 4
@upd64031a_write._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: I/O error write 0x%02x/0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@upd64031a_write._entry_ptr.12 = internal global ptr @upd64031a_write._entry.10, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 32, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"upd64031a_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 229, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 231, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"upd64031a_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 223, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 196, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"upd64031a_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 176, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"upd64031a_init\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 63, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"upd64031a_core_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 160, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"upd64031a_tuner_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 168, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"upd64031a_video_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 172, i32 43 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 138, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 105, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 92, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [33 x i8] c"../drivers/media/i2c/upd64031a.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 94, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_upd64031a_driver_exit, ptr @__initcall__kmod_upd64031a__298_238_upd64031a_driver_init6, ptr @__param_debug, ptr @upd64031a_driver_exit, ptr @upd64031a_log_status._entry, ptr @upd64031a_log_status._entry_ptr, ptr @upd64031a_probe._entry, ptr @upd64031a_probe._entry_ptr, ptr @upd64031a_s_frequency._entry, ptr @upd64031a_s_frequency._entry_ptr, ptr @upd64031a_write._entry, ptr @upd64031a_write._entry.10, ptr @upd64031a_write._entry_ptr, ptr @upd64031a_write._entry_ptr.12, ptr @debug, ptr @upd64031a_driver, ptr @.str, ptr @upd64031a_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @upd64031a_ops, ptr @upd64031a_init, ptr @upd64031a_core_ops, ptr @upd64031a_tuner_ops, ptr @upd64031a_video_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_s_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64031a_write._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64031a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @upd64031a_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @upd64031a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @upd64031a_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64031a_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @upd64031a_ops) #5
  %regs = getelementptr inbounds %struct.upd64031a_state, ptr %call.i, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %regs, ptr @upd64031a_init, i32 16)
  %gr_mode = getelementptr inbounds %struct.upd64031a_state, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %gr_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %gr_mode, align 4
  %direct_3dycs_connect = getelementptr inbounds %struct.upd64031a_state, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %direct_3dycs_connect to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -128, ptr %direct_3dycs_connect, align 1
  %ext_vert_sync = getelementptr inbounds %struct.upd64031a_state, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %ext_vert_sync to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ext_vert_sync, align 1
  %ext_comp_sync = getelementptr inbounds %struct.upd64031a_state, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %ext_comp_sync to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ext_comp_sync, align 2
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %upd64031a_write.exit.for.body_crit_edge, %if.end12
  %i.042 = phi i32 [ 0, %if.end12 ], [ %inc, %upd64031a_write.exit.for.body_crit_edge ]
  %conv17 = trunc i32 %i.042 to i8
  %arrayidx = getelementptr %struct.upd64031a_state, ptr %call.i, i32 0, i32 1, i32 %i.042
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %24 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv17, ptr %buf.i, align 1
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %23, ptr %21, align 1
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i39 = icmp sgt i32 %28, 0
  br i1 %cmp.i39, label %do.end.i, label %for.body.do.end6.i_crit_edge

for.body.do.end6.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = zext i8 %23 to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %i.042, i32 noundef %conv3.i) #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %for.body.do.end6.i_crit_edge
  %call.i.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i41)
  %cmp9.not.i = icmp eq i32 %call.i.i41, 2
  br i1 %cmp9.not.i, label %do.end6.i.upd64031a_write.exit_crit_edge, label %do.end14.i

do.end6.i.upd64031a_write.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64031a_write.exit

do.end14.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i = zext i8 %23 to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i, i32 noundef %i.042, i32 noundef %conv19.i) #8
  br label %upd64031a_write.exit

upd64031a_write.exit:                             ; preds = %do.end14.i, %do.end6.i.upd64031a_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %upd64031a_write.exit.cleanup_crit_edge, label %upd64031a_write.exit.for.body_crit_edge

upd64031a_write.exit.for.body_crit_edge:          ; preds = %upd64031a_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

upd64031a_write.exit.cleanup_crit_edge:           ; preds = %upd64031a_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %upd64031a_write.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %upd64031a_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64031a_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
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
define internal i32 @upd64031a_log_status(ptr noundef %sd) #2 align 64 {
entry:
  %buf.i6 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf.i, align 1, !annotation !68
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !68
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 1) #5
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i6) #5
  %9 = ptrtoint ptr %buf.i6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %buf.i6, align 1, !annotation !68
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i6, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !68
  %call.i.i8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf.i6, i32 noundef 2, i16 noundef zeroext 1) #5
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i6) #5
  %conv2 = zext i8 %13 to i32
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64031a_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf.i, align 1, !annotation !68
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !68
  %7 = and i64 %1, 254
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i.not = icmp eq i64 %7, 0
  br i1 %cmp.i.not, label %if.end.i, label %entry.upd64031a_read.exit_crit_edge

entry.upd64031a_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64031a_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = trunc i64 %1 to i32
  %conv.i = and i32 %8, 255
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 1) #5
  %arrayidx.i = getelementptr [2 x i8], ptr %buf.i, i32 0, i32 %conv.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  br label %upd64031a_read.exit

upd64031a_read.exit:                              ; preds = %if.end.i, %entry.upd64031a_read.exit_crit_edge
  %retval.0.i = phi i8 [ %10, %if.end.i ], [ -1, %entry.upd64031a_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %conv2 = zext i8 %retval.0.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %11 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %conv2, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 1, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64031a_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %3 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3, ptr %6, align 1
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp sgt i32 %9, 0
  br i1 %cmp.i, label %do.end.i, label %entry.do.end6.i_crit_edge

entry.do.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %10 = trunc i64 %1 to i32
  %conv.i = and i32 %10, 255
  %11 = trunc i64 %3 to i32
  %conv3.i = and i32 %11, 255
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv3.i) #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %entry.do.end6.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp9.not.i, label %do.end6.i.upd64031a_write.exit_crit_edge, label %do.end14.i

do.end6.i.upd64031a_write.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64031a_write.exit

do.end14.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %12 = trunc i64 %1 to i32
  %conv18.i = and i32 %12, 255
  %13 = trunc i64 %3 to i32
  %conv19.i = and i32 %13, 255
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name16.i, i32 noundef %conv18.i, i32 noundef %conv19.i) #8
  br label %upd64031a_write.exit

upd64031a_write.exit:                             ; preds = %do.end14.i, %do.end6.i.upd64031a_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64031a_s_frequency(ptr noundef %sd, ptr nocapture noundef readnone %freq) #2 align 64 {
entry:
  %buf.i12 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.upd64031a_state, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regs, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %or = or i8 %1, 16
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or, ptr %5, align 1
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp sgt i32 %8, 0
  br i1 %cmp.i, label %do.end.i, label %do.end4.do.end6.i_crit_edge

do.end4.do.end6.i_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i = zext i8 %or to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef 0, i32 noundef %conv3.i) #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.end4.do.end6.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp9.not.i, label %do.end6.i.upd64031a_write.exit_crit_edge, label %do.end14.i

do.end6.i.upd64031a_write.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64031a_write.exit

do.end14.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv19.i = zext i8 %or to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name16.i, i32 noundef 0, i32 noundef %conv19.i) #8
  br label %upd64031a_write.exit

upd64031a_write.exit:                             ; preds = %do.end14.i, %do.end6.i.upd64031a_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %9 = and i8 %1, -17
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i12) #5
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i12, i32 0, i32 1
  %13 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.i12, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %12, align 1
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i14 = icmp sgt i32 %15, 0
  br i1 %cmp.i14, label %do.end.i18, label %upd64031a_write.exit.do.end6.i21_crit_edge

upd64031a_write.exit.do.end6.i21_crit_edge:       ; preds = %upd64031a_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i21

do.end.i18:                                       ; preds = %upd64031a_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i15 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i16 = zext i8 %9 to i32
  %call4.i17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i15, i32 noundef 0, i32 noundef %conv3.i16) #8
  br label %do.end6.i21

do.end6.i21:                                      ; preds = %do.end.i18, %upd64031a_write.exit.do.end6.i21_crit_edge
  %call.i.i19 = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %buf.i12, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i19)
  %cmp9.not.i20 = icmp eq i32 %call.i.i19, 2
  br i1 %cmp9.not.i20, label %do.end6.i21.upd64031a_write.exit26_crit_edge, label %do.end14.i25

do.end6.i21.upd64031a_write.exit26_crit_edge:     ; preds = %do.end6.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64031a_write.exit26

do.end14.i25:                                     ; preds = %do.end6.i21
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i22 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv19.i23 = zext i8 %9 to i32
  %call20.i24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name16.i22, i32 noundef 0, i32 noundef %conv19.i23) #8
  br label %upd64031a_write.exit26

upd64031a_write.exit26:                           ; preds = %do.end14.i25, %do.end6.i21.upd64031a_write.exit26_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i12) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64031a_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  %buf.i73 = alloca [2 x i8], align 1
  %buf.i58 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %input.tr = trunc i32 %input to i8
  %conv = shl i8 %input.tr, 6
  %gr_mode = getelementptr inbounds %struct.upd64031a_state, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %gr_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %gr_mode, align 4
  %1 = shl i8 %input.tr, 4
  %conv3 = and i8 %1, -64
  %direct_3dycs_connect = getelementptr inbounds %struct.upd64031a_state, ptr %sd, i32 0, i32 3
  %2 = ptrtoint ptr %direct_3dycs_connect to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %direct_3dycs_connect, align 1
  %3 = shl i8 %input.tr, 1
  %conv6 = and i8 %3, 32
  %ext_comp_sync = getelementptr inbounds %struct.upd64031a_state, ptr %sd, i32 0, i32 4
  %4 = ptrtoint ptr %ext_comp_sync to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %ext_comp_sync, align 2
  %5 = shl i8 %input.tr, 2
  %conv9 = and i8 %5, -128
  %ext_vert_sync = getelementptr inbounds %struct.upd64031a_state, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %ext_vert_sync to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %ext_vert_sync, align 1
  %regs = getelementptr inbounds %struct.upd64031a_state, ptr %sd, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regs, align 4
  %and11 = and i8 %8, 63
  %or = or i8 %and11, %conv
  %9 = and i8 %8, 95
  %or2155 = or i8 %conv9, %conv6
  %or2456 = or i8 %or2155, %9
  %arrayidx27 = getelementptr %struct.upd64031a_state, ptr %sd, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx27, align 4
  %12 = and i8 %11, 63
  %or3257 = or i8 %12, %conv3
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %15 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %buf.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or, ptr %15, align 1
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp sgt i32 %18, 0
  br i1 %cmp.i, label %do.end.i, label %entry.do.end6.i_crit_edge

entry.do.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i = zext i8 %or to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef 0, i32 noundef %conv3.i) #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %entry.do.end6.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp9.not.i, label %do.end6.i.upd64031a_write.exit_crit_edge, label %do.end14.i

do.end6.i.upd64031a_write.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64031a_write.exit

do.end14.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv19.i = zext i8 %or to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name16.i, i32 noundef 0, i32 noundef %conv19.i) #8
  br label %upd64031a_write.exit

upd64031a_write.exit:                             ; preds = %do.end14.i, %do.end6.i.upd64031a_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %19 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i58) #5
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i58, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i58 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %buf.i58, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or2456, ptr %21, align 1
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i60 = icmp sgt i32 %24, 0
  br i1 %cmp.i60, label %do.end.i64, label %upd64031a_write.exit.do.end6.i67_crit_edge

upd64031a_write.exit.do.end6.i67_crit_edge:       ; preds = %upd64031a_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i67

do.end.i64:                                       ; preds = %upd64031a_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i61 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i62 = zext i8 %or2456 to i32
  %call4.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i61, i32 noundef 5, i32 noundef %conv3.i62) #8
  br label %do.end6.i67

do.end6.i67:                                      ; preds = %do.end.i64, %upd64031a_write.exit.do.end6.i67_crit_edge
  %call.i.i65 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %buf.i58, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i65)
  %cmp9.not.i66 = icmp eq i32 %call.i.i65, 2
  br i1 %cmp9.not.i66, label %do.end6.i67.upd64031a_write.exit72_crit_edge, label %do.end14.i71

do.end6.i67.upd64031a_write.exit72_crit_edge:     ; preds = %do.end6.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64031a_write.exit72

do.end14.i71:                                     ; preds = %do.end6.i67
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i68 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv19.i69 = zext i8 %or2456 to i32
  %call20.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name16.i68, i32 noundef 5, i32 noundef %conv19.i69) #8
  br label %upd64031a_write.exit72

upd64031a_write.exit72:                           ; preds = %do.end14.i71, %do.end6.i67.upd64031a_write.exit72_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i58) #5
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i73) #5
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i73, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %buf.i73, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or3257, ptr %27, align 1
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i75 = icmp sgt i32 %30, 0
  br i1 %cmp.i75, label %do.end.i79, label %upd64031a_write.exit72.do.end6.i82_crit_edge

upd64031a_write.exit72.do.end6.i82_crit_edge:     ; preds = %upd64031a_write.exit72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i82

do.end.i79:                                       ; preds = %upd64031a_write.exit72
  call void @__sanitizer_cov_trace_pc() #7
  %name.i76 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3.i77 = zext i8 %or3257 to i32
  %call4.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i76, i32 noundef 8, i32 noundef %conv3.i77) #8
  br label %do.end6.i82

do.end6.i82:                                      ; preds = %do.end.i79, %upd64031a_write.exit72.do.end6.i82_crit_edge
  %call.i.i80 = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buf.i73, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i80)
  %cmp9.not.i81 = icmp eq i32 %call.i.i80, 2
  br i1 %cmp9.not.i81, label %do.end6.i82.upd64031a_write.exit87_crit_edge, label %do.end14.i86

do.end6.i82.upd64031a_write.exit87_crit_edge:     ; preds = %do.end6.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64031a_write.exit87

do.end14.i86:                                     ; preds = %do.end6.i82
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i83 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv19.i84 = zext i8 %or3257 to i32
  %call20.i85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name16.i83, i32 noundef 8, i32 noundef %conv19.i84) #8
  br label %upd64031a_write.exit87

upd64031a_write.exit87:                           ; preds = %do.end14.i86, %do.end6.i82.upd64031a_write.exit87_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i73) #5
  %call34 = call i32 @upd64031a_s_frequency(ptr noundef %sd, ptr noundef null)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/upd64031a.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/upd64031a.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/upd64031a.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/upd64031a.c", i32 33, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/upd64031a.c", i32 35, i32 1}
!12 = !{ptr @__initcall__kmod_upd64031a__298_238_upd64031a_driver_init6, !13, !"__initcall__kmod_upd64031a__298_238_upd64031a_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/upd64031a.c", i32 238, i32 1}
!14 = !{ptr @__exitcall_upd64031a_driver_exit, !13, !"__exitcall_upd64031a_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/upd64031a.c", i32 32, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/upd64031a.c", i32 231, i32 11}
!20 = !{ptr @upd64031a_driver, !21, !"upd64031a_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/upd64031a.c", i32 229, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/upd64031a.c", i32 196, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @upd64031a_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @upd64031a_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @upd64031a_ops, !29, !"upd64031a_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/upd64031a.c", i32 176, i32 37}
!30 = !{ptr @upd64031a_core_ops, !31, !"upd64031a_core_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/upd64031a.c", i32 160, i32 42}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/upd64031a.c", i32 138, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @upd64031a_log_status._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @upd64031a_log_status._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @upd64031a_tuner_ops, !38, !"upd64031a_tuner_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/upd64031a.c", i32 168, i32 43}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/upd64031a.c", i32 105, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @upd64031a_s_frequency._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @upd64031a_s_frequency._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @upd64031a_video_ops, !45, !"upd64031a_video_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/upd64031a.c", i32 172, i32 43}
!46 = !{ptr @upd64031a_init, !47, !"upd64031a_init", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/upd64031a.c", i32 63, i32 11}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/upd64031a.c", i32 92, i32 2}
!50 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @upd64031a_write._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @upd64031a_write._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/upd64031a.c", i32 94, i32 3}
!55 = !{ptr @upd64031a_write._entry.10, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @upd64031a_write._entry_ptr.12, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @upd64031a_id, !58, !"upd64031a_id", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/upd64031a.c", i32 223, i32 35}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
