; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ad5820.c_pt.bc'
source_filename = "../drivers/media/i2c/ad5820.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ad5820_device = type { %struct.v4l2_subdev, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, ptr, %struct.mutex, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_ad5820__292_386_ad5820_i2c_driver_init6 = internal global ptr @ad5820_i2c_driver_init, section ".initcall6.init", align 4
@ad5820_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad5820_probe, ptr @ad5820_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad5820_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad5820_pm, ptr null, ptr null }, ptr @ad5820_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ad5820_i2c_driver_exit = internal global ptr @ad5820_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [30 x i8] c"ad5820.author=Tuukka Toivonen\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [45 x i8] c"ad5820.description=AD5820 camera lens driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [37 x i8] c"ad5820.file=drivers/media/i2c/ad5820\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [19 x i8] c"ad5820.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5820\00", [25 x i8] zeroinitializer }, align 32
@ad5820_of_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5820\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5821\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5823\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ad5820_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ad5820_suspend, ptr @ad5820_resume, ptr @ad5820_suspend, ptr @ad5820_resume, ptr @ad5820_suspend, ptr @ad5820_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ad5820_id_table = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad5820\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ad5821\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ad5823\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VANA\00", [27 x i8] zeroinitializer }, align 32
@ad5820_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not get regulator for vana\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5820_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ad5820.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5820_probe._entry_ptr = internal global ptr @ad5820_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@ad5820_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not get enable gpio\0A\00", [37 x i8] zeroinitializer }, align 32
@ad5820_probe._entry_ptr.10 = internal global ptr @ad5820_probe._entry.8, section ".printk_index", align 4
@ad5820_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&coil->power_lock\00", [46 x i8] zeroinitializer }, align 32
@ad5820_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ad5820_core_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ad5820_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @ad5820_registered, ptr null, ptr @ad5820_open, ptr @ad5820_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5820 focus\00", [19 x i8] zeroinitializer }, align 32
@ad5820_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad5820_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ad5820_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 75, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"write failed, error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5820_write\00", [19 x i8] zeroinitializer }, align 32
@ad5820_write._entry_ptr = internal global ptr @ad5820_write._entry, section ".printk_index", align 4
@ad5820_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ad5820:177:(&coil->ctrls)->_lock\00", [63 x i8] zeroinitializer }, align 32
@ad5820_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ad5820_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"ad5820_i2c_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 375, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 377, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"ad5820_of_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 365, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"ad5820_pm\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 373, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"ad5820_id_table\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 357, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 303, i32 48 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 307, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 311, i32 60 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 316, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 320, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"ad5820_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 258, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"ad5820_internal_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 262, i32 46 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 326, i32 29 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"ad5820_core_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 254, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 75, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 177, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"ad5820_ctrl_ops\00", align 1
@___asan_gen_.95 = private constant [30 x i8] c"../drivers/media/i2c/ad5820.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 170, i32 35 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_ad5820_i2c_driver_exit, ptr @__initcall__kmod_ad5820__292_386_ad5820_i2c_driver_init6, ptr @ad5820_i2c_driver_exit, ptr @ad5820_probe._entry, ptr @ad5820_probe._entry.8, ptr @ad5820_probe._entry_ptr, ptr @ad5820_probe._entry_ptr.10, ptr @ad5820_write._entry, ptr @ad5820_write._entry_ptr, ptr @ad5820_i2c_driver, ptr @.str, ptr @ad5820_of_table, ptr @ad5820_pm, ptr @ad5820_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @ad5820_probe.__key, ptr @.str.11, ptr @ad5820_ops, ptr @ad5820_internal_ops, ptr @.str.12, ptr @ad5820_core_ops, ptr @.str.13, ptr @.str.14, ptr @ad5820_init_controls._key, ptr @.str.15, ptr @ad5820_ctrl_ops], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_of_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5820_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad5820_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5820_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ad5820_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_probe(ptr noundef %client, ptr nocapture noundef readnone %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %if.end

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %vana = getelementptr inbounds %struct.ad5820_device, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %vana to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %vana, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call2, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then5.cleanup49_crit_edge, label %do.end

if.then5.cleanup49_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup49

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 3) #6
  %enable_gpio = getelementptr inbounds %struct.ad5820_device, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call13, ptr %enable_gpio, align 4
  %cmp.i79 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then16, label %do.body27

if.then16:                                        ; preds = %if.end11
  %cmp19.not = icmp eq ptr %call13, inttoptr (i32 -517 to ptr)
  br i1 %cmp19.not, label %if.then16.cleanup49_crit_edge, label %do.end23

if.then16.cleanup49_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

do.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup49

do.body27:                                        ; preds = %if.end11
  %power_lock = getelementptr inbounds %struct.ad5820_device, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ad5820_probe.__key) #6
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ad5820_ops) #6
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %flags, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ad5820_internal_ops, ptr %internal_ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131075, ptr %function, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call34 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.12, i32 noundef 32) #6
  %call37 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %cleanup2, label %if.end40

if.end40:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #6
  br label %cleanup49

cleanup2:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_destroy(ptr noundef %power_lock) #6
  br label %cleanup49

cleanup49:                                        ; preds = %cleanup2, %if.end40, %do.end23, %if.then16.cleanup49_crit_edge, %do.end, %if.then5.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup49_crit_edge ], [ %1, %do.end ], [ -517, %if.then5.cleanup49_crit_edge ], [ %3, %do.end23 ], [ -517, %if.then16.cleanup49_crit_edge ], [ %call37, %cleanup2 ], [ %call42, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #6
  %ctrls = getelementptr inbounds %struct.ad5820_device, ptr %1, i32 0, i32 3
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #6
  %power_lock = getelementptr inbounds %struct.ad5820_device, ptr %1, i32 0, i32 8
  tail call void @mutex_destroy(ptr noundef %power_lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_set_power(ptr noundef %subdev, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.ad5820_device, ptr %subdev, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #6
  %power_count = getelementptr inbounds %struct.ad5820_device, ptr %subdev, i32 0, i32 9
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @ad5820_power_on(ptr noundef %subdev)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @ad5820_power_off(ptr noundef %subdev, i1 noundef zeroext true)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp3 = icmp slt i32 %cond, 0
  br i1 %cmp3, label %cond.end.done_crit_edge, label %cond.end.if.end5_crit_edge

cond.end.if.end5_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

cond.end.done_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end5:                                          ; preds = %cond.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %cond, %cond.end.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  %cond7 = select i1 %tobool.not, i32 -1, i32 1
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  %add = add i32 %3, %cond7
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp10 = icmp slt i32 %add, 0
  br i1 %cmp10, label %do.end, label %if.end5.done_crit_edge, !prof !66

if.end5.done_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 237, i32 noundef 9, ptr noundef null) #6
  br label %done

done:                                             ; preds = %do.end, %if.end5.done_crit_edge, %cond.end.done_crit_edge
  %ret.1 = phi i32 [ %cond, %cond.end.done_crit_edge ], [ %ret.0, %do.end ], [ %ret.0, %if.end5.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5820_power_on(ptr nocapture noundef %coil) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %be_data.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vana = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 2
  %0 = ptrtoint ptr %vana to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vana, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_gpio = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 7
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #6
  %standby = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 10
  %4 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %standby, align 4
  %focus_ramp_time.i = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 5
  %5 = ptrtoint ptr %focus_ramp_time.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %focus_ramp_time.i, align 4
  %focus_ramp_mode.i = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 6
  %7 = ptrtoint ptr %focus_ramp_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %focus_ramp_mode.i, align 4
  %focus_absolute.i = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 4
  %9 = ptrtoint ptr %focus_absolute.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %focus_absolute.i, align 4
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %coil, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196607, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_data.i.i) #6
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i20.i = icmp eq ptr %16, null
  br i1 %tobool.not.i20.i, label %if.end.fail_crit_edge, label %if.end.i.i

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end.i.i:                                       ; preds = %if.end
  %shr.i = lshr i32 %6, 1
  %add.i = add i32 %shr.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %add.i)
  %17 = icmp ult i32 %add.i, 50
  %div.i = udiv i32 %add.i, 50
  %18 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #6, !range !67
  %sub.i.i = sub nuw nsw i32 32, %18
  %cond.i.i = select i1 %17, i32 0, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %shl.i = shl i32 %10, 4
  %conv4.i = or i32 %shl.i, %cond.i
  %or5.i = or i32 %cond.i.i, %conv4.i
  %conv6.i = trunc i32 %or5.i to i16
  %19 = ptrtoint ptr %be_data.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv6.i, ptr %be_data.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i.i, align 2
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %be_data.i.i, ptr %buf.i.i, align 4
  %call3.i.i = call i32 @i2c_transfer(ptr noundef nonnull %16, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %ad5820_update_hw.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13, i32 noundef %call3.i.i) #9
  br label %fail

ad5820_update_hw.exit:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_data.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br label %cleanup

fail:                                             ; preds = %do.end.i.i, %if.end.fail_crit_edge
  %retval.0.i.i.ph = phi i32 [ -19, %if.end.fail_crit_edge ], [ %call3.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_data.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  %25 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enable_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %26, i32 noundef 0) #6
  %27 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %standby, align 4
  %28 = ptrtoint ptr %vana to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vana, align 4
  %call10 = call i32 @regulator_disable(ptr noundef %29) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %ad5820_update_hw.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i.ph, %fail ], [ %call, %entry.cleanup_crit_edge ], [ 0, %ad5820_update_hw.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5820_power_off(ptr nocapture noundef %coil, i1 noundef zeroext %standby) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %be_data.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %standby, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %standby1 = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 10
  %0 = ptrtoint ptr %standby1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %standby1, align 4
  %focus_ramp_time.i = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 5
  %1 = ptrtoint ptr %focus_ramp_time.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %focus_ramp_time.i, align 4
  %focus_ramp_mode.i = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 6
  %3 = ptrtoint ptr %focus_ramp_mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %focus_ramp_mode.i, align 4
  %focus_absolute.i = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 4
  %5 = ptrtoint ptr %focus_absolute.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %focus_absolute.i, align 4
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %coil, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_data.i.i) #6
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i20.i = icmp eq ptr %12, null
  br i1 %tobool.not.i20.i, label %if.then.ad5820_update_hw.exit_crit_edge, label %if.end.i.i

if.then.ad5820_update_hw.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5820_update_hw.exit

if.end.i.i:                                       ; preds = %if.then
  %shr.i = lshr i32 %2, 1
  %add.i = add i32 %shr.i, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %add.i)
  %13 = icmp ult i32 %add.i, 50
  %div.i = udiv i32 %add.i, 50
  %14 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #6, !range !67
  %sub.i.i = sub nuw nsw i32 32, %14
  %cond.i.i = select i1 %13, i32 0, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %shl.i = shl i32 %6, 4
  %conv4.i = or i32 %shl.i, %cond.i
  %or5.i = or i32 %cond.i.i, %conv4.i
  %conv6.i = trunc i32 %or5.i to i16
  %conv10.i = or i16 %conv6.i, -32768
  %15 = ptrtoint ptr %be_data.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv10.i, ptr %be_data.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i.i, align 2
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %be_data.i.i, ptr %buf.i.i, align 4
  %call3.i.i = call i32 @i2c_transfer(ptr noundef nonnull %12, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i.ad5820_update_hw.exit_crit_edge

if.end.i.i.ad5820_update_hw.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5820_update_hw.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13, i32 noundef %call3.i.i) #9
  br label %ad5820_update_hw.exit

ad5820_update_hw.exit:                            ; preds = %do.end.i.i, %if.end.i.i.ad5820_update_hw.exit_crit_edge, %if.then.ad5820_update_hw.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %do.end.i.i ], [ -19, %if.then.ad5820_update_hw.exit_crit_edge ], [ 0, %if.end.i.i.ad5820_update_hw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_data.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br label %if.end

if.end:                                           ; preds = %ad5820_update_hw.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.i, %ad5820_update_hw.exit ], [ 0, %entry.if.end_crit_edge ]
  %enable_gpio = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 7
  %21 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enable_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %22, i32 noundef 0) #6
  %vana = getelementptr inbounds %struct.ad5820_device, ptr %coil, i32 0, i32 2
  %23 = ptrtoint ptr %vana to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vana, align 4
  %call2 = call i32 @regulator_disable(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool3.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool3.not, i32 %call2, i32 %ret.0
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_registered(ptr noundef %subdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls.i = getelementptr inbounds %struct.ad5820_device, ptr %subdev, i32 0, i32 3
  %call.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls.i, i32 noundef 1, ptr noundef nonnull @ad5820_init_controls._key, ptr noundef nonnull @.str.15) #6
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @ad5820_ctrl_ops, i32 noundef 10094858, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 0) #6
  %error.i = getelementptr inbounds %struct.ad5820_device, ptr %subdev, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ad5820_init_controls.exit_crit_edge

entry.ad5820_init_controls.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5820_init_controls.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %focus_absolute.i = getelementptr inbounds %struct.ad5820_device, ptr %subdev, i32 0, i32 4
  %2 = ptrtoint ptr %focus_absolute.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %focus_absolute.i, align 4
  %focus_ramp_time.i = getelementptr inbounds %struct.ad5820_device, ptr %subdev, i32 0, i32 5
  %3 = ptrtoint ptr %focus_ramp_time.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %focus_ramp_time.i, align 4
  %focus_ramp_mode.i = getelementptr inbounds %struct.ad5820_device, ptr %subdev, i32 0, i32 6
  %4 = ptrtoint ptr %focus_ramp_mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %focus_ramp_mode.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 8
  %5 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ctrls.i, ptr %ctrl_handler.i, align 4
  br label %ad5820_init_controls.exit

ad5820_init_controls.exit:                        ; preds = %if.end.i, %entry.ad5820_init_controls.exit_crit_edge
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_open(ptr noundef %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock.i = getelementptr inbounds %struct.ad5820_device, ptr %sd, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i, i32 noundef 0) #6
  %power_count.i = getelementptr inbounds %struct.ad5820_device, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end5.i_crit_edge

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @ad5820_power_on(ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i.ad5820_set_power.exit_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i.ad5820_set_power.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5820_set_power.exit

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i.if.end5.i_crit_edge ], [ 0, %entry.if.end5.i_crit_edge ]
  %2 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count.i, align 4
  %add.i = add i32 %3, 1
  store i32 %add.i, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp10.i = icmp slt i32 %add.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end5.i.ad5820_set_power.exit_crit_edge, !prof !66

if.end5.i.ad5820_set_power.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5820_set_power.exit

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 237, i32 noundef 9, ptr noundef null) #6
  br label %ad5820_set_power.exit

ad5820_set_power.exit:                            ; preds = %do.end.i, %if.end5.i.ad5820_set_power.exit_crit_edge, %if.then.i.ad5820_set_power.exit_crit_edge
  %ret.1.i = phi i32 [ %call.i, %if.then.i.ad5820_set_power.exit_crit_edge ], [ %ret.0.i, %do.end.i ], [ %ret.0.i, %if.end5.i.ad5820_set_power.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock.i) #6
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_close(ptr noundef %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock.i = getelementptr inbounds %struct.ad5820_device, ptr %sd, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i, i32 noundef 0) #6
  %power_count.i = getelementptr inbounds %struct.ad5820_device, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end5.i_crit_edge

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %call2.i = tail call fastcc i32 @ad5820_power_off(ptr noundef %sd, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then.i.ad5820_set_power.exit_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i.ad5820_set_power.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5820_set_power.exit

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i.if.end5.i_crit_edge ], [ 0, %entry.if.end5.i_crit_edge ]
  %2 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count.i, align 4
  %add.i = add i32 %3, -1
  store i32 %add.i, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp10.i = icmp slt i32 %add.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end5.i.ad5820_set_power.exit_crit_edge, !prof !66

if.end5.i.ad5820_set_power.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5820_set_power.exit

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 237, i32 noundef 9, ptr noundef null) #6
  br label %ad5820_set_power.exit

ad5820_set_power.exit:                            ; preds = %do.end.i, %if.end5.i.ad5820_set_power.exit_crit_edge, %if.then.i.ad5820_set_power.exit_crit_edge
  %ret.1.i = phi i32 [ %call2.i, %if.then.i.ad5820_set_power.exit_crit_edge ], [ %ret.0.i, %do.end.i ], [ %ret.0.i, %if.end5.i.ad5820_set_power.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock.i) #6
  ret i32 %ret.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %be_data.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10094858, i32 %1)
  %cond = icmp eq i32 %1, 10094858
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %focus_absolute = getelementptr i8, ptr %3, i32 184
  %6 = ptrtoint ptr %focus_absolute to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %focus_absolute, align 4
  %focus_ramp_time.i = getelementptr i8, ptr %3, i32 188
  %7 = ptrtoint ptr %focus_ramp_time.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %focus_ramp_time.i, align 4
  %focus_ramp_mode.i = getelementptr i8, ptr %3, i32 192
  %9 = ptrtoint ptr %focus_ramp_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %focus_ramp_mode.i, align 4
  %standby.i = getelementptr i8, ptr %3, i32 296
  %11 = ptrtoint ptr %standby.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %standby.i, align 4, !range !68
  %dev_priv.i.i.i = getelementptr i8, ptr %3, i32 -52
  %13 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_data.i.i) #6
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i20.i = icmp eq ptr %18, null
  br i1 %tobool.not.i20.i, label %sw.bb.ad5820_update_hw.exit_crit_edge, label %if.end.i.i

sw.bb.ad5820_update_hw.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5820_update_hw.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not.i = icmp eq i8 %12, 0
  %shr.i = lshr i32 %8, 1
  %add.i = add i32 %shr.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %add.i)
  %19 = icmp ult i32 %add.i, 50
  %div.i = udiv i32 %add.i, 50
  %20 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #6, !range !67
  %sub.i.i = sub nuw nsw i32 32, %20
  %cond.i.i = select i1 %19, i32 0, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %shl.i = shl i32 %5, 4
  %conv4.i = or i32 %cond.i, %shl.i
  %or5.i = or i32 %cond.i.i, %conv4.i
  %conv6.i = trunc i32 %or5.i to i16
  %conv10.i = or i16 %conv6.i, -32768
  %status.0.i = select i1 %tobool7.not.i, i16 %conv6.i, i16 %conv10.i
  %21 = ptrtoint ptr %be_data.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %status.0.i, ptr %be_data.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr.i.i, align 2
  %24 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %be_data.i.i, ptr %buf.i.i, align 4
  %call3.i.i = call i32 @i2c_transfer(ptr noundef nonnull %18, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i.ad5820_update_hw.exit_crit_edge

if.end.i.i.ad5820_update_hw.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5820_update_hw.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13, i32 noundef %call3.i.i) #9
  br label %ad5820_update_hw.exit

ad5820_update_hw.exit:                            ; preds = %do.end.i.i, %if.end.i.i.ad5820_update_hw.exit_crit_edge, %sw.bb.ad5820_update_hw.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %do.end.i.i ], [ -19, %sw.bb.ad5820_update_hw.exit_crit_edge ], [ 0, %if.end.i.i.ad5820_update_hw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_data.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ad5820_update_hw.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %ad5820_update_hw.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_count = getelementptr inbounds %struct.ad5820_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %enable_gpio.i = getelementptr inbounds %struct.ad5820_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #6
  %vana.i = getelementptr inbounds %struct.ad5820_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %vana.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vana.i, align 4
  %call2.i = tail call i32 @regulator_disable(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5820_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_count = getelementptr inbounds %struct.ad5820_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @ad5820_power_on(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_ad5820__292_386_ad5820_i2c_driver_init6, !1, !"__initcall__kmod_ad5820__292_386_ad5820_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ad5820.c", i32 386, i32 1}
!2 = !{ptr @__exitcall_ad5820_i2c_driver_exit, !1, !"__exitcall_ad5820_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ad5820.c", i32 388, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ad5820.c", i32 389, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ad5820.c", i32 390, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ad5820.c", i32 377, i32 11}
!12 = !{ptr @ad5820_i2c_driver, !13, !"ad5820_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ad5820.c", i32 375, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ad5820.c", i32 303, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ad5820.c", i32 307, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ad5820_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ad5820_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ad5820.c", i32 311, i32 60}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ad5820.c", i32 316, i32 4}
!28 = !{ptr @ad5820_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ad5820_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ad5820_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ad5820.c", i32 320, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ad5820.c", i32 326, i32 29}
!35 = !{ptr @ad5820_ops, !36, !"ad5820_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ad5820.c", i32 258, i32 37}
!37 = !{ptr @ad5820_core_ops, !38, !"ad5820_core_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ad5820.c", i32 254, i32 42}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ad5820.c", i32 75, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ad5820_write._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ad5820_write._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ad5820_internal_ops, !45, !"ad5820_internal_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ad5820.c", i32 262, i32 46}
!46 = !{ptr @ad5820_init_controls._key, !47, !"_key", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ad5820.c", i32 177, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ad5820_ctrl_ops, !50, !"ad5820_ctrl_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ad5820.c", i32 170, i32 35}
!51 = !{ptr @ad5820_of_table, !52, !"ad5820_of_table", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/ad5820.c", i32 365, i32 34}
!53 = !{ptr @ad5820_pm, !54, !"ad5820_pm", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ad5820.c", i32 373, i32 8}
!55 = !{ptr @ad5820_id_table, !56, !"ad5820_id_table", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ad5820.c", i32 357, i32 35}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i32 0, i32 33}
!68 = !{i8 0, i8 2}
