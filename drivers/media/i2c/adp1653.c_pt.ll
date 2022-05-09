; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adp1653.c_pt.bc'
source_filename = "../drivers/media/i2c/adp1653.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.adp1653_flash = type { %struct.v4l2_subdev, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.adp1653_platform_data = type { ptr, i32, i32, i32, i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_adp1653__292_546_adp1653_i2c_driver_init6 = internal global ptr @adp1653_i2c_driver_init, section ".initcall6.init", align 4
@adp1653_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adp1653_probe, ptr @adp1653_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adp1653_pm_ops, ptr null, ptr null }, ptr @adp1653_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adp1653_i2c_driver_exit = internal global ptr @adp1653_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [53 x i8] c"adp1653.author=Sakari Ailus <sakari.ailus@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [60 x i8] c"adp1653.description=Analog Devices ADP1653 LED flash driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [39 x i8] c"adp1653.file=drivers/media/i2c/adp1653\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [20 x i8] c"adp1653.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adp1653\00", [24 x i8] zeroinitializer }, align 32
@adp1653_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adp1653_suspend, ptr @adp1653_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adp1653_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adp1653\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adp1653_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Neither DT not platform data provided\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp1653_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/adp1653.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp1653_probe._entry_ptr = internal global ptr @adp1653_probe._entry, section ".printk_index", align 4
@adp1653_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&flash->power_lock\00", [45 x i8] zeroinitializer }, align 32
@adp1653_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @adp1653_core_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@adp1653_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @adp1653_open, ptr @adp1653_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@adp1653_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adp1653: failed to register device\0A\00", [60 x i8] zeroinitializer }, align 32
@adp1653_probe._entry_ptr.9 = internal global ptr @adp1653_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flash-timeout-us\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flash-max-microamp\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"indicator\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@adp1653_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error getting GPIO\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adp1653_of_init\00", [16 x i8] zeroinitializer }, align 32
@adp1653_of_init._entry_ptr = internal global ptr @adp1653_of_init._entry, section ".printk_index", align 4
@adp1653_of_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Required property not found\0A\00", [35 x i8] zeroinitializer }, align 32
@adp1653_of_init._entry_ptr.20 = internal global ptr @adp1653_of_init._entry.18, section ".printk_index", align 4
@adp1653_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adp1653_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adp1653_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed writing fault register\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adp1653_init_device\00", [44 x i8] zeroinitializer }, align 32
@adp1653_init_device._entry_ptr = internal global ptr @adp1653_init_device._entry, section ".printk_index", align 4
@adp1653_init_device._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"faults detected: 0x%1.1x\0A\00", [38 x i8] zeroinitializer }, align 32
@adp1653_init_device._entry_ptr.25 = internal global ptr @adp1653_init_device._entry.23, section ".printk_index", align 4
@adp1653_init_device._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adp1653_update_hw failed at %s\0A\00", [32 x i8] zeroinitializer }, align 32
@adp1653_init_device._entry_ptr.28 = internal global ptr @adp1653_init_device._entry.26, section ".printk_index", align 4
@adp1653_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"adp1653:202:(&flash->ctrls)->_lock\00", [61 x i8] zeroinitializer }, align 32
@adp1653_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @adp1653_get_ctrl, ptr null, ptr @adp1653_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 10225923, i64 10225924]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"adp1653_i2c_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 536, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 538, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"adp1653_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 531, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"adp1653_id_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 525, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 482, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 489, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"adp1653_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 366, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"adp1653_internal_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 370, i32 46 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 508, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 421, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 425, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 429, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 435, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 442, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 452, i32 49 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 454, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 460, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"adp1653_core_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 362, i32 42 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 269, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 279, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 287, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 202, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"adp1653_ctrl_ops\00", align 1
@___asan_gen_.145 = private constant [31 x i8] c"../drivers/media/i2c/adp1653.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 193, i32 35 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_adp1653_i2c_driver_exit, ptr @__initcall__kmod_adp1653__292_546_adp1653_i2c_driver_init6, ptr @adp1653_i2c_driver_exit, ptr @adp1653_init_device._entry, ptr @adp1653_init_device._entry.23, ptr @adp1653_init_device._entry.26, ptr @adp1653_init_device._entry_ptr, ptr @adp1653_init_device._entry_ptr.25, ptr @adp1653_init_device._entry_ptr.28, ptr @adp1653_of_init._entry, ptr @adp1653_of_init._entry.18, ptr @adp1653_of_init._entry_ptr, ptr @adp1653_of_init._entry_ptr.20, ptr @adp1653_probe._entry, ptr @adp1653_probe._entry.7, ptr @adp1653_probe._entry_ptr, ptr @adp1653_probe._entry_ptr.9, ptr @adp1653_i2c_driver, ptr @.str, ptr @adp1653_pm_ops, ptr @adp1653_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adp1653_probe.__key, ptr @.str.6, ptr @adp1653_ops, ptr @adp1653_internal_ops, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @adp1653_core_ops, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @adp1653_init_controls._key, ptr @.str.29, ptr @adp1653_ctrl_ops], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_of_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_init_device._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_init_device._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp1653_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adp1653_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp1653_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @adp1653_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_probe(ptr noundef %client, ptr nocapture noundef readnone %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then2.cleanup_crit_edge, label %if.end.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %platform_data.i = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %platform_data.i, align 4
  %call1.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %1, ptr noundef nonnull @.str.10) #5
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %max_flash_timeout.i = getelementptr inbounds %struct.adp1653_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.11, ptr noundef %max_flash_timeout.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.do.end39.i_crit_edge

if.end4.i.do.end39.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39.i

if.end8.i:                                        ; preds = %if.end4.i
  %max_flash_intensity.i = getelementptr inbounds %struct.adp1653_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i.i64.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.12, ptr noundef %max_flash_intensity.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i64.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i64.i, -1
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.do.end39.i_crit_edge

if.end8.i.do.end39.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39.i

if.end12.i:                                       ; preds = %if.end8.i
  %3 = ptrtoint ptr %max_flash_intensity.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_flash_intensity.i, align 4
  %div.i = udiv i32 %4, 1000
  store i32 %div.i, ptr %max_flash_intensity.i, align 4
  %max_torch_intensity.i = getelementptr inbounds %struct.adp1653_platform_data, ptr %call.i.i, i32 0, i32 3
  %call.i.i65.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.13, ptr noundef %max_torch_intensity.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i65.i)
  %tobool15.not.i = icmp sgt i32 %call.i.i65.i, -1
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end12.i.do.end39.i_crit_edge

if.end12.i.do.end39.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39.i

if.end17.i:                                       ; preds = %if.end12.i
  %5 = ptrtoint ptr %max_torch_intensity.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_torch_intensity.i, align 4
  %div19.i = udiv i32 %6, 1000
  store i32 %div19.i, ptr %max_torch_intensity.i, align 4
  tail call void @of_node_put(ptr noundef nonnull %call1.i) #5
  %call20.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #5
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.end17.i.cleanup_crit_edge, label %if.end23.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23.i:                                       ; preds = %if.end17.i
  %max_indicator_intensity.i = getelementptr inbounds %struct.adp1653_platform_data, ptr %call.i.i, i32 0, i32 4
  %call.i.i66.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call20.i, ptr noundef nonnull @.str.13, ptr noundef %max_indicator_intensity.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i66.i)
  %tobool25.not.i = icmp sgt i32 %call.i.i66.i, -1
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end23.i.do.end39.i_crit_edge

if.end23.i.do.end39.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39.i

if.end27.i:                                       ; preds = %if.end23.i
  tail call void @of_node_put(ptr noundef nonnull %call20.i) #5
  %call29.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 3) #5
  %enable_gpio.i = getelementptr inbounds %struct.adp1653_platform_data, ptr %call.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call29.i, ptr %enable_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %adp1653_of_init.exit, label %if.end27.i.do.body18_crit_edge

if.end27.i.do.body18_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

do.end39.i:                                       ; preds = %if.end23.i.do.end39.i_crit_edge, %if.end12.i.do.end39.i_crit_edge, %if.end8.i.do.end39.i_crit_edge, %if.end4.i.do.end39.i_crit_edge
  %child.0.i = phi ptr [ %call1.i, %if.end4.i.do.end39.i_crit_edge ], [ %call1.i, %if.end8.i.do.end39.i_crit_edge ], [ %call1.i, %if.end12.i.do.end39.i_crit_edge ], [ %call20.i, %if.end23.i.do.end39.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  tail call void @of_node_put(ptr noundef nonnull %child.0.i) #5
  br label %cleanup

adp1653_of_init.exit:                             ; preds = %if.end27.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  %8 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %adp1653_of_init.exit.do.body18_crit_edge, label %adp1653_of_init.exit.cleanup_crit_edge

adp1653_of_init.exit.cleanup_crit_edge:           ; preds = %adp1653_of_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

adp1653_of_init.exit.do.body18_crit_edge:         ; preds = %adp1653_of_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.else:                                          ; preds = %if.end
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %11 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data, align 8
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %platform_data16 = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %platform_data16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %platform_data16, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.end13, %adp1653_of_init.exit.do.body18_crit_edge, %if.end27.i.do.body18_crit_edge
  %power_lock = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @adp1653_probe.__key) #5
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @adp1653_ops) #5
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @adp1653_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 4
  store i32 %or, ptr %flags, align 4
  %ctrls.i = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 2
  %call.i62 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls.i, i32 noundef 9, ptr noundef nonnull @adp1653_init_controls._key, ptr noundef nonnull @.str.29) #5
  %call2.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @adp1653_ctrl_ops, i32 noundef 10225921, i8 noundef zeroext 2, i64 noundef -8, i8 noundef zeroext 0) #5
  %led_mode.i = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2.i, ptr %led_mode.i, align 4
  %call4.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @adp1653_ctrl_ops, i32 noundef 10225922, i8 noundef zeroext 0, i64 noundef -2, i8 noundef zeroext 0) #5
  %call6.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @adp1653_ctrl_ops, i32 noundef 10225923, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #5
  %call8.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @adp1653_ctrl_ops, i32 noundef 10225924, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #5
  %platform_data.i63 = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %platform_data.i63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i63, align 4
  %max_flash_timeout.i64 = getelementptr inbounds %struct.adp1653_platform_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %max_flash_timeout.i64 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_flash_timeout.i64, align 4
  %conv.i = zext i32 %21 to i64
  %call13.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @adp1653_ctrl_ops, i32 noundef 10225926, i64 noundef 1000, i64 noundef %conv.i, i64 noundef 54600, i64 noundef %conv.i) #5
  %flash_timeout.i = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %flash_timeout.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call13.i, ptr %flash_timeout.i, align 4
  %23 = ptrtoint ptr %platform_data.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i63, align 4
  %max_flash_intensity.i65 = getelementptr inbounds %struct.adp1653_platform_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %max_flash_intensity.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_flash_intensity.i65, align 4
  %conv16.i = zext i32 %26 to i64
  %call20.i66 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @adp1653_ctrl_ops, i32 noundef 10225927, i64 noundef 215, i64 noundef %conv16.i, i64 noundef 1, i64 noundef %conv16.i) #5
  %flash_intensity.i = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %flash_intensity.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call20.i66, ptr %flash_intensity.i, align 4
  %28 = ptrtoint ptr %platform_data.i63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platform_data.i63, align 4
  %max_torch_intensity.i67 = getelementptr inbounds %struct.adp1653_platform_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %max_torch_intensity.i67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_torch_intensity.i67, align 4
  %conv23.i = zext i32 %31 to i64
  %call27.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @adp1653_ctrl_ops, i32 noundef 10225928, i64 noundef 50, i64 noundef %conv23.i, i64 noundef 15, i64 noundef %conv23.i) #5
  %torch_intensity.i = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %torch_intensity.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call27.i, ptr %torch_intensity.i, align 4
  %33 = ptrtoint ptr %platform_data.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_data.i63, align 4
  %max_indicator_intensity.i68 = getelementptr inbounds %struct.adp1653_platform_data, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %max_indicator_intensity.i68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_indicator_intensity.i68, align 4
  %conv30.i = zext i32 %36 to i64
  %call31.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @adp1653_ctrl_ops, i32 noundef 10225929, i64 noundef 0, i64 noundef %conv30.i, i64 noundef 2500, i64 noundef 0) #5
  %indicator_intensity.i = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 7
  %37 = ptrtoint ptr %indicator_intensity.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call31.i, ptr %indicator_intensity.i, align 4
  %call33.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @adp1653_ctrl_ops, i32 noundef 10225930, i64 noundef 0, i64 noundef 13, i64 noundef 0, i64 noundef 0) #5
  %error.i = getelementptr inbounds %struct.adp1653_flash, ptr %call.i, i32 0, i32 2, i32 9
  %38 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i69 = icmp eq i32 %39, 0
  br i1 %tobool.not.i69, label %if.end26, label %do.body18.do.end36_crit_edge

do.body18.do.end36_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.end26:                                         ; preds = %do.body18
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call33.i, i32 0, i32 20
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %41, 128
  store i32 %or.i, ptr %flags.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %42 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ctrls.i, ptr %ctrl_handler.i, align 4
  %call28 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.do.end36_crit_edge, label %if.end31

if.end26.do.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 131074, ptr %function, align 4
  br label %cleanup

do.end36:                                         ; preds = %if.end26.do.end36_crit_edge, %do.body18.do.end36_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end26.do.end36_crit_edge ], [ %39, %do.body18.do.end36_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end31, %do.end, %adp1653_of_init.exit.cleanup_crit_edge, %do.end39.i, %if.end17.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end36 ], [ 0, %if.end31 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %10, %adp1653_of_init.exit.cleanup_crit_edge ], [ -22, %if.end17.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -12, %if.then2.cleanup_crit_edge ], [ -22, %do.end39.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  %ctrls = getelementptr inbounds %struct.adp1653_flash, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_set_power(ptr noundef %subdev, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.adp1653_flash, ptr %subdev, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #5
  %power_count = getelementptr inbounds %struct.adp1653_flash, ptr %subdev, i32 0, i32 9
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %lnot.ext5 = zext i1 %tobool to i32
  %call = tail call fastcc i32 @__adp1653_set_power(ptr noundef %subdev, i32 noundef %lnot.ext5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then.done_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  %cond = select i1 %tobool, i32 1, i32 -1
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  %add = add i32 %3, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp12 = icmp slt i32 %add, 0
  br i1 %cmp12, label %do.end, label %if.end8.done_crit_edge, !prof !87

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 345, i32 noundef 9, ptr noundef null) #5
  br label %done

done:                                             ; preds = %do.end, %if.end8.done_crit_edge, %if.then.done_crit_edge
  %ret.1 = phi i32 [ %call, %if.then.done_crit_edge ], [ %ret.0, %do.end ], [ %ret.0, %if.end8.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__adp1653_set_power(ptr noundef %flash, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 1
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %flash, i32 noundef %on) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %enable_gpio = getelementptr inbounds %struct.adp1653_platform_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef %on) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %cond = icmp eq i32 %on, 0
  br i1 %cond, label %if.else.cleanup_crit_edge, label %if.end8.thread

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 4294960) #5
  br label %if.end11

if.end8:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool9.not = icmp eq i32 %on, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end8.if.end11_crit_edge, %if.end8.thread
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %flash, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #8
  br label %if.end15

if.end.i:                                         ; preds = %if.end11
  %lock.i = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #5
  %fault.i = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 10
  %11 = ptrtoint ptr %fault.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fault.i, align 4
  %call2.i = tail call fastcc i32 @adp1653_get_fault(ptr noundef %flash) #5
  %12 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_unlock(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp5.i = icmp sgt i32 %call2.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.24, i32 noundef %call2.i) #8
  br label %if.end15

if.end11.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %15, i32 noundef 0) #5
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  %indicator_intensity.i.i = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 7
  %18 = ptrtoint ptr %indicator_intensity.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %indicator_intensity.i.i, align 4
  %val.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i, align 4
  %div.i.i = sdiv i32 %21, 2500
  %led_mode.i.i = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 3
  %22 = ptrtoint ptr %led_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %led_mode.i.i, align 4
  %val1.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val1.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end11.i.sw.epilog.i.i_crit_edge [
    i32 2, label %sw.bb7.i.i
    i32 1, label %sw.bb.i.i
  ]

if.end11.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %flash_timeout.i.i = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 4
  %27 = ptrtoint ptr %flash_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %flash_timeout.i.i, align 4
  %val2.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val2.i.i, align 4
  %sub.i.i = sub i32 847300, %30
  %div3.i.i = sdiv i32 %sub.i.i, 54600
  %31 = trunc i32 %div3.i.i to i8
  %conv6.i.i = or i8 %31, 16
  br label %sw.epilog.i.i

sw.bb7.i.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %torch_intensity.i.i = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 6
  %32 = ptrtoint ptr %torch_intensity.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %torch_intensity.i.i, align 4
  %val8.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val8.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %35)
  %cmp.i.i = icmp slt i32 %35, 35
  %sub12.i.i = add i32 %35, -35
  %div13.i.i = sdiv i32 %sub12.i.i, 15
  %phi.bo.i.i = shl nsw i32 %div13.i.i, 3
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 %phi.bo.i.i
  %or16.i.i = or i32 %cond.i.i, %div.i.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb7.i.i, %sw.bb.i.i, %if.end11.i.sw.epilog.i.i_crit_edge
  %out_sel.0.in.i.i = phi i32 [ %div.i.i, %if.end11.i.sw.epilog.i.i_crit_edge ], [ %div.i.i, %sw.bb.i.i ], [ %or16.i.i, %sw.bb7.i.i ]
  %config.0.i.i = phi i8 [ 0, %if.end11.i.sw.epilog.i.i_crit_edge ], [ %conv6.i.i, %sw.bb.i.i ], [ 0, %sw.bb7.i.i ]
  %out_sel.0.i.i = trunc i32 %out_sel.0.in.i.i to i8
  %call18.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 0, i8 noundef zeroext %out_sel.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %adp1653_update_hw.exit.thread.i, label %adp1653_update_hw.exit.i

adp1653_update_hw.exit.thread.i:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_unlock(ptr noundef %37) #5
  br label %do.end20.i

adp1653_update_hw.exit.i:                         ; preds = %sw.epilog.i.i
  %call21.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext %config.0.i.i) #5
  %38 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_unlock(ptr noundef %39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21.i.i)
  %tobool.not.i = icmp sgt i32 %call21.i.i, -1
  br i1 %tobool.not.i, label %adp1653_update_hw.exit.i.cleanup_crit_edge, label %adp1653_update_hw.exit.i.do.end20.i_crit_edge

adp1653_update_hw.exit.i.do.end20.i_crit_edge:    ; preds = %adp1653_update_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

adp1653_update_hw.exit.i.cleanup_crit_edge:       ; preds = %adp1653_update_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end20.i:                                       ; preds = %adp1653_update_hw.exit.i.do.end20.i_crit_edge, %adp1653_update_hw.exit.thread.i
  %dev21.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end20.i, %do.end9.i, %do.end.i
  %40 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %platform_data, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool18.not = icmp eq ptr %43, null
  br i1 %tobool18.not, label %if.else24, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 %43(ptr noundef %flash, i32 noundef 0) #5
  br label %cleanup

if.else24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %enable_gpio26 = getelementptr inbounds %struct.adp1653_platform_data, ptr %41, i32 0, i32 5
  %44 = ptrtoint ptr %enable_gpio26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enable_gpio26, align 4
  tail call void @gpiod_set_value(ptr noundef %45, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else24, %if.then19, %adp1653_update_hw.exit.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -5, %if.else24 ], [ -5, %if.then19 ], [ 0, %adp1653_update_hw.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adp1653_get_fault(ptr nocapture noundef %flash) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %flash, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fault2 = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 10
  %2 = ptrtoint ptr %fault2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fault2, align 4
  %or = or i32 %3, %call1
  store i32 %or, ptr %fault2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %led_mode = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 3
  %4 = ptrtoint ptr %led_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led_mode, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %7 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i, align 4
  %indicator_intensity.i = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 7
  %9 = ptrtoint ptr %indicator_intensity.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %indicator_intensity.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %div.i = sdiv i32 %12, 2500
  %13 = load ptr, ptr %led_mode, align 4
  %val1.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val1.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %15, label %if.end9.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb7.i
    i32 1, label %sw.bb.i
  ]

if.end9.sw.epilog.i_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %flash_timeout.i = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 4
  %17 = ptrtoint ptr %flash_timeout.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %flash_timeout.i, align 4
  %val2.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val2.i, align 4
  %sub.i = sub i32 847300, %20
  %div3.i = sdiv i32 %sub.i, 54600
  %21 = trunc i32 %div3.i to i8
  %conv6.i = or i8 %21, 16
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %torch_intensity.i = getelementptr inbounds %struct.adp1653_flash, ptr %flash, i32 0, i32 6
  %22 = ptrtoint ptr %torch_intensity.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %torch_intensity.i, align 4
  %val8.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %25)
  %cmp.i = icmp slt i32 %25, 35
  %sub12.i = add i32 %25, -35
  %div13.i = sdiv i32 %sub12.i, 15
  %phi.bo.i = shl nsw i32 %div13.i, 3
  %cond.i = select i1 %cmp.i, i32 0, i32 %phi.bo.i
  %or16.i = or i32 %cond.i, %div.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb.i, %if.end9.sw.epilog.i_crit_edge
  %out_sel.0.in.i = phi i32 [ %div.i, %if.end9.sw.epilog.i_crit_edge ], [ %div.i, %sw.bb.i ], [ %or16.i, %sw.bb7.i ]
  %config.0.i = phi i8 [ 0, %if.end9.sw.epilog.i_crit_edge ], [ %conv6.i, %sw.bb.i ], [ 0, %sw.bb7.i ]
  %out_sel.0.i = trunc i32 %out_sel.0.in.i to i8
  %call18.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext %out_sel.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %sw.epilog.i.cleanup_crit_edge, label %adp1653_update_hw.exit

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

adp1653_update_hw.exit:                           ; preds = %sw.epilog.i
  %call21.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext %config.0.i) #5
  %26 = tail call i32 @llvm.smin.i32(i32 %call21.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21.i)
  %tobool11.not = icmp sgt i32 %call21.i, -1
  br i1 %tobool11.not, label %if.end13, label %adp1653_update_hw.exit.cleanup_crit_edge

adp1653_update_hw.exit.cleanup_crit_edge:         ; preds = %adp1653_update_hw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %adp1653_update_hw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %fault2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fault2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %adp1653_update_hw.exit.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.end13 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %26, %adp1653_update_hw.exit.cleanup_crit_edge ], [ %call18.i, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_open(ptr noundef %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock.i = getelementptr inbounds %struct.adp1653_flash, ptr %sd, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i, i32 noundef 0) #5
  %power_count.i = getelementptr inbounds %struct.adp1653_flash, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @__adp1653_set_power(ptr noundef %sd, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %if.then.i.adp1653_set_power.exit_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then.i.adp1653_set_power.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp1653_set_power.exit

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i.if.end8.i_crit_edge ], [ 0, %entry.if.end8.i_crit_edge ]
  %2 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count.i, align 4
  %add.i = add i32 %3, 1
  store i32 %add.i, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp12.i = icmp slt i32 %add.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end8.i.adp1653_set_power.exit_crit_edge, !prof !87

if.end8.i.adp1653_set_power.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp1653_set_power.exit

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 345, i32 noundef 9, ptr noundef null) #5
  br label %adp1653_set_power.exit

adp1653_set_power.exit:                           ; preds = %do.end.i, %if.end8.i.adp1653_set_power.exit_crit_edge, %if.then.i.adp1653_set_power.exit_crit_edge
  %ret.1.i = phi i32 [ %call.i, %if.then.i.adp1653_set_power.exit_crit_edge ], [ %ret.0.i, %do.end.i ], [ %ret.0.i, %if.end8.i.adp1653_set_power.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock.i) #5
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_close(ptr noundef %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock.i = getelementptr inbounds %struct.adp1653_flash, ptr %sd, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i, i32 noundef 0) #5
  %power_count.i = getelementptr inbounds %struct.adp1653_flash, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then.i:                                        ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.adp1653_flash, ptr %sd, i32 0, i32 1
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i3

if.then.i3:                                       ; preds = %if.then.i
  %call.i1 = tail call i32 %5(ptr noundef %sd, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp.i2 = icmp slt i32 %call.i1, 0
  br i1 %cmp.i2, label %if.then.i3.adp1653_set_power.exit_crit_edge, label %if.then.i3.if.end8.i_crit_edge

if.then.i3.if.end8.i_crit_edge:                   ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then.i3.adp1653_set_power.exit_crit_edge:      ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp1653_set_power.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %enable_gpio.i = getelementptr inbounds %struct.adp1653_platform_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then.i3.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %8 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_count.i, align 4
  %add.i = add i32 %9, -1
  store i32 %add.i, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp12.i = icmp slt i32 %add.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end8.i.adp1653_set_power.exit_crit_edge, !prof !87

if.end8.i.adp1653_set_power.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp1653_set_power.exit

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 345, i32 noundef 9, ptr noundef null) #5
  br label %adp1653_set_power.exit

adp1653_set_power.exit:                           ; preds = %do.end.i, %if.end8.i.adp1653_set_power.exit_crit_edge, %if.then.i3.adp1653_set_power.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %do.end.i ], [ 0, %if.end8.i.adp1653_set_power.exit_crit_edge ], [ %call.i1, %if.then.i3.adp1653_set_power.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock.i) #5
  ret i32 %ret.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_get_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -200
  %call = tail call fastcc i32 @adp1653_get_fault(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 23
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cur, align 8
  %fault = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fault, align 4
  %and = and i32 %4, 8
  store i32 %and, ptr %cur, align 8
  %5 = load i32, ptr %fault, align 4
  %and7 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or12 = or i32 %and, 4
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or12, ptr %cur, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %7 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fault, align 4
  %and15 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end21_crit_edge, label %if.then17

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur, align 8
  %or20 = or i32 %10, 2
  store i32 %or20, ptr %cur, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  %11 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fault, align 4
  %and23 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end29_crit_edge, label %if.then25

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur, align 8
  %or28 = or i32 %14, 1
  store i32 %or28, ptr %cur, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end21.if.end29_crit_edge
  %15 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fault, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -200
  %call = tail call fastcc i32 @adp1653_get_fault(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %entry
  %id9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id9, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %sw.epilog [
    i32 10225923, label %sw.bb
    i32 10225924, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end8
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -48
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %led_mode.i = getelementptr i8, ptr %1, i32 184
  %7 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %led_mode.i, align 4
  %val1.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %indicator_intensity.i = getelementptr i8, ptr %1, i32 200
  %11 = ptrtoint ptr %indicator_intensity.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %indicator_intensity.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %div.i = sdiv i32 %14, 2500
  %flash_intensity.i = getelementptr i8, ptr %1, i32 192
  %15 = ptrtoint ptr %flash_intensity.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flash_intensity.i, align 4
  %val6.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %18)
  %cmp7.i = icmp slt i32 %18, 35
  %sub.i = add i32 %18, -35
  %div11.i = sdiv i32 %sub.i, 15
  %phi.bo.i = shl nsw i32 %div11.i, 3
  %cond.i = select i1 %cmp7.i, i32 0, i32 %phi.bo.i
  %or.i = or i32 %cond.i, %div.i
  %conv14.i = trunc i32 %or.i to i8
  %call15.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %conv14.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i:                                       ; preds = %if.end.i
  %call19.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 2, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.cleanup_crit_edge

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 2, i8 noundef zeroext 0) #5
  br label %cleanup

sw.bb11:                                          ; preds = %if.end8
  %led_mode.i29 = getelementptr i8, ptr %1, i32 184
  %19 = ptrtoint ptr %led_mode.i29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %led_mode.i29, align 4
  %val1.i30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val1.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val1.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not.i31 = icmp eq i32 %22, 1
  br i1 %cmp.not.i31, label %if.end.i32, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i32:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %indicator_intensity.i25 = getelementptr i8, ptr %1, i32 200
  %23 = ptrtoint ptr %indicator_intensity.i25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %indicator_intensity.i25, align 4
  %val.i26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val.i26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i26, align 4
  %div.i27 = sdiv i32 %26, 2500
  %conv.i28 = trunc i32 %div.i27 to i8
  %dev_priv.i.i24 = getelementptr i8, ptr %1, i32 -48
  %27 = ptrtoint ptr %dev_priv.i.i24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i24, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 0, i8 noundef zeroext %conv.i28) #5
  br label %cleanup

sw.epilog:                                        ; preds = %if.end8
  %dev_priv.i.i35 = getelementptr i8, ptr %1, i32 -48
  %29 = ptrtoint ptr %dev_priv.i.i35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i35, align 4
  %indicator_intensity.i36 = getelementptr i8, ptr %1, i32 200
  %31 = ptrtoint ptr %indicator_intensity.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %indicator_intensity.i36, align 4
  %val.i37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %val.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i37, align 4
  %div.i38 = sdiv i32 %34, 2500
  %led_mode.i39 = getelementptr i8, ptr %1, i32 184
  %35 = ptrtoint ptr %led_mode.i39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %led_mode.i39, align 4
  %val1.i40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %val1.i40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val1.i40, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %38, label %sw.epilog.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb7.i
    i32 1, label %sw.bb.i
  ]

sw.epilog.sw.epilog.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %flash_timeout.i = getelementptr i8, ptr %1, i32 188
  %40 = ptrtoint ptr %flash_timeout.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %flash_timeout.i, align 4
  %val2.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val2.i, align 4
  %sub.i41 = sub i32 847300, %43
  %div3.i = sdiv i32 %sub.i41, 54600
  %44 = trunc i32 %div3.i to i8
  %conv6.i = or i8 %44, 16
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %torch_intensity.i = getelementptr i8, ptr %1, i32 196
  %45 = ptrtoint ptr %torch_intensity.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %torch_intensity.i, align 4
  %val8.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %val8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %48)
  %cmp.i = icmp slt i32 %48, 35
  %sub12.i = add i32 %48, -35
  %div13.i = sdiv i32 %sub12.i, 15
  %phi.bo.i42 = shl nsw i32 %div13.i, 3
  %cond.i43 = select i1 %cmp.i, i32 0, i32 %phi.bo.i42
  %or16.i = or i32 %cond.i43, %div.i38
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb.i, %sw.epilog.sw.epilog.i_crit_edge
  %out_sel.0.in.i = phi i32 [ %div.i38, %sw.epilog.sw.epilog.i_crit_edge ], [ %div.i38, %sw.bb.i ], [ %or16.i, %sw.bb7.i ]
  %config.0.i = phi i8 [ 0, %sw.epilog.sw.epilog.i_crit_edge ], [ %conv6.i, %sw.bb.i ], [ 0, %sw.bb7.i ]
  %out_sel.0.i = trunc i32 %out_sel.0.in.i to i8
  %call18.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 0, i8 noundef zeroext %out_sel.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %sw.epilog.i.cleanup_crit_edge, label %if.end.i44

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i44:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 1, i8 noundef zeroext %config.0.i) #5
  %49 = tail call i32 @llvm.smin.i32(i32 %call21.i, i32 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i44, %sw.epilog.i.cleanup_crit_edge, %if.end.i32, %sw.bb11.cleanup_crit_edge, %if.end22.i, %if.end18.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call23.i, %if.end22.i ], [ -16, %sw.bb.cleanup_crit_edge ], [ %call15.i, %if.end.i.cleanup_crit_edge ], [ %call19.i, %if.end18.i.cleanup_crit_edge ], [ %call4.i, %if.end.i32 ], [ -16, %sw.bb11.cleanup_crit_edge ], [ %call18.i, %sw.epilog.i.cleanup_crit_edge ], [ %49, %if.end.i44 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_count = getelementptr inbounds %struct.adp1653_flash, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.adp1653_flash, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 0) #5
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %enable_gpio.i = getelementptr inbounds %struct.adp1653_platform_data, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else.i ], [ %8, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp1653_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_count = getelementptr inbounds %struct.adp1653_flash, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @__adp1653_set_power(ptr noundef %1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_adp1653__292_546_adp1653_i2c_driver_init6, !1, !"__initcall__kmod_adp1653__292_546_adp1653_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adp1653.c", i32 546, i32 1}
!2 = !{ptr @__exitcall_adp1653_i2c_driver_exit, !1, !"__exitcall_adp1653_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/adp1653.c", i32 548, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/adp1653.c", i32 549, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/adp1653.c", i32 550, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/adp1653.c", i32 538, i32 11}
!12 = !{ptr @adp1653_i2c_driver, !13, !"adp1653_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/adp1653.c", i32 536, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/adp1653.c", i32 482, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adp1653_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @adp1653_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @adp1653_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/adp1653.c", i32 489, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/adp1653.c", i32 508, i32 2}
!27 = !{ptr @adp1653_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @adp1653_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/adp1653.c", i32 421, i32 37}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/adp1653.c", i32 425, i32 34}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/adp1653.c", i32 429, i32 34}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/adp1653.c", i32 435, i32 34}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/adp1653.c", i32 442, i32 37}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/adp1653.c", i32 452, i32 49}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/adp1653.c", i32 454, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @adp1653_of_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @adp1653_of_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/adp1653.c", i32 460, i32 2}
!48 = !{ptr @adp1653_of_init._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @adp1653_of_init._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @adp1653_ops, !51, !"adp1653_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/adp1653.c", i32 366, i32 37}
!52 = !{ptr @adp1653_core_ops, !53, !"adp1653_core_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/adp1653.c", i32 362, i32 42}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/adp1653.c", i32 269, i32 3}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @adp1653_init_device._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @adp1653_init_device._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/adp1653.c", i32 279, i32 3}
!61 = !{ptr @adp1653_init_device._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @adp1653_init_device._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/adp1653.c", i32 287, i32 3}
!65 = !{ptr @adp1653_init_device._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @adp1653_init_device._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @adp1653_internal_ops, !68, !"adp1653_internal_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/adp1653.c", i32 370, i32 46}
!69 = !{ptr @adp1653_init_controls._key, !70, !"_key", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/adp1653.c", i32 202, i32 2}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @adp1653_ctrl_ops, !73, !"adp1653_ctrl_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/adp1653.c", i32 193, i32 35}
!74 = !{ptr @adp1653_pm_ops, !75, !"adp1653_pm_ops", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/adp1653.c", i32 531, i32 32}
!76 = !{ptr @adp1653_id_table, !77, !"adp1653_id_table", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/adp1653.c", i32 525, i32 35}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"branch_weights", i32 1, i32 2000}
