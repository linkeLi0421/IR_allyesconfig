; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_smbus.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_smbus.c"
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_smb_xport = type { %struct.rmi_transport_dev, ptr, %struct.mutex, i32, i8, %struct.mutex, [8 x %struct.mapping_table_entry] }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.mapping_table_entry = type { i16, i8, i8 }
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_rmi_smbus__292_429_rmi_smb_driver_init6 = internal global ptr @rmi_smb_driver_init, section ".initcall6.init", align 4
@rmi_smb_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rmi_smb_probe, ptr @rmi_smb_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_smb_pm, ptr null, ptr null }, ptr @rmi_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rmi_smb_driver_exit = internal global ptr @rmi_smb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [55 x i8] c"rmi_smbus.author=Andrew Duggan <aduggan@synaptics.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [68 x i8] c"rmi_smbus.author=Benjamin Tissoires <benjamin.tissoires@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [40 x i8] c"rmi_smbus.description=RMI4 SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [44 x i8] c"rmi_smbus.file=drivers/input/rmi4/rmi_smbus\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"rmi_smbus.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rmi4_smbus\00", [21 x i8] zeroinitializer }, align 32
@rmi_smb_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rmi_smb_suspend, ptr @rmi_smb_resume, ptr @rmi_smb_suspend, ptr @rmi_smb_resume, ptr @rmi_smb_suspend, ptr @rmi_smb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_smb_runtime_suspend, ptr @rmi_smb_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rmi_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rmi4_smbus\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rmi_smb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no platform data, aborting\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi_smb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/rmi4/rmi_smbus.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_smb_probe._entry_ptr = internal global ptr @rmi_smb_probe._entry, section ".printk_index", align 4
@rmi_smb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"adapter does not support required functionality\0A\00", [47 x i8] zeroinitializer }, align 32
@rmi_smb_probe._entry_ptr.8 = internal global ptr @rmi_smb_probe._entry.6, section ".printk_index", align 4
@rmi_smb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no IRQ provided, giving up\0A\00", [36 x i8] zeroinitializer }, align 32
@rmi_smb_probe._entry_ptr.11 = internal global ptr @rmi_smb_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Probing %s\0A\00", [20 x i8] zeroinitializer }, align 32
@rmi_smb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rmi_smb->page_mutex\00", [43 x i8] zeroinitializer }, align 32
@rmi_smb_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&rmi_smb->mappingtable_mutex\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smb\00", [28 x i8] zeroinitializer }, align 32
@rmi_smb_ops = internal constant { %struct.rmi_transport_ops, [20 x i8] } { %struct.rmi_transport_ops { ptr @rmi_smb_write_block, ptr @rmi_smb_read_block, ptr @rmi_smb_reset }, [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Smbus version is %d\00", [44 x i8] zeroinitializer }, align 32
@rmi_smb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unrecognized SMB version %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rmi_smb_probe._entry_ptr.20 = internal global ptr @rmi_smb_probe._entry.18, section ".printk_index", align 4
@rmi_smb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 330, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"registering SMbus-connected sensor\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rmi_smb_probe._entry_ptr.24 = internal global ptr @rmi_smb_probe._entry.21, section ".printk_index", align 4
@rmi_smb_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register sensor: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rmi_smb_probe._entry_ptr.27 = internal global ptr @rmi_smb_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wrote %zd bytes at %#04x: %d (%*ph)\0A\00", [59 x i8] zeroinitializer }, align 32
@rmi_smb_get_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 50, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get SMBus version number!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rmi_smb_get_version\00", [44 x i8] zeroinitializer }, align 32
@rmi_smb_get_version._entry_ptr = internal global ptr @rmi_smb_get_version._entry, section ".printk_index", align 4
@rmi_smb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 358, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to suspend device: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmi_smb_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_smb_suspend._entry_ptr = internal global ptr @rmi_smb_suspend._entry, section ".printk_index", align 4
@rmi_smb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 389, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to resume device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_smb_resume\00", [17 x i8] zeroinitializer }, align 32
@rmi_smb_resume._entry_ptr = internal global ptr @rmi_smb_resume._entry, section ".printk_index", align 4
@rmi_smb_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.36, ptr @.str.3, i32 371, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_smb_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@rmi_smb_runtime_suspend._entry_ptr = internal global ptr @rmi_smb_runtime_suspend._entry, section ".printk_index", align 4
@rmi_smb_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.37, ptr @.str.3, i32 402, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rmi_smb_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@rmi_smb_runtime_resume._entry_ptr = internal global ptr @rmi_smb_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"rmi_smb_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 419, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 421, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"rmi_smb_pm\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 407, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"rmi_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 413, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 280, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 287, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 293, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 302, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 306, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 307, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 312, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"rmi_smb_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 265, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 319, i32 41 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 323, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 330, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 334, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 69, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 50, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 358, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 389, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 371, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [34 x i8] c"../drivers/input/rmi4/rmi_smbus.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 402, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_rmi_smb_driver_exit, ptr @__initcall__kmod_rmi_smbus__292_429_rmi_smb_driver_init6, ptr @rmi_smb_driver_exit, ptr @rmi_smb_get_version._entry, ptr @rmi_smb_get_version._entry_ptr, ptr @rmi_smb_probe._entry, ptr @rmi_smb_probe._entry.18, ptr @rmi_smb_probe._entry.21, ptr @rmi_smb_probe._entry.25, ptr @rmi_smb_probe._entry.6, ptr @rmi_smb_probe._entry.9, ptr @rmi_smb_probe._entry_ptr, ptr @rmi_smb_probe._entry_ptr.11, ptr @rmi_smb_probe._entry_ptr.20, ptr @rmi_smb_probe._entry_ptr.24, ptr @rmi_smb_probe._entry_ptr.27, ptr @rmi_smb_probe._entry_ptr.8, ptr @rmi_smb_resume._entry, ptr @rmi_smb_resume._entry_ptr, ptr @rmi_smb_runtime_resume._entry, ptr @rmi_smb_runtime_resume._entry_ptr, ptr @rmi_smb_runtime_suspend._entry, ptr @rmi_smb_runtime_suspend._entry_ptr, ptr @rmi_smb_suspend._entry, ptr @rmi_smb_suspend._entry_ptr, ptr @rmi_smb_driver, ptr @.str, ptr @rmi_smb_pm, ptr @rmi_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @rmi_smb_probe.__key, ptr @.str.13, ptr @rmi_smb_probe.__key.14, ptr @.str.15, ptr @.str.16, ptr @rmi_smb_ops, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_get_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_smb_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rmi_smb_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rmi_smb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @rmi_smb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i = and i32 %call.i.i, 285212672
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 285212672
  br i1 %cmp.i.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %do.end13, label %if.end18

do.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  %spec.select = select i1 %tobool16.not, i32 -19, i32 %11
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 360, i32 noundef 3520) #6
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.dev_name.exit_crit_edge

if.end23.dev_name.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end23.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end23.dev_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 2, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i) #6
  %client27 = getelementptr inbounds %struct.rmi_smb_xport, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %client27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %client, ptr %client27, align 4
  %page_mutex = getelementptr inbounds %struct.rmi_smb_xport, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %page_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @rmi_smb_probe.__key) #6
  %mappingtable_mutex = getelementptr inbounds %struct.rmi_smb_xport, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mappingtable_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @rmi_smb_probe.__key.14) #6
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %call.i, align 4
  %pdata37 = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4
  %18 = call ptr @memcpy(ptr %pdata37, ptr %1, i32 112)
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %irq41 = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %irq41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %irq41, align 4
  %proto_name = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %proto_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.16, ptr %proto_name, align 4
  %ops = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rmi_smb_ops, ptr %ops, align 4
  %24 = ptrtoint ptr %client27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client27, align 4
  %call.i110 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext -3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp.i111 = icmp slt i32 %call.i110, 0
  br i1 %cmp.i111, label %rmi_smb_get_version.exit.thread, label %rmi_smb_get_version.exit

rmi_smb_get_version.exit.thread:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29) #9
  br label %cleanup

rmi_smb_get_version.exit:                         ; preds = %dev_name.exit
  %add.i = add nuw i32 %call.i110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp45 = icmp slt i32 %add.i, 0
  br i1 %cmp45, label %rmi_smb_get_version.exit.cleanup_crit_edge, label %if.end47

rmi_smb_get_version.exit.cleanup_crit_edge:       ; preds = %rmi_smb_get_version.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %rmi_smb_get_version.exit
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 2, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %add.i) #6
  %call44.off = add nsw i32 %call.i110, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call44.off)
  %switch = icmp ult i32 %call44.off, 2
  br i1 %switch, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %add.i) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  %call62 = tail call i32 @rmi_register_transport_device(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end56.cleanup_crit_edge, label %do.end67

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end67:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call62) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %if.end56.cleanup_crit_edge, %do.end54, %rmi_smb_get_version.exit.cleanup_crit_edge, %rmi_smb_get_version.exit.thread, %if.end18.cleanup_crit_edge, %do.end13, %do.end7, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end13 ], [ -19, %do.end54 ], [ %call62, %do.end67 ], [ -19, %do.end7 ], [ -12, %do.end ], [ -12, %if.end18.cleanup_crit_edge ], [ -2147483648, %rmi_smb_get_version.exit.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ], [ %call.i110, %rmi_smb_get_version.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rmi_unregister_transport_device(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_register_transport_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_write_block(ptr noundef %xport, i16 noundef zeroext %rmiaddr, ptr noundef %databuff, i32 noundef %len) #2 align 64 {
entry:
  %commandcode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %commandcode) #6
  %0 = ptrtoint ptr %commandcode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %commandcode, align 1, !annotation !98
  %page_mutex = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %page_mutex, i32 noundef 0) #6
  %1 = tail call i32 @llvm.smin.i32(i32 %len, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp35 = icmp sgt i32 %len, 0
  br i1 %cmp35, label %while.body.lr.ph, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

while.body.lr.ph:                                 ; preds = %entry
  %client1.i = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 1
  %conv.i = trunc i32 %1 to i8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %cur_len.038 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %rmiaddr.addr.037 = phi i16 [ %rmiaddr, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %databuff.addr.036 = phi ptr [ %databuff, %while.body.lr.ph ], [ %add.ptr9, %cleanup.while.body_crit_edge ]
  %call = call fastcc i32 @rmi_smb_get_command_code(ptr noundef %xport, i16 noundef zeroext %rmiaddr.addr.037, i32 noundef %1, i1 noundef zeroext false, ptr noundef nonnull %commandcode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %while.body.exit_crit_edge, label %if.end

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %while.body
  %2 = ptrtoint ptr %commandcode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %commandcode, align 1
  %4 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_block_data(ptr noundef %5, i8 noundef zeroext %3, i8 noundef zeroext %conv.i, ptr noundef %databuff.addr.036) #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %conv3.i = zext i8 %3 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 2, ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef %1, i32 noundef %conv3.i, i32 noundef %call.i, i32 noundef %1, ptr noundef %databuff.addr.036) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end.exit_crit_edge, label %cleanup

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

cleanup:                                          ; preds = %if.end
  %sub = add nsw i32 %cur_len.038, -32
  %add.ptr9 = getelementptr i8, ptr %databuff.addr.036, i32 32
  %add = add i16 %rmiaddr.addr.037, 32
  %cmp = icmp sgt i32 %cur_len.038, 32
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.exit_crit_edge

cleanup.exit_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

exit:                                             ; preds = %cleanup.exit_crit_edge, %if.end.exit_crit_edge, %while.body.exit_crit_edge, %entry.exit_crit_edge
  %retval1.2 = phi i32 [ 0, %entry.exit_crit_edge ], [ %call.i, %if.end.exit_crit_edge ], [ %call, %while.body.exit_crit_edge ], [ %call.i, %cleanup.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %page_mutex) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %commandcode) #6
  ret i32 %retval1.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_read_block(ptr noundef %xport, i16 noundef zeroext %rmiaddr, ptr noundef %databuff, i32 noundef %len) #2 align 64 {
entry:
  %commandcode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %commandcode) #6
  %0 = ptrtoint ptr %commandcode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %commandcode, align 1, !annotation !98
  %page_mutex = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %page_mutex, i32 noundef 0) #6
  %1 = call ptr @memset(ptr %databuff, i32 0, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp37 = icmp sgt i32 %len, 0
  br i1 %cmp37, label %while.body.lr.ph, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

while.body.lr.ph:                                 ; preds = %entry
  %client1.i = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %cur_len.040 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %rmiaddr.addr.039 = phi i16 [ %rmiaddr, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %databuff.addr.038 = phi ptr [ %databuff, %while.body.lr.ph ], [ %add.ptr9, %cleanup.while.body_crit_edge ]
  %2 = tail call i32 @llvm.umin.i32(i32 %cur_len.040, i32 32)
  %call = call fastcc i32 @rmi_smb_get_command_code(ptr noundef %xport, i16 noundef zeroext %rmiaddr.addr.039, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %commandcode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %while.body.exit_crit_edge, label %if.end

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %while.body
  %3 = ptrtoint ptr %commandcode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %commandcode, align 1
  %5 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_block_data(ptr noundef %6, i8 noundef zeroext %4, ptr noundef %databuff.addr.038) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end.exit_crit_edge, label %cleanup

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

cleanup:                                          ; preds = %if.end
  %sub = add nsw i32 %cur_len.040, -32
  %add.ptr9 = getelementptr i8, ptr %databuff.addr.038, i32 32
  %add = add i16 %rmiaddr.addr.039, 32
  %cmp = icmp sgt i32 %cur_len.040, 32
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.exit_crit_edge

cleanup.exit_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

exit:                                             ; preds = %cleanup.exit_crit_edge, %if.end.exit_crit_edge, %while.body.exit_crit_edge, %entry.exit_crit_edge
  %retval1.1 = phi i32 [ 0, %entry.exit_crit_edge ], [ %call.i, %if.end.exit_crit_edge ], [ %call, %while.body.exit_crit_edge ], [ 0, %cleanup.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %page_mutex) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %commandcode) #6
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_reset(ptr noundef %xport, i16 noundef zeroext %reset_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mappingtable_mutex.i = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mappingtable_mutex.i, i32 noundef 0) #6
  %mapping_table.i = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6
  %0 = call ptr @memset(ptr %mapping_table.i, i32 0, i32 32)
  tail call void @mutex_unlock(ptr noundef %mappingtable_mutex.i) #6
  %client1.i.i = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 1
  %1 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client1.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.29) #9
  br label %rmi_smb_enable_smbus_mode.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.i.i = add nuw i32 %call.i.i, 1
  br label %rmi_smb_enable_smbus_mode.exit

rmi_smb_enable_smbus_mode.exit:                   ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %add.i.i, %if.end.i.i ]
  %3 = tail call i32 @llvm.smin.i32(i32 %retval.0.i.i, i32 0) #6
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_smb_get_command_code(ptr noundef %xport, i16 noundef zeroext %rmiaddr, i32 noundef %bytecount, i1 noundef zeroext %isread, ptr nocapture noundef writeonly %commandcode) unnamed_addr #2 align 64 {
entry:
  %new_map = alloca %struct.mapping_table_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_map) #6
  %0 = getelementptr inbounds %struct.mapping_table_entry, ptr %new_map, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mapping_table_entry, ptr %new_map, i32 0, i32 2
  %mappingtable_mutex = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mappingtable_mutex, i32 noundef 0) #6
  %arrayidx = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %rmiaddr)
  %cmp5 = icmp eq i16 %4, %rmiaddr
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %entry
  br i1 %isread, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %readcount = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 0, i32 1
  %5 = ptrtoint ptr %readcount to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %readcount, align 2
  %conv8 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %bytecount)
  %cmp9 = icmp eq i32 %conv8, %bytecount
  br i1 %cmp9, label %if.then7.exit.thread_crit_edge, label %for.inc.thread75

if.then7.exit.thread_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.else:                                          ; preds = %if.then
  %flags = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %for.inc.thread, label %if.else.exit.thread_crit_edge

if.else.exit.thread_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

exit.thread:                                      ; preds = %if.then7.7.exit.thread_crit_edge, %if.else.7.exit.thread_crit_edge, %if.then7.6.exit.thread_crit_edge, %if.else.6.exit.thread_crit_edge, %if.then7.5.exit.thread_crit_edge, %if.else.5.exit.thread_crit_edge, %if.then7.4.exit.thread_crit_edge, %if.else.4.exit.thread_crit_edge, %if.then7.3.exit.thread_crit_edge, %if.else.3.exit.thread_crit_edge, %if.then7.2.exit.thread_crit_edge, %if.else.2.exit.thread_crit_edge, %if.then7.1.exit.thread_crit_edge, %if.else.1.exit.thread_crit_edge, %if.else.exit.thread_crit_edge, %if.then7.exit.thread_crit_edge
  %i.070.lcssa = phi i8 [ 0, %if.else.exit.thread_crit_edge ], [ 0, %if.then7.exit.thread_crit_edge ], [ 1, %if.else.1.exit.thread_crit_edge ], [ 1, %if.then7.1.exit.thread_crit_edge ], [ 2, %if.else.2.exit.thread_crit_edge ], [ 2, %if.then7.2.exit.thread_crit_edge ], [ 3, %if.else.3.exit.thread_crit_edge ], [ 3, %if.then7.3.exit.thread_crit_edge ], [ 4, %if.else.4.exit.thread_crit_edge ], [ 4, %if.then7.4.exit.thread_crit_edge ], [ 5, %if.else.5.exit.thread_crit_edge ], [ 5, %if.then7.5.exit.thread_crit_edge ], [ 6, %if.else.6.exit.thread_crit_edge ], [ 6, %if.then7.6.exit.thread_crit_edge ], [ 7, %if.else.7.exit.thread_crit_edge ], [ 7, %if.then7.7.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mappingtable_mutex) #6
  br label %if.end39

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.1, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %rmiaddr)
  %cmp5.1 = icmp eq i16 %12, %rmiaddr
  br i1 %cmp5.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.thread75:                                 ; preds = %if.then7
  %arrayidx.176 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.176 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.176, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %rmiaddr)
  %cmp5.177 = icmp eq i16 %15, %rmiaddr
  br i1 %cmp5.177, label %for.inc.thread75.if.then7.1_crit_edge, label %for.inc.thread75.for.inc.1_crit_edge

for.inc.thread75.for.inc.1_crit_edge:             ; preds = %for.inc.thread75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.thread75.if.then7.1_crit_edge:            ; preds = %for.inc.thread75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.1

for.inc.thread:                                   ; preds = %if.else
  %arrayidx.173 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx.173 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.173, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %rmiaddr)
  %cmp5.174 = icmp eq i16 %18, %rmiaddr
  br i1 %cmp5.174, label %for.inc.thread.if.else.1_crit_edge, label %for.inc.thread.for.inc.1_crit_edge

for.inc.thread.for.inc.1_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.thread.if.else.1_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.1

if.then.1:                                        ; preds = %for.inc
  br i1 %isread, label %if.then.1.if.then7.1_crit_edge, label %if.then.1.if.else.1_crit_edge

if.then.1.if.else.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.1

if.then.1.if.then7.1_crit_edge:                   ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.1

if.else.1:                                        ; preds = %if.then.1.if.else.1_crit_edge, %for.inc.thread.if.else.1_crit_edge
  %flags.1 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 1, i32 2
  %19 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.1, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool13.not.1 = icmp eq i8 %21, 0
  br i1 %tobool13.not.1, label %if.else.1.for.inc.1_crit_edge, label %if.else.1.exit.thread_crit_edge

if.else.1.exit.thread_crit_edge:                  ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then7.1:                                       ; preds = %if.then.1.if.then7.1_crit_edge, %for.inc.thread75.if.then7.1_crit_edge
  %readcount.1 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 1, i32 1
  %22 = ptrtoint ptr %readcount.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %readcount.1, align 2
  %conv8.1 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.1, i32 %bytecount)
  %cmp9.1 = icmp eq i32 %conv8.1, %bytecount
  br i1 %cmp9.1, label %if.then7.1.exit.thread_crit_edge, label %if.then7.1.for.inc.1_crit_edge

if.then7.1.for.inc.1_crit_edge:                   ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then7.1.exit.thread_crit_edge:                 ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

for.inc.1:                                        ; preds = %if.then7.1.for.inc.1_crit_edge, %if.else.1.for.inc.1_crit_edge, %for.inc.thread.for.inc.1_crit_edge, %for.inc.thread75.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.2, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %rmiaddr)
  %cmp5.2 = icmp eq i16 %26, %rmiaddr
  br i1 %cmp5.2, label %if.then.2, label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  br i1 %isread, label %if.then7.2, label %if.else.2

if.else.2:                                        ; preds = %if.then.2
  %flags.2 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 2, i32 2
  %27 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags.2, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool13.not.2 = icmp eq i8 %29, 0
  br i1 %tobool13.not.2, label %for.inc.2.thread, label %if.else.2.exit.thread_crit_edge

if.else.2.exit.thread_crit_edge:                  ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.then7.2:                                       ; preds = %if.then.2
  %readcount.2 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 2, i32 1
  %30 = ptrtoint ptr %readcount.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %readcount.2, align 2
  %conv8.2 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.2, i32 %bytecount)
  %cmp9.2 = icmp eq i32 %conv8.2, %bytecount
  br i1 %cmp9.2, label %if.then7.2.exit.thread_crit_edge, label %for.inc.2.thread81

if.then7.2.exit.thread_crit_edge:                 ; preds = %if.then7.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.3, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %rmiaddr)
  %cmp5.3 = icmp eq i16 %34, %rmiaddr
  br i1 %cmp5.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.2.thread81:                               ; preds = %if.then7.2
  %arrayidx.382 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 3
  %35 = ptrtoint ptr %arrayidx.382 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.382, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %rmiaddr)
  %cmp5.383 = icmp eq i16 %37, %rmiaddr
  br i1 %cmp5.383, label %for.inc.2.thread81.if.then7.3_crit_edge, label %for.inc.2.thread81.for.inc.3_crit_edge

for.inc.2.thread81.for.inc.3_crit_edge:           ; preds = %for.inc.2.thread81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.2.thread81.if.then7.3_crit_edge:          ; preds = %for.inc.2.thread81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.3

for.inc.2.thread:                                 ; preds = %if.else.2
  %arrayidx.379 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %arrayidx.379 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.379, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %rmiaddr)
  %cmp5.380 = icmp eq i16 %40, %rmiaddr
  br i1 %cmp5.380, label %for.inc.2.thread.if.else.3_crit_edge, label %for.inc.2.thread.for.inc.3_crit_edge

for.inc.2.thread.for.inc.3_crit_edge:             ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.2.thread.if.else.3_crit_edge:             ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.3

if.then.3:                                        ; preds = %for.inc.2
  br i1 %isread, label %if.then.3.if.then7.3_crit_edge, label %if.then.3.if.else.3_crit_edge

if.then.3.if.else.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.3

if.then.3.if.then7.3_crit_edge:                   ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.3

if.else.3:                                        ; preds = %if.then.3.if.else.3_crit_edge, %for.inc.2.thread.if.else.3_crit_edge
  %flags.3 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 3, i32 2
  %41 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags.3, align 1
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool13.not.3 = icmp eq i8 %43, 0
  br i1 %tobool13.not.3, label %if.else.3.for.inc.3_crit_edge, label %if.else.3.exit.thread_crit_edge

if.else.3.exit.thread_crit_edge:                  ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.else.3.for.inc.3_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then7.3:                                       ; preds = %if.then.3.if.then7.3_crit_edge, %for.inc.2.thread81.if.then7.3_crit_edge
  %readcount.3 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 3, i32 1
  %44 = ptrtoint ptr %readcount.3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %readcount.3, align 2
  %conv8.3 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.3, i32 %bytecount)
  %cmp9.3 = icmp eq i32 %conv8.3, %bytecount
  br i1 %cmp9.3, label %if.then7.3.exit.thread_crit_edge, label %if.then7.3.for.inc.3_crit_edge

if.then7.3.for.inc.3_crit_edge:                   ; preds = %if.then7.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then7.3.exit.thread_crit_edge:                 ; preds = %if.then7.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

for.inc.3:                                        ; preds = %if.then7.3.for.inc.3_crit_edge, %if.else.3.for.inc.3_crit_edge, %for.inc.2.thread.for.inc.3_crit_edge, %for.inc.2.thread81.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.4, align 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %rmiaddr)
  %cmp5.4 = icmp eq i16 %48, %rmiaddr
  br i1 %cmp5.4, label %if.then.4, label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  br i1 %isread, label %if.then7.4, label %if.else.4

if.else.4:                                        ; preds = %if.then.4
  %flags.4 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 4, i32 2
  %49 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags.4, align 1
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool13.not.4 = icmp eq i8 %51, 0
  br i1 %tobool13.not.4, label %for.inc.4.thread, label %if.else.4.exit.thread_crit_edge

if.else.4.exit.thread_crit_edge:                  ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.then7.4:                                       ; preds = %if.then.4
  %readcount.4 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 4, i32 1
  %52 = ptrtoint ptr %readcount.4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %readcount.4, align 2
  %conv8.4 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.4, i32 %bytecount)
  %cmp9.4 = icmp eq i32 %conv8.4, %bytecount
  br i1 %cmp9.4, label %if.then7.4.exit.thread_crit_edge, label %for.inc.4.thread87

if.then7.4.exit.thread_crit_edge:                 ; preds = %if.then7.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 5
  %54 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.5, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %rmiaddr)
  %cmp5.5 = icmp eq i16 %56, %rmiaddr
  br i1 %cmp5.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

for.inc.4.thread87:                               ; preds = %if.then7.4
  %arrayidx.588 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 5
  %57 = ptrtoint ptr %arrayidx.588 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.588, align 2
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %rmiaddr)
  %cmp5.589 = icmp eq i16 %59, %rmiaddr
  br i1 %cmp5.589, label %for.inc.4.thread87.if.then7.5_crit_edge, label %for.inc.4.thread87.for.inc.5_crit_edge

for.inc.4.thread87.for.inc.5_crit_edge:           ; preds = %for.inc.4.thread87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

for.inc.4.thread87.if.then7.5_crit_edge:          ; preds = %for.inc.4.thread87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.5

for.inc.4.thread:                                 ; preds = %if.else.4
  %arrayidx.585 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 5
  %60 = ptrtoint ptr %arrayidx.585 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.585, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %rmiaddr)
  %cmp5.586 = icmp eq i16 %62, %rmiaddr
  br i1 %cmp5.586, label %for.inc.4.thread.if.else.5_crit_edge, label %for.inc.4.thread.for.inc.5_crit_edge

for.inc.4.thread.for.inc.5_crit_edge:             ; preds = %for.inc.4.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

for.inc.4.thread.if.else.5_crit_edge:             ; preds = %for.inc.4.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.5

if.then.5:                                        ; preds = %for.inc.4
  br i1 %isread, label %if.then.5.if.then7.5_crit_edge, label %if.then.5.if.else.5_crit_edge

if.then.5.if.else.5_crit_edge:                    ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.5

if.then.5.if.then7.5_crit_edge:                   ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.5

if.else.5:                                        ; preds = %if.then.5.if.else.5_crit_edge, %for.inc.4.thread.if.else.5_crit_edge
  %flags.5 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 5, i32 2
  %63 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %flags.5, align 1
  %65 = and i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool13.not.5 = icmp eq i8 %65, 0
  br i1 %tobool13.not.5, label %if.else.5.for.inc.5_crit_edge, label %if.else.5.exit.thread_crit_edge

if.else.5.exit.thread_crit_edge:                  ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.else.5.for.inc.5_crit_edge:                    ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then7.5:                                       ; preds = %if.then.5.if.then7.5_crit_edge, %for.inc.4.thread87.if.then7.5_crit_edge
  %readcount.5 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 5, i32 1
  %66 = ptrtoint ptr %readcount.5 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %readcount.5, align 2
  %conv8.5 = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.5, i32 %bytecount)
  %cmp9.5 = icmp eq i32 %conv8.5, %bytecount
  br i1 %cmp9.5, label %if.then7.5.exit.thread_crit_edge, label %if.then7.5.for.inc.5_crit_edge

if.then7.5.for.inc.5_crit_edge:                   ; preds = %if.then7.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then7.5.exit.thread_crit_edge:                 ; preds = %if.then7.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

for.inc.5:                                        ; preds = %if.then7.5.for.inc.5_crit_edge, %if.else.5.for.inc.5_crit_edge, %for.inc.4.thread.for.inc.5_crit_edge, %for.inc.4.thread87.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 6
  %68 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx.6, align 2
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %rmiaddr)
  %cmp5.6 = icmp eq i16 %70, %rmiaddr
  br i1 %cmp5.6, label %if.then.6, label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  br i1 %isread, label %if.then7.6, label %if.else.6

if.else.6:                                        ; preds = %if.then.6
  %flags.6 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 6, i32 2
  %71 = ptrtoint ptr %flags.6 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %flags.6, align 1
  %73 = and i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool13.not.6 = icmp eq i8 %73, 0
  br i1 %tobool13.not.6, label %for.inc.6.thread, label %if.else.6.exit.thread_crit_edge

if.else.6.exit.thread_crit_edge:                  ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.then7.6:                                       ; preds = %if.then.6
  %readcount.6 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 6, i32 1
  %74 = ptrtoint ptr %readcount.6 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %readcount.6, align 2
  %conv8.6 = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.6, i32 %bytecount)
  %cmp9.6 = icmp eq i32 %conv8.6, %bytecount
  br i1 %cmp9.6, label %if.then7.6.exit.thread_crit_edge, label %for.inc.6.thread93

if.then7.6.exit.thread_crit_edge:                 ; preds = %if.then7.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 7
  %76 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx.7, align 2
  %78 = tail call i16 @llvm.bswap.i16(i16 %77)
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %rmiaddr)
  %cmp5.7 = icmp eq i16 %78, %rmiaddr
  br i1 %cmp5.7, label %if.then.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

for.inc.6.thread93:                               ; preds = %if.then7.6
  %arrayidx.794 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 7
  %79 = ptrtoint ptr %arrayidx.794 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.794, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %rmiaddr)
  %cmp5.795 = icmp eq i16 %81, %rmiaddr
  br i1 %cmp5.795, label %for.inc.6.thread93.if.then7.7_crit_edge, label %for.inc.6.thread93.for.inc.7_crit_edge

for.inc.6.thread93.for.inc.7_crit_edge:           ; preds = %for.inc.6.thread93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

for.inc.6.thread93.if.then7.7_crit_edge:          ; preds = %for.inc.6.thread93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.7

for.inc.6.thread:                                 ; preds = %if.else.6
  %arrayidx.791 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 7
  %82 = ptrtoint ptr %arrayidx.791 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.791, align 2
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %rmiaddr)
  %cmp5.792 = icmp eq i16 %84, %rmiaddr
  br i1 %cmp5.792, label %for.inc.6.thread.if.else.7_crit_edge, label %for.inc.6.thread.for.inc.7_crit_edge

for.inc.6.thread.for.inc.7_crit_edge:             ; preds = %for.inc.6.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

for.inc.6.thread.if.else.7_crit_edge:             ; preds = %for.inc.6.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.7

if.then.7:                                        ; preds = %for.inc.6
  br i1 %isread, label %if.then.7.if.then7.7_crit_edge, label %if.then.7.if.else.7_crit_edge

if.then.7.if.else.7_crit_edge:                    ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.7

if.then.7.if.then7.7_crit_edge:                   ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.7

if.else.7:                                        ; preds = %if.then.7.if.else.7_crit_edge, %for.inc.6.thread.if.else.7_crit_edge
  %flags.7 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 7, i32 2
  %85 = ptrtoint ptr %flags.7 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flags.7, align 1
  %87 = and i8 %86, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool13.not.7 = icmp eq i8 %87, 0
  br i1 %tobool13.not.7, label %if.else.7.for.inc.7_crit_edge, label %if.else.7.exit.thread_crit_edge

if.else.7.exit.thread_crit_edge:                  ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.else.7.for.inc.7_crit_edge:                    ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then7.7:                                       ; preds = %if.then.7.if.then7.7_crit_edge, %for.inc.6.thread93.if.then7.7_crit_edge
  %readcount.7 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 7, i32 1
  %88 = ptrtoint ptr %readcount.7 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %readcount.7, align 2
  %conv8.7 = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.7, i32 %bytecount)
  %cmp9.7 = icmp eq i32 %conv8.7, %bytecount
  br i1 %cmp9.7, label %if.then7.7.exit.thread_crit_edge, label %if.then7.7.for.inc.7_crit_edge

if.then7.7.for.inc.7_crit_edge:                   ; preds = %if.then7.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then7.7.exit.thread_crit_edge:                 ; preds = %if.then7.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

for.inc.7:                                        ; preds = %if.then7.7.for.inc.7_crit_edge, %if.else.7.for.inc.7_crit_edge, %for.inc.6.thread.for.inc.7_crit_edge, %for.inc.6.thread93.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %table_index = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 4
  %90 = ptrtoint ptr %table_index to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %table_index, align 4
  %conv18 = zext i8 %91 to i32
  %add = add i8 %91, 1
  %rem = and i8 %add, 7
  store i8 %rem, ptr %table_index, align 4
  %92 = tail call i16 @llvm.bswap.i16(i16 %rmiaddr)
  %93 = ptrtoint ptr %new_map to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %new_map, align 4
  %conv22 = trunc i32 %bytecount to i8
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv22, ptr %0, align 2
  %lnot = xor i1 %isread, true
  %conv25 = zext i1 %lnot to i8
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv25, ptr %1, align 1
  %add27 = xor i8 %91, -128
  %client1.i = getelementptr inbounds %struct.rmi_smb_xport, ptr %xport, i32 0, i32 1
  %96 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %client1.i, align 4
  %call.i = call i32 @i2c_smbus_write_block_data(ptr noundef %97, i8 noundef zeroext %add27, i8 noundef zeroext 4, ptr noundef nonnull %new_map) #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4
  %conv3.i = zext i8 %add27 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 2, ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef %conv3.i, i32 noundef %call.i, i32 noundef 4, ptr noundef nonnull %new_map) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp29 = icmp slt i32 %call.i, 0
  br i1 %cmp29, label %if.then31, label %if.end39.critedge

if.then31:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %new_map to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %new_map, align 4
  %arrayidx34.c97 = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 %conv18
  %99 = ptrtoint ptr %arrayidx34.c97 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx34.c97, align 4
  call void @mutex_unlock(ptr noundef %mappingtable_mutex) #6
  br label %cleanup41

if.end39.critedge:                                ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx34.c = getelementptr %struct.rmi_smb_xport, ptr %xport, i32 0, i32 6, i32 %conv18
  %100 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %new_map, align 4
  %102 = ptrtoint ptr %arrayidx34.c to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx34.c, align 4
  call void @mutex_unlock(ptr noundef %mappingtable_mutex) #6
  br label %if.end39

if.end39:                                         ; preds = %if.end39.critedge, %exit.thread
  %i.168 = phi i8 [ %i.070.lcssa, %exit.thread ], [ %91, %if.end39.critedge ]
  %103 = ptrtoint ptr %commandcode to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %i.168, ptr %commandcode, align 1
  br label %cleanup41

cleanup41:                                        ; preds = %if.end39, %if.then31
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %call.i, %if.then31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_map) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_unregister_transport_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %call1 = tail call i32 @rmi_driver_suspend(ptr noundef %3, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev1 = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev1, align 4
  %mappingtable_mutex.i.i = getelementptr inbounds %struct.rmi_smb_xport, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mappingtable_mutex.i.i, i32 noundef 0) #6
  %mapping_table.i.i = getelementptr inbounds %struct.rmi_smb_xport, ptr %1, i32 0, i32 6
  %4 = call ptr @memset(ptr %mapping_table.i.i, i32 0, i32 32)
  tail call void @mutex_unlock(ptr noundef %mappingtable_mutex.i.i) #6
  %client1.i.i.i = getelementptr inbounds %struct.rmi_smb_xport, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1.i.i.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext -3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %entry.rmi_smb_reset.exit_crit_edge

entry.rmi_smb_reset.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmi_smb_reset.exit

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.29) #9
  br label %rmi_smb_reset.exit

rmi_smb_reset.exit:                               ; preds = %do.end.i.i.i, %entry.rmi_smb_reset.exit_crit_edge
  %driver.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.i, align 4
  %reset_handler.i = getelementptr inbounds %struct.rmi_driver, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %reset_handler.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_handler.i, align 4
  %call.i = tail call i32 %10(ptr noundef %3) #6
  %11 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmi_dev1, align 4
  %call7 = tail call i32 @rmi_driver_resume(ptr noundef %12, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %rmi_smb_reset.exit.if.end_crit_edge, label %do.end

rmi_smb_reset.exit.if.end_crit_edge:              ; preds = %rmi_smb_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %rmi_smb_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call7) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %rmi_smb_reset.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %call1 = tail call i32 @rmi_driver_suspend(ptr noundef %3, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_smb_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %call1 = tail call i32 @rmi_driver_resume(ptr noundef %3, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_driver_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_driver_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !39, !40, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_rmi_smbus__292_429_rmi_smb_driver_init6, !1, !"__initcall__kmod_rmi_smbus__292_429_rmi_smb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 429, i32 1}
!2 = !{ptr @__exitcall_rmi_smb_driver_exit, !1, !"__exitcall_rmi_smb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 431, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 432, i32 1}
!7 = !{ptr @__UNIQUE_ID_description295, !8, !"__UNIQUE_ID_description295", i1 false, i1 false}
!8 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 433, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 434, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 421, i32 11}
!14 = !{ptr @rmi_smb_driver, !15, !"rmi_smb_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 419, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 280, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rmi_smb_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rmi_smb_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 287, i32 3}
!26 = !{ptr @rmi_smb_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rmi_smb_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 293, i32 3}
!30 = !{ptr @rmi_smb_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rmi_smb_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 302, i32 41}
!34 = !{ptr @rmi_smb_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 306, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rmi_smb_probe.__key.14, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 307, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 312, i32 30}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 319, i32 41}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 323, i32 3}
!46 = !{ptr @rmi_smb_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rmi_smb_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 330, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rmi_smb_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @rmi_smb_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 334, i32 3}
!55 = !{ptr @rmi_smb_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rmi_smb_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @rmi_smb_ops, !58, !"rmi_smb_ops", i1 false, i1 false}
!58 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 265, i32 39}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 69, i32 3}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 50, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rmi_smb_get_version._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @rmi_smb_get_version._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @rmi_smb_pm, !67, !"rmi_smb_pm", i1 false, i1 false}
!67 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 407, i32 32}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 358, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rmi_smb_suspend._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @rmi_smb_suspend._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 389, i32 3}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rmi_smb_resume._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @rmi_smb_resume._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 371, i32 3}
!81 = !{ptr @rmi_smb_runtime_suspend._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rmi_smb_runtime_suspend._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 402, i32 3}
!85 = !{ptr @rmi_smb_runtime_resume._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rmi_smb_runtime_resume._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @rmi_id, !88, !"rmi_id", i1 false, i1 false}
!88 = !{!"../drivers/input/rmi4/rmi_smbus.c", i32 413, i32 35}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
