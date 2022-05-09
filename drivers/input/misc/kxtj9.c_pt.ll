; ModuleID = '/llk/IR_all_yes/drivers/input/misc/kxtj9.c_pt.bc'
source_filename = "../drivers/input/misc/kxtj9.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.kxtj9_data = type { ptr, %struct.kxtj9_platform_data, ptr, i32, i8, i8, i8, i8 }
%struct.kxtj9_platform_data = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_kxtj9__290_546_kxtj9_driver_init6 = internal global ptr @kxtj9_driver_init, section ".initcall6.init", align 4
@kxtj9_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @kxtj9_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kxtj9_pm_ops, ptr null, ptr null }, ptr @kxtj9_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_kxtj9_driver_exit = internal global ptr @kxtj9_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [45 x i8] c"kxtj9.description=KXTJ9 accelerometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [47 x i8] c"kxtj9.author=Chris Hudson <chudson@kionix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [36 x i8] c"kxtj9.file=drivers/input/misc/kxtj9\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [18 x i8] c"kxtj9.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kxtj9\00", [26 x i8] zeroinitializer }, align 32
@kxtj9_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @kxtj9_suspend, ptr @kxtj9_resume, ptr @kxtj9_suspend, ptr @kxtj9_resume, ptr @kxtj9_suspend, ptr @kxtj9_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kxtj9_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"kxtj9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"client is not i2c capable\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kxtj9_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/input/misc/kxtj9.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry_ptr = internal global ptr @kxtj9_probe._entry, section ".printk_index", align 4
@kxtj9_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"platform data is NULL; exiting\0A\00", [32 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry_ptr.8 = internal global ptr @kxtj9_probe._entry.6, section ".printk_index", align 4
@kxtj9_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to allocate memory for module data\0A\00", [53 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry_ptr.11 = internal global ptr @kxtj9_probe._entry.9, section ".printk_index", align 4
@kxtj9_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device not recognized\0A\00", [41 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry_ptr.14 = internal global ptr @kxtj9_probe._entry.12, section ".printk_index", align 4
@kxtj9_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"input device allocate failed\0A\00", [34 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry_ptr.17 = internal global ptr @kxtj9_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kxtj9_accel\00", [20 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to register input polled device %s: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry_ptr.21 = internal global ptr @kxtj9_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kxtj9-irq\00", [22 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry_ptr.25 = internal global ptr @kxtj9_probe._entry.23, section ".printk_index", align 4
@kxtj9_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @kxtj9_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sysfs create failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@kxtj9_probe._entry_ptr.28 = internal global ptr @kxtj9_probe._entry.26, section ".printk_index", align 4
@kxtj9_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 377, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read err int source\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kxtj9_verify\00", [19 x i8] zeroinitializer }, align 32
@kxtj9_verify._entry_ptr = internal global ptr @kxtj9_verify._entry, section ".printk_index", align 4
@kxtj9_device_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"soft power off failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kxtj9_device_power_off\00", [41 x i8] zeroinitializer }, align 32
@kxtj9_device_power_off._entry_ptr = internal global ptr @kxtj9_device_power_off._entry, section ".printk_index", align 4
@kxtj9_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error clearing interrupt: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kxtj9_enable\00", [19 x i8] zeroinitializer }, align 32
@kxtj9_enable._entry_ptr = internal global ptr @kxtj9_enable._entry, section ".printk_index", align 4
@kxtj9_report_acceleration_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"accelerometer data read failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kxtj9_report_acceleration_data\00", [33 x i8] zeroinitializer }, align 32
@kxtj9_report_acceleration_data._entry_ptr = internal global ptr @kxtj9_report_acceleration_data._entry, section ".printk_index", align 4
@kxtj9_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error clearing interrupt status: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kxtj9_isr\00", [22 x i8] zeroinitializer }, align 32
@kxtj9_isr._entry_ptr = internal global ptr @kxtj9_isr._entry, section ".printk_index", align 4
@kxtj9_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_poll, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_poll = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kxtj9_get_poll, ptr @kxtj9_set_poll }, [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"poll\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 8, i64 16]
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"kxtj9_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 537, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 539, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"kxtj9_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 528, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"kxtj9_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 530, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 399, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 404, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 410, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 430, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 441, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 448, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 466, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 481, i32 7 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 483, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"kxtj9_attribute_group\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 342, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 490, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 377, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 204, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 249, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 108, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 134, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"kxtj9_attributes\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 337, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant [14 x i8] c"dev_attr_poll\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 335, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [30 x i8] c"../drivers/input/misc/kxtj9.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 299, i32 22 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_kxtj9_driver_exit, ptr @__initcall__kmod_kxtj9__290_546_kxtj9_driver_init6, ptr @kxtj9_device_power_off._entry, ptr @kxtj9_device_power_off._entry_ptr, ptr @kxtj9_driver_exit, ptr @kxtj9_enable._entry, ptr @kxtj9_enable._entry_ptr, ptr @kxtj9_isr._entry, ptr @kxtj9_isr._entry_ptr, ptr @kxtj9_probe._entry, ptr @kxtj9_probe._entry.12, ptr @kxtj9_probe._entry.15, ptr @kxtj9_probe._entry.19, ptr @kxtj9_probe._entry.23, ptr @kxtj9_probe._entry.26, ptr @kxtj9_probe._entry.6, ptr @kxtj9_probe._entry.9, ptr @kxtj9_probe._entry_ptr, ptr @kxtj9_probe._entry_ptr.11, ptr @kxtj9_probe._entry_ptr.14, ptr @kxtj9_probe._entry_ptr.17, ptr @kxtj9_probe._entry_ptr.21, ptr @kxtj9_probe._entry_ptr.25, ptr @kxtj9_probe._entry_ptr.28, ptr @kxtj9_probe._entry_ptr.8, ptr @kxtj9_report_acceleration_data._entry, ptr @kxtj9_report_acceleration_data._entry_ptr, ptr @kxtj9_verify._entry, ptr @kxtj9_verify._entry_ptr, ptr @kxtj9_driver, ptr @.str, ptr @kxtj9_pm_ops, ptr @kxtj9_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @kxtj9_attribute_group, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @kxtj9_attributes, ptr @dev_attr_poll, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_device_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_report_acceleration_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtj9_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_poll to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kxtj9_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @kxtj9_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kxtj9_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @kxtj9_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxtj9_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #8
  %and.i = and i32 %call.i.i, 1572865
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572865, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572865
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #8
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 4
  %pdata20 = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %pdata20, ptr %1, i32 32)
  %init = getelementptr inbounds %struct.kxtj9_platform_data, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init, align 4
  %tobool21.not = icmp eq ptr %11, null
  br i1 %tobool21.not, label %if.end18.if.end27_crit_edge, label %if.then22

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  %call24 = tail call i32 %11() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.then22.cleanup_crit_edge, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %call.i173 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @kxtj9_platform_exit, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool.not.i = icmp eq i32 %call.i173, 0
  br i1 %tobool.not.i, label %if.end32, label %if.then.i

if.then.i:                                        ; preds = %if.end27
  %exit.i.i = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 1, i32 11
  %12 = ptrtoint ptr %exit.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exit.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %power_on.i.i = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %power_on.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power_on.i.i, align 4
  %tobool.not.i.i174 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i174, label %if.end32.if.end.i_crit_edge, label %kxtj9_device_power_on.exit.i

if.end32.if.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kxtj9_device_power_on.exit.i:                     ; preds = %if.end32
  %call.i.i175 = tail call i32 %15() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175)
  %cmp.i176 = icmp slt i32 %call.i.i175, 0
  br i1 %cmp.i176, label %kxtj9_device_power_on.exit.i.do.end38_crit_edge, label %kxtj9_device_power_on.exit.i.if.end.i_crit_edge

kxtj9_device_power_on.exit.i.if.end.i_crit_edge:  ; preds = %kxtj9_device_power_on.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kxtj9_device_power_on.exit.i.do.end38_crit_edge:  ; preds = %kxtj9_device_power_on.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

if.end.i:                                         ; preds = %kxtj9_device_power_on.exit.i.if.end.i_crit_edge, %if.end32.if.end.i_crit_edge
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29) #11
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = add nsw i32 %call2.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %21 = icmp ult i32 %20, 2
  %22 = select i1 %21, i32 0, i32 -5
  br label %out.i

out.i:                                            ; preds = %if.end6.i, %do.end.i
  %retval1.0.i = phi i32 [ %call2.i, %do.end.i ], [ %22, %if.end6.i ]
  %ctrl_reg1.i.i = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %ctrl_reg1.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ctrl_reg1.i.i, align 1
  %25 = and i8 %24, 127
  store i8 %25, ptr %ctrl_reg1.i.i, align 1
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call.i17.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 27, i8 noundef zeroext %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i.i = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %out.i.if.end.i.i_crit_edge

out.i.if.end.i.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.31) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %out.i.if.end.i.i_crit_edge
  %power_off.i.i = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 1, i32 13
  %30 = ptrtoint ptr %power_off.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %power_off.i.i, align 4
  %tobool.not.i18.i = icmp eq ptr %31, null
  br i1 %tobool.not.i18.i, label %if.end.i.i.kxtj9_verify.exit_crit_edge, label %if.then5.i.i

if.end.i.i.kxtj9_verify.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kxtj9_verify.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = tail call i32 %31() #8
  br label %kxtj9_verify.exit

kxtj9_verify.exit:                                ; preds = %if.then5.i.i, %if.end.i.i.kxtj9_verify.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %cmp34 = icmp slt i32 %retval1.0.i, 0
  br i1 %cmp34, label %kxtj9_verify.exit.do.end38_crit_edge, label %if.end40

kxtj9_verify.exit.do.end38_crit_edge:             ; preds = %kxtj9_verify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

do.end38:                                         ; preds = %kxtj9_verify.exit.do.end38_crit_edge, %kxtj9_device_power_on.exit.i.do.end38_crit_edge
  %retval.0.i180 = phi i32 [ %retval1.0.i, %kxtj9_verify.exit.do.end38_crit_edge ], [ %call.i.i175, %kxtj9_device_power_on.exit.i.do.end38_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end40:                                         ; preds = %kxtj9_verify.exit
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %res_12bit = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 1, i32 8
  %33 = ptrtoint ptr %res_12bit to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %res_12bit, align 2
  %g_range = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %g_range to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %g_range, align 1
  %or172 = or i8 %36, %34
  %37 = ptrtoint ptr %ctrl_reg1.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %or172, ptr %ctrl_reg1.i.i, align 1
  %init_interval = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %init_interval to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %init_interval, align 4
  %last_poll_interval = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %last_poll_interval to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %last_poll_interval, align 4
  %call47 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #8
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end54:                                         ; preds = %if.end40
  %driver_data.i.i177 = getelementptr inbounds %struct.input_dev, ptr %call47, i32 0, i32 40, i32 8
  %41 = ptrtoint ptr %driver_data.i.i177 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i177, align 4
  %input_dev55 = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %input_dev55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call47, ptr %input_dev55, align 4
  %43 = ptrtoint ptr %call47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.18, ptr %call47, align 8
  %id56 = getelementptr inbounds %struct.input_dev, ptr %call47, i32 0, i32 3
  %44 = ptrtoint ptr %id56 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 24, ptr %id56, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call47, i32 0, i32 31
  %45 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kxtj9_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call47, i32 0, i32 32
  %46 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kxtj9_input_close, ptr %close, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call47, i32 noundef 0, i32 noundef -8000, i32 noundef 8000, i32 noundef 3, i32 noundef 3) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call47, i32 noundef 1, i32 noundef -8000, i32 noundef 8000, i32 noundef 3, i32 noundef 3) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call47, i32 noundef 2, i32 noundef -8000, i32 noundef 8000, i32 noundef 3, i32 noundef 3) #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp57 = icmp slt i32 %48, 1
  br i1 %cmp57, label %if.then59, label %if.end54.if.end64_crit_edge

if.end54.if.end64_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then59:                                        ; preds = %if.end54
  %call60 = tail call i32 @input_setup_polling(ptr noundef nonnull %call47, ptr noundef nonnull @kxtj9_poll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then59.if.end64_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59.if.end64_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end64:                                         ; preds = %if.then59.if.end64_crit_edge, %if.end54.if.end64_crit_edge
  %call65 = tail call i32 @input_register_device(ptr noundef nonnull %call47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end73, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %50, i32 noundef %call65) #11
  br label %cleanup

if.end73:                                         ; preds = %if.end64
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool75.not = icmp eq i32 %52, 0
  br i1 %tobool75.not, label %if.end73.cleanup_crit_edge, label %if.then76

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then76:                                        ; preds = %if.end73
  %int_ctrl = getelementptr inbounds %struct.kxtj9_data, ptr %call.i, i32 0, i32 7
  %53 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %int_ctrl, align 1
  %55 = or i8 %54, 56
  store i8 %55, ptr %int_ctrl, align 1
  %56 = ptrtoint ptr %ctrl_reg1.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ctrl_reg1.i.i, align 1
  %58 = or i8 %57, 32
  store i8 %58, ptr %ctrl_reg1.i.i, align 1
  %call86 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %52, ptr noundef null, ptr noundef nonnull @kxtj9_isr, i32 noundef 8193, ptr noundef nonnull @.str.22, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call86) #11
  br label %cleanup

if.end93:                                         ; preds = %if.then76
  %call95 = tail call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @kxtj9_attribute_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end93.cleanup_crit_edge, label %do.end100

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call95) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end100, %if.end93.cleanup_crit_edge, %do.end91, %if.end73.cleanup_crit_edge, %do.end70, %if.then59.cleanup_crit_edge, %do.end52, %do.end38, %if.then.i.i, %if.then.i.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %retval.0.i180, %do.end38 ], [ %call65, %do.end70 ], [ %call86, %do.end91 ], [ %call95, %do.end100 ], [ -12, %do.end52 ], [ -12, %do.end16 ], [ -22, %do.end7 ], [ -6, %do.end ], [ %call24, %if.then22.cleanup_crit_edge ], [ %call60, %if.then59.cleanup_crit_edge ], [ 0, %if.end93.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ], [ %call.i173, %if.then.i.cleanup_crit_edge ], [ %call.i173, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kxtj9_platform_exit(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exit = getelementptr inbounds %struct.kxtj9_data, ptr %data, i32 0, i32 1, i32 11
  %0 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxtj9_input_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @kxtj9_enable(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kxtj9_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl_reg1.i.i = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl_reg1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl_reg1.i.i, align 1
  %4 = and i8 %3, 127
  store i8 %4, ptr %ctrl_reg1.i.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 27, i8 noundef zeroext %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.31) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %entry.if.end.i.i_crit_edge
  %power_off.i.i = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 1, i32 13
  %9 = ptrtoint ptr %power_off.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %power_off.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i.kxtj9_disable.exit_crit_edge, label %if.then5.i.i

if.end.i.i.kxtj9_disable.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kxtj9_disable.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = tail call i32 %10() #8
  br label %kxtj9_disable.exit

kxtj9_disable.exit:                               ; preds = %if.then5.i.i, %if.end.i.i.kxtj9_disable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kxtj9_poll(ptr noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @input_get_poll_interval(ptr noundef %input) #8
  tail call fastcc void @kxtj9_report_acceleration_data(ptr noundef %1)
  %last_poll_interval = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %last_poll_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_poll_interval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %3)
  %cmp.not = icmp eq i32 %call1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %data_ctrl.i = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp2.i = icmp ult i32 %call1, 3
  br i1 %cmp2.i, label %if.then.for.end.i_crit_edge, label %for.cond.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %cmp2.1.i = icmp ult i32 %call1, 5
  br i1 %cmp2.1.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.1.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call1)
  %cmp2.2.i = icmp ult i32 %call1, 10
  br i1 %cmp2.2.i, label %for.cond.1.i.for.end.i_crit_edge, label %for.cond.2.i

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call1)
  %cmp2.3.i = icmp ult i32 %call1, 20
  br i1 %cmp2.3.i, label %for.cond.2.i.for.end.i_crit_edge, label %for.cond.3.i

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call1)
  %cmp2.4.i = icmp ult i32 %call1, 40
  br i1 %cmp2.4.i, label %for.cond.3.i.for.end.i_crit_edge, label %for.cond.4.i

for.cond.3.i.for.end.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %call1)
  %cmp2.5.i = icmp ult i32 %call1, 80
  %spec.select.i = zext i1 %cmp2.5.i to i8
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.4.i, %for.cond.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %.lcssa.i = phi i8 [ 6, %if.then.for.end.i_crit_edge ], [ 5, %for.cond.i.for.end.i_crit_edge ], [ 4, %for.cond.1.i.for.end.i_crit_edge ], [ 3, %for.cond.2.i.for.end.i_crit_edge ], [ 2, %for.cond.3.i.for.end.i_crit_edge ], [ %spec.select.i, %for.cond.4.i ]
  %4 = ptrtoint ptr %data_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.lcssa.i, ptr %data_ctrl.i, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 27, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %for.end.i.kxtj9_update_odr.exit_crit_edge, label %if.end5.i

for.end.i.kxtj9_update_odr.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kxtj9_update_odr.exit

if.end5.i:                                        ; preds = %for.end.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %data_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_ctrl.i, align 2
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 33, i8 noundef zeroext %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end5.i.kxtj9_update_odr.exit_crit_edge, label %if.end11.i

if.end5.i.kxtj9_update_odr.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kxtj9_update_odr.exit

if.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %ctrl_reg1.i = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_reg1.i, align 1
  %call13.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 27, i8 noundef zeroext %14) #8
  br label %kxtj9_update_odr.exit

kxtj9_update_odr.exit:                            ; preds = %if.end11.i, %if.end5.i.kxtj9_update_odr.exit_crit_edge, %for.end.i.kxtj9_update_odr.exit_crit_edge
  %15 = ptrtoint ptr %last_poll_interval to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call1, ptr %last_poll_interval, align 4
  br label %if.end

if.end:                                           ; preds = %kxtj9_update_odr.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxtj9_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @kxtj9_report_acceleration_data(ptr noundef %dev)
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.37, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kxtj9_device_power_off(ptr nocapture noundef %tj9) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg1 = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 5
  %0 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl_reg1, align 1
  %2 = and i8 %1, 127
  store i8 %2, ptr %ctrl_reg1, align 1
  %3 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tj9, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 27, i8 noundef zeroext %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tj9, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %power_off = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 1, i32 13
  %7 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power_off, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 %8() #8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kxtj9_enable(ptr nocapture noundef %tj9) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %power_on.i = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power_on.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %kxtj9_device_power_on.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

kxtj9_device_power_on.exit:                       ; preds = %entry
  %call.i = tail call i32 %1() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %kxtj9_device_power_on.exit.cleanup_crit_edge, label %kxtj9_device_power_on.exit.if.end_crit_edge

kxtj9_device_power_on.exit.if.end_crit_edge:      ; preds = %kxtj9_device_power_on.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

kxtj9_device_power_on.exit.cleanup_crit_edge:     ; preds = %kxtj9_device_power_on.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %kxtj9_device_power_on.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tj9, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 27, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tj9, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end4.if.end12_crit_edge, label %if.then6

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %int_ctrl = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 7
  %8 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %int_ctrl, align 1
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 30, i8 noundef zeroext %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then6.cleanup_crit_edge, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %g_range = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %g_range to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %g_range, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end12.cleanup_crit_edge [
    i8 0, label %if.end12.if.end16_crit_edge
    i8 8, label %sw.bb1.i
    i8 16, label %sw.bb3.i
  ]

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

sw.bb3.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %sw.bb3.i, %sw.bb1.i, %if.end12.if.end16_crit_edge
  %.sink.i = phi i8 [ 2, %sw.bb3.i ], [ 3, %sw.bb1.i ], [ 4, %if.end12.if.end16_crit_edge ]
  %shift4.i = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 4
  %13 = ptrtoint ptr %shift4.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink.i, ptr %shift4.i, align 4
  %ctrl_reg1.i = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 5
  %14 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl_reg1.i, align 1
  %16 = and i8 %15, 103
  %or16.i = or i8 %11, %16
  %17 = or i8 %or16.i, -128
  store i8 %17, ptr %ctrl_reg1.i, align 1
  %18 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tj9, align 4
  %call20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 27, i8 noundef zeroext %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end16.cleanup_crit_edge, label %if.end24

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %last_poll_interval = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 3
  %20 = ptrtoint ptr %last_poll_interval to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_poll_interval, align 4
  %data_ctrl.i = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp2.i = icmp ult i32 %21, 3
  br i1 %cmp2.i, label %if.end24.for.end.i_crit_edge, label %for.cond.i

if.end24.for.end.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp2.1.i = icmp ult i32 %21, 5
  br i1 %cmp2.1.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.1.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %21)
  %cmp2.2.i = icmp ult i32 %21, 10
  br i1 %cmp2.2.i, label %for.cond.1.i.for.end.i_crit_edge, label %for.cond.2.i

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %21)
  %cmp2.3.i = icmp ult i32 %21, 20
  br i1 %cmp2.3.i, label %for.cond.2.i.for.end.i_crit_edge, label %for.cond.3.i

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %21)
  %cmp2.4.i = icmp ult i32 %21, 40
  br i1 %cmp2.4.i, label %for.cond.3.i.for.end.i_crit_edge, label %for.cond.4.i

for.cond.3.i.for.end.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %21)
  %cmp2.5.i = icmp ult i32 %21, 80
  %spec.select.i = zext i1 %cmp2.5.i to i8
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.4.i, %for.cond.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %if.end24.for.end.i_crit_edge
  %.lcssa.i = phi i8 [ 6, %if.end24.for.end.i_crit_edge ], [ 5, %for.cond.i.for.end.i_crit_edge ], [ 4, %for.cond.1.i.for.end.i_crit_edge ], [ 3, %for.cond.2.i.for.end.i_crit_edge ], [ 2, %for.cond.3.i.for.end.i_crit_edge ], [ %spec.select.i, %for.cond.4.i ]
  %22 = ptrtoint ptr %data_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.lcssa.i, ptr %data_ctrl.i, align 2
  %23 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tj9, align 4
  %call.i72 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 27, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp3.i = icmp slt i32 %call.i72, 0
  br i1 %cmp3.i, label %for.end.i.cleanup_crit_edge, label %if.end5.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %for.end.i
  %25 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tj9, align 4
  %27 = ptrtoint ptr %data_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data_ctrl.i, align 2
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 33, i8 noundef zeroext %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end5.i.cleanup_crit_edge, label %kxtj9_update_odr.exit

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

kxtj9_update_odr.exit:                            ; preds = %if.end5.i
  %29 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tj9, align 4
  %31 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ctrl_reg1.i, align 1
  %call13.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 27, i8 noundef zeroext %32) #8
  %33 = tail call i32 @llvm.smin.i32(i32 %call13.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp26 = icmp slt i32 %call13.i, 0
  br i1 %cmp26, label %kxtj9_update_odr.exit.cleanup_crit_edge, label %if.end29

kxtj9_update_odr.exit.cleanup_crit_edge:          ; preds = %kxtj9_update_odr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %kxtj9_update_odr.exit
  %34 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tj9, align 4
  %irq31 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool32.not = icmp eq i32 %37, 0
  br i1 %tobool32.not, label %if.end29.cleanup_crit_edge, label %if.then33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %if.end29
  %call35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tj9, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call35) #11
  tail call fastcc void @kxtj9_device_power_off(ptr noundef %tj9)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %kxtj9_update_odr.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %kxtj9_device_power_on.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %do.end ], [ %call.i, %kxtj9_device_power_on.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ %call20, %if.end16.cleanup_crit_edge ], [ %33, %kxtj9_update_odr.exit.cleanup_crit_edge ], [ 0, %if.then33.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ %call8.i, %if.end5.i.cleanup_crit_edge ], [ %call.i72, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_poll_interval(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kxtj9_report_acceleration_data(ptr nocapture noundef readonly %tj9) unnamed_addr #2 align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %acc_data = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %acc_data) #8
  %0 = ptrtoint ptr %acc_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %acc_data, align 2, !annotation !103
  %1 = getelementptr inbounds [3 x i16], ptr %acc_data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !103
  %3 = getelementptr inbounds [3 x i16], ptr %acc_data, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %5 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %6 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tj9, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr2.i, align 2
  %12 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %9, align 8
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flags.i, align 2
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %addr.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %18 = load i16, ptr %addr2.i, align 2
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayinit.element.i, align 4
  %flags9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %20 = load i16, ptr %9, align 8
  %21 = or i16 %20, 1
  %22 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %flags9.i, align 2
  %len13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %23 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 6, ptr %len13.i, align 4
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %24 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %acc_data, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %tj9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tj9, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %axis_map_x = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %axis_map_x to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %axis_map_x, align 4
  %idxprom = zext i8 %30 to i32
  %arrayidx = getelementptr [3 x i16], ptr %acc_data, i32 0, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %axis_map_y = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %axis_map_y to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %axis_map_y, align 1
  %idxprom2 = zext i8 %35 to i32
  %arrayidx3 = getelementptr [3 x i16], ptr %acc_data, i32 0, i32 %idxprom2
  %36 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx3, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %axis_map_z = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %axis_map_z to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %axis_map_z, align 2
  %idxprom5 = zext i8 %40 to i32
  %arrayidx6 = getelementptr [3 x i16], ptr %acc_data, i32 0, i32 %idxprom5
  %41 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx6, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %shift = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 4
  %44 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %shift, align 4
  %conv = zext i8 %45 to i32
  %conv7 = sext i16 %33 to i32
  %shr = ashr i32 %conv7, %conv
  %conv11 = sext i16 %38 to i32
  %shr12 = ashr i32 %conv11, %conv
  %conv16 = sext i16 %43 to i32
  %shr17 = ashr i32 %conv16, %conv
  %input_dev = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 2
  %46 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input_dev, align 4
  %negate_x = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 1, i32 5
  %48 = ptrtoint ptr %negate_x to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %negate_x, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  %sub = sub nsw i32 0, %shr
  %cond = select i1 %tobool.not, i32 %shr, i32 %sub
  call void @input_event(ptr noundef %47, i32 noundef 3, i32 noundef 0, i32 noundef %cond) #8
  %50 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input_dev, align 4
  %negate_y = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 1, i32 6
  %52 = ptrtoint ptr %negate_y to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %negate_y, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool25.not = icmp eq i8 %53, 0
  %sub29 = sub nsw i32 0, %shr12
  %cond33 = select i1 %tobool25.not, i32 %shr12, i32 %sub29
  call void @input_event(ptr noundef %51, i32 noundef 3, i32 noundef 1, i32 noundef %cond33) #8
  %54 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input_dev, align 4
  %negate_z = getelementptr inbounds %struct.kxtj9_data, ptr %tj9, i32 0, i32 1, i32 7
  %56 = ptrtoint ptr %negate_z to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %negate_z, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool36.not = icmp eq i8 %57, 0
  %sub40 = sub nsw i32 0, %shr17
  %cond44 = select i1 %tobool36.not, i32 %shr17, i32 %sub40
  call void @input_event(ptr noundef %55, i32 noundef 3, i32 noundef 2, i32 noundef %cond44) #8
  %58 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %59, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %acc_data) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxtj9_get_poll(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %last_poll_interval = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %last_poll_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_poll_interval, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxtj9_set_poll(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval) #8
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %interval, align 4, !annotation !103
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %interval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %irq = getelementptr i8, ptr %dev, i32 932
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %6) #8
  %7 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interval, align 4
  %pdata = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdata, align 4
  %11 = call i32 @llvm.umax.i32(i32 %8, i32 %10)
  %last_poll_interval = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %last_poll_interval to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_poll_interval, align 4
  %data_ctrl.i = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp2.i = icmp ult i32 %11, 3
  br i1 %cmp2.i, label %if.end.for.end.i_crit_edge, label %for.cond.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp2.1.i = icmp ult i32 %11, 5
  br i1 %cmp2.1.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.1.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp2.2.i = icmp ult i32 %11, 10
  br i1 %cmp2.2.i, label %for.cond.1.i.for.end.i_crit_edge, label %for.cond.2.i

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp2.3.i = icmp ult i32 %11, 20
  br i1 %cmp2.3.i, label %for.cond.2.i.for.end.i_crit_edge, label %for.cond.3.i

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %11)
  %cmp2.4.i = icmp ult i32 %11, 40
  br i1 %cmp2.4.i, label %for.cond.3.i.for.end.i_crit_edge, label %for.cond.4.i

for.cond.3.i.for.end.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %11)
  %cmp2.5.i = icmp ult i32 %11, 80
  %spec.select.i = zext i1 %cmp2.5.i to i8
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.4.i, %for.cond.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %.lcssa.i = phi i8 [ 6, %if.end.for.end.i_crit_edge ], [ 5, %for.cond.i.for.end.i_crit_edge ], [ 4, %for.cond.1.i.for.end.i_crit_edge ], [ 3, %for.cond.2.i.for.end.i_crit_edge ], [ 2, %for.cond.3.i.for.end.i_crit_edge ], [ %spec.select.i, %for.cond.4.i ]
  %13 = ptrtoint ptr %data_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.lcssa.i, ptr %data_ctrl.i, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 27, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %for.end.i.kxtj9_update_odr.exit_crit_edge, label %if.end5.i

for.end.i.kxtj9_update_odr.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kxtj9_update_odr.exit

if.end5.i:                                        ; preds = %for.end.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %data_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data_ctrl.i, align 2
  %call8.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 33, i8 noundef zeroext %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end5.i.kxtj9_update_odr.exit_crit_edge, label %if.end11.i

if.end5.i.kxtj9_update_odr.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kxtj9_update_odr.exit

if.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %ctrl_reg1.i = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctrl_reg1.i, align 1
  %call13.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 27, i8 noundef zeroext %23) #8
  br label %kxtj9_update_odr.exit

kxtj9_update_odr.exit:                            ; preds = %if.end11.i, %if.end5.i.kxtj9_update_odr.exit_crit_edge, %for.end.i.kxtj9_update_odr.exit_crit_edge
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %25) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %kxtj9_update_odr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %kxtj9_update_odr.exit ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxtj9_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #8
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %ctrl_reg1.i.i = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ctrl_reg1.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_reg1.i.i, align 1
  %6 = and i8 %5, 127
  store i8 %6, ptr %ctrl_reg1.i.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 27, i8 noundef zeroext %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.if.end.i.i_crit_edge

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.31) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.if.end.i.i_crit_edge
  %power_off.i.i = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 1, i32 13
  %11 = ptrtoint ptr %power_off.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %power_off.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.then5.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = tail call i32 %12() #8
  br label %if.end

if.end:                                           ; preds = %if.then5.i.i, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxtj9_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.kxtj9_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #8
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @kxtj9_enable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_kxtj9__290_546_kxtj9_driver_init6, !1, !"__initcall__kmod_kxtj9__290_546_kxtj9_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/kxtj9.c", i32 546, i32 1}
!2 = !{ptr @__exitcall_kxtj9_driver_exit, !1, !"__exitcall_kxtj9_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/kxtj9.c", i32 548, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/kxtj9.c", i32 549, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/kxtj9.c", i32 550, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/kxtj9.c", i32 539, i32 11}
!12 = !{ptr @kxtj9_driver, !13, !"kxtj9_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/kxtj9.c", i32 537, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/kxtj9.c", i32 399, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @kxtj9_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @kxtj9_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/kxtj9.c", i32 404, i32 3}
!24 = !{ptr @kxtj9_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @kxtj9_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/kxtj9.c", i32 410, i32 3}
!28 = !{ptr @kxtj9_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @kxtj9_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/kxtj9.c", i32 430, i32 3}
!32 = !{ptr @kxtj9_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @kxtj9_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/misc/kxtj9.c", i32 441, i32 3}
!36 = !{ptr @kxtj9_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @kxtj9_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/kxtj9.c", i32 448, i32 20}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/kxtj9.c", i32 466, i32 3}
!42 = !{ptr @kxtj9_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @kxtj9_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/misc/kxtj9.c", i32 481, i32 7}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/kxtj9.c", i32 483, i32 4}
!48 = !{ptr @kxtj9_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @kxtj9_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/kxtj9.c", i32 490, i32 4}
!52 = !{ptr @kxtj9_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @kxtj9_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/kxtj9.c", i32 377, i32 3}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @kxtj9_verify._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @kxtj9_verify._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/misc/kxtj9.c", i32 204, i32 3}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @kxtj9_device_power_off._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @kxtj9_device_power_off._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/kxtj9.c", i32 249, i32 4}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @kxtj9_enable._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @kxtj9_enable._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"kxtj9_odr_table", i1 false, i1 false}
!70 = !{!"../drivers/input/misc/kxtj9.c", i32 59, i32 3}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/misc/kxtj9.c", i32 108, i32 3}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @kxtj9_report_acceleration_data._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @kxtj9_report_acceleration_data._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/misc/kxtj9.c", i32 134, i32 3}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @kxtj9_isr._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @kxtj9_isr._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @kxtj9_attribute_group, !82, !"kxtj9_attribute_group", i1 false, i1 false}
!82 = !{!"../drivers/input/misc/kxtj9.c", i32 342, i32 31}
!83 = !{ptr @kxtj9_attributes, !84, !"kxtj9_attributes", i1 false, i1 false}
!84 = !{!"../drivers/input/misc/kxtj9.c", i32 337, i32 26}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/misc/kxtj9.c", i32 335, i32 8}
!87 = !{ptr @dev_attr_poll, !86, !"dev_attr_poll", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/misc/kxtj9.c", i32 299, i32 22}
!90 = !{ptr @kxtj9_pm_ops, !91, !"kxtj9_pm_ops", i1 false, i1 false}
!91 = !{!"../drivers/input/misc/kxtj9.c", i32 528, i32 8}
!92 = !{ptr @kxtj9_id, !93, !"kxtj9_id", i1 false, i1 false}
!93 = !{!"../drivers/input/misc/kxtj9.c", i32 530, i32 35}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{i8 0, i8 2}
