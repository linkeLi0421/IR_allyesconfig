; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/wm8775.c_pt.bc'
source_filename = "../drivers/media/i2c/wm8775.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wm8775_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, i8 }
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

@__UNIQUE_ID_description292 = internal constant [33 x i8] c"wm8775.description=wm8775 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [39 x i8] c"wm8775.author=Ulf Eklund, Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [37 x i8] c"wm8775.file=drivers/media/i2c/wm8775\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"wm8775.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_wm8775__300_308_wm8775_driver_init6 = internal global ptr @wm8775_driver_init, section ".initcall6.init", align 4
@wm8775_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8775_probe, ptr @wm8775_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8775_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8775_driver_exit = internal global ptr @wm8775_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8775\00", [25 x i8] zeroinitializer }, align 32
@wm8775_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8775\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8775_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8775_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/wm8775.c\00", [37 x i8] zeroinitializer }, align 32
@wm8775_probe._entry_ptr = internal global ptr @wm8775_probe._entry, section ".printk_index", align 4
@wm8775_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @wm8775_core_ops, ptr @wm8775_tuner_ops, ptr @wm8775_audio_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@wm8775_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wm8775:220:(&state->hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@wm8775_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @wm8775_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@wm8775_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @wm8775_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wm8775_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr @wm8775_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@wm8775_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr null, ptr null, ptr @wm8775_s_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@wm8775_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: Input: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8775_log_status\00", [46 x i8] zeroinitializer }, align 32
@wm8775_log_status._entry_ptr = internal global ptr @wm8775_log_status._entry, section ".printk_index", align 4
@wm8775_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Invalid input %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8775_s_routing\00", [47 x i8] zeroinitializer }, align 32
@wm8775_s_routing._entry_ptr = internal global ptr @wm8775_s_routing._entry, section ".printk_index", align 4
@wm8775_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Invalid register R%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8775_write\00", [19 x i8] zeroinitializer }, align 32
@wm8775_write._entry_ptr = internal global ptr @wm8775_write._entry, section ".printk_index", align 4
@wm8775_write._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: I2C: cannot write %03x to register R%d\0A\00", [50 x i8] zeroinitializer }, align 32
@wm8775_write._entry_ptr.13 = internal global ptr @wm8775_write._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963781, i64 9963782, i64 9963785, i64 9963786]
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"wm8775_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 299, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 301, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"wm8775_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 293, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 210, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"wm8775_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 178, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 220, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"wm8775_ctrl_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 162, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"wm8775_core_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 166, i32 42 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"wm8775_tuner_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 170, i32 43 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"wm8775_audio_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 174, i32 43 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 149, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 116, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 69, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [30 x i8] c"../drivers/media/i2c/wm8775.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 77, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_wm8775_driver_exit, ptr @__initcall__kmod_wm8775__300_308_wm8775_driver_init6, ptr @wm8775_driver_exit, ptr @wm8775_log_status._entry, ptr @wm8775_log_status._entry_ptr, ptr @wm8775_probe._entry, ptr @wm8775_probe._entry_ptr, ptr @wm8775_s_routing._entry, ptr @wm8775_s_routing._entry_ptr, ptr @wm8775_write._entry, ptr @wm8775_write._entry.11, ptr @wm8775_write._entry_ptr, ptr @wm8775_write._entry_ptr.13, ptr @wm8775_driver, ptr @.str, ptr @wm8775_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wm8775_ops, ptr @wm8775_probe._key, ptr @.str.4, ptr @wm8775_ctrl_ops, ptr @wm8775_core_ops, ptr @wm8775_tuner_ops, ptr @wm8775_audio_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8775_write._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8775_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8775_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8775_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8775_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8775_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4 = icmp ne i8 %3, 0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %is_nova_s.0.off0 = phi i1 [ %tobool4, %if.then ], [ false, %entry.if.end_crit_edge ]
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr, align 2
  %conv = zext i16 %19 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name14 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %13, i32 noundef %17, i32 noundef %conv, i32 noundef %shl, ptr noundef %name14) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end20

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @wm8775_ops) #5
  %input = getelementptr inbounds %struct.wm8775_state, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %input, align 4
  %hdl = getelementptr inbounds %struct.wm8775_state, ptr %call.i, i32 0, i32 1
  %call23 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 4, ptr noundef nonnull @wm8775_probe._key, ptr noundef nonnull @.str.4) #5
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @wm8775_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %mute = getelementptr inbounds %struct.wm8775_state, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call25, ptr %mute, align 4
  %call27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @wm8775_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 65535, i64 noundef 656, i64 noundef 52992) #5
  %vol = getelementptr inbounds %struct.wm8775_state, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %vol to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call27, ptr %vol, align 4
  %call29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @wm8775_ctrl_ops, i32 noundef 9963782, i64 noundef 0, i64 noundef 65535, i64 noundef 656, i64 noundef 32768) #5
  %bal = getelementptr inbounds %struct.wm8775_state, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %bal to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call29, ptr %bal, align 4
  %call31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @wm8775_ctrl_ops, i32 noundef 9963786, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #5
  %loud = getelementptr inbounds %struct.wm8775_state, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %loud to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call31, ptr %loud, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.wm8775_state, ptr %call.i, i32 0, i32 1, i32 9
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool34.not = icmp eq i32 %27, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  br label %cleanup

if.end37:                                         ; preds = %if.end20
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 23, i16 noundef zeroext 0)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 7, i16 noundef zeroext 0)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 11, i16 noundef zeroext 33)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 12, i16 noundef zeroext 258)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 13, i16 noundef zeroext 0)
  br i1 %is_nova_s.0.off0, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 14, i16 noundef zeroext 468)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 15, i16 noundef zeroext 468)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 16, i16 noundef zeroext 447)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 17, i16 noundef zeroext 389)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 18, i16 noundef zeroext 162)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 19, i16 noundef zeroext 5)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 20, i16 noundef zeroext 122)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 21, i16 noundef zeroext 258)
  br label %cleanup

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 16, i16 noundef zeroext 443)
  %28 = ptrtoint ptr %loud to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %loud, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool51.not = icmp eq i32 %31, 0
  %conv52 = select i1 %tobool51.not, i16 133, i16 389
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 17, i16 noundef zeroext %conv52)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 18, i16 noundef zeroext 162)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 19, i16 noundef zeroext 5)
  tail call fastcc void @wm8775_write(ptr noundef nonnull %call.i, i32 noundef 20, i16 noundef zeroext 251)
  tail call fastcc void @wm8775_set_audio(ptr noundef nonnull %call.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then44, %if.then35, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then35 ], [ -5, %if.end.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8775_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  %hdl = getelementptr inbounds %struct.wm8775_state, ptr %1, i32 0, i32 1
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8775_write(ptr noundef %sd, i32 noundef %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %shl = shl i32 %reg, 1
  %2 = lshr i16 %val, 8
  %3 = zext i16 %2 to i32
  %or = or i32 %shl, %3
  %conv4 = trunc i32 %or to i8
  %conv6 = trunc i16 %val to i8
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv4, i8 noundef zeroext %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %entry
  %call7.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv4, i8 noundef zeroext %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %cmp8.1 = icmp eq i32 %call7.1, 0
  br i1 %cmp8.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call7.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv4, i8 noundef zeroext %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %cmp8.2 = icmp eq i32 %call7.2, 0
  br i1 %cmp8.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  %name16 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv18 = zext i16 %val to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name16, i32 noundef %conv18, i32 noundef %reg) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8775_set_audio(ptr noundef %sd, i32 noundef %quietly) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mute = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mute, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  %vol = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 3
  %4 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vol, align 4
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val1, align 4
  %bal = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 4
  %8 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bal, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val3, align 4
  %conv5 = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %conv5)
  %cmp6 = icmp ugt i32 %conv5, 32768
  %sub = sub nuw nsw i32 65536, %conv5
  %cond = select i1 %cmp6, i32 %sub, i32 32768
  %conv8 = and i32 %7, 65535
  %mul = mul nuw i32 %cond, %conv8
  %12 = lshr i32 %mul, 23
  %13 = tail call i32 @llvm.umin.i32(i32 %conv5, i32 32768)
  %mul22 = mul nuw nsw i32 %13, %conv8
  %14 = lshr i32 %mul22, 23
  %15 = or i32 %3, %quietly
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %input = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 6
  %17 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %input, align 4
  %19 = or i8 %18, -64
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 42, i8 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then.if.end_crit_edge, label %for.cond.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.i:                                       ; preds = %if.then
  %call7.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 42, i8 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %cmp8.1.i = icmp eq i32 %call7.1.i, 0
  br i1 %cmp8.1.i, label %for.cond.i.if.end_crit_edge, label %for.cond.1.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %call7.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 42, i8 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i)
  %cmp8.2.i = icmp eq i32 %call7.2.i, 0
  br i1 %cmp8.2.i, label %for.cond.1.i.if.end_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv18.i = zext i8 %19 to i32
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name16.i, i32 noundef %conv18.i, i32 noundef 21) #8
  br label %if.end

if.end:                                           ; preds = %for.cond.2.i, %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %conv31 = or i32 %12, 256
  %dev_priv.i.i58 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %22 = ptrtoint ptr %dev_priv.i.i58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i58, align 4
  %conv6.i = trunc i32 %12 to i8
  %call7.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 29, i8 noundef zeroext %conv6.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i61)
  %cmp8.i62 = icmp eq i32 %call7.i61, 0
  br i1 %cmp8.i62, label %if.end.wm8775_write.exit73_crit_edge, label %for.cond.i65

if.end.wm8775_write.exit73_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8775_write.exit73

for.cond.i65:                                     ; preds = %if.end
  %call7.1.i63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 29, i8 noundef zeroext %conv6.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i63)
  %cmp8.1.i64 = icmp eq i32 %call7.1.i63, 0
  br i1 %cmp8.1.i64, label %for.cond.i65.wm8775_write.exit73_crit_edge, label %for.cond.1.i68

for.cond.i65.wm8775_write.exit73_crit_edge:       ; preds = %for.cond.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8775_write.exit73

for.cond.1.i68:                                   ; preds = %for.cond.i65
  %call7.2.i66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 29, i8 noundef zeroext %conv6.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i66)
  %cmp8.2.i67 = icmp eq i32 %call7.2.i66, 0
  br i1 %cmp8.2.i67, label %for.cond.1.i68.wm8775_write.exit73_crit_edge, label %for.cond.2.i72

for.cond.1.i68.wm8775_write.exit73_crit_edge:     ; preds = %for.cond.1.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8775_write.exit73

for.cond.2.i72:                                   ; preds = %for.cond.1.i68
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i69 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call19.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name16.i69, i32 noundef %conv31, i32 noundef 14) #8
  br label %wm8775_write.exit73

wm8775_write.exit73:                              ; preds = %for.cond.2.i72, %for.cond.1.i68.wm8775_write.exit73_crit_edge, %for.cond.i65.wm8775_write.exit73_crit_edge, %if.end.wm8775_write.exit73_crit_edge
  %conv35 = or i32 %14, 256
  %24 = ptrtoint ptr %dev_priv.i.i58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i58, align 4
  %conv6.i77 = trunc i32 %14 to i8
  %call7.i78 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 31, i8 noundef zeroext %conv6.i77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i78)
  %cmp8.i79 = icmp eq i32 %call7.i78, 0
  br i1 %cmp8.i79, label %wm8775_write.exit73.wm8775_write.exit90_crit_edge, label %for.cond.i82

wm8775_write.exit73.wm8775_write.exit90_crit_edge: ; preds = %wm8775_write.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8775_write.exit90

for.cond.i82:                                     ; preds = %wm8775_write.exit73
  %call7.1.i80 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 31, i8 noundef zeroext %conv6.i77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i80)
  %cmp8.1.i81 = icmp eq i32 %call7.1.i80, 0
  br i1 %cmp8.1.i81, label %for.cond.i82.wm8775_write.exit90_crit_edge, label %for.cond.1.i85

for.cond.i82.wm8775_write.exit90_crit_edge:       ; preds = %for.cond.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8775_write.exit90

for.cond.1.i85:                                   ; preds = %for.cond.i82
  %call7.2.i83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 31, i8 noundef zeroext %conv6.i77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i83)
  %cmp8.2.i84 = icmp eq i32 %call7.2.i83, 0
  br i1 %cmp8.2.i84, label %for.cond.1.i85.wm8775_write.exit90_crit_edge, label %for.cond.2.i89

for.cond.1.i85.wm8775_write.exit90_crit_edge:     ; preds = %for.cond.1.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8775_write.exit90

for.cond.2.i89:                                   ; preds = %for.cond.1.i85
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i86 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call19.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name16.i86, i32 noundef %conv35, i32 noundef 15) #8
  br label %wm8775_write.exit90

wm8775_write.exit90:                              ; preds = %for.cond.2.i89, %for.cond.1.i85.wm8775_write.exit90_crit_edge, %for.cond.i82.wm8775_write.exit90_crit_edge, %wm8775_write.exit73.wm8775_write.exit90_crit_edge
  br i1 %cmp.not, label %if.then38, label %wm8775_write.exit90.if.end42_crit_edge

wm8775_write.exit90.if.end42_crit_edge:           ; preds = %wm8775_write.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then38:                                        ; preds = %wm8775_write.exit90
  %input39 = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 6
  %26 = ptrtoint ptr %input39 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %input39, align 4
  %28 = ptrtoint ptr %dev_priv.i.i58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i58, align 4
  %call7.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 42, i8 noundef zeroext %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i94)
  %cmp8.i95 = icmp eq i32 %call7.i94, 0
  br i1 %cmp8.i95, label %if.then38.if.end42_crit_edge, label %for.cond.i98

if.then38.if.end42_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

for.cond.i98:                                     ; preds = %if.then38
  %call7.1.i96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 42, i8 noundef zeroext %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i96)
  %cmp8.1.i97 = icmp eq i32 %call7.1.i96, 0
  br i1 %cmp8.1.i97, label %for.cond.i98.if.end42_crit_edge, label %for.cond.1.i101

for.cond.i98.if.end42_crit_edge:                  ; preds = %for.cond.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

for.cond.1.i101:                                  ; preds = %for.cond.i98
  %call7.2.i99 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 42, i8 noundef zeroext %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i99)
  %cmp8.2.i100 = icmp eq i32 %call7.2.i99, 0
  br i1 %cmp8.2.i100, label %for.cond.1.i101.if.end42_crit_edge, label %for.cond.2.i105

for.cond.1.i101.if.end42_crit_edge:               ; preds = %for.cond.1.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

for.cond.2.i105:                                  ; preds = %for.cond.1.i101
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i102 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv18.i103 = zext i8 %27 to i32
  %call19.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name16.i102, i32 noundef %conv18.i103, i32 noundef 21) #8
  br label %if.end42

if.end42:                                         ; preds = %for.cond.2.i105, %for.cond.1.i101.if.end42_crit_edge, %for.cond.i98.if.end42_crit_edge, %if.then38.if.end42_crit_edge, %wm8775_write.exit90.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8775_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %input = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %input, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %conv) #8
  %hdl = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8775_s_frequency(ptr noundef %sd, ptr nocapture noundef readnone %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wm8775_set_audio(ptr noundef %sd, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8775_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %input)
  %cmp = icmp ugt i32 %input, 15
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %input) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %input to i8
  %input2 = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %input2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %input2, align 4
  %mute = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 2
  %1 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mute, align 4
  %call3 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vol = getelementptr inbounds %struct.wm8775_state, ptr %sd, i32 0, i32 3
  %3 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vol, align 4
  %call6 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wm8775_set_audio(ptr noundef %sd, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end9 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8775_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963785, label %entry.sw.bb_crit_edge
    i32 9963781, label %entry.sw.bb_crit_edge6
    i32 9963782, label %entry.sw.bb_crit_edge7
    i32 9963786, label %sw.bb1
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
  %add.ptr.i = getelementptr i8, ptr %1, i32 -196
  tail call fastcc void @wm8775_set_audio(ptr noundef %add.ptr.i, i32 noundef 0)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i16 133, i16 389
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %9 = lshr i16 %conv, 8
  %10 = trunc i16 %9 to i8
  %conv4.i = or i8 %10, 34
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext %conv4.i, i8 noundef zeroext -123) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %sw.bb1.cleanup_crit_edge, label %for.cond.i

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %sw.bb1
  %call7.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext %conv4.i, i8 noundef zeroext -123) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %cmp8.1.i = icmp eq i32 %call7.1.i, 0
  br i1 %cmp8.1.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %call7.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext %conv4.i, i8 noundef zeroext -123) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i)
  %cmp8.2.i = icmp eq i32 %call7.2.i, 0
  br i1 %cmp8.2.i, label %for.cond.1.i.cleanup_crit_edge, label %for.cond.2.i

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i = getelementptr i8, ptr %1, i32 -80
  %conv18.i = zext i16 %conv to i32
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name16.i, i32 noundef %conv18.i, i32 noundef 17) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ], [ 0, %for.cond.1.i.cleanup_crit_edge ], [ 0, %for.cond.2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/wm8775.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/wm8775.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/wm8775.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_wm8775__300_308_wm8775_driver_init6, !8, !"__initcall__kmod_wm8775__300_308_wm8775_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/wm8775.c", i32 308, i32 1}
!9 = !{ptr @__exitcall_wm8775_driver_exit, !8, !"__exitcall_wm8775_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/wm8775.c", i32 301, i32 11}
!12 = !{ptr @wm8775_driver, !13, !"wm8775_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/wm8775.c", i32 299, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/wm8775.c", i32 210, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wm8775_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @wm8775_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @wm8775_probe._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/wm8775.c", i32 220, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wm8775_ops, !24, !"wm8775_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/wm8775.c", i32 178, i32 37}
!25 = !{ptr @wm8775_core_ops, !26, !"wm8775_core_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/wm8775.c", i32 166, i32 42}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/wm8775.c", i32 149, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wm8775_log_status._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @wm8775_log_status._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @wm8775_tuner_ops, !33, !"wm8775_tuner_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/wm8775.c", i32 170, i32 43}
!34 = !{ptr @wm8775_audio_ops, !35, !"wm8775_audio_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/wm8775.c", i32 174, i32 43}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/wm8775.c", i32 116, i32 3}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wm8775_s_routing._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @wm8775_s_routing._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @wm8775_ctrl_ops, !42, !"wm8775_ctrl_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/wm8775.c", i32 162, i32 35}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/wm8775.c", i32 69, i32 3}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @wm8775_write._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @wm8775_write._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/wm8775.c", i32 77, i32 2}
!50 = !{ptr @wm8775_write._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wm8775_write._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @wm8775_id, !53, !"wm8775_id", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/wm8775.c", i32 293, i32 35}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i8 0, i8 2}
