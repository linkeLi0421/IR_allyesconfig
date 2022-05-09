; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_i2c.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_i2c.c"
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
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
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
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_i2c_xport = type { %struct.rmi_transport_dev, ptr, %struct.mutex, i32, ptr, i32, [2 x %struct.regulator_bulk_data], i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_rmi_i2c__288_389_rmi_i2c_driver_init6 = internal global ptr @rmi_i2c_driver_init, section ".initcall6.init", align 4
@rmi_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rmi_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rmi_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_i2c_pm, ptr null, ptr null }, ptr @rmi_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rmi_i2c_driver_exit = internal global ptr @rmi_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"rmi_i2c.author=Christopher Heiny <cheiny@synaptics.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [53 x i8] c"rmi_i2c.author=Andrew Duggan <aduggan@synaptics.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [35 x i8] c"rmi_i2c.description=RMI I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [40 x i8] c"rmi_i2c.file=drivers/input/rmi4/rmi_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"rmi_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_i2c\00", [23 x i8] zeroinitializer }, align 32
@rmi_i2c_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"syna,rmi4-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rmi_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rmi_i2c_suspend, ptr @rmi_i2c_resume, ptr @rmi_i2c_suspend, ptr @rmi_i2c_resume, ptr @rmi_i2c_suspend, ptr @rmi_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_i2c_runtime_suspend, ptr @rmi_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rmi_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rmi4_i2c\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Probing %s.\0A\00", [19 x i8] zeroinitializer }, align 32
@rmi_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 227, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"adapter does not support required functionality\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_i2c.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_i2c_probe._entry_ptr = internal global ptr @rmi_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vio\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"syna,startup-delay-ms\00", [42 x i8] zeroinitializer }, align 32
@rmi_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rmi_i2c->page_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@rmi_i2c_ops = internal constant { %struct.rmi_transport_ops, [20 x i8] } { %struct.rmi_transport_ops { ptr @rmi_i2c_write_block, ptr @rmi_i2c_read_block, ptr null }, [20 x i8] zeroinitializer }, align 32
@rmi_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 270, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set page select to 0\0A\00", [32 x i8] zeroinitializer }, align 32
@rmi_i2c_probe._entry_ptr.14 = internal global ptr @rmi_i2c_probe._entry.12, section ".printk_index", align 4
@rmi_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 274, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"registering I2C-connected sensor\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rmi_i2c_probe._entry_ptr.18 = internal global ptr @rmi_i2c_probe._entry.15, section ".printk_index", align 4
@rmi_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register sensor: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rmi_i2c_probe._entry_ptr.21 = internal global ptr @rmi_i2c_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"write %zd bytes at %#06x: %d (%*ph)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"read %zd bytes at %#06x: %d (%*ph)\0A\00", [60 x i8] zeroinitializer }, align 32
@rmi_set_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 71, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: set page failed: %d.\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmi_set_page\00", [19 x i8] zeroinitializer }, align 32
@rmi_set_page._entry_ptr = internal global ptr @rmi_set_page._entry, section ".printk_index", align 4
@rmi_i2c_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 300, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to resume device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmi_i2c_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_i2c_suspend._entry_ptr = internal global ptr @rmi_i2c_suspend._entry, section ".printk_index", align 4
@rmi_i2c_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.29, ptr @.str.4, i32 323, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_i2c_resume\00", [17 x i8] zeroinitializer }, align 32
@rmi_i2c_resume._entry_ptr = internal global ptr @rmi_i2c_resume._entry, section ".printk_index", align 4
@rmi_i2c_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.30, ptr @.str.4, i32 338, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_i2c_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@rmi_i2c_runtime_suspend._entry_ptr = internal global ptr @rmi_i2c_runtime_suspend._entry, section ".printk_index", align 4
@rmi_i2c_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.31, ptr @.str.4, i32 361, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rmi_i2c_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@rmi_i2c_runtime_resume._entry_ptr = internal global ptr @rmi_i2c_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"rmi_i2c_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 379, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 381, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"rmi_i2c_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 179, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"rmi_i2c_pm\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 367, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"rmi_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 373, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 222, i32 41 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 226, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 231, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 232, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 250, i32 44 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 256, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 259, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"rmi_i2c_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 173, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 270, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 274, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 278, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 121, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 166, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 70, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 300, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 323, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 338, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_i2c.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 361, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_rmi_i2c_driver_exit, ptr @__initcall__kmod_rmi_i2c__288_389_rmi_i2c_driver_init6, ptr @rmi_i2c_driver_exit, ptr @rmi_i2c_probe._entry, ptr @rmi_i2c_probe._entry.12, ptr @rmi_i2c_probe._entry.15, ptr @rmi_i2c_probe._entry.19, ptr @rmi_i2c_probe._entry_ptr, ptr @rmi_i2c_probe._entry_ptr.14, ptr @rmi_i2c_probe._entry_ptr.18, ptr @rmi_i2c_probe._entry_ptr.21, ptr @rmi_i2c_resume._entry, ptr @rmi_i2c_resume._entry_ptr, ptr @rmi_i2c_runtime_resume._entry, ptr @rmi_i2c_runtime_resume._entry_ptr, ptr @rmi_i2c_runtime_suspend._entry, ptr @rmi_i2c_runtime_suspend._entry_ptr, ptr @rmi_i2c_suspend._entry, ptr @rmi_i2c_suspend._entry_ptr, ptr @rmi_set_page._entry, ptr @rmi_set_page._entry_ptr, ptr @rmi_i2c_driver, ptr @.str, ptr @rmi_i2c_of_match, ptr @rmi_i2c_pm, ptr @rmi_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rmi_i2c_probe.__key, ptr @.str.10, ptr @.str.11, ptr @rmi_i2c_ops, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_set_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_i2c_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rmi_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rmi_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @rmi_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 268, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp ne ptr %3, null
  %tobool6.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdata3 = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %pdata3, ptr %1, i32 112)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq9 = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq9, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.dev_name.exit_crit_edge

if.end8.dev_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end8.dev_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 2, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #5
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %17(ptr noundef %13) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not = icmp eq i32 %and.i, 0
  br i1 %tobool14.not, label %do.end, label %if.end17

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end17:                                         ; preds = %dev_name.exit
  %supplies = getelementptr inbounds %struct.rmi_i2c_xport, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.7, ptr %supplies, align 4
  %arrayidx19 = getelementptr %struct.rmi_i2c_xport, ptr %call.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.8, ptr %arrayidx19, align 4
  %call23 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %call28 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end25.cleanup_crit_edge, label %if.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %call.i127 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rmi_i2c_regulator_bulk_disable, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i128 = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i128, label %if.end36, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %call.i136 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %startup_delay = getelementptr inbounds %struct.rmi_i2c_xport, ptr %call.i, i32 0, i32 7
  %call.i.i130 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef %startup_delay, i32 noundef 1, i32 noundef 0) #5
  %22 = ptrtoint ptr %startup_delay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %startup_delay, align 4
  tail call void @msleep(i32 noundef %23) #5
  %client41 = getelementptr inbounds %struct.rmi_i2c_xport, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %client41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %client, ptr %client41, align 4
  %page_mutex = getelementptr inbounds %struct.rmi_i2c_xport, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %page_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @rmi_i2c_probe.__key) #5
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %call.i, align 4
  %proto_name = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %proto_name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.11, ptr %proto_name, align 4
  %ops = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @rmi_i2c_ops, ptr %ops, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call50 = tail call fastcc i32 @rmi_set_page(ptr noundef nonnull %call.i, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end60, label %do.end55

do.end55:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

do.end60:                                         ; preds = %if.end36
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  %call63 = tail call i32 @rmi_register_transport_device(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call63) #8
  br label %cleanup

if.end70:                                         ; preds = %do.end60
  %call.i131 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rmi_i2c_unregister_transport, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %if.end70.cleanup_crit_edge, label %if.then.i133

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i133:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rmi_unregister_transport_device(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i133, %if.end70.cleanup_crit_edge, %do.end68, %do.end55, %devm_add_action_or_reset.exit, %if.end25.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %do.end55 ], [ %call63, %do.end68 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.end17.cleanup_crit_edge ], [ %call28, %if.end25.cleanup_crit_edge ], [ %call.i127, %devm_add_action_or_reset.exit ], [ 0, %if.end70.cleanup_crit_edge ], [ %call.i131, %if.then.i133 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_i2c_regulator_bulk_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.rmi_i2c_xport, ptr %data, i32 0, i32 6
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_set_page(ptr nocapture noundef %rmi_i2c, i8 noundef zeroext %page) unnamed_addr #2 align 64 {
entry:
  %txbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.rmi_i2c_xport, ptr %rmi_i2c, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf) #5
  %2 = getelementptr inbounds [2 x i8], ptr %txbuf, i32 0, i32 1
  %3 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %txbuf, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %page, ptr %2, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %txbuf, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp3, i32 %call.i, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %page to i32
  %page4 = getelementptr inbounds %struct.rmi_i2c_xport, ptr %rmi_i2c, i32 0, i32 3
  %5 = ptrtoint ptr %page4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %page4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_register_transport_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_i2c_unregister_transport(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rmi_unregister_transport_device(ptr noundef %data) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_i2c_write_block(ptr noundef %xport, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %txbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.rmi_i2c_xport, ptr %xport, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %add = add i32 %len, 1
  %page_mutex = getelementptr inbounds %struct.rmi_i2c_xport, ptr %xport, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %page_mutex, i32 noundef 0) #5
  %tx_buf = getelementptr inbounds %struct.rmi_i2c_xport, ptr %xport, i32 0, i32 4
  %2 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %tx_buf_size = getelementptr inbounds %struct.rmi_i2c_xport, ptr %xport, i32 0, i32 5
  %4 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp = icmp ult i32 %5, %add
  br i1 %cmp, label %if.then5, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then5:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then5, %entry.if.end_crit_edge
  %add7 = add i32 %len, 33
  %tx_buf_size8 = getelementptr inbounds %struct.rmi_i2c_xport, ptr %xport, i32 0, i32 5
  %6 = ptrtoint ptr %tx_buf_size8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add7, ptr %tx_buf_size8, align 4
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev9, i32 noundef %add7, i32 noundef 3520) #5
  %7 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %tx_buf, align 4
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %tx_buf_size8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_buf_size8, align 4
  br label %exit

if.end17:                                         ; preds = %if.end.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge
  %conv18 = trunc i16 %addr to i8
  %9 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_buf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18, ptr %10, align 1
  %12 = load ptr, ptr %tx_buf, align 4
  %add.ptr21 = getelementptr i8, ptr %12, i32 1
  %13 = call ptr @memcpy(ptr %add.ptr21, ptr %buf, i32 %len)
  %14 = lshr i16 %addr, 8
  %15 = zext i16 %14 to i32
  %page = getelementptr inbounds %struct.rmi_i2c_xport, ptr %xport, i32 0, i32 3
  %16 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp24.not = icmp eq i32 %17, %15
  br i1 %cmp24.not, label %if.end17.if.end35_crit_edge, label %if.then26

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then26:                                        ; preds = %if.end17
  %conv30 = trunc i16 %14 to i8
  %18 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i) #5
  %20 = getelementptr inbounds [2 x i8], ptr %txbuf.i, i32 0, i32 1
  %21 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %txbuf.i, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv30, ptr %20, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %txbuf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %rmi_set_page.exit, label %do.end.i

do.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  %spec.select = select i1 %cmp3.i, i32 %call.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #5
  br label %exit

rmi_set_page.exit:                                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %15, ptr %page, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #5
  br label %if.end35

if.end35:                                         ; preds = %rmi_set_page.exit, %if.end17.if.end35_crit_edge
  %24 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_buf, align 4
  %call.i82 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %25, i32 noundef %add, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i82, i32 %add)
  %cmp38 = icmp eq i32 %call.i82, %add
  br i1 %cmp38, label %if.end35.exit_crit_edge, label %if.else

if.end35.exit_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i82)
  %cmp41 = icmp sgt i32 %call.i82, -1
  %spec.store.select = select i1 %cmp41, i32 -5, i32 %call.i82
  br label %exit

exit:                                             ; preds = %if.else, %if.end35.exit_crit_edge, %do.end.i, %if.then14
  %retval2.0 = phi i32 [ %spec.store.select, %if.else ], [ -12, %if.then14 ], [ 0, %if.end35.exit_crit_edge ], [ %spec.select, %do.end.i ]
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv47 = zext i16 %addr to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 2, ptr noundef %dev46, ptr noundef nonnull @.str.22, i32 noundef %len, i32 noundef %conv47, i32 noundef %retval2.0, i32 noundef %len, ptr noundef %buf) #5
  call void @mutex_unlock(ptr noundef %page_mutex) #5
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_i2c_read_block(ptr noundef %xport, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %txbuf.i = alloca [2 x i8], align 1
  %addr_offset = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.rmi_i2c_xport, ptr %xport, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr_offset) #5
  %conv = zext i16 %addr to i32
  %conv2 = trunc i16 %addr to i8
  %2 = ptrtoint ptr %addr_offset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %addr_offset, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #5
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %addr5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %addr5 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr5, align 2
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %9 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %10 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %addr_offset, ptr %buf7, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %11 = load i16, ptr %addr5, align 2
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayinit.element, align 4
  %flags10 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %13 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags10, align 2
  %len11 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %conv12 = trunc i32 %len to i16
  %14 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv12, ptr %len11, align 4
  %buf13 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %15 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf13, align 4
  %page_mutex = getelementptr inbounds %struct.rmi_i2c_xport, ptr %xport, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %page_mutex, i32 noundef 0) #5
  %16 = lshr i32 %conv, 8
  %page = getelementptr inbounds %struct.rmi_i2c_xport, ptr %xport, i32 0, i32 3
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not = icmp eq i32 %16, %18
  br i1 %cmp.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then:                                          ; preds = %entry
  %conv20 = trunc i32 %16 to i8
  %19 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i) #5
  %21 = getelementptr inbounds [2 x i8], ptr %txbuf.i, i32 0, i32 1
  %22 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %txbuf.i, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv20, ptr %21, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %txbuf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %rmi_set_page.exit, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  %spec.select = select i1 %cmp3.i, i32 %call.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #5
  br label %exit

rmi_set_page.exit:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %16, ptr %page, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #5
  br label %if.end22

if.end22:                                         ; preds = %rmi_set_page.exit, %entry.if.end22_crit_edge
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %call23 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 2
  br i1 %cmp24, label %if.end22.exit_crit_edge, label %if.else

if.end22.exit_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %cmp27 = icmp sgt i32 %call23, -1
  %spec.store.select = select i1 %cmp27, i32 -5, i32 %call23
  br label %exit

exit:                                             ; preds = %if.else, %if.end22.exit_crit_edge, %do.end.i
  %retval3.0 = phi i32 [ %spec.store.select, %if.else ], [ 0, %if.end22.exit_crit_edge ], [ %spec.select, %do.end.i ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 2, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %len, i32 noundef %conv, i32 noundef %retval3.0, i32 noundef %len, ptr noundef %buf) #5
  call void @mutex_unlock(ptr noundef %page_mutex) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr_offset) #5
  ret i32 %retval3.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_unregister_transport_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %call1 = tail call i32 @rmi_driver_suspend(ptr noundef %3, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %supplies = getelementptr inbounds %struct.rmi_i2c_xport, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.rmi_i2c_xport, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %startup_delay = getelementptr inbounds %struct.rmi_i2c_xport, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %startup_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %startup_delay, align 4
  tail call void @msleep(i32 noundef %3) #5
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmi_dev, align 4
  %call2 = tail call i32 @rmi_driver_resume(ptr noundef %5, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_i2c_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %call1 = tail call i32 @rmi_driver_suspend(ptr noundef %3, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %supplies = getelementptr inbounds %struct.rmi_i2c_xport, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_i2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.rmi_i2c_xport, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %startup_delay = getelementptr inbounds %struct.rmi_i2c_xport, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %startup_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %startup_delay, align 4
  tail call void @msleep(i32 noundef %3) #5
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmi_dev, align 4
  %call2 = tail call i32 @rmi_driver_resume(ptr noundef %5, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_driver_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_driver_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_rmi_i2c__288_389_rmi_i2c_driver_init6, !1, !"__initcall__kmod_rmi_i2c__288_389_rmi_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 389, i32 1}
!2 = !{ptr @__exitcall_rmi_i2c_driver_exit, !1, !"__exitcall_rmi_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 391, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 392, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 393, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 394, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 381, i32 11}
!14 = !{ptr @rmi_i2c_driver, !15, !"rmi_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 379, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 222, i32 41}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 226, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rmi_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rmi_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 231, i32 32}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 232, i32 32}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 250, i32 44}
!32 = !{ptr @rmi_i2c_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 256, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 259, i32 30}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 270, i32 3}
!39 = !{ptr @rmi_i2c_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rmi_i2c_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 274, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rmi_i2c_probe._entry.15, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @rmi_i2c_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 278, i32 3}
!48 = !{ptr @rmi_i2c_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rmi_i2c_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @rmi_i2c_ops, !51, !"rmi_i2c_ops", i1 false, i1 false}
!51 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 173, i32 39}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 121, i32 3}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 166, i32 3}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 70, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rmi_set_page._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @rmi_set_page._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @rmi_i2c_of_match, !62, !"rmi_i2c_of_match", i1 false, i1 false}
!62 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 179, i32 34}
!63 = !{ptr @rmi_i2c_pm, !64, !"rmi_i2c_pm", i1 false, i1 false}
!64 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 367, i32 32}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 300, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rmi_i2c_suspend._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @rmi_i2c_suspend._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 323, i32 3}
!73 = !{ptr @rmi_i2c_resume._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rmi_i2c_resume._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 338, i32 3}
!77 = !{ptr @rmi_i2c_runtime_suspend._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rmi_i2c_runtime_suspend._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 361, i32 3}
!81 = !{ptr @rmi_i2c_runtime_resume._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rmi_i2c_runtime_resume._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @rmi_id, !84, !"rmi_id", i1 false, i1 false}
!84 = !{!"../drivers/input/rmi4/rmi_i2c.c", i32 373, i32 35}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
