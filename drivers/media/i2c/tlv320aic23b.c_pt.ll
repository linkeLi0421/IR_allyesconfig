; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tlv320aic23b.c_pt.bc'
source_filename = "../drivers/media/i2c/tlv320aic23b.c"
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
%struct.tlv320aic23b_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [45 x i8] c"tlv320aic23b.description=tlv320aic23b driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [59 x i8] c"tlv320aic23b.author=Scott Alfter, Ulf Eklund, Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"tlv320aic23b.file=drivers/media/i2c/tlv320aic23b\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [25 x i8] c"tlv320aic23b.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_tlv320aic23b__296_207_tlv320aic23b_driver_init6 = internal global ptr @tlv320aic23b_driver_init, section ".initcall6.init", align 4
@tlv320aic23b_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tlv320aic23b_probe, ptr @tlv320aic23b_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tlv320aic23b_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tlv320aic23b_driver_exit = internal global ptr @tlv320aic23b_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tlv320aic23b\00", [19 x i8] zeroinitializer }, align 32
@tlv320aic23b_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tlv320aic23b\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tlv320aic23b_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlv320aic23b_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/i2c/tlv320aic23b.c\00", [63 x i8] zeroinitializer }, align 32
@tlv320aic23b_probe._entry_ptr = internal global ptr @tlv320aic23b_probe._entry, section ".printk_index", align 4
@tlv320aic23b_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tlv320aic23b_core_ops, ptr null, ptr @tlv320aic23b_audio_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tlv320aic23b_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tlv320aic23b:166:(&state->hdl)->_lock\00", [58 x i8] zeroinitializer }, align 32
@tlv320aic23b_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tlv320aic23b_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tlv320aic23b_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @tlv320aic23b_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tlv320aic23b_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr @tlv320aic23b_s_clock_freq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@tlv320aic23b_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Invalid register R%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlv320aic23b_write\00", [45 x i8] zeroinitializer }, align 32
@tlv320aic23b_write._entry_ptr = internal global ptr @tlv320aic23b_write._entry, section ".printk_index", align 4
@tlv320aic23b_write._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: I2C: cannot write %03x to register R%d\0A\00", [50 x i8] zeroinitializer }, align 32
@tlv320aic23b_write._entry_ptr.9 = internal global ptr @tlv320aic23b_write._entry.7, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"tlv320aic23b_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 198, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 200, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"tlv320aic23b_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 192, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 142, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"tlv320aic23b_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 118, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 166, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"tlv320aic23b_ctrl_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 106, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"tlv320aic23b_core_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 110, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"tlv320aic23b_audio_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 114, i32 43 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 51, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [36 x i8] c"../drivers/media/i2c/tlv320aic23b.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 59, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_tlv320aic23b_driver_exit, ptr @__initcall__kmod_tlv320aic23b__296_207_tlv320aic23b_driver_init6, ptr @tlv320aic23b_driver_exit, ptr @tlv320aic23b_probe._entry, ptr @tlv320aic23b_probe._entry_ptr, ptr @tlv320aic23b_write._entry, ptr @tlv320aic23b_write._entry.7, ptr @tlv320aic23b_write._entry_ptr, ptr @tlv320aic23b_write._entry_ptr.9, ptr @tlv320aic23b_driver, ptr @.str, ptr @tlv320aic23b_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tlv320aic23b_ops, ptr @tlv320aic23b_probe._key, ptr @.str.4, ptr @tlv320aic23b_ctrl_ops, ptr @tlv320aic23b_core_ops, ptr @tlv320aic23b_audio_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23b_write._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tlv320aic23b_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tlv320aic23b_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tlv320aic23b_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @tlv320aic23b_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlv320aic23b_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 380, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @tlv320aic23b_ops) #4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 30, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end12.tlv320aic23b_write.exit_crit_edge, label %for.cond.i

if.end12.tlv320aic23b_write.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit

for.cond.i:                                       ; preds = %if.end12
  %call8.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 30, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i)
  %cmp9.1.i = icmp eq i32 %call8.1.i, 0
  br i1 %cmp9.1.i, label %for.cond.i.tlv320aic23b_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.tlv320aic23b_write.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call8.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 30, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i)
  %cmp9.2.i = icmp eq i32 %call8.2.i, 0
  br i1 %cmp9.2.i, label %for.cond.1.i.tlv320aic23b_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.tlv320aic23b_write.exit_crit_edge:   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %name17.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name17.i, i32 noundef 0, i32 noundef 15) #7
  br label %tlv320aic23b_write.exit

tlv320aic23b_write.exit:                          ; preds = %for.cond.2.i, %for.cond.1.i.tlv320aic23b_write.exit_crit_edge, %for.cond.i.tlv320aic23b_write.exit_crit_edge, %if.end12.tlv320aic23b_write.exit_crit_edge
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call8.i58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 12, i8 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i58)
  %cmp9.i59 = icmp eq i32 %call8.i58, 0
  br i1 %cmp9.i59, label %tlv320aic23b_write.exit.tlv320aic23b_write.exit69_crit_edge, label %for.cond.i62

tlv320aic23b_write.exit.tlv320aic23b_write.exit69_crit_edge: ; preds = %tlv320aic23b_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit69

for.cond.i62:                                     ; preds = %tlv320aic23b_write.exit
  %call8.1.i60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 12, i8 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i60)
  %cmp9.1.i61 = icmp eq i32 %call8.1.i60, 0
  br i1 %cmp9.1.i61, label %for.cond.i62.tlv320aic23b_write.exit69_crit_edge, label %for.cond.1.i65

for.cond.i62.tlv320aic23b_write.exit69_crit_edge: ; preds = %for.cond.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit69

for.cond.1.i65:                                   ; preds = %for.cond.i62
  %call8.2.i63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 12, i8 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i63)
  %cmp9.2.i64 = icmp eq i32 %call8.2.i63, 0
  br i1 %cmp9.2.i64, label %for.cond.1.i65.tlv320aic23b_write.exit69_crit_edge, label %for.cond.2.i68

for.cond.1.i65.tlv320aic23b_write.exit69_crit_edge: ; preds = %for.cond.1.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit69

for.cond.2.i68:                                   ; preds = %for.cond.1.i65
  call void @__sanitizer_cov_trace_pc() #6
  %name17.i66 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call20.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name17.i66, i32 noundef 10, i32 noundef 6) #7
  br label %tlv320aic23b_write.exit69

tlv320aic23b_write.exit69:                        ; preds = %for.cond.2.i68, %for.cond.1.i65.tlv320aic23b_write.exit69_crit_edge, %for.cond.i62.tlv320aic23b_write.exit69_crit_edge, %tlv320aic23b_write.exit.tlv320aic23b_write.exit69_crit_edge
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call8.i71 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 14, i8 noundef zeroext 73) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i71)
  %cmp9.i72 = icmp eq i32 %call8.i71, 0
  br i1 %cmp9.i72, label %tlv320aic23b_write.exit69.tlv320aic23b_write.exit82_crit_edge, label %for.cond.i75

tlv320aic23b_write.exit69.tlv320aic23b_write.exit82_crit_edge: ; preds = %tlv320aic23b_write.exit69
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit82

for.cond.i75:                                     ; preds = %tlv320aic23b_write.exit69
  %call8.1.i73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 14, i8 noundef zeroext 73) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i73)
  %cmp9.1.i74 = icmp eq i32 %call8.1.i73, 0
  br i1 %cmp9.1.i74, label %for.cond.i75.tlv320aic23b_write.exit82_crit_edge, label %for.cond.1.i78

for.cond.i75.tlv320aic23b_write.exit82_crit_edge: ; preds = %for.cond.i75
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit82

for.cond.1.i78:                                   ; preds = %for.cond.i75
  %call8.2.i76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 14, i8 noundef zeroext 73) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i76)
  %cmp9.2.i77 = icmp eq i32 %call8.2.i76, 0
  br i1 %cmp9.2.i77, label %for.cond.1.i78.tlv320aic23b_write.exit82_crit_edge, label %for.cond.2.i81

for.cond.1.i78.tlv320aic23b_write.exit82_crit_edge: ; preds = %for.cond.1.i78
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit82

for.cond.2.i81:                                   ; preds = %for.cond.1.i78
  call void @__sanitizer_cov_trace_pc() #6
  %name17.i79 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call20.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name17.i79, i32 noundef 73, i32 noundef 7) #7
  br label %tlv320aic23b_write.exit82

tlv320aic23b_write.exit82:                        ; preds = %for.cond.2.i81, %for.cond.1.i78.tlv320aic23b_write.exit82_crit_edge, %for.cond.i75.tlv320aic23b_write.exit82_crit_edge, %tlv320aic23b_write.exit69.tlv320aic23b_write.exit82_crit_edge
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call8.i84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 1, i8 noundef zeroext 25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i84)
  %cmp9.i85 = icmp eq i32 %call8.i84, 0
  br i1 %cmp9.i85, label %tlv320aic23b_write.exit82.tlv320aic23b_write.exit95_crit_edge, label %for.cond.i88

tlv320aic23b_write.exit82.tlv320aic23b_write.exit95_crit_edge: ; preds = %tlv320aic23b_write.exit82
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit95

for.cond.i88:                                     ; preds = %tlv320aic23b_write.exit82
  %call8.1.i86 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 1, i8 noundef zeroext 25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i86)
  %cmp9.1.i87 = icmp eq i32 %call8.1.i86, 0
  br i1 %cmp9.1.i87, label %for.cond.i88.tlv320aic23b_write.exit95_crit_edge, label %for.cond.1.i91

for.cond.i88.tlv320aic23b_write.exit95_crit_edge: ; preds = %for.cond.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit95

for.cond.1.i91:                                   ; preds = %for.cond.i88
  %call8.2.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 1, i8 noundef zeroext 25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i89)
  %cmp9.2.i90 = icmp eq i32 %call8.2.i89, 0
  br i1 %cmp9.2.i90, label %for.cond.1.i91.tlv320aic23b_write.exit95_crit_edge, label %for.cond.2.i94

for.cond.1.i91.tlv320aic23b_write.exit95_crit_edge: ; preds = %for.cond.1.i91
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit95

for.cond.2.i94:                                   ; preds = %for.cond.1.i91
  call void @__sanitizer_cov_trace_pc() #6
  %name17.i92 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call20.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name17.i92, i32 noundef 281, i32 noundef 0) #7
  br label %tlv320aic23b_write.exit95

tlv320aic23b_write.exit95:                        ; preds = %for.cond.2.i94, %for.cond.1.i91.tlv320aic23b_write.exit95_crit_edge, %for.cond.i88.tlv320aic23b_write.exit95_crit_edge, %tlv320aic23b_write.exit82.tlv320aic23b_write.exit95_crit_edge
  %24 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i, align 4
  %call8.i97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i97)
  %cmp9.i98 = icmp eq i32 %call8.i97, 0
  br i1 %cmp9.i98, label %tlv320aic23b_write.exit95.tlv320aic23b_write.exit108_crit_edge, label %for.cond.i101

tlv320aic23b_write.exit95.tlv320aic23b_write.exit108_crit_edge: ; preds = %tlv320aic23b_write.exit95
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit108

for.cond.i101:                                    ; preds = %tlv320aic23b_write.exit95
  %call8.1.i99 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i99)
  %cmp9.1.i100 = icmp eq i32 %call8.1.i99, 0
  br i1 %cmp9.1.i100, label %for.cond.i101.tlv320aic23b_write.exit108_crit_edge, label %for.cond.1.i104

for.cond.i101.tlv320aic23b_write.exit108_crit_edge: ; preds = %for.cond.i101
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit108

for.cond.1.i104:                                  ; preds = %for.cond.i101
  %call8.2.i102 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i102)
  %cmp9.2.i103 = icmp eq i32 %call8.2.i102, 0
  br i1 %cmp9.2.i103, label %for.cond.1.i104.tlv320aic23b_write.exit108_crit_edge, label %for.cond.2.i107

for.cond.1.i104.tlv320aic23b_write.exit108_crit_edge: ; preds = %for.cond.1.i104
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit108

for.cond.2.i107:                                  ; preds = %for.cond.1.i104
  call void @__sanitizer_cov_trace_pc() #6
  %name17.i105 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call20.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name17.i105, i32 noundef 0, i32 noundef 8) #7
  br label %tlv320aic23b_write.exit108

tlv320aic23b_write.exit108:                       ; preds = %for.cond.2.i107, %for.cond.1.i104.tlv320aic23b_write.exit108_crit_edge, %for.cond.i101.tlv320aic23b_write.exit108_crit_edge, %tlv320aic23b_write.exit95.tlv320aic23b_write.exit108_crit_edge
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %call8.i110 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 18, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i110)
  %cmp9.i111 = icmp eq i32 %call8.i110, 0
  br i1 %cmp9.i111, label %tlv320aic23b_write.exit108.tlv320aic23b_write.exit121_crit_edge, label %for.cond.i114

tlv320aic23b_write.exit108.tlv320aic23b_write.exit121_crit_edge: ; preds = %tlv320aic23b_write.exit108
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit121

for.cond.i114:                                    ; preds = %tlv320aic23b_write.exit108
  %call8.1.i112 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 18, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i112)
  %cmp9.1.i113 = icmp eq i32 %call8.1.i112, 0
  br i1 %cmp9.1.i113, label %for.cond.i114.tlv320aic23b_write.exit121_crit_edge, label %for.cond.1.i117

for.cond.i114.tlv320aic23b_write.exit121_crit_edge: ; preds = %for.cond.i114
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit121

for.cond.1.i117:                                  ; preds = %for.cond.i114
  %call8.2.i115 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 18, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i115)
  %cmp9.2.i116 = icmp eq i32 %call8.2.i115, 0
  br i1 %cmp9.2.i116, label %for.cond.1.i117.tlv320aic23b_write.exit121_crit_edge, label %for.cond.2.i120

for.cond.1.i117.tlv320aic23b_write.exit121_crit_edge: ; preds = %for.cond.1.i117
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit121

for.cond.2.i120:                                  ; preds = %for.cond.1.i117
  call void @__sanitizer_cov_trace_pc() #6
  %name17.i118 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call20.i119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name17.i118, i32 noundef 1, i32 noundef 9) #7
  br label %tlv320aic23b_write.exit121

tlv320aic23b_write.exit121:                       ; preds = %for.cond.2.i120, %for.cond.1.i117.tlv320aic23b_write.exit121_crit_edge, %for.cond.i114.tlv320aic23b_write.exit121_crit_edge, %tlv320aic23b_write.exit108.tlv320aic23b_write.exit121_crit_edge
  %hdl = getelementptr inbounds %struct.tlv320aic23b_state, ptr %call.i, i32 0, i32 1
  %call21 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 1, ptr noundef nonnull @tlv320aic23b_probe._key, ptr noundef nonnull @.str.4) #4
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tlv320aic23b_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.tlv320aic23b_state, ptr %call.i, i32 0, i32 1, i32 9
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool26.not = icmp eq i32 %30, 0
  br i1 %tobool26.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %tlv320aic23b_write.exit121
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #4
  br label %cleanup

if.end31:                                         ; preds = %tlv320aic23b_write.exit121
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then27, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then27 ], [ 0, %if.end31 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlv320aic23b_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #4
  %hdl = getelementptr inbounds %struct.tlv320aic23b_state, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #4
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
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlv320aic23b_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl = getelementptr inbounds %struct.tlv320aic23b_state, ptr %sd, i32 0, i32 1
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlv320aic23b_s_clock_freq(ptr noundef %sd, i32 noundef %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %freq, label %entry.return_crit_edge [
    i32 32000, label %sw.bb
    i32 44100, label %sw.bb1
    i32 48000, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 16, i8 noundef zeroext 24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %sw.bb.return_crit_edge, label %for.cond.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.cond.i:                                       ; preds = %sw.bb
  %call8.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 16, i8 noundef zeroext 24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i)
  %cmp9.1.i = icmp eq i32 %call8.1.i, 0
  br i1 %cmp9.1.i, label %for.cond.i.return_crit_edge, label %for.cond.1.i

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.cond.1.i:                                     ; preds = %for.cond.i
  %call8.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 16, i8 noundef zeroext 24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i)
  %cmp9.2.i = icmp eq i32 %call8.2.i, 0
  br i1 %cmp9.2.i, label %for.cond.1.i.return_crit_edge, label %for.cond.1.i.return.sink.split_crit_edge

for.cond.1.i.return.sink.split_crit_edge:         ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

for.cond.1.i.return_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  %dev_priv.i.i7 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i7, align 4
  %call8.i8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 16, i8 noundef zeroext 34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i8)
  %cmp9.i9 = icmp eq i32 %call8.i8, 0
  br i1 %cmp9.i9, label %sw.bb1.return_crit_edge, label %for.cond.i12

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.cond.i12:                                     ; preds = %sw.bb1
  %call8.1.i10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 16, i8 noundef zeroext 34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i10)
  %cmp9.1.i11 = icmp eq i32 %call8.1.i10, 0
  br i1 %cmp9.1.i11, label %for.cond.i12.return_crit_edge, label %for.cond.1.i15

for.cond.i12.return_crit_edge:                    ; preds = %for.cond.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.cond.1.i15:                                   ; preds = %for.cond.i12
  %call8.2.i13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 16, i8 noundef zeroext 34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i13)
  %cmp9.2.i14 = icmp eq i32 %call8.2.i13, 0
  br i1 %cmp9.2.i14, label %for.cond.1.i15.return_crit_edge, label %for.cond.1.i15.return.sink.split_crit_edge

for.cond.1.i15.return.sink.split_crit_edge:       ; preds = %for.cond.1.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

for.cond.1.i15.return_crit_edge:                  ; preds = %for.cond.1.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb3:                                           ; preds = %entry
  %dev_priv.i.i20 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i20, align 4
  %call8.i21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i21)
  %cmp9.i22 = icmp eq i32 %call8.i21, 0
  br i1 %cmp9.i22, label %sw.bb3.return_crit_edge, label %for.cond.i25

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.cond.i25:                                     ; preds = %sw.bb3
  %call8.1.i23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i23)
  %cmp9.1.i24 = icmp eq i32 %call8.1.i23, 0
  br i1 %cmp9.1.i24, label %for.cond.i25.return_crit_edge, label %for.cond.1.i28

for.cond.i25.return_crit_edge:                    ; preds = %for.cond.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.cond.1.i28:                                   ; preds = %for.cond.i25
  %call8.2.i26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i26)
  %cmp9.2.i27 = icmp eq i32 %call8.2.i26, 0
  br i1 %cmp9.2.i27, label %for.cond.1.i28.return_crit_edge, label %for.cond.1.i28.return.sink.split_crit_edge

for.cond.1.i28.return.sink.split_crit_edge:       ; preds = %for.cond.1.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

for.cond.1.i28.return_crit_edge:                  ; preds = %for.cond.1.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return.sink.split:                                ; preds = %for.cond.1.i28.return.sink.split_crit_edge, %for.cond.1.i15.return.sink.split_crit_edge, %for.cond.1.i.return.sink.split_crit_edge
  %.sink = phi i32 [ 24, %for.cond.1.i.return.sink.split_crit_edge ], [ 34, %for.cond.1.i15.return.sink.split_crit_edge ], [ 0, %for.cond.1.i28.return.sink.split_crit_edge ]
  %name17.i29 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call20.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name17.i29, i32 noundef %.sink, i32 noundef 8) #7
  br label %return

return:                                           ; preds = %return.sink.split, %for.cond.1.i28.return_crit_edge, %for.cond.i25.return_crit_edge, %sw.bb3.return_crit_edge, %for.cond.1.i15.return_crit_edge, %for.cond.i12.return_crit_edge, %sw.bb1.return_crit_edge, %for.cond.1.i.return_crit_edge, %for.cond.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %for.cond.i.return_crit_edge ], [ 0, %for.cond.1.i.return_crit_edge ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %for.cond.i12.return_crit_edge ], [ 0, %for.cond.1.i15.return_crit_edge ], [ 0, %sw.bb3.return_crit_edge ], [ 0, %for.cond.i25.return_crit_edge ], [ 0, %for.cond.1.i28.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlv320aic23b_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %3)
  %cond = icmp eq i32 %3, 9963785
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext -128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %sw.bb.tlv320aic23b_write.exit_crit_edge, label %for.cond.i

sw.bb.tlv320aic23b_write.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit

for.cond.i:                                       ; preds = %sw.bb
  %call8.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext -128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i)
  %cmp9.1.i = icmp eq i32 %call8.1.i, 0
  br i1 %cmp9.1.i, label %for.cond.i.tlv320aic23b_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.tlv320aic23b_write.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call8.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext -128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i)
  %cmp9.2.i = icmp eq i32 %call8.2.i, 0
  br i1 %cmp9.2.i, label %for.cond.1.i.tlv320aic23b_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.tlv320aic23b_write.exit_crit_edge:   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlv320aic23b_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %name17.i = getelementptr i8, ptr %1, i32 -80
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name17.i, i32 noundef 384, i32 noundef 0) #7
  br label %tlv320aic23b_write.exit

tlv320aic23b_write.exit:                          ; preds = %for.cond.2.i, %for.cond.1.i.tlv320aic23b_write.exit_crit_edge, %for.cond.i.tlv320aic23b_write.exit_crit_edge, %sw.bb.tlv320aic23b_write.exit_crit_edge
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %tlv320aic23b_write.exit.cleanup_crit_edge

tlv320aic23b_write.exit.cleanup_crit_edge:        ; preds = %tlv320aic23b_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %tlv320aic23b_write.exit
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %call8.i7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 1, i8 noundef zeroext 25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i7)
  %cmp9.i8 = icmp eq i32 %call8.i7, 0
  br i1 %cmp9.i8, label %if.then.cleanup_crit_edge, label %for.cond.i11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.i11:                                     ; preds = %if.then
  %call8.1.i9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 1, i8 noundef zeroext 25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i9)
  %cmp9.1.i10 = icmp eq i32 %call8.1.i9, 0
  br i1 %cmp9.1.i10, label %for.cond.i11.cleanup_crit_edge, label %for.cond.1.i14

for.cond.i11.cleanup_crit_edge:                   ; preds = %for.cond.i11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.1.i14:                                   ; preds = %for.cond.i11
  %call8.2.i12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 1, i8 noundef zeroext 25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i12)
  %cmp9.2.i13 = icmp eq i32 %call8.2.i12, 0
  br i1 %cmp9.2.i13, label %for.cond.1.i14.cleanup_crit_edge, label %for.cond.2.i17

for.cond.1.i14.cleanup_crit_edge:                 ; preds = %for.cond.1.i14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.2.i17:                                   ; preds = %for.cond.1.i14
  call void @__sanitizer_cov_trace_pc() #6
  %name17.i15 = getelementptr i8, ptr %1, i32 -80
  %call20.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name17.i15, i32 noundef 281, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2.i17, %for.cond.1.i14.cleanup_crit_edge, %for.cond.i11.cleanup_crit_edge, %if.then.cleanup_crit_edge, %tlv320aic23b_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tlv320aic23b_write.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %for.cond.i11.cleanup_crit_edge ], [ 0, %for.cond.1.i14.cleanup_crit_edge ], [ 0, %for.cond.2.i17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_tlv320aic23b__296_207_tlv320aic23b_driver_init6, !8, !"__initcall__kmod_tlv320aic23b__296_207_tlv320aic23b_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 207, i32 1}
!9 = !{ptr @__exitcall_tlv320aic23b_driver_exit, !8, !"__exitcall_tlv320aic23b_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 200, i32 11}
!12 = !{ptr @tlv320aic23b_driver, !13, !"tlv320aic23b_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 198, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 142, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tlv320aic23b_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @tlv320aic23b_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @tlv320aic23b_probe._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 166, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tlv320aic23b_ops, !24, !"tlv320aic23b_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 118, i32 37}
!25 = !{ptr @tlv320aic23b_core_ops, !26, !"tlv320aic23b_core_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 110, i32 42}
!27 = !{ptr @tlv320aic23b_audio_ops, !28, !"tlv320aic23b_audio_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 114, i32 43}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 51, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tlv320aic23b_write._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @tlv320aic23b_write._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 59, i32 2}
!36 = !{ptr @tlv320aic23b_write._entry.7, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tlv320aic23b_write._entry_ptr.9, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @tlv320aic23b_ctrl_ops, !39, !"tlv320aic23b_ctrl_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 106, i32 35}
!40 = !{ptr @tlv320aic23b_id, !41, !"tlv320aic23b_id", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/tlv320aic23b.c", i32 192, i32 35}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
