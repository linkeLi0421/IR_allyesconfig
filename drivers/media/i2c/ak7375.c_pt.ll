; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ak7375.c_pt.bc'
source_filename = "../drivers/media/i2c/ak7375.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ak7375_device = type { %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_ak7375__293_276_ak7375_i2c_driver_init6 = internal global ptr @ak7375_i2c_driver_init, section ".initcall6.init", align 4
@ak7375_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ak7375_remove, ptr @ak7375_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ak7375_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak7375_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ak7375_i2c_driver_exit = internal global ptr @ak7375_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [51 x i8] c"ak7375.author=Tianshu Qiu <tian.shu.qiu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [48 x i8] c"ak7375.author=Bingbu Cao <bingbu.cao@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [37 x i8] c"ak7375.description=AK7375 VCM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [37 x i8] c"ak7375.file=drivers/media/i2c/ak7375\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [22 x i8] c"ak7375.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak7375\00", [25 x i8] zeroinitializer }, align 32
@ak7375_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak7375\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ak7375_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ak7375_vcm_suspend, ptr @ak7375_vcm_resume, ptr @ak7375_vcm_suspend, ptr @ak7375_vcm_resume, ptr @ak7375_vcm_suspend, ptr @ak7375_vcm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak7375_vcm_suspend, ptr @ak7375_vcm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ak7375_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } zeroinitializer, align 32
@ak7375_int_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ak7375_open, ptr @ak7375_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@ak7375_vcm_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ak7375_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ak7375_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ak7375:119:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@ak7375_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s fail error: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ak7375_init_controls\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ak7375.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ak7375_init_controls._entry_ptr = internal global ptr @ak7375_init_controls._entry, section ".printk_index", align 4
@ak7375_vcm_suspend.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@ak7375_vcm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s I2C failure: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ak7375_vcm_suspend\00", [45 x i8] zeroinitializer }, align 32
@ak7375_vcm_suspend._entry_ptr = internal global ptr @ak7375_vcm_suspend._entry, section ".printk_index", align 4
@ak7375_vcm_suspend._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ak7375_vcm_suspend._entry_ptr.10 = internal global ptr @ak7375_vcm_suspend._entry.9, section ".printk_index", align 4
@ak7375_vcm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.11, ptr @.str.4, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ak7375_vcm_resume\00", [46 x i8] zeroinitializer }, align 32
@ak7375_vcm_resume._entry_ptr = internal global ptr @ak7375_vcm_resume._entry, section ".printk_index", align 4
@ak7375_vcm_resume._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ak7375_vcm_resume._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.11, ptr @.str.4, i32 247, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ak7375_vcm_resume._entry_ptr.14 = internal global ptr @ak7375_vcm_resume._entry.13, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"ak7375_i2c_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 267, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 269, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"ak7375_of_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 256, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"ak7375_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 262, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"ak7375_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 105, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"ak7375_int_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 100, i32 46 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"ak7375_vcm_ctrl_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 84, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 119, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 125, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 203, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 211, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 236, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private constant [30 x i8] c"../drivers/media/i2c/ak7375.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 246, i32 4 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ak7375_i2c_driver_exit, ptr @__initcall__kmod_ak7375__293_276_ak7375_i2c_driver_init6, ptr @ak7375_i2c_driver_exit, ptr @ak7375_init_controls._entry, ptr @ak7375_init_controls._entry_ptr, ptr @ak7375_vcm_resume._entry, ptr @ak7375_vcm_resume._entry.13, ptr @ak7375_vcm_resume._entry_ptr, ptr @ak7375_vcm_resume._entry_ptr.14, ptr @ak7375_vcm_suspend._entry, ptr @ak7375_vcm_suspend._entry.9, ptr @ak7375_vcm_suspend._entry_ptr, ptr @ak7375_vcm_suspend._entry_ptr.10, ptr @ak7375_i2c_driver, ptr @.str, ptr @ak7375_of_table, ptr @ak7375_pm_ops, ptr @ak7375_ops, ptr @ak7375_int_ops, ptr @ak7375_vcm_ctrl_ops, ptr @ak7375_init_controls._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @ak7375_vcm_resume._rs, ptr @.str.12], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_int_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_vcm_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_vcm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_vcm_suspend._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_vcm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_vcm_resume._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak7375_vcm_resume._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ak7375_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ak7375_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ak7375_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ak7375_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak7375_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -184
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %add.ptr.i) #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak7375_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 388, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.ak7375_device, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @ak7375_ops) #6
  %flags = getelementptr inbounds %struct.ak7375_device, ptr %call.i, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 4
  store i32 %or, ptr %flags, align 4
  %internal_ops = getelementptr inbounds %struct.ak7375_device, ptr %call.i, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ak7375_int_ops, ptr %internal_ops, align 4
  %function = getelementptr inbounds %struct.ak7375_device, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 131075, ptr %function, align 4
  %call.i42 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef nonnull @ak7375_init_controls._key, ptr noundef nonnull @.str.1) #6
  %call1.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %call.i, ptr noundef nonnull @ak7375_vcm_ctrl_ops, i32 noundef 10094858, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 0) #6
  %focus.i = getelementptr inbounds %struct.ak7375_device, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %focus.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %focus.i, align 4
  %error.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %ak7375_init_controls.exit.thread, label %ak7375_init_controls.exit

ak7375_init_controls.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler.i45 = getelementptr inbounds %struct.ak7375_device, ptr %call.i, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %ctrl_handler.i45 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %ctrl_handler.i45, align 4
  br label %if.end7

ak7375_init_controls.exit:                        ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.ak7375_device, ptr %call.i, i32 0, i32 1, i32 14
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %6) #9
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %error.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ak7375_device, ptr %call.i, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %ctrl_handler.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool5.not = icmp eq i32 %.pr, 0
  br i1 %tobool5.not, label %ak7375_init_controls.exit.if.end7_crit_edge, label %ak7375_init_controls.exit.err_cleanup_crit_edge

ak7375_init_controls.exit.err_cleanup_crit_edge:  ; preds = %ak7375_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup

ak7375_init_controls.exit.if.end7_crit_edge:      ; preds = %ak7375_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %ak7375_init_controls.exit.if.end7_crit_edge, %ak7375_init_controls.exit.thread
  %call10 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end7.err_cleanup_crit_edge, label %if.end12

if.end7.err_cleanup_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup

if.end12:                                         ; preds = %if.end7
  %call14 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.err_cleanup_crit_edge, label %if.end17

if.end12.err_cleanup_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call.i43 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i44 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #6
  br label %cleanup

err_cleanup:                                      ; preds = %if.end12.err_cleanup_crit_edge, %if.end7.err_cleanup_crit_edge, %ak7375_init_controls.exit.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %.pr, %ak7375_init_controls.exit.err_cleanup_crit_edge ], [ %call10, %if.end7.err_cleanup_crit_edge ], [ %call14, %if.end12.err_cleanup_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_cleanup ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak7375_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !65
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak7375_close(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak7375_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10094858, i32 %1)
  %cmp = icmp eq i32 %1, 10094858
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %.tr = trunc i32 %5 to i16
  %conv = shl i16 %.tr, 4
  %dev_priv.i.i = getelementptr inbounds %struct.ak7375_device, ptr %3, i32 0, i32 1, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %buf.i, align 1
  %conv6.i = trunc i16 %conv to i8
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6.i, ptr %9, align 1
  %12 = lshr i16 %conv, 8
  %conv14.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv14.i, ptr %8, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp25.not.i = icmp eq i32 %call.i.i, 3
  %..i = select i1 %cmp25.not.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp19.i, i32 %call.i.i, i32 %..i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak7375_vcm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i36 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %active = getelementptr i8, ptr %1, i32 200
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %focus = getelementptr i8, ptr %1, i32 196
  %4 = ptrtoint ptr %focus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %focus, align 4
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val2, align 4
  %and = and i32 %7, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and)
  %cmp44 = icmp sgt i32 %and, -1
  br i1 %cmp44, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 152
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %val.045 = phi i32 [ %and, %for.body.lr.ph ], [ %sub, %if.end12.for.body_crit_edge ]
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %buf.i, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %9, align 1
  %14 = lshr exact i32 %val.045, 4
  %conv14.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14.i, ptr %8, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp25.not.i = icmp eq i32 %call.i.i, 3
  %..i = select i1 %cmp25.not.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp19.i, i32 %call.i.i, i32 %..i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %for.body.if.end12_crit_edge, label %do.body

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body:                                          ; preds = %for.body
  %.b35 = load i1, ptr @ak7375_vcm_suspend.__print_once, align 1
  br i1 %.b35, label %do.body.if.end12_crit_edge, label %if.then7

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ak7375_vcm_suspend.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %do.body.if.end12_crit_edge, %for.body.if.end12_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #6
  %sub = add nsw i32 %val.045, -64
  %cmp = icmp sgt i32 %val.045, 63
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %if.end.for.end_crit_edge
  %dev_priv.i.i37 = getelementptr i8, ptr %1, i32 152
  %16 = ptrtoint ptr %dev_priv.i.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i37, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i36) #6
  %18 = getelementptr inbounds [3 x i8], ptr %buf.i36, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i36, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %19, align 1, !annotation !68
  %21 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %buf.i36, align 1
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 64, ptr %18, align 1
  %call.i.i39 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %buf.i36, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %cmp19.i40 = icmp slt i32 %call.i.i39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i39)
  %cmp25.not.i41 = icmp eq i32 %call.i.i39, 2
  %..i42 = select i1 %cmp25.not.i41, i32 0, i32 -5
  %retval.0.i43 = select i1 %cmp19.i40, i32 %call.i.i39, i32 %..i42
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i43)
  %tobool14.not = icmp eq i32 %retval.0.i43, 0
  br i1 %tobool14.not, label %for.end.if.end19_crit_edge, label %do.end18

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i43) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %for.end.if.end19_crit_edge
  %23 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak7375_vcm_resume(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i40 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %active = getelementptr i8, ptr %1, i32 200
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 152
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !68
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %buf.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp25.not.i = icmp eq i32 %call.i.i, 2
  %..i = select i1 %cmp25.not.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp19.i, i32 %call.i.i, i32 %..i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %focus = getelementptr i8, ptr %1, i32 196
  %11 = ptrtoint ptr %focus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %focus, align 4
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val6, align 4
  %rem = srem i32 %14, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %14)
  %cmp.not49 = icmp sgt i32 %rem, %14
  br i1 %cmp.not49, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %15 = getelementptr inbounds [3 x i8], ptr %buf.i40, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %buf.i40, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %val.050 = phi i32 [ %rem, %for.body.lr.ph ], [ %add, %if.end22.for.body_crit_edge ]
  %val.0.tr = trunc i32 %val.050 to i16
  %conv = shl i16 %val.0.tr, 4
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i40) #6
  %19 = ptrtoint ptr %buf.i40 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %buf.i40, align 1
  %conv6.i = trunc i16 %conv to i8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv6.i, ptr %16, align 1
  %21 = lshr i16 %conv, 8
  %conv14.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv14.i, ptr %15, align 1
  %call.i.i43 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %buf.i40, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %cmp19.i44 = icmp slt i32 %call.i.i43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i43)
  %cmp25.not.i45 = icmp eq i32 %call.i.i43, 3
  %..i46 = select i1 %cmp25.not.i45, i32 0, i32 -5
  %retval.0.i47 = select i1 %cmp19.i44, i32 %call.i.i43, i32 %..i46
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i47)
  %tobool10.not = icmp eq i32 %retval.0.i47, 0
  br i1 %tobool10.not, label %for.body.if.end22_crit_edge, label %do.body12

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body12:                                        ; preds = %for.body
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @ak7375_vcm_resume._rs, ptr noundef nonnull @.str.11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body12.if.end22_crit_edge, label %do.end18

do.body12.if.end22_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i47) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %do.body12.if.end22_crit_edge, %for.body.if.end22_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #6
  %add = add i32 %val.050, 64
  %23 = ptrtoint ptr %focus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %focus, align 4
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val8, align 4
  %cmp.not = icmp sgt i32 %add, %26
  br i1 %cmp.not, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %if.end5.for.end_crit_edge
  %27 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_ak7375__293_276_ak7375_i2c_driver_init6, !1, !"__initcall__kmod_ak7375__293_276_ak7375_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ak7375.c", i32 276, i32 1}
!2 = !{ptr @__exitcall_ak7375_i2c_driver_exit, !1, !"__exitcall_ak7375_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ak7375.c", i32 278, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ak7375.c", i32 279, i32 1}
!7 = !{ptr @__UNIQUE_ID_description296, !8, !"__UNIQUE_ID_description296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ak7375.c", i32 280, i32 1}
!9 = !{ptr @__UNIQUE_ID_file297, !10, !"__UNIQUE_ID_file297", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/ak7375.c", i32 281, i32 1}
!11 = !{ptr @__UNIQUE_ID_license298, !10, !"__UNIQUE_ID_license298", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ak7375.c", i32 269, i32 11}
!14 = !{ptr @ak7375_i2c_driver, !15, !"ak7375_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ak7375.c", i32 267, i32 26}
!16 = !{ptr @ak7375_ops, !17, !"ak7375_ops", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ak7375.c", i32 105, i32 37}
!18 = !{ptr @ak7375_int_ops, !19, !"ak7375_int_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ak7375.c", i32 100, i32 46}
!20 = !{ptr @ak7375_init_controls._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ak7375.c", i32 119, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/ak7375.c", i32 125, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ak7375_init_controls._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @ak7375_init_controls._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @ak7375_vcm_ctrl_ops, !32, !"ak7375_vcm_ctrl_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/ak7375.c", i32 84, i32 35}
!33 = !{ptr @ak7375_of_table, !34, !"ak7375_of_table", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ak7375.c", i32 256, i32 34}
!35 = !{ptr @ak7375_pm_ops, !36, !"ak7375_pm_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ak7375.c", i32 262, i32 32}
!37 = distinct !{null, !38, !"__print_once", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ak7375.c", i32 203, i32 4}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ak7375_vcm_suspend._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @ak7375_vcm_suspend._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ak7375_vcm_suspend._entry.9, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ak7375.c", i32 211, i32 3}
!45 = !{ptr @ak7375_vcm_suspend._entry_ptr.10, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ak7375.c", i32 236, i32 3}
!48 = !{ptr @ak7375_vcm_resume._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ak7375_vcm_resume._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ak7375.c", i32 246, i32 4}
!52 = !{ptr @ak7375_vcm_resume._rs, !51, !"_rs", i1 false, i1 false}
!53 = !{ptr @ak7375_vcm_resume._entry.13, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ak7375_vcm_resume._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148308146}
!65 = !{i64 792969, i64 792994, i64 793016, i64 793032, i64 793044, i64 793064, i64 793088, i64 793104, i64 793116}
!66 = !{i64 2148308334}
!67 = !{i8 0, i8 2}
!68 = !{!"auto-init"}
