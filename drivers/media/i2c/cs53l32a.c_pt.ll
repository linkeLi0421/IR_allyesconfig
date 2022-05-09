; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/cs53l32a.c_pt.bc'
source_filename = "../drivers/media/i2c/cs53l32a.c"
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.cs53l32a_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [62 x i8] c"cs53l32a.description=i2c device driver for cs53l32a Audio ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [31 x i8] c"cs53l32a.author=Martin Vaughan\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [41 x i8] c"cs53l32a.file=drivers/media/i2c/cs53l32a\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"cs53l32a.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"cs53l32a.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [29 x i8] c"cs53l32a.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [62 x i8] c"cs53l32a.parm=debug:Debugging messages, 0=Off (default), 1=On\00", section ".modinfo", align 1
@__initcall__kmod_cs53l32a__298_218_cs53l32a_driver_init6 = internal global ptr @cs53l32a_driver_init, section ".initcall6.init", align 4
@cs53l32a_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs53l32a_probe, ptr @cs53l32a_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cs53l32a_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs53l32a_driver_exit = internal global ptr @cs53l32a_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cs53l32a\00", [23 x i8] zeroinitializer }, align 32
@cs53l32a_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs53l32a\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs53l32a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cs53l32a_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/i2c/cs53l32a.c\00", [35 x i8] zeroinitializer }, align 32
@cs53l32a_probe._entry_ptr = internal global ptr @cs53l32a_probe._entry, section ".printk_index", align 4
@cs53l32a_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @cs53l32a_core_ops, ptr null, ptr @cs53l32a_audio_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cs53l32a_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Read Reg %d %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@cs53l32a_probe._entry_ptr.6 = internal global ptr @cs53l32a_probe._entry.4, section ".printk_index", align 4
@cs53l32a_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cs53l32a:160:(&state->hdl)->_lock\00", [62 x i8] zeroinitializer }, align 32
@cs53l32a_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @cs53l32a_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@cs53l32a_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cs53l32a_probe._entry_ptr.9 = internal global ptr @cs53l32a_probe._entry.8, section ".printk_index", align 4
@cs53l32a_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @cs53l32a_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cs53l32a_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr null, ptr null, ptr @cs53l32a_s_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@cs53l32a_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: Input:  %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs53l32a_log_status\00", [44 x i8] zeroinitializer }, align 32
@cs53l32a_log_status._entry_ptr = internal global ptr @cs53l32a_log_status._entry, section ".printk_index", align 4
@cs53l32a_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Invalid input %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs53l32a_s_routing\00", [45 x i8] zeroinitializer }, align 32
@cs53l32a_s_routing._entry_ptr = internal global ptr @cs53l32a_s_routing._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963781, i64 9963785]
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 24, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"cs53l32a_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 209, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 211, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"cs53l32a_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 203, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 145, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"cs53l32a_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 117, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 157, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 160, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"cs53l32a_ctrl_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 105, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 188, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"cs53l32a_core_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 109, i32 42 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"cs53l32a_audio_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 113, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 98, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [32 x i8] c"../drivers/media/i2c/cs53l32a.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 70, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_cs53l32a_driver_exit, ptr @__initcall__kmod_cs53l32a__298_218_cs53l32a_driver_init6, ptr @__param_debug, ptr @cs53l32a_driver_exit, ptr @cs53l32a_log_status._entry, ptr @cs53l32a_log_status._entry_ptr, ptr @cs53l32a_probe._entry, ptr @cs53l32a_probe._entry.4, ptr @cs53l32a_probe._entry.8, ptr @cs53l32a_probe._entry_ptr, ptr @cs53l32a_probe._entry_ptr.6, ptr @cs53l32a_probe._entry_ptr.9, ptr @cs53l32a_s_routing._entry, ptr @cs53l32a_s_routing._entry_ptr, ptr @debug, ptr @cs53l32a_driver, ptr @.str, ptr @cs53l32a_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cs53l32a_ops, ptr @.str.5, ptr @cs53l32a_probe._key, ptr @.str.7, ptr @cs53l32a_ctrl_ops, ptr @cs53l32a_core_ops, ptr @cs53l32a_audio_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l32a_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l32a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs53l32a_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs53l32a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @cs53l32a_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l32a_probe(ptr noundef %client, ptr noundef readnone %id) #2 align 64 {
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
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %id, null
  br i1 %tobool1.not, label %if.then2, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call3 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 20) #4
  br label %do.end

do.end:                                           ; preds = %if.then2, %if.end.do.end_crit_edge
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
  %name11 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name11) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 380, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @cs53l32a_ops) #4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %name35 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 1) #4
  %18 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool26.not = icmp eq i8 %18, 0
  br i1 %tobool26.not, label %if.end18.do.end41_crit_edge, label %do.end33

if.end18.do.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41

do.end33:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %conv37 = and i32 %call1.i, 255
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 1, i32 noundef %conv37) #7
  br label %do.end41

do.end41:                                         ; preds = %do.end33, %if.end18.do.end41_crit_edge
  %19 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 2) #4
  %21 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool26.not.1 = icmp eq i8 %21, 0
  br i1 %tobool26.not.1, label %do.end41.do.end41.1_crit_edge, label %do.end33.1

do.end41.do.end41.1_crit_edge:                    ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41.1

do.end33.1:                                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #6
  %conv37.1 = and i32 %call1.i.1, 255
  %call38.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 2, i32 noundef %conv37.1) #7
  br label %do.end41.1

do.end41.1:                                       ; preds = %do.end33.1, %do.end41.do.end41.1_crit_edge
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 3) #4
  %24 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not.2 = icmp eq i8 %24, 0
  br i1 %tobool26.not.2, label %do.end41.1.do.end41.2_crit_edge, label %do.end33.2

do.end41.1.do.end41.2_crit_edge:                  ; preds = %do.end41.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41.2

do.end33.2:                                       ; preds = %do.end41.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv37.2 = and i32 %call1.i.2, 255
  %call38.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 3, i32 noundef %conv37.2) #7
  br label %do.end41.2

do.end41.2:                                       ; preds = %do.end33.2, %do.end41.1.do.end41.2_crit_edge
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext 4) #4
  %27 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not.3 = icmp eq i8 %27, 0
  br i1 %tobool26.not.3, label %do.end41.2.do.end41.3_crit_edge, label %do.end33.3

do.end41.2.do.end41.3_crit_edge:                  ; preds = %do.end41.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41.3

do.end33.3:                                       ; preds = %do.end41.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv37.3 = and i32 %call1.i.3, 255
  %call38.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 4, i32 noundef %conv37.3) #7
  br label %do.end41.3

do.end41.3:                                       ; preds = %do.end33.3, %do.end41.2.do.end41.3_crit_edge
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 5) #4
  %30 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool26.not.4 = icmp eq i8 %30, 0
  br i1 %tobool26.not.4, label %do.end41.3.do.end41.4_crit_edge, label %do.end33.4

do.end41.3.do.end41.4_crit_edge:                  ; preds = %do.end41.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41.4

do.end33.4:                                       ; preds = %do.end41.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv37.4 = and i32 %call1.i.4, 255
  %call38.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 5, i32 noundef %conv37.4) #7
  br label %do.end41.4

do.end41.4:                                       ; preds = %do.end33.4, %do.end41.3.do.end41.4_crit_edge
  %31 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 6) #4
  %33 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool26.not.5 = icmp eq i8 %33, 0
  br i1 %tobool26.not.5, label %do.end41.4.do.end41.5_crit_edge, label %do.end33.5

do.end41.4.do.end41.5_crit_edge:                  ; preds = %do.end41.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41.5

do.end33.5:                                       ; preds = %do.end41.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv37.5 = and i32 %call1.i.5, 255
  %call38.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 6, i32 noundef %conv37.5) #7
  br label %do.end41.5

do.end41.5:                                       ; preds = %do.end33.5, %do.end41.4.do.end41.5_crit_edge
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 7) #4
  %36 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool26.not.6 = icmp eq i8 %36, 0
  br i1 %tobool26.not.6, label %do.end41.5.do.end41.6_crit_edge, label %do.end33.6

do.end41.5.do.end41.6_crit_edge:                  ; preds = %do.end41.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41.6

do.end33.6:                                       ; preds = %do.end41.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv37.6 = and i32 %call1.i.6, 255
  %call38.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 7, i32 noundef %conv37.6) #7
  br label %do.end41.6

do.end41.6:                                       ; preds = %do.end33.6, %do.end41.5.do.end41.6_crit_edge
  %hdl = getelementptr inbounds %struct.cs53l32a_state, ptr %call.i, i32 0, i32 1
  %call43 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 2, ptr noundef nonnull @cs53l32a_probe._key, ptr noundef nonnull @.str.7) #4
  %call45 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cs53l32a_ctrl_ops, i32 noundef 9963781, i64 noundef -96, i64 noundef 12, i64 noundef 1, i64 noundef 0) #4
  %call47 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cs53l32a_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.cs53l32a_state, ptr %call.i, i32 0, i32 1, i32 9
  %38 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool50.not = icmp eq i32 %39, 0
  br i1 %tobool50.not, label %if.end55, label %if.then51

if.then51:                                        ; preds = %do.end41.6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #4
  br label %cleanup

if.end55:                                         ; preds = %do.end41.6
  %40 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i129 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 1, i8 noundef zeroext 33) #4
  %42 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i131 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 2, i8 noundef zeroext 41) #4
  %44 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 3, i8 noundef zeroext 48) #4
  %46 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i135 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 4, i8 noundef zeroext 0) #4
  %48 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i137 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 5, i8 noundef zeroext 0) #4
  %50 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 6, i8 noundef zeroext 0) #4
  %52 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i141 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 7, i8 noundef zeroext 0) #4
  %54 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i143 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 1) #4
  %56 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool72.not = icmp eq i8 %56, 0
  br i1 %tobool72.not, label %if.end55.do.end87_crit_edge, label %do.end79

if.end55.do.end87_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end87

do.end79:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %conv83 = and i32 %call1.i143, 255
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 1, i32 noundef %conv83) #7
  br label %do.end87

do.end87:                                         ; preds = %do.end79, %if.end55.do.end87_crit_edge
  %57 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i143.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %58, i8 noundef zeroext 2) #4
  %59 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool72.not.1 = icmp eq i8 %59, 0
  br i1 %tobool72.not.1, label %do.end87.do.end87.1_crit_edge, label %do.end79.1

do.end87.do.end87.1_crit_edge:                    ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end87.1

do.end79.1:                                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #6
  %conv83.1 = and i32 %call1.i143.1, 255
  %call84.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 2, i32 noundef %conv83.1) #7
  br label %do.end87.1

do.end87.1:                                       ; preds = %do.end79.1, %do.end87.do.end87.1_crit_edge
  %60 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i143.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 3) #4
  %62 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool72.not.2 = icmp eq i8 %62, 0
  br i1 %tobool72.not.2, label %do.end87.1.do.end87.2_crit_edge, label %do.end79.2

do.end87.1.do.end87.2_crit_edge:                  ; preds = %do.end87.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end87.2

do.end79.2:                                       ; preds = %do.end87.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv83.2 = and i32 %call1.i143.2, 255
  %call84.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 3, i32 noundef %conv83.2) #7
  br label %do.end87.2

do.end87.2:                                       ; preds = %do.end79.2, %do.end87.1.do.end87.2_crit_edge
  %63 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i143.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %64, i8 noundef zeroext 4) #4
  %65 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool72.not.3 = icmp eq i8 %65, 0
  br i1 %tobool72.not.3, label %do.end87.2.do.end87.3_crit_edge, label %do.end79.3

do.end87.2.do.end87.3_crit_edge:                  ; preds = %do.end87.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end87.3

do.end79.3:                                       ; preds = %do.end87.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv83.3 = and i32 %call1.i143.3, 255
  %call84.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 4, i32 noundef %conv83.3) #7
  br label %do.end87.3

do.end87.3:                                       ; preds = %do.end79.3, %do.end87.2.do.end87.3_crit_edge
  %66 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i143.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %67, i8 noundef zeroext 5) #4
  %68 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool72.not.4 = icmp eq i8 %68, 0
  br i1 %tobool72.not.4, label %do.end87.3.do.end87.4_crit_edge, label %do.end79.4

do.end87.3.do.end87.4_crit_edge:                  ; preds = %do.end87.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end87.4

do.end79.4:                                       ; preds = %do.end87.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv83.4 = and i32 %call1.i143.4, 255
  %call84.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 5, i32 noundef %conv83.4) #7
  br label %do.end87.4

do.end87.4:                                       ; preds = %do.end79.4, %do.end87.3.do.end87.4_crit_edge
  %69 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i143.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %70, i8 noundef zeroext 6) #4
  %71 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool72.not.5 = icmp eq i8 %71, 0
  br i1 %tobool72.not.5, label %do.end87.4.do.end87.5_crit_edge, label %do.end79.5

do.end87.4.do.end87.5_crit_edge:                  ; preds = %do.end87.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end87.5

do.end79.5:                                       ; preds = %do.end87.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv83.5 = and i32 %call1.i143.5, 255
  %call84.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 6, i32 noundef %conv83.5) #7
  br label %do.end87.5

do.end87.5:                                       ; preds = %do.end79.5, %do.end87.4.do.end87.5_crit_edge
  %72 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i143.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 7) #4
  %74 = load i8, ptr @debug, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool72.not.6 = icmp eq i8 %74, 0
  br i1 %tobool72.not.6, label %do.end87.5.cleanup_crit_edge, label %do.end79.6

do.end87.5.cleanup_crit_edge:                     ; preds = %do.end87.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end79.6:                                       ; preds = %do.end87.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv83.6 = and i32 %call1.i143.6, 255
  %call84.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name35, i32 noundef 7, i32 noundef %conv83.6) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end79.6, %do.end87.5.cleanup_crit_edge, %if.then51, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %if.then51 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %do.end79.6 ], [ 0, %do.end87.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l32a_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #4
  %hdl = getelementptr inbounds %struct.cs53l32a_state, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l32a_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 1) #4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv2 = lshr i32 %call1.i, 4
  %and = and i32 %conv2, 3
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %and) #7
  %hdl = getelementptr inbounds %struct.cs53l32a_state, ptr %sd, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l32a_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %input)
  %cmp = icmp ugt i32 %input, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %input) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %input.tr = trunc i32 %input to i8
  %0 = shl nuw nsw i8 %input.tr, 4
  %conv = or i8 %0, 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext %conv) #4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l32a_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
    i32 9963781, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 48, i8 -16
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 3, i8 noundef zeroext %conv) #4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val3, align 4
  %conv4 = trunc i32 %10 to i8
  %dev_priv.i.i15 = getelementptr i8, ptr %1, i32 -44
  %11 = ptrtoint ptr %dev_priv.i.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i15, align 4
  %call1.i16 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 4, i8 noundef zeroext %conv4) #4
  %13 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val3, align 4
  %conv7 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %dev_priv.i.i15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i15, align 4
  %call1.i18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 5, i8 noundef zeroext %conv7) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/cs53l32a.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/cs53l32a.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/cs53l32a.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/cs53l32a.c", i32 26, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/cs53l32a.c", i32 28, i32 1}
!12 = !{ptr @__initcall__kmod_cs53l32a__298_218_cs53l32a_driver_init6, !13, !"__initcall__kmod_cs53l32a__298_218_cs53l32a_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/cs53l32a.c", i32 218, i32 1}
!14 = !{ptr @__exitcall_cs53l32a_driver_exit, !13, !"__exitcall_cs53l32a_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/cs53l32a.c", i32 24, i32 13}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/cs53l32a.c", i32 211, i32 11}
!20 = !{ptr @cs53l32a_driver, !21, !"cs53l32a_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/cs53l32a.c", i32 209, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/cs53l32a.c", i32 145, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cs53l32a_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @cs53l32a_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/cs53l32a.c", i32 157, i32 3}
!30 = !{ptr @cs53l32a_probe._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cs53l32a_probe._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @cs53l32a_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/cs53l32a.c", i32 160, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cs53l32a_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/cs53l32a.c", i32 188, i32 3}
!37 = !{ptr @cs53l32a_probe._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @cs53l32a_ops, !39, !"cs53l32a_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/cs53l32a.c", i32 117, i32 37}
!40 = !{ptr @cs53l32a_core_ops, !41, !"cs53l32a_core_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/cs53l32a.c", i32 109, i32 42}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/cs53l32a.c", i32 98, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cs53l32a_log_status._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cs53l32a_log_status._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @cs53l32a_audio_ops, !48, !"cs53l32a_audio_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/cs53l32a.c", i32 113, i32 43}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/cs53l32a.c", i32 70, i32 3}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cs53l32a_s_routing._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @cs53l32a_s_routing._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @cs53l32a_ctrl_ops, !55, !"cs53l32a_ctrl_ops", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/cs53l32a.c", i32 105, i32 35}
!56 = !{ptr @cs53l32a_id, !57, !"cs53l32a_id", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/cs53l32a.c", i32 203, i32 35}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i8 0, i8 2}
