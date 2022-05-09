; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/upd64083.c_pt.bc'
source_filename = "../drivers/media/i2c/upd64083.c"
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
%struct.upd64083_state = type { %struct.v4l2_subdev, i8, i8, [23 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }

@__UNIQUE_ID_description292 = internal constant [37 x i8] c"upd64083.description=uPD64083 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [57 x i8] c"upd64083.author=T. Adachi, Takeru KOMORIYA, Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [41 x i8] c"upd64083.file=drivers/media/i2c/upd64083\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"upd64083.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"upd64083.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [29 x i8] c"upd64083.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [38 x i8] c"upd64083.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_upd64083__298_209_upd64083_driver_init6 = internal global ptr @upd64083_driver_init, section ".initcall6.init", align 4
@upd64083_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @upd64083_probe, ptr @upd64083_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @upd64083_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_upd64083_driver_exit = internal global ptr @upd64083_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"upd64083\00", [23 x i8] zeroinitializer }, align 32
@upd64083_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"upd64083\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@upd64083_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"upd64083_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/i2c/upd64083.c\00", [35 x i8] zeroinitializer }, align 32
@upd64083_probe._entry_ptr = internal global ptr @upd64083_probe._entry, section ".printk_index", align 4
@upd64083_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @upd64083_core_ops, ptr null, ptr null, ptr @upd64083_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@upd64083_init = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\1F\01\A0-)6\DD\05VH\00:\A0\05\08D`\08R\F8S`\10", [41 x i8] zeroinitializer }, align 32
@upd64083_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @upd64083_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @upd64083_g_register, ptr @upd64083_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@upd64083_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @upd64083_s_routing, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@upd64083_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016%s: Status: SA00=%02x SA01=%02x SA02=%02x SA03=%02x SA04=%02x SA05=%02x SA06=%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"upd64083_log_status\00", [44 x i8] zeroinitializer }, align 32
@upd64083_log_status._entry_ptr = internal global ptr @upd64083_log_status._entry, section ".printk_index", align 4
@upd64083_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: write reg: %02x val: %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"upd64083_write\00", [17 x i8] zeroinitializer }, align 32
@upd64083_write._entry_ptr = internal global ptr @upd64083_write._entry, section ".printk_index", align 4
@upd64083_write._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: I/O error write 0x%02x/0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@upd64083_write._entry_ptr.10 = internal global ptr @upd64083_write._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 22, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"upd64083_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 200, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 202, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"upd64083_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 194, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 167, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"upd64083_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 148, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"upd64083_init\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 51, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"upd64083_core_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 136, i32 42 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"upd64083_video_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 144, i32 43 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 128, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 68, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [32 x i8] c"../drivers/media/i2c/upd64083.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 70, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_upd64083_driver_exit, ptr @__initcall__kmod_upd64083__298_209_upd64083_driver_init6, ptr @__param_debug, ptr @upd64083_driver_exit, ptr @upd64083_log_status._entry, ptr @upd64083_log_status._entry_ptr, ptr @upd64083_probe._entry, ptr @upd64083_probe._entry_ptr, ptr @upd64083_write._entry, ptr @upd64083_write._entry.8, ptr @upd64083_write._entry_ptr, ptr @upd64083_write._entry_ptr.10, ptr @debug, ptr @upd64083_driver, ptr @.str, ptr @upd64083_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @upd64083_ops, ptr @upd64083_init, ptr @upd64083_core_ops, ptr @upd64083_video_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_init to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd64083_write._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64083_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @upd64083_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @upd64083_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @upd64083_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64083_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 224, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @upd64083_ops) #5
  %mode = getelementptr inbounds %struct.upd64083_state, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %mode, align 4
  %ext_y_adc = getelementptr inbounds %struct.upd64083_state, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %ext_y_adc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %ext_y_adc, align 1
  %regs = getelementptr inbounds %struct.upd64083_state, ptr %call.i, i32 0, i32 3
  %18 = call ptr @memcpy(ptr %regs, ptr @upd64083_init, i32 23)
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %upd64083_write.exit.for.body_crit_edge, %if.end12
  %i.038 = phi i32 [ 0, %if.end12 ], [ %inc, %upd64083_write.exit.for.body_crit_edge ]
  %conv17 = trunc i32 %i.038 to i8
  %arrayidx = getelementptr %struct.upd64083_state, ptr %call.i, i32 0, i32 3, i32 %i.038
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv17, ptr %buf.i, align 1
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %21, ptr %19, align 1
  %26 = load i8, ptr @debug, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %for.body.do.end8.i_crit_edge, label %do.end.i

for.body.do.end8.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i = zext i8 %21 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef %i.038, i32 noundef %conv5.i) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %for.body.do.end8.i_crit_edge
  %call.i.i37 = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i37)
  %cmp11.not.i = icmp eq i32 %call.i.i37, 2
  br i1 %cmp11.not.i, label %do.end8.i.upd64083_write.exit_crit_edge, label %do.end16.i

do.end8.i.upd64083_write.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64083_write.exit

do.end16.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv21.i = zext i8 %21 to i32
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name.i, i32 noundef %i.038, i32 noundef %conv21.i) #8
  br label %upd64083_write.exit

upd64083_write.exit:                              ; preds = %do.end16.i, %do.end8.i.upd64083_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %upd64083_write.exit.cleanup_crit_edge, label %upd64083_write.exit.for.body_crit_edge

upd64083_write.exit.for.body_crit_edge:           ; preds = %upd64083_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

upd64083_write.exit.cleanup_crit_edge:            ; preds = %upd64083_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %upd64083_write.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %upd64083_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64083_remove(ptr nocapture noundef readonly %client) #2 align 64 {
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
define internal i32 @upd64083_log_status(ptr noundef %sd) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %8 = call ptr @memset(ptr %buf, i32 255, i32 7)
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 7, i16 noundef zeroext 1) #5
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %conv4 = zext i8 %12 to i32
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %conv6 = zext i8 %14 to i32
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %4, align 1
  %conv8 = zext i8 %16 to i32
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %5, align 1
  %conv10 = zext i8 %18 to i32
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %6, align 1
  %conv12 = zext i8 %20 to i32
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %7, align 1
  %conv14 = zext i8 %22 to i32
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64083_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %buf.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 6
  %4 = call ptr @memset(ptr %buf.i, i32 255, i32 7)
  br i1 %cmp.i, label %entry.upd64083_read.exit_crit_edge, label %if.end.i

entry.upd64083_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64083_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = trunc i64 %1 to i32
  %conv.i = and i32 %5, 255
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 7, i16 noundef zeroext 1) #5
  %arrayidx.i = getelementptr [7 x i8], ptr %buf.i, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  br label %upd64083_read.exit

upd64083_read.exit:                               ; preds = %if.end.i, %entry.upd64083_read.exit_crit_edge
  %retval.0.i = phi i8 [ %7, %if.end.i ], [ -1, %entry.upd64083_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf.i) #5
  %conv2 = zext i8 %retval.0.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %8 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %conv2, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 1, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64083_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
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
  %9 = load i8, ptr @debug, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.do.end8.i_crit_edge, label %do.end.i

entry.do.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %10 = trunc i64 %1 to i32
  %conv4.i = and i32 %10, 255
  %11 = trunc i64 %3 to i32
  %conv5.i = and i32 %11, 255
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef %conv4.i, i32 noundef %conv5.i) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %entry.do.end8.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp11.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp11.not.i, label %do.end8.i.upd64083_write.exit_crit_edge, label %do.end16.i

do.end8.i.upd64083_write.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64083_write.exit

do.end16.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %name18.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %12 = trunc i64 %1 to i32
  %conv20.i = and i32 %12, 255
  %13 = trunc i64 %3 to i32
  %conv21.i = and i32 %13, 255
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name18.i, i32 noundef %conv20.i, i32 noundef %conv21.i) #8
  br label %upd64083_write.exit

upd64083_write.exit:                              ; preds = %do.end16.i, %do.end8.i.upd64083_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd64083_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  %buf.i34 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %input)
  %cmp = icmp ugt i32 %input, 7
  %and = and i32 %input, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp1 = icmp eq i32 %and, 6
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %input.tr = trunc i32 %input to i8
  %conv = shl i8 %input.tr, 6
  %mode = getelementptr inbounds %struct.upd64083_state, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %mode, align 4
  %1 = shl nuw nsw i8 %input.tr, 3
  %conv5 = and i8 %1, 32
  %ext_y_adc = getelementptr inbounds %struct.upd64083_state, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %ext_y_adc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv5, ptr %ext_y_adc, align 1
  %regs = getelementptr inbounds %struct.upd64083_state, ptr %sd, i32 0, i32 3
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regs, align 2
  %5 = and i8 %4, 63
  %or32 = or i8 %5, %conv
  %arrayidx12 = getelementptr %struct.upd64083_state, ptr %sd, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 2
  %8 = and i8 %7, -33
  %or1733 = or i8 %8, %conv5
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %9 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %11 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %buf.i, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or32, ptr %11, align 1
  %14 = load i8, ptr @debug, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.do.end8.i_crit_edge, label %do.end.i

if.end.do.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv5.i = zext i8 %or32 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef 0, i32 noundef %conv5.i) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %if.end.do.end8.i_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp11.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp11.not.i, label %do.end8.i.upd64083_write.exit_crit_edge, label %do.end16.i

do.end8.i.upd64083_write.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64083_write.exit

do.end16.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %name18.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv21.i = zext i8 %or32 to i32
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name18.i, i32 noundef 0, i32 noundef %conv21.i) #8
  br label %upd64083_write.exit

upd64083_write.exit:                              ; preds = %do.end16.i, %do.end8.i.upd64083_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i34) #5
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i34, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %buf.i34, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or1733, ptr %17, align 1
  %20 = load i8, ptr @debug, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i36 = icmp eq i8 %20, 0
  br i1 %tobool.not.i36, label %upd64083_write.exit.do.end8.i43_crit_edge, label %do.end.i40

upd64083_write.exit.do.end8.i43_crit_edge:        ; preds = %upd64083_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8.i43

do.end.i40:                                       ; preds = %upd64083_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i37 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv5.i38 = zext i8 %or1733 to i32
  %call6.i39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i37, i32 noundef 2, i32 noundef %conv5.i38) #8
  br label %do.end8.i43

do.end8.i43:                                      ; preds = %do.end.i40, %upd64083_write.exit.do.end8.i43_crit_edge
  %call.i.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %buf.i34, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i41)
  %cmp11.not.i42 = icmp eq i32 %call.i.i41, 2
  br i1 %cmp11.not.i42, label %do.end8.i43.upd64083_write.exit48_crit_edge, label %do.end16.i47

do.end8.i43.upd64083_write.exit48_crit_edge:      ; preds = %do.end8.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %upd64083_write.exit48

do.end16.i47:                                     ; preds = %do.end8.i43
  call void @__sanitizer_cov_trace_pc() #7
  %name18.i44 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv21.i45 = zext i8 %or1733 to i32
  %call22.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name18.i44, i32 noundef 2, i32 noundef %conv21.i45) #8
  br label %upd64083_write.exit48

upd64083_write.exit48:                            ; preds = %do.end16.i47, %do.end8.i43.upd64083_write.exit48_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i34) #5
  br label %cleanup

cleanup:                                          ; preds = %upd64083_write.exit48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %upd64083_write.exit48 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/upd64083.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/upd64083.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/upd64083.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/upd64083.c", i32 23, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/upd64083.c", i32 25, i32 1}
!12 = !{ptr @__initcall__kmod_upd64083__298_209_upd64083_driver_init6, !13, !"__initcall__kmod_upd64083__298_209_upd64083_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/upd64083.c", i32 209, i32 1}
!14 = !{ptr @__exitcall_upd64083_driver_exit, !13, !"__exitcall_upd64083_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/upd64083.c", i32 22, i32 13}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/upd64083.c", i32 202, i32 11}
!20 = !{ptr @upd64083_driver, !21, !"upd64083_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/upd64083.c", i32 200, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/upd64083.c", i32 167, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @upd64083_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @upd64083_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @upd64083_ops, !29, !"upd64083_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/upd64083.c", i32 148, i32 37}
!30 = !{ptr @upd64083_core_ops, !31, !"upd64083_core_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/upd64083.c", i32 136, i32 42}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/upd64083.c", i32 128, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @upd64083_log_status._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @upd64083_log_status._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @upd64083_video_ops, !38, !"upd64083_video_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/upd64083.c", i32 144, i32 43}
!39 = !{ptr @upd64083_init, !40, !"upd64083_init", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/upd64083.c", i32 51, i32 11}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/upd64083.c", i32 68, i32 2}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @upd64083_write._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @upd64083_write._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/upd64083.c", i32 70, i32 3}
!48 = !{ptr @upd64083_write._entry.8, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @upd64083_write._entry_ptr.10, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @upd64083_id, !51, !"upd64083_id", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/upd64083.c", i32 194, i32 35}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
