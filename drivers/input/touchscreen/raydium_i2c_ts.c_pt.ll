; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/raydium_i2c_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/raydium_i2c_ts.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.raydium_data = type { ptr, ptr, ptr, ptr, ptr, %struct.raydium_info, %struct.mutex, ptr, i32, i8, i8, i8, i32, i8 }
%struct.raydium_info = type { i32, i8, i8, i16, i8, i8, i16, i16, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.raydium_bank_switch_header = type <{ i8, i32 }>
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.raydium_data_info = type { i32, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_raydium_i2c_ts__302_1289_raydium_i2c_driver_init6 = internal global ptr @raydium_i2c_driver_init, section ".initcall6.init", align 4
@raydium_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @raydium_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @raydium_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raydium_i2c_pm_ops, ptr null, ptr null }, ptr @raydium_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_raydium_i2c_driver_exit = internal global ptr @raydium_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [30 x i8] c"raydium_i2c_ts.author=Raydium\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"raydium_i2c_ts.description=Raydium I2c Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [61 x i8] c"raydium_i2c_ts.file=drivers/input/touchscreen/raydium_i2c_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [30 x i8] c"raydium_i2c_ts.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raydium_ts\00", [21 x i8] zeroinitializer }, align 32
@raydium_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raydium,rm32380\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@raydium_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @raydium_i2c_suspend, ptr @raydium_i2c_resume, ptr @raydium_i2c_suspend, ptr @raydium_i2c_resume, ptr @raydium_i2c_suspend, ptr @raydium_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@raydium_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"raydium_i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rm32380\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1076, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"i2c check functionality error (need I2C_FUNC_I2C)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raydium_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/input/touchscreen/raydium_i2c_ts.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr = internal global ptr @raydium_i2c_probe._entry, section ".printk_index", align 4
@raydium_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ts->sysfs_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get 'avdd' regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.10 = internal global ptr @raydium_i2c_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vccio\00", [26 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get 'vccio' regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.14 = internal global ptr @raydium_i2c_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get reset gpio: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.18 = internal global ptr @raydium_i2c_probe._entry.16, section ".printk_index", align 4
@raydium_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to install power off action: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.21 = internal global ptr @raydium_i2c_probe._entry.19, section ".printk_index", align 4
@raydium_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nothing at this address\0A\00", [39 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.24 = internal global ptr @raydium_i2c_probe._entry.22, section ".printk_index", align 4
@raydium_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialize: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.27 = internal global ptr @raydium_i2c_probe._entry.25, section ".printk_index", align 4
@raydium_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.30 = internal global ptr @raydium_i2c_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Raydium Touchscreen\00", [44 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize MT slots: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.34 = internal global ptr @raydium_i2c_probe._entry.32, section ".printk_index", align 4
@raydium_i2c_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 1177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.37 = internal global ptr @raydium_i2c_probe._entry.35, section ".printk_index", align 4
@raydium_i2c_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 1185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.40 = internal global ptr @raydium_i2c_probe._entry.38, section ".printk_index", align 4
@raydium_i2c_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @raydium_i2c_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 1193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to create sysfs attributes: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@raydium_i2c_probe._entry_ptr.43 = internal global ptr @raydium_i2c_probe._entry.41, section ".printk_index", align 4
@raydium_i2c_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1031, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable avdd regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raydium_i2c_power_on\00", [43 x i8] zeroinitializer }, align 32
@raydium_i2c_power_on._entry_ptr = internal global ptr @raydium_i2c_power_on._entry, section ".printk_index", align 4
@raydium_i2c_power_on._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 1039, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable vccio regulator: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@raydium_i2c_power_on._entry_ptr.48 = internal global ptr @raydium_i2c_power_on._entry.46, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@raydium_i2c_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read 'hello' packet: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"raydium_i2c_initialize\00", [41 x i8] zeroinitializer }, align 32
@raydium_i2c_initialize._entry_ptr = internal global ptr @raydium_i2c_initialize._entry, section ".printk_index", align 4
@raydium_i2c_query_ts_bootloader_info.get_hwid = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0E\10\C0\01\00\04\00", [25 x i8] zeroinitializer }, align 32
@raydium_i2c_query_ts_bootloader_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WRT HWID command failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"raydium_i2c_query_ts_bootloader_info\00", [59 x i8] zeroinitializer }, align 32
@raydium_i2c_query_ts_bootloader_info._entry_ptr = internal global ptr @raydium_i2c_query_ts_bootloader_info._entry, section ".printk_index", align 4
@raydium_i2c_query_ts_bootloader_info._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Ack HWID command failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@raydium_i2c_query_ts_bootloader_info._entry_ptr.55 = internal global ptr @raydium_i2c_query_ts_bootloader_info._entry.53, section ".printk_index", align 4
@raydium_i2c_query_ts_bootloader_info._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Read HWID command failed: %d (%4ph)\0A\00", [59 x i8] zeroinitializer }, align 32
@raydium_i2c_query_ts_bootloader_info._entry_ptr.58 = internal global ptr @raydium_i2c_query_ts_bootloader_info._entry.56, section ".printk_index", align 4
@raydium_i2c_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"raydium_i2c_send\00", [47 x i8] zeroinitializer }, align 32
@raydium_i2c_send._entry_ptr = internal global ptr @raydium_i2c_send._entry, section ".printk_index", align 4
@raydium_i2c_query_ts_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 354, ptr @.str.63, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"report size changes, was: %d, new: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"raydium_i2c_query_ts_info\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@raydium_i2c_query_ts_info._entry_ptr = internal global ptr @raydium_i2c_query_ts_info._entry, section ".printk_index", align 4
@raydium_i2c_query_ts_info.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.62, ptr @.str.3, ptr @.str.65, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raydium_i2c_ts\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"data_bank_addr: %#08x, report_size: %d, contact_size: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@raydium_i2c_query_ts_info._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to query device parameters: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@raydium_i2c_query_ts_info._entry_ptr.68 = internal global ptr @raydium_i2c_query_ts_info._entry.66, section ".printk_index", align 4
@raydium_i2c_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 919, ptr @.str.63, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: invalid packet crc %#04x vs %#04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"raydium_i2c_irq\00", [16 x i8] zeroinitializer }, align 32
@raydium_i2c_irq._entry_ptr = internal global ptr @raydium_i2c_irq._entry, section ".printk_index", align 4
@raydium_i2c_attributes = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_update_fw, ptr @dev_attr_boot_mode, ptr @dev_attr_fw_version, ptr @dev_attr_hw_version, ptr @dev_attr_calibrate, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @raydium_i2c_update_fw_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_boot_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raydium_i2c_boot_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raydium_i2c_fw_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raydium_i2c_hw_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_calibrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @raydium_i2c_calibrate_store }, [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"raydium_%#04x.fw\00", [47 x i8] zeroinitializer }, align 32
@raydium_i2c_fw_update.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"raydium_i2c_fw_update\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"firmware name: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@raydium_i2c_fw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to open firmware %s\0A\00", [36 x i8] zeroinitializer }, align 32
@raydium_i2c_fw_update._entry_ptr = internal global ptr @raydium_i2c_fw_update._entry, section ".printk_index", align 4
@raydium_i2c_fw_update._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.73, ptr @.str.3, i32 838, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware update failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@raydium_i2c_fw_update._entry_ptr.78 = internal global ptr @raydium_i2c_fw_update._entry.76, section ".printk_index", align 4
@raydium_i2c_fw_update._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.73, ptr @.str.3, i32 847, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"failed to initialize device after firmware update: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@raydium_i2c_fw_update._entry_ptr.81 = internal global ptr @raydium_i2c_fw_update._entry.79, section ".printk_index", align 4
@raydium_i2c_do_update_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 706, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid firmware length\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"raydium_i2c_do_update_firmware\00", [33 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry_ptr = internal global ptr @raydium_i2c_do_update_firmware._entry, section ".printk_index", align 4
@raydium_i2c_do_update_firmware._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 712, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to access IC %d\0A\00", [40 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry_ptr.86 = internal global ptr @raydium_i2c_do_update_firmware._entry.84, section ".printk_index", align 4
@raydium_i2c_do_update_firmware._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.3, i32 724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to access IC: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry_ptr.89 = internal global ptr @raydium_i2c_do_update_firmware._entry.87, section ".printk_index", align 4
@raydium_i2c_do_update_firmware._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.3, i32 736, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to jump to boot loader: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry_ptr.92 = internal global ptr @raydium_i2c_do_update_firmware._entry.90, section ".printk_index", align 4
@raydium_i2c_do_update_firmware._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.3, i32 751, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"send boot trigger fail: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry_ptr.95 = internal global ptr @raydium_i2c_do_update_firmware._entry.93, section ".printk_index", align 4
@raydium_i2c_do_update_firmware._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.83, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to leave boot loader: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry_ptr.98 = internal global ptr @raydium_i2c_do_update_firmware._entry.96, section ".printk_index", align 4
@raydium_i2c_do_update_firmware.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.83, ptr @.str.3, ptr @.str.99, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"left boot loader mode\0A\00", [41 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.83, ptr @.str.3, i32 788, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to check fw status after write: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry_ptr.102 = internal global ptr @raydium_i2c_do_update_firmware._entry.100, section ".printk_index", align 4
@raydium_i2c_do_update_firmware._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.83, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to switch to main fw after writing firmware: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry_ptr.105 = internal global ptr @raydium_i2c_do_update_firmware._entry.103, section ".printk_index", align 4
@raydium_i2c_do_update_firmware._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.83, ptr @.str.3, i32 801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to trigger fw: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@raydium_i2c_do_update_firmware._entry_ptr.108 = internal global ptr @raydium_i2c_do_update_firmware._entry.106, section ".printk_index", align 4
@raydium_i2c_enter_bl.cal_cmd = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\01R", [29 x i8] zeroinitializer }, align 32
@raydium_i2c_enter_bl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enter bl command failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raydium_i2c_enter_bl\00", [43 x i8] zeroinitializer }, align 32
@raydium_i2c_enter_bl._entry_ptr = internal global ptr @raydium_i2c_enter_bl._entry, section ".printk_index", align 4
@raydium_i2c_write_object.cmd = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FF9", [30 x i8] zeroinitializer }, align 32
@raydium_i2c_write_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WRT obj command failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"raydium_i2c_write_object\00", [39 x i8] zeroinitializer }, align 32
@raydium_i2c_write_object._entry_ptr = internal global ptr @raydium_i2c_write_object._entry, section ".printk_index", align 4
@raydium_i2c_write_object._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Ack obj command failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@raydium_i2c_write_object._entry_ptr.115 = internal global ptr @raydium_i2c_write_object._entry.113, section ".printk_index", align 4
@raydium_i2c_write_object._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.112, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BL check state failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@raydium_i2c_write_object._entry_ptr.118 = internal global ptr @raydium_i2c_write_object._entry.116, section ".printk_index", align 4
@raydium_i2c_bl_chk_state.ack_ok = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\FF900T", [27 x i8] zeroinitializer }, align 32
@raydium_i2c_bl_chk_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid target state %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"raydium_i2c_bl_chk_state\00", [39 x i8] zeroinitializer }, align 32
@raydium_i2c_bl_chk_state._entry_ptr = internal global ptr @raydium_i2c_bl_chk_state._entry, section ".printk_index", align 4
@raydium_i2c_disable_watch_dog.cmd = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\AA", [30 x i8] zeroinitializer }, align 32
@raydium_i2c_disable_watch_dog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 638, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"disable watchdog command failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"raydium_i2c_disable_watch_dog\00", [34 x i8] zeroinitializer }, align 32
@raydium_i2c_disable_watch_dog._entry_ptr = internal global ptr @raydium_i2c_disable_watch_dog._entry, section ".printk_index", align 4
@raydium_i2c_check_path.cmd = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\09\00\09\00P\10\00", [25 x i8] zeroinitializer }, align 32
@raydium_i2c_check_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"check path command failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"raydium_i2c_check_path\00", [41 x i8] zeroinitializer }, align 32
@raydium_i2c_check_path._entry_ptr = internal global ptr @raydium_i2c_check_path._entry, section ".printk_index", align 4
@raydium_i2c_boot_trigger.cmd = internal constant { [7 x [6 x i8]], [54 x i8] } { [7 x [6 x i8]] [[6 x i8] c"\08\0C\09\00P\D7", [6 x i8] c"\08\04\09\00P\A5", [6 x i8] c"\08\04\09\00P\00", [6 x i8] c"\08\04\09\00P\A5", [6 x i8] c"\08\0C\09\00P\00", [6 x i8] c"\06\01\00\00\00\00", [6 x i8] c"\02\A2\00\00\00\00"], [54 x i8] zeroinitializer }, align 32
@raydium_i2c_boot_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"boot trigger failed at step %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"raydium_i2c_boot_trigger\00", [39 x i8] zeroinitializer }, align 32
@raydium_i2c_boot_trigger._entry_ptr = internal global ptr @raydium_i2c_boot_trigger._entry, section ".printk_index", align 4
@raydium_i2c_fw_write_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"page write command failed for page %d, chunk %d: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"raydium_i2c_fw_write_page\00", [38 x i8] zeroinitializer }, align 32
@raydium_i2c_fw_write_page._entry_ptr = internal global ptr @raydium_i2c_fw_write_page._entry, section ".printk_index", align 4
@raydium_i2c_leave_bl.leave_cmd = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\05\00", [30 x i8] zeroinitializer }, align 32
@raydium_i2c_leave_bl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.3, i32 600, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"leave bl command failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raydium_i2c_leave_bl\00", [43 x i8] zeroinitializer }, align 32
@raydium_i2c_leave_bl._entry_ptr = internal global ptr @raydium_i2c_leave_bl._entry, section ".printk_index", align 4
@raydium_i2c_fw_trigger.cmd = internal constant { [5 x [11 x i8]], [41 x i8] } { [5 x [11 x i8]] [[11 x i8] c"\00\09q\0C\09\00P\D7\00\00\00", [11 x i8] c"\00\09q\04\09\00P\A5\00\00\00", [11 x i8] c"\00\09q\04\09\00P\00\00\00\00", [11 x i8] c"\00\09q\04\09\00P\A5\00\00\00", [11 x i8] c"\00\09q\0C\09\00P\00\00\00\00"], [41 x i8] zeroinitializer }, align 32
@raydium_i2c_fw_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fw trigger failed at step %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"raydium_i2c_fw_trigger\00", [41 x i8] zeroinitializer }, align 32
@raydium_i2c_fw_trigger._entry_ptr = internal global ptr @raydium_i2c_fw_trigger._entry, section ".printk_index", align 4
@__const.raydium_i2c_write_checksum.checksum_cmd = private unnamed_addr constant [7 x i8] c"\00\05m\00\00\00\00", align 1
@raydium_i2c_write_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to write checksum: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"raydium_i2c_write_checksum\00", [37 x i8] zeroinitializer }, align 32
@raydium_i2c_write_checksum._entry_ptr = internal global ptr @raydium_i2c_write_checksum._entry, section ".printk_index", align 4
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"boot_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#04x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"calibrate\00", [22 x i8] zeroinitializer }, align 32
@raydium_i2c_calibrate_store.cal_cmd = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\01\9E", [29 x i8] zeroinitializer }, align 32
@raydium_i2c_calibrate_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.3, i32 994, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"calibrate command failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"raydium_i2c_calibrate_store\00", [36 x i8] zeroinitializer }, align 32
@raydium_i2c_calibrate_store._entry_ptr = internal global ptr @raydium_i2c_calibrate_store._entry, section ".printk_index", align 4
@raydium_enter_sleep.sleep_cmd = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Z\FF\00\0F", [28 x i8] zeroinitializer }, align 32
@raydium_enter_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.3, i32 1209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sleep command failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"raydium_enter_sleep\00", [44 x i8] zeroinitializer }, align 32
@raydium_enter_sleep._entry_ptr = internal global ptr @raydium_enter_sleep._entry, section ".printk_index", align 4
@raydium_i2c_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"software reset failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raydium_i2c_sw_reset\00", [43 x i8] zeroinitializer }, align 32
@raydium_i2c_sw_reset._entry_ptr = internal global ptr @raydium_i2c_sw_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 98, i64 102]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 8, i64 98, i64 102]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 98, i64 102]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 98, i64 102]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 8, i64 98, i64 102]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 8, i64 98, i64 102]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"raydium_i2c_driver\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1279, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1283, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"raydium_of_match\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1272, i32 34 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"raydium_i2c_pm_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1253, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant [15 x i8] c"raydium_i2c_id\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1256, i32 35 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1075, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1084, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1089, i32 46 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1093, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1098, i32 47 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1102, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1107, i32 57 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1112, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1124, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1132, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1138, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1149, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1153, i32 20 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1169, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1176, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1185, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [28 x i8] c"raydium_i2c_attribute_group\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1015, i32 37 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1192, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1030, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1038, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 416, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant [9 x i8] c"get_hwid\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 297, i32 18 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 306, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 312, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 318, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 219, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 352, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 363, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 381, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 917, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [23 x i8] c"raydium_i2c_attributes\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1006, i32 26 }
@___asan_gen_.369 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [19 x i8] c"dev_attr_boot_mode\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c"dev_attr_fw_version\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [20 x i8] c"dev_attr_hw_version\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [19 x i8] c"dev_attr_calibrate\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1003, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 821, i32 34 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 826, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 830, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 838, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 845, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 706, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 712, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 722, i32 6 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 734, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 751, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 776, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 781, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 786, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 793, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 801, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 578, i32 18 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 584, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 484, i32 18 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 488, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 495, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 501, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant [7 x i8] c"ack_ok\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 441, i32 18 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 468, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 631, i32 18 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 637, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 563, i32 18 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 569, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 509, i32 18 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 525, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 669, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant [10 x i8] c"leave_cmd\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 594, i32 18 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 600, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 537, i32 18 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 551, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 621, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1002, i32 8 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 954, i32 22 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 956, i32 5 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 956, i32 16 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1000, i32 8 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 935, i32 22 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1001, i32 8 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 944, i32 22 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1004, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant [8 x i8] c"cal_cmd\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 984, i32 18 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 994, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant [10 x i8] c"sleep_cmd\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1202, i32 18 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 1208, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.658 = private constant [46 x i8] c"../drivers/input/touchscreen/raydium_i2c_ts.c\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 285, i32 3 }
@llvm.compiler.used = appending global [224 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_raydium_i2c_driver_exit, ptr @__initcall__kmod_raydium_i2c_ts__302_1289_raydium_i2c_driver_init6, ptr @raydium_enter_sleep._entry, ptr @raydium_enter_sleep._entry_ptr, ptr @raydium_i2c_bl_chk_state._entry, ptr @raydium_i2c_bl_chk_state._entry_ptr, ptr @raydium_i2c_boot_trigger._entry, ptr @raydium_i2c_boot_trigger._entry_ptr, ptr @raydium_i2c_calibrate_store._entry, ptr @raydium_i2c_calibrate_store._entry_ptr, ptr @raydium_i2c_check_path._entry, ptr @raydium_i2c_check_path._entry_ptr, ptr @raydium_i2c_disable_watch_dog._entry, ptr @raydium_i2c_disable_watch_dog._entry_ptr, ptr @raydium_i2c_do_update_firmware._entry, ptr @raydium_i2c_do_update_firmware._entry.100, ptr @raydium_i2c_do_update_firmware._entry.103, ptr @raydium_i2c_do_update_firmware._entry.106, ptr @raydium_i2c_do_update_firmware._entry.84, ptr @raydium_i2c_do_update_firmware._entry.87, ptr @raydium_i2c_do_update_firmware._entry.90, ptr @raydium_i2c_do_update_firmware._entry.93, ptr @raydium_i2c_do_update_firmware._entry.96, ptr @raydium_i2c_do_update_firmware._entry_ptr, ptr @raydium_i2c_do_update_firmware._entry_ptr.102, ptr @raydium_i2c_do_update_firmware._entry_ptr.105, ptr @raydium_i2c_do_update_firmware._entry_ptr.108, ptr @raydium_i2c_do_update_firmware._entry_ptr.86, ptr @raydium_i2c_do_update_firmware._entry_ptr.89, ptr @raydium_i2c_do_update_firmware._entry_ptr.92, ptr @raydium_i2c_do_update_firmware._entry_ptr.95, ptr @raydium_i2c_do_update_firmware._entry_ptr.98, ptr @raydium_i2c_driver_exit, ptr @raydium_i2c_enter_bl._entry, ptr @raydium_i2c_enter_bl._entry_ptr, ptr @raydium_i2c_fw_trigger._entry, ptr @raydium_i2c_fw_trigger._entry_ptr, ptr @raydium_i2c_fw_update._entry, ptr @raydium_i2c_fw_update._entry.76, ptr @raydium_i2c_fw_update._entry.79, ptr @raydium_i2c_fw_update._entry_ptr, ptr @raydium_i2c_fw_update._entry_ptr.78, ptr @raydium_i2c_fw_update._entry_ptr.81, ptr @raydium_i2c_fw_write_page._entry, ptr @raydium_i2c_fw_write_page._entry_ptr, ptr @raydium_i2c_initialize._entry, ptr @raydium_i2c_initialize._entry_ptr, ptr @raydium_i2c_irq._entry, ptr @raydium_i2c_irq._entry_ptr, ptr @raydium_i2c_leave_bl._entry, ptr @raydium_i2c_leave_bl._entry_ptr, ptr @raydium_i2c_power_on._entry, ptr @raydium_i2c_power_on._entry.46, ptr @raydium_i2c_power_on._entry_ptr, ptr @raydium_i2c_power_on._entry_ptr.48, ptr @raydium_i2c_probe._entry, ptr @raydium_i2c_probe._entry.12, ptr @raydium_i2c_probe._entry.16, ptr @raydium_i2c_probe._entry.19, ptr @raydium_i2c_probe._entry.22, ptr @raydium_i2c_probe._entry.25, ptr @raydium_i2c_probe._entry.28, ptr @raydium_i2c_probe._entry.32, ptr @raydium_i2c_probe._entry.35, ptr @raydium_i2c_probe._entry.38, ptr @raydium_i2c_probe._entry.41, ptr @raydium_i2c_probe._entry.8, ptr @raydium_i2c_probe._entry_ptr, ptr @raydium_i2c_probe._entry_ptr.10, ptr @raydium_i2c_probe._entry_ptr.14, ptr @raydium_i2c_probe._entry_ptr.18, ptr @raydium_i2c_probe._entry_ptr.21, ptr @raydium_i2c_probe._entry_ptr.24, ptr @raydium_i2c_probe._entry_ptr.27, ptr @raydium_i2c_probe._entry_ptr.30, ptr @raydium_i2c_probe._entry_ptr.34, ptr @raydium_i2c_probe._entry_ptr.37, ptr @raydium_i2c_probe._entry_ptr.40, ptr @raydium_i2c_probe._entry_ptr.43, ptr @raydium_i2c_query_ts_bootloader_info._entry, ptr @raydium_i2c_query_ts_bootloader_info._entry.53, ptr @raydium_i2c_query_ts_bootloader_info._entry.56, ptr @raydium_i2c_query_ts_bootloader_info._entry_ptr, ptr @raydium_i2c_query_ts_bootloader_info._entry_ptr.55, ptr @raydium_i2c_query_ts_bootloader_info._entry_ptr.58, ptr @raydium_i2c_query_ts_info._entry, ptr @raydium_i2c_query_ts_info._entry.66, ptr @raydium_i2c_query_ts_info._entry_ptr, ptr @raydium_i2c_query_ts_info._entry_ptr.68, ptr @raydium_i2c_send._entry, ptr @raydium_i2c_send._entry_ptr, ptr @raydium_i2c_sw_reset._entry, ptr @raydium_i2c_sw_reset._entry_ptr, ptr @raydium_i2c_write_checksum._entry, ptr @raydium_i2c_write_checksum._entry_ptr, ptr @raydium_i2c_write_object._entry, ptr @raydium_i2c_write_object._entry.113, ptr @raydium_i2c_write_object._entry.116, ptr @raydium_i2c_write_object._entry_ptr, ptr @raydium_i2c_write_object._entry_ptr.115, ptr @raydium_i2c_write_object._entry_ptr.118, ptr @raydium_i2c_driver, ptr @.str, ptr @raydium_of_match, ptr @raydium_i2c_pm_ops, ptr @raydium_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @raydium_i2c_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @raydium_i2c_attribute_group, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @raydium_i2c_query_ts_bootloader_info.get_hwid, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @raydium_i2c_attributes, ptr @dev_attr_update_fw, ptr @dev_attr_boot_mode, ptr @dev_attr_fw_version, ptr @dev_attr_hw_version, ptr @dev_attr_calibrate, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @raydium_i2c_enter_bl.cal_cmd, ptr @.str.109, ptr @.str.110, ptr @raydium_i2c_write_object.cmd, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @raydium_i2c_bl_chk_state.ack_ok, ptr @.str.119, ptr @.str.120, ptr @raydium_i2c_disable_watch_dog.cmd, ptr @.str.121, ptr @.str.122, ptr @raydium_i2c_check_path.cmd, ptr @.str.123, ptr @.str.124, ptr @raydium_i2c_boot_trigger.cmd, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @raydium_i2c_leave_bl.leave_cmd, ptr @.str.129, ptr @.str.130, ptr @raydium_i2c_fw_trigger.cmd, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @raydium_i2c_calibrate_store.cal_cmd, ptr @.str.144, ptr @.str.145, ptr @raydium_enter_sleep.sleep_cmd, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], section "llvm.metadata"
@0 = internal global [168 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_power_on._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_query_ts_bootloader_info.get_hwid to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_query_ts_bootloader_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_query_ts_bootloader_info._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_query_ts_bootloader_info._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_query_ts_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_query_ts_info._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_attributes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_boot_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_calibrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_fw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_fw_update._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_fw_update._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_do_update_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_do_update_firmware._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_do_update_firmware._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_do_update_firmware._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_do_update_firmware._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_do_update_firmware._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_do_update_firmware._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_do_update_firmware._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_do_update_firmware._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_enter_bl.cal_cmd to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_enter_bl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_write_object.cmd to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_write_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_write_object._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_write_object._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_bl_chk_state.ack_ok to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_bl_chk_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_disable_watch_dog.cmd to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_disable_watch_dog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_check_path.cmd to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_check_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_boot_trigger.cmd to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_boot_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_fw_write_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_leave_bl.leave_cmd to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_leave_bl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_fw_trigger.cmd to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_fw_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_write_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_calibrate_store.cal_cmd to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_calibrate_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_enter_sleep.sleep_cmd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_enter_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_i2c_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @raydium_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @raydium_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @raydium_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %dummy = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %dummy) #10
  %0 = call ptr @memset(ptr %dummy, i32 255, i32 34)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #10
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #10
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %sysfs_mutex = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %sysfs_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @raydium_i2c_probe.__key) #10
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call11 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %avdd = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %avdd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %avdd, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end23

if.then14:                                        ; preds = %do.body6
  %cmp.not = icmp eq ptr %call11, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then14.cleanup_crit_edge, label %do.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %10) #13
  br label %cleanup

if.end23:                                         ; preds = %do.body6
  %call25 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %vccio = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %vccio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call25, ptr %vccio, align 4
  %cmp.i244 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %if.then28, label %if.end38

if.then28:                                        ; preds = %if.end23
  %cmp31.not = icmp eq ptr %call25, inttoptr (i32 -517 to ptr)
  br i1 %cmp31.not, label %if.then28.cleanup_crit_edge, label %do.end35

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %12) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end23
  %call40 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 3) #10
  %reset_gpio = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call40, ptr %reset_gpio, align 4
  %cmp.i245 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %if.then43, label %if.end53

if.then43:                                        ; preds = %if.end38
  %cmp46.not = icmp eq ptr %call40, inttoptr (i32 -517 to ptr)
  br i1 %cmp46.not, label %if.then43.cleanup_crit_edge, label %do.end50

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %14) #13
  br label %cleanup

if.end53:                                         ; preds = %if.end38
  %call54 = tail call fastcc i32 @raydium_i2c_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %call.i246 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @raydium_i2c_power_off, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool.not.i = icmp eq i32 %call.i246, 0
  br i1 %tobool.not.i, label %if.end66, label %if.then.i

if.then.i:                                        ; preds = %if.end57
  %15 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpio, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end64_crit_edge, label %if.then.i.i

if.then.i.do.end64_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %16, i32 noundef 1) #10
  %17 = ptrtoint ptr %vccio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vccio, align 4
  %call.i.i247 = tail call i32 @regulator_disable(ptr noundef %18) #10
  %19 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %avdd, align 4
  %call2.i.i = tail call i32 @regulator_disable(ptr noundef %20) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then.i.i, %if.then.i.do.end64_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call.i246) #13
  br label %cleanup

if.end66:                                         ; preds = %if.end57
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr, align 2
  %call68 = call i32 @i2c_smbus_xfer(ptr noundef %22, i16 noundef zeroext %24, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %dummy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end73, label %if.end75

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #13
  br label %cleanup

if.end75:                                         ; preds = %if.end66
  %call76 = call fastcc i32 @raydium_i2c_initialize(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call76) #13
  br label %cleanup

if.end83:                                         ; preds = %if.end75
  %pkg_size = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %pkg_size to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pkg_size, align 2
  %conv = zext i8 %26 to i32
  %call85 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %conv, i32 noundef 3264) #10
  %report_data = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %report_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call85, ptr %report_data, align 4
  %tobool87.not = icmp eq ptr %call85, null
  br i1 %tobool87.not, label %if.end83.cleanup_crit_edge, label %if.end89

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end89:                                         ; preds = %if.end83
  %call91 = call ptr @devm_input_allocate_device(ptr noundef %dev) #10
  %input = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call91, ptr %input, align 4
  %tobool93.not = icmp eq ptr %call91, null
  br i1 %tobool93.not, label %do.end97, label %if.end99

do.end97:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #13
  br label %cleanup

if.end99:                                         ; preds = %if.end89
  %29 = ptrtoint ptr %call91 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.31, ptr %call91, align 8
  %30 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input, align 4
  %id102 = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %id102 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 24, ptr %id102, align 4
  %33 = load ptr, ptr %input, align 4
  %x_max = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 5, i32 6
  %34 = ptrtoint ptr %x_max to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %x_max, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv104 = zext i16 %36 to i32
  call void @input_set_abs_params(ptr noundef %33, i32 noundef 53, i32 noundef 0, i32 noundef %conv104, i32 noundef 0, i32 noundef 0) #10
  %37 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input, align 4
  %y_max = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 5, i32 7
  %39 = ptrtoint ptr %y_max to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %y_max, align 4
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %conv107 = zext i16 %41 to i32
  call void @input_set_abs_params(ptr noundef %38, i32 noundef 54, i32 noundef 0, i32 noundef %conv107, i32 noundef 0, i32 noundef 0) #10
  %42 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input, align 4
  %x_res = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 5, i32 8
  %44 = ptrtoint ptr %x_res to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %x_res, align 2
  call void @input_alloc_absinfo(ptr noundef %43) #10
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 26
  %46 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i248 = icmp eq ptr %47, null
  br i1 %tobool.not.i248, label %if.end99.input_abs_set_res.exit_crit_edge, label %if.then.i249

if.end99.input_abs_set_res.exit_crit_edge:        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_set_res.exit

if.then.i249:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %conv110 = zext i8 %45 to i32
  %resolution.i = getelementptr %struct.input_absinfo, ptr %47, i32 53, i32 5
  %48 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv110, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i249, %if.end99.input_abs_set_res.exit_crit_edge
  %49 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input, align 4
  %y_res = getelementptr inbounds %struct.raydium_data, ptr %call.i, i32 0, i32 5, i32 9
  %51 = ptrtoint ptr %y_res to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %y_res, align 1
  call void @input_alloc_absinfo(ptr noundef %50) #10
  %absinfo.i250 = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 26
  %53 = ptrtoint ptr %absinfo.i250 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %absinfo.i250, align 8
  %tobool.not.i251 = icmp eq ptr %54, null
  br i1 %tobool.not.i251, label %input_abs_set_res.exit.input_abs_set_res.exit254_crit_edge, label %if.then.i253

input_abs_set_res.exit.input_abs_set_res.exit254_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_set_res.exit254

if.then.i253:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv113 = zext i8 %52 to i32
  %resolution.i252 = getelementptr %struct.input_absinfo, ptr %54, i32 54, i32 5
  %55 = ptrtoint ptr %resolution.i252 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv113, ptr %resolution.i252, align 4
  br label %input_abs_set_res.exit254

input_abs_set_res.exit254:                        ; preds = %if.then.i253, %input_abs_set_res.exit.input_abs_set_res.exit254_crit_edge
  %56 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %57, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #10
  %58 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %59, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #10
  %60 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %input, align 4
  %call117 = call i32 @input_mt_init_slots(ptr noundef %61, i32 noundef 10, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end124, label %do.end122

do.end122:                                        ; preds = %input_abs_set_res.exit254
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call117) #13
  br label %cleanup

if.end124:                                        ; preds = %input_abs_set_res.exit254
  %62 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input, align 4
  %call126 = call i32 @input_register_device(ptr noundef %63) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end133, label %do.end131

do.end131:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call126) #13
  br label %cleanup

if.end133:                                        ; preds = %if.end124
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %name135 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call136 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %65, ptr noundef null, ptr noundef nonnull @raydium_i2c_irq, i32 noundef 8192, ptr noundef %name135, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end143, label %do.end141

do.end141:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #13
  br label %cleanup

if.end143:                                        ; preds = %if.end133
  %call145 = call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @raydium_i2c_attribute_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end143.cleanup_crit_edge, label %do.end150

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end150:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call145) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end150, %if.end143.cleanup_crit_edge, %do.end141, %do.end131, %do.end122, %do.end97, %if.end83.cleanup_crit_edge, %do.end81, %do.end73, %do.end64, %if.end53.cleanup_crit_edge, %do.end50, %if.then43.cleanup_crit_edge, %do.end35, %if.then28.cleanup_crit_edge, %do.end20, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i246, %do.end64 ], [ -6, %do.end73 ], [ %call76, %do.end81 ], [ %call117, %do.end122 ], [ %call126, %do.end131 ], [ %call136, %do.end141 ], [ %call145, %do.end150 ], [ -12, %do.end97 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %10, %do.end20 ], [ -517, %if.then14.cleanup_crit_edge ], [ %12, %do.end35 ], [ -517, %if.then28.cleanup_crit_edge ], [ %14, %do.end50 ], [ -517, %if.then43.cleanup_crit_edge ], [ %call54, %if.end53.cleanup_crit_edge ], [ -12, %if.end83.cleanup_crit_edge ], [ 0, %if.end143.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %dummy) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raydium_i2c_power_on(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 4
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 1) #10
  %avdd = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 2
  %2 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %avdd, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %call) #13
  br label %release_reset_gpio.thread

if.end4:                                          ; preds = %if.end
  %vccio = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 3
  %6 = ptrtoint ptr %vccio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vccio, align 4
  %call5 = tail call i32 @regulator_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end19, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %avdd, align 4
  %call9 = tail call i32 @regulator_disable(ptr noundef %9) #10
  %10 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ts, align 4
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.47, i32 noundef %call5) #13
  br label %release_reset_gpio.thread

release_reset_gpio.thread:                        ; preds = %if.then7, %do.end
  %error.0.ph = phi i32 [ %call5, %if.then7 ], [ %call, %do.end ]
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 107374000) #10
  %15 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 0) #10
  tail call void @msleep(i32 noundef 50) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %release_reset_gpio.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 0, %entry.cleanup_crit_edge ], [ %error.0.ph, %release_reset_gpio.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raydium_i2c_power_off(ptr nocapture noundef readonly %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.raydium_data, ptr %_data, i32 0, i32 4
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 1) #10
  %vccio = getelementptr inbounds %struct.raydium_data, ptr %_data, i32 0, i32 3
  %2 = ptrtoint ptr %vccio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vccio, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %3) #10
  %avdd = getelementptr inbounds %struct.raydium_data, ptr %_data, i32 0, i32 2
  %4 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %avdd, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raydium_i2c_initialize(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %reg_addr.i.i28 = alloca i8, align 1
  %header.i.i29 = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i.i30 = alloca [3 x %struct.i2c_msg], align 4
  %rbuf.i = alloca [5 x i8], align 1
  %reg_addr.i.i = alloca i8, align 1
  %header.i.i = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i.i = alloca [3 x %struct.i2c_msg], align 4
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %2 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i.i, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 1
  %len4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1, i32 1
  %len8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1, i32 2
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1, i32 3
  %arrayinit.element10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2, i32 1
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2, i32 2
  %buf16.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2, i32 3
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %boot_mode9.i = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 12
  call void @msleep(i32 noundef 100) #10
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %addr3.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %6 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 68, ptr %reg_addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i.i) #10
  %7 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -86, ptr %header.i.i, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 68, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i.i) #10
  %9 = call ptr @memset(ptr %len4.i.i, i32 255, i32 28)
  %10 = ptrtoint ptr %addr3.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr3.i.i, align 2
  %12 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %xfer.i.i, align 4
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %14 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 5, ptr %len4.i.i, align 4
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %header.i.i, ptr %buf.i.i, align 4
  %16 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %11, ptr %arrayinit.element.i.i, align 4
  %17 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags7.i.i, align 2
  %18 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len8.i.i, align 4
  %19 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg_addr.i.i, ptr %buf9.i.i, align 4
  %20 = ptrtoint ptr %arrayinit.element10.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %11, ptr %arrayinit.element10.i.i, align 4
  %21 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags13.i.i, align 2
  %22 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 4, ptr %len14.i.i, align 4
  %23 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i, ptr %buf16.i.i, align 4
  %24 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef %arrayinit.element.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp1.i.i.i, label %if.end.i.i, label %if.end.i.i.i, !prof !329

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %spec.select = select i1 %cmp3.i.i.i, i32 %call.i.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %spec.select) #13
  br label %for.inc

if.end.i.i:                                       ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf.i, align 4
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %if.end [
    i8 98, label %if.end.i.i.if.end.thread_crit_edge
    i8 102, label %if.then8.i
  ]

if.end.i.i.if.end.thread_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.then8.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then8.i, %if.end.i.i.if.end.thread_crit_edge
  %.sink = phi i32 [ 0, %if.then8.i ], [ 1, %if.end.i.i.if.end.thread_crit_edge ]
  %29 = ptrtoint ptr %boot_mode9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %boot_mode9.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %if.end10thread-pre-split

if.end:                                           ; preds = %if.end.i.i
  %30 = ptrtoint ptr %boot_mode9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %boot_mode9.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %switch = icmp ult i32 %.pr, 2
  br i1 %switch, label %if.end.if.end10_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.i.i.i
  call void @msleep(i32 noundef 100) #10
  %31 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %addr3.i.i.1 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 1
  %adapter.i.i.i.1 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %34 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 68, ptr %reg_addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i.i) #10
  %35 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -86, ptr %header.i.i, align 1
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 68, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i.i) #10
  %37 = call ptr @memset(ptr %len4.i.i, i32 255, i32 28)
  %38 = ptrtoint ptr %addr3.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr3.i.i.1, align 2
  %40 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %xfer.i.i, align 4
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i.i, align 2
  %42 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 5, ptr %len4.i.i, align 4
  %43 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %header.i.i, ptr %buf.i.i, align 4
  %44 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %39, ptr %arrayinit.element.i.i, align 4
  %45 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags7.i.i, align 2
  %46 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %len8.i.i, align 4
  %47 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %reg_addr.i.i, ptr %buf9.i.i, align 4
  %48 = ptrtoint ptr %arrayinit.element10.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %39, ptr %arrayinit.element10.i.i, align 4
  %49 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags13.i.i, align 2
  %50 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 4, ptr %len14.i.i, align 4
  %51 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i, ptr %buf16.i.i, align 4
  %52 = ptrtoint ptr %adapter.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i.i.i.1, align 8
  %call.i.i.i.1 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef %arrayinit.element.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.1)
  %cmp1.i.i.i.1 = icmp eq i32 %call.i.i.i.1, 2
  br i1 %cmp1.i.i.i.1, label %if.end.i.i.1, label %if.end.i.i.i.1, !prof !329

if.end.i.i.i.1:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %cmp3.i.i.i.1 = icmp slt i32 %call.i.i.i.1, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %spec.select.1 = select i1 %cmp3.i.i.i.1, i32 %call.i.i.i.1, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %spec.select.1) #13
  br label %for.inc.1

if.end.i.i.1:                                     ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %buf.i, align 4
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %55, label %if.end.1 [
    i8 98, label %if.then3.i.1
    i8 102, label %if.end.i.i.1.if.end.1.thread_crit_edge
  ]

if.end.i.i.1.if.end.1.thread_crit_edge:           ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.thread

if.then3.i.1:                                     ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.thread

if.end.1.thread:                                  ; preds = %if.then3.i.1, %if.end.i.i.1.if.end.1.thread_crit_edge
  %.sink75 = phi i32 [ 1, %if.then3.i.1 ], [ 0, %if.end.i.i.1.if.end.1.thread_crit_edge ]
  %57 = ptrtoint ptr %boot_mode9.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink75, ptr %boot_mode9.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %if.end10thread-pre-split

if.end.1:                                         ; preds = %if.end.i.i.1
  %58 = ptrtoint ptr %boot_mode9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr60 = load i32, ptr %boot_mode9.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr60)
  %switch.1 = icmp ult i32 %.pr60, 2
  br i1 %switch.1, label %if.end.1.if.end10_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1.if.end10_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %if.end.i.i.i.1
  call void @msleep(i32 noundef 100) #10
  %59 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %addr3.i.i.2 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 1
  %adapter.i.i.i.2 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %62 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 68, ptr %reg_addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i.i) #10
  %63 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -86, ptr %header.i.i, align 1
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 68, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i.i) #10
  %65 = call ptr @memset(ptr %len4.i.i, i32 255, i32 28)
  %66 = ptrtoint ptr %addr3.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr3.i.i.2, align 2
  %68 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %xfer.i.i, align 4
  %69 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i.i, align 2
  %70 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 5, ptr %len4.i.i, align 4
  %71 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %header.i.i, ptr %buf.i.i, align 4
  %72 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %67, ptr %arrayinit.element.i.i, align 4
  %73 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags7.i.i, align 2
  %74 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %len8.i.i, align 4
  %75 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %reg_addr.i.i, ptr %buf9.i.i, align 4
  %76 = ptrtoint ptr %arrayinit.element10.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %67, ptr %arrayinit.element10.i.i, align 4
  %77 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %flags13.i.i, align 2
  %78 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 4, ptr %len14.i.i, align 4
  %79 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buf.i, ptr %buf16.i.i, align 4
  %80 = ptrtoint ptr %adapter.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter.i.i.i.2, align 8
  %call.i.i.i.2 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef %arrayinit.element.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.2)
  %cmp1.i.i.i.2 = icmp eq i32 %call.i.i.i.2, 2
  br i1 %cmp1.i.i.i.2, label %if.end.i.i.2, label %for.inc.2, !prof !329

if.end.i.i.2:                                     ; preds = %for.inc.1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %82 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %buf.i, align 4
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %83, label %if.end.2 [
    i8 98, label %if.then3.i.2
    i8 102, label %if.end.i.i.2.if.end.2.thread_crit_edge
  ]

if.end.i.i.2.if.end.2.thread_crit_edge:           ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.thread

if.then3.i.2:                                     ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.thread

if.end.2.thread:                                  ; preds = %if.then3.i.2, %if.end.i.i.2.if.end.2.thread_crit_edge
  %.sink76 = phi i32 [ 1, %if.then3.i.2 ], [ 0, %if.end.i.i.2.if.end.2.thread_crit_edge ]
  %85 = ptrtoint ptr %boot_mode9.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.sink76, ptr %boot_mode9.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %if.end10thread-pre-split

if.end.2:                                         ; preds = %if.end.i.i.2
  %86 = ptrtoint ptr %boot_mode9.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr62 = load i32, ptr %boot_mode9.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr62)
  %switch.2 = icmp ult i32 %.pr62, 2
  br i1 %switch.2, label %if.end.2.if.end10_crit_edge, label %if.end.2.if.else_crit_edge

if.end.2.if.else_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end.2.if.end10_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.2)
  %cmp3.i.i.i.2 = icmp slt i32 %call.i.i.i.2, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %spec.select.2 = select i1 %cmp3.i.i.i.2, i32 %call.i.i.i.2, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %spec.select.2) #13
  %87 = ptrtoint ptr %boot_mode9.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %boot_mode9.i, align 4
  br label %if.then13

if.end10thread-pre-split:                         ; preds = %if.end.2.thread, %if.end.1.thread, %if.end.thread
  %88 = ptrtoint ptr %boot_mode9.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr66 = load i32, ptr %boot_mode9.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.end.2.if.end10_crit_edge, %if.end.1.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %89 = phi i32 [ %.pr66, %if.end10thread-pre-split ], [ %.pr, %if.end.if.end10_crit_edge ], [ %.pr60, %if.end.1.if.end10_crit_edge ], [ %.pr62, %if.end.2.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp12 = icmp eq i32 %89, 1
  br i1 %cmp12, label %if.end10.if.then13_crit_edge, label %if.end10.if.else_crit_edge

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %if.end10.if.then13_crit_edge, %for.inc.2
  %error.15670 = phi i32 [ %spec.select.2, %for.inc.2 ], [ 0, %if.end10.if.then13_crit_edge ]
  %90 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rbuf.i) #10
  %92 = call ptr @memset(ptr %rbuf.i, i32 0, i32 5)
  %call.i = call fastcc i32 @raydium_i2c_send(ptr noundef %91, i32 noundef 17, ptr noundef nonnull @raydium_i2c_query_ts_bootloader_info.get_hwid, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.51, i32 noundef %call.i) #13
  br label %raydium_i2c_query_ts_bootloader_info.exit

if.end.i:                                         ; preds = %if.then13
  %call2.i = call fastcc i32 @raydium_i2c_send(ptr noundef %91, i32 noundef 34, ptr noundef nonnull %rbuf.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.54, i32 noundef %call2.i) #13
  br label %raydium_i2c_query_ts_bootloader_info.exit

if.end9.i:                                        ; preds = %if.end.i
  %93 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i.i29, i32 0, i32 1
  %addr3.i.i31 = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 1
  %flags.i.i32 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 0, i32 1
  %len4.i.i33 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 0, i32 2
  %buf.i.i34 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 0, i32 3
  %arrayinit.element.i.i35 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 1
  %flags7.i.i36 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 1, i32 1
  %len8.i.i37 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 1, i32 2
  %buf9.i.i38 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 1, i32 3
  %arrayinit.element10.i.i39 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 2
  %flags13.i.i40 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 2, i32 1
  %len14.i.i41 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 2, i32 2
  %buf16.i.i42 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i30, i32 2, i32 3
  %adapter.i.i.i43 = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i.i28) #10
  %94 = ptrtoint ptr %reg_addr.i.i28 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 51, ptr %reg_addr.i.i28, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i.i29) #10
  %95 = ptrtoint ptr %header.i.i29 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -86, ptr %header.i.i29, align 1
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 51, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i.i30) #10
  %97 = call ptr @memset(ptr %len4.i.i33, i32 255, i32 28)
  %98 = ptrtoint ptr %addr3.i.i31 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %addr3.i.i31, align 2
  %100 = ptrtoint ptr %xfer.i.i30 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %xfer.i.i30, align 4
  %101 = ptrtoint ptr %flags.i.i32 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %flags.i.i32, align 2
  %102 = ptrtoint ptr %len4.i.i33 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 5, ptr %len4.i.i33, align 4
  %103 = ptrtoint ptr %buf.i.i34 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %header.i.i29, ptr %buf.i.i34, align 4
  %104 = ptrtoint ptr %arrayinit.element.i.i35 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %99, ptr %arrayinit.element.i.i35, align 4
  %105 = ptrtoint ptr %flags7.i.i36 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags7.i.i36, align 2
  %106 = ptrtoint ptr %len8.i.i37 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1, ptr %len8.i.i37, align 4
  %107 = ptrtoint ptr %buf9.i.i38 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %reg_addr.i.i28, ptr %buf9.i.i38, align 4
  %108 = ptrtoint ptr %arrayinit.element10.i.i39 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %99, ptr %arrayinit.element10.i.i39, align 4
  %109 = ptrtoint ptr %flags13.i.i40 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 1, ptr %flags13.i.i40, align 2
  %110 = ptrtoint ptr %len14.i.i41 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 5, ptr %len14.i.i41, align 4
  %111 = ptrtoint ptr %buf16.i.i42 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %rbuf.i, ptr %buf16.i.i42, align 4
  %112 = ptrtoint ptr %adapter.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %adapter.i.i.i43, align 8
  %call.i.i.i44 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef %arrayinit.element.i.i35, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i44)
  %cmp1.i.i.i45 = icmp eq i32 %call.i.i.i44, 2
  br i1 %cmp1.i.i.i45, label %if.end.i.i49, label %if.end.i.i.i48, !prof !329

if.end.i.i.i48:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i44)
  %cmp3.i.i.i46 = icmp slt i32 %call.i.i.i44, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i30) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i29) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i28) #10
  %spec.select.i47 = select i1 %cmp3.i.i.i46, i32 %call.i.i.i44, i32 -5
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 4
  %add.ptr.i = getelementptr inbounds i8, ptr %rbuf.i, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.57, i32 noundef %spec.select.i47, ptr noundef %add.ptr.i) #13
  br label %if.end22.i

if.end.i.i49:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i30) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i29) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i28) #10
  %add.ptr20.i = getelementptr inbounds i8, ptr %rbuf.i, i32 1
  %114 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %add.ptr20.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end.i.i49, %if.end.i.i.i48
  %hw_ver.0.i = phi i32 [ -1, %if.end.i.i.i48 ], [ %115, %if.end.i.i49 ]
  %116 = call i32 @llvm.bswap.i32(i32 %hw_ver.0.i) #10
  %info.i = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 5
  %117 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %info.i, align 4
  %main_ver.i = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 5, i32 1
  %118 = ptrtoint ptr %main_ver.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -1, ptr %main_ver.i, align 4
  %sub_ver.i = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 5, i32 2
  %119 = ptrtoint ptr %sub_ver.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -1, ptr %sub_ver.i, align 1
  br label %raydium_i2c_query_ts_bootloader_info.exit

raydium_i2c_query_ts_bootloader_info.exit:        ; preds = %if.end22.i, %do.end7.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rbuf.i) #10
  br label %if.end16

if.else:                                          ; preds = %if.end10.if.else_crit_edge, %if.end.2.if.else_crit_edge
  call fastcc void @raydium_i2c_query_ts_info(ptr noundef %ts)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %raydium_i2c_query_ts_bootloader_info.exit
  %error.15669 = phi i32 [ 0, %if.else ], [ %error.15670, %raydium_i2c_query_ts_bootloader_info.exit ]
  ret i32 %error.15669
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_irq(i32 noundef %irq, ptr nocapture noundef readonly %_dev) #2 align 64 {
entry:
  %reg_addr.i = alloca i8, align 1
  %header.i = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i = alloca [3 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %boot_mode = getelementptr inbounds %struct.raydium_data, ptr %_dev, i32 0, i32 12
  %0 = ptrtoint ptr %boot_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %boot_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %report_data = getelementptr inbounds %struct.raydium_data, ptr %_dev, i32 0, i32 7
  %pkg_size = getelementptr inbounds %struct.raydium_data, ptr %_dev, i32 0, i32 11
  %2 = ptrtoint ptr %pkg_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pkg_size, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not43.i = icmp eq i8 %3, 0
  br i1 %tobool.not43.i, label %if.end.if.end2_crit_edge, label %while.body.lr.ph.i

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

while.body.lr.ph.i:                               ; preds = %if.end
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %report_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %report_data, align 4
  %data_bank_addr = getelementptr inbounds %struct.raydium_data, ptr %_dev, i32 0, i32 8
  %6 = ptrtoint ptr %data_bank_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_bank_addr, align 4
  %8 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_dev, align 4
  %10 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i, i32 0, i32 1
  %addr3.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 0, i32 1
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 0, i32 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 1
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 1, i32 1
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 1, i32 2
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 1, i32 3
  %arrayinit.element10.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 2
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 2, i32 1
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 2, i32 2
  %buf16.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 2, i32 3
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %len.addr.046.i = phi i32 [ %conv, %while.body.lr.ph.i ], [ %sub.i, %if.end.i.while.body.i_crit_edge ]
  %data.addr.045.i = phi ptr [ %5, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end.i.while.body.i_crit_edge ]
  %addr.addr.044.i = phi i32 [ %7, %while.body.lr.ph.i ], [ %add.i, %if.end.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i) #10
  %conv.i = trunc i32 %addr.addr.044.i to i8
  %11 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %reg_addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i) #10
  %12 = ptrtoint ptr %header.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -86, ptr %header.i, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %addr.addr.044.i, ptr %10, align 1
  %14 = call i32 @llvm.umin.i32(i32 %len.addr.046.i, i32 56) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i) #10
  %15 = call ptr @memset(ptr %len4.i, i32 255, i32 28)
  %16 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr3.i, align 2
  %18 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %xfer.i, align 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %20 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 5, ptr %len4.i, align 4
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %header.i, ptr %buf.i, align 4
  %22 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %17, ptr %arrayinit.element.i, align 4
  %23 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags7.i, align 2
  %24 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %len8.i, align 4
  %25 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %reg_addr.i, ptr %buf9.i, align 4
  %26 = ptrtoint ptr %arrayinit.element10.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %17, ptr %arrayinit.element10.i, align 4
  %27 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags13.i, align 2
  %conv15.i = trunc i32 %14 to i16
  %28 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv15.i, ptr %len14.i, align 4
  %29 = ptrtoint ptr %buf16.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %data.addr.045.i, ptr %buf16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %addr.addr.044.i)
  %cmp.i.i = icmp ult i32 %addr.addr.044.i, 256
  %cond.i.i = zext i1 %cmp.i.i to i32
  %sub.i.i = select i1 %cmp.i.i, i32 2, i32 3
  %30 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.i2c_msg, ptr %xfer.i, i32 %cond.i.i
  %call.i.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef %arrayidx.i.i, i32 noundef %sub.i.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %sub.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, %sub.i.i
  br i1 %cmp1.i.i, label %if.end.i, label %if.end.i.i, !prof !329

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i) #10
  br label %out

if.end.i:                                         ; preds = %while.body.i
  %sub.i = sub i32 %len.addr.046.i, %14
  %add.ptr.i = getelementptr i8, ptr %data.addr.045.i, i32 %14
  %add.i = add i32 %addr.addr.044.i, %14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i) #10
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end2_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.if.end2_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.end2:                                          ; preds = %if.end.i.if.end2_crit_edge, %if.end.if.end2_crit_edge
  %32 = ptrtoint ptr %report_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %report_data, align 4
  %report_size = getelementptr inbounds %struct.raydium_data, ptr %_dev, i32 0, i32 9
  %34 = ptrtoint ptr %report_size to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %report_size, align 4
  %idxprom = zext i8 %35 to i32
  %arrayidx = getelementptr i8, ptr %33, i32 %idxprom
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %arrayidx, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp9.not.i = icmp eq i8 %35, 0
  br i1 %cmp9.not.i, label %if.end2.raydium_calc_chksum.exit_crit_edge, label %if.end2.for.body.i_crit_edge

if.end2.for.body.i_crit_edge:                     ; preds = %if.end2
  br label %for.body.i

if.end2.raydium_calc_chksum.exit_crit_edge:       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_calc_chksum.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end2.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end2.for.body.i_crit_edge ]
  %checksum.010.i = phi i16 [ %add.i32, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %33, i32 %indvars.iv.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %conv3.i = zext i8 %40 to i16
  %add.i32 = add i16 %checksum.010.i, %conv3.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %idxprom
  br i1 %exitcond.not.i, label %for.body.i.raydium_calc_chksum.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.raydium_calc_chksum.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_calc_chksum.exit

raydium_calc_chksum.exit:                         ; preds = %for.body.i.raydium_calc_chksum.exit_crit_edge, %if.end2.raydium_calc_chksum.exit_crit_edge
  %checksum.0.lcssa.i = phi i16 [ 0, %if.end2.raydium_calc_chksum.exit_crit_edge ], [ %add.i32, %for.body.i.raydium_calc_chksum.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %checksum.0.lcssa.i)
  %cmp11.not = icmp eq i16 %38, %checksum.0.lcssa.i
  br i1 %cmp11.not, label %if.end19, label %do.end, !prof !329

do.end:                                           ; preds = %raydium_calc_chksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv10 = zext i16 %checksum.0.lcssa.i to i32
  %conv9 = zext i16 %38 to i32
  %41 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_dev, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %conv10, i32 noundef %conv9) #13
  br label %out

if.end19:                                         ; preds = %raydium_calc_chksum.exit
  %contact_size.i = getelementptr inbounds %struct.raydium_data, ptr %_dev, i32 0, i32 10
  %43 = ptrtoint ptr %contact_size.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %contact_size.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %35)
  %cmp75.not.i = icmp ugt i8 %44, %35
  br i1 %cmp75.not.i, label %if.end19.raydium_mt_event.exit_crit_edge, label %for.body.lr.ph.i

if.end19.raydium_mt_event.exit_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_mt_event.exit

for.body.lr.ph.i:                                 ; preds = %if.end19
  %input.i = getelementptr inbounds %struct.raydium_data, ptr %_dev, i32 0, i32 1
  br label %for.body.i34

for.body.i34:                                     ; preds = %cleanup.i.for.body.i34_crit_edge, %for.body.lr.ph.i
  %45 = phi i8 [ %44, %for.body.lr.ph.i ], [ %82, %cleanup.i.for.body.i34_crit_edge ]
  %i.076.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i34_crit_edge ]
  %conv1.i = zext i8 %45 to i32
  %46 = ptrtoint ptr %report_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %report_data, align 4
  %mul.i = mul i32 %i.076.i, %conv1.i
  %arrayidx.i33 = getelementptr i8, ptr %47, i32 %mul.i
  %48 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.i = icmp ne i8 %49, 0
  %50 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input.i, align 4
  call void @input_event(ptr noundef %51, i32 noundef 3, i32 noundef 47, i32 noundef %i.076.i) #10
  %52 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %input.i, align 4
  %call.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %53, i32 noundef 0, i1 noundef zeroext %tobool.i) #10
  br i1 %tobool.i, label %if.end.i35, label %for.body.i34.cleanup.i_crit_edge

for.body.i34.cleanup.i_crit_edge:                 ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i35:                                       ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %arrayidx.i33, i32 1
  %56 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %arrayidx10.i, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57) #10
  %conv12.i = zext i16 %58 to i32
  call void @input_event(ptr noundef %55, i32 noundef 3, i32 noundef 53, i32 noundef %conv12.i) #10
  %59 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %arrayidx.i33, i32 3
  %61 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %arrayidx14.i, align 1
  %63 = call i16 @llvm.bswap.i16(i16 %62) #10
  %conv16.i = zext i16 %63 to i32
  call void @input_event(ptr noundef %60, i32 noundef 3, i32 noundef 54, i32 noundef %conv16.i) #10
  %64 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input.i, align 4
  %arrayidx18.i = getelementptr i8, ptr %arrayidx.i33, i32 5
  %66 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %67 to i32
  call void @input_event(ptr noundef %65, i32 noundef 3, i32 noundef 58, i32 noundef %conv19.i) #10
  %arrayidx20.i = getelementptr i8, ptr %arrayidx.i33, i32 6
  %68 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %arrayidx.i33, i32 7
  %70 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx21.i, align 1
  %72 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %input.i, align 4
  %74 = call i8 @llvm.umax.i8(i8 %69, i8 %71) #10
  %75 = zext i8 %74 to i32
  call void @input_event(ptr noundef %73, i32 noundef 3, i32 noundef 48, i32 noundef %75) #10
  %76 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %input.i, align 4
  %78 = call i8 @llvm.umin.i8(i8 %69, i8 %71) #10
  %cond40.i = zext i8 %78 to i32
  call void @input_event(ptr noundef %77, i32 noundef 3, i32 noundef 49, i32 noundef %cond40.i) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i35, %for.body.i34.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.076.i, 1
  %79 = ptrtoint ptr %report_size to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %report_size, align 4
  %81 = ptrtoint ptr %contact_size.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %contact_size.i, align 1
  %83 = udiv i8 %80, %82
  %div.i = zext i8 %83 to i32
  %cmp.i = icmp ult i32 %inc.i, %div.i
  br i1 %cmp.i, label %cleanup.i.for.body.i34_crit_edge, label %cleanup.i.raydium_mt_event.exit_crit_edge

cleanup.i.raydium_mt_event.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_mt_event.exit

cleanup.i.for.body.i34_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i34

raydium_mt_event.exit:                            ; preds = %cleanup.i.raydium_mt_event.exit_crit_edge, %if.end19.raydium_mt_event.exit_crit_edge
  %input44.i = getelementptr inbounds %struct.raydium_data, ptr %_dev, i32 0, i32 1
  %84 = ptrtoint ptr %input44.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %input44.i, align 4
  call void @input_mt_sync_frame(ptr noundef %85) #10
  %86 = ptrtoint ptr %input44.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %input44.i, align 4
  call void @input_event(ptr noundef %87, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %out

out:                                              ; preds = %raydium_mt_event.exit, %do.end, %if.end.i.i, %entry.out_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @raydium_i2c_query_ts_info(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %reg_addr.i39 = alloca i8, align 1
  %header.i40 = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i41 = alloca [3 x %struct.i2c_msg], align 4
  %reg_addr.i1 = alloca i8, align 1
  %header.i2 = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i3 = alloca [3 x %struct.i2c_msg], align 4
  %reg_addr.i = alloca i8, align 1
  %header.i = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i = alloca [3 x %struct.i2c_msg], align 4
  %data_info = alloca %struct.raydium_data_info, align 8
  %query_bank_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_info) #10
  %2 = ptrtoint ptr %data_info to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %data_info, align 8, !annotation !330
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %query_bank_addr) #10
  %3 = ptrtoint ptr %query_bank_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %query_bank_addr, align 4, !annotation !330
  %4 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i, i32 0, i32 1
  %addr3.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 0, i32 1
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 0, i32 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 1
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 1, i32 1
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 1, i32 2
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 1, i32 3
  %arrayinit.element10.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 2
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 2, i32 1
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 2, i32 2
  %buf16.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 2, i32 3
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %report_data = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 7
  %pkg_size = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 11
  %pkg_size3 = getelementptr inbounds %struct.raydium_data_info, ptr %data_info, i32 0, i32 1
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %report_size = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 9
  %tp_info_size = getelementptr inbounds %struct.raydium_data_info, ptr %data_info, i32 0, i32 2
  %contact_size = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 10
  %data_bank_addr18 = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 8
  %5 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i2, i32 0, i32 1
  %flags.i5 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 0, i32 1
  %len4.i6 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 0, i32 2
  %buf.i7 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 0, i32 3
  %arrayinit.element.i8 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 1
  %flags7.i9 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 1, i32 1
  %len8.i10 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 1, i32 2
  %buf9.i11 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 1, i32 3
  %arrayinit.element10.i12 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 2
  %flags13.i13 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 2, i32 1
  %len14.i14 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 2, i32 2
  %buf16.i15 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i3, i32 2, i32 3
  %info = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 5
  %6 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i40, i32 0, i32 1
  %flags.i43 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 0, i32 1
  %len4.i44 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 0, i32 2
  %buf.i45 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 0, i32 3
  %arrayinit.element.i46 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 1
  %flags7.i47 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 1, i32 1
  %len8.i48 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 1, i32 2
  %buf9.i49 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 1, i32 3
  %arrayinit.element10.i50 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 2
  %flags13.i51 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 2, i32 1
  %len14.i52 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 2, i32 2
  %buf16.i53 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i41, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %retry_cnt.092 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i) #10
  %7 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 77, ptr %reg_addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i) #10
  %8 = ptrtoint ptr %header.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -86, ptr %header.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 77, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i) #10
  %10 = call ptr @memset(ptr %len4.i, i32 255, i32 28)
  %11 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr3.i, align 2
  %13 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %xfer.i, align 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 5, ptr %len4.i, align 4
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %header.i, ptr %buf.i, align 4
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %12, ptr %arrayinit.element.i, align 4
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags7.i, align 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %reg_addr.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %arrayinit.element10.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %12, ptr %arrayinit.element10.i, align 4
  %22 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags13.i, align 2
  %23 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 8, ptr %len14.i, align 4
  %24 = ptrtoint ptr %buf16.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data_info, ptr %buf16.i, align 4
  %25 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef %arrayinit.element.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp1.i.i, label %if.end.i, label %if.end.i.i, !prof !329

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i) #10
  %spec.select = select i1 %cmp3.i.i, i32 %call.i.i, i32 -5
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i) #10
  %27 = ptrtoint ptr %report_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %report_data, align 4
  %tobool2.not = icmp eq ptr %28, null
  br i1 %tobool2.not, label %if.end.i.if.else_crit_edge, label %land.lhs.true

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end.i
  %29 = ptrtoint ptr %pkg_size to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pkg_size, align 2
  %31 = ptrtoint ptr %pkg_size3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pkg_size3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp5.not = icmp eq i8 %30, %32
  br i1 %cmp5.not, label %land.lhs.true.if.else_crit_edge, label %do.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv4 = zext i8 %32 to i32
  %conv = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %conv, i32 noundef %conv4) #13
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.i.if.else_crit_edge
  %33 = ptrtoint ptr %pkg_size3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pkg_size3, align 4
  %35 = ptrtoint ptr %pkg_size to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %pkg_size, align 2
  %sub = add i8 %34, -2
  %36 = ptrtoint ptr %report_size to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %sub, ptr %report_size, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %do.end
  %37 = ptrtoint ptr %tp_info_size to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tp_info_size, align 1
  %39 = ptrtoint ptr %contact_size to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %contact_size, align 1
  %40 = ptrtoint ptr %data_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_info, align 8
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %data_bank_addr18 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %data_bank_addr18, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raydium_i2c_query_ts_info.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@raydium_i2c_query_ts_info, %if.then24)) #10
          to label %do.end33 [label %if.then24], !srcloc !331

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %data_bank_addr18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_bank_addr18, align 4
  %46 = ptrtoint ptr %report_size to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %report_size, align 4
  %conv28 = zext i8 %47 to i32
  %48 = ptrtoint ptr %contact_size to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %contact_size, align 1
  %conv30 = zext i8 %49 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raydium_i2c_query_ts_info.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %45, i32 noundef %conv28, i32 noundef %conv30) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then24, %if.end17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i1) #10
  %50 = ptrtoint ptr %reg_addr.i1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 43, ptr %reg_addr.i1, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i2) #10
  %51 = ptrtoint ptr %header.i2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -86, ptr %header.i2, align 1
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 43, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i3) #10
  %53 = call ptr @memset(ptr %len4.i6, i32 255, i32 28)
  %54 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr3.i, align 2
  %56 = ptrtoint ptr %xfer.i3 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %xfer.i3, align 4
  %57 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i5, align 2
  %58 = ptrtoint ptr %len4.i6 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 5, ptr %len4.i6, align 4
  %59 = ptrtoint ptr %buf.i7 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %header.i2, ptr %buf.i7, align 4
  %60 = ptrtoint ptr %arrayinit.element.i8 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %55, ptr %arrayinit.element.i8, align 4
  %61 = ptrtoint ptr %flags7.i9 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags7.i9, align 2
  %62 = ptrtoint ptr %len8.i10 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %len8.i10, align 4
  %63 = ptrtoint ptr %buf9.i11 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %reg_addr.i1, ptr %buf9.i11, align 4
  %64 = ptrtoint ptr %arrayinit.element10.i12 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %55, ptr %arrayinit.element10.i12, align 4
  %65 = ptrtoint ptr %flags13.i13 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %flags13.i13, align 2
  %66 = ptrtoint ptr %len14.i14 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 4, ptr %len14.i14, align 4
  %67 = ptrtoint ptr %buf16.i15 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %query_bank_addr, ptr %buf16.i15, align 4
  %68 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i26 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef %arrayinit.element.i8, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i26)
  %cmp1.i.i27 = icmp eq i32 %call.i.i26, 2
  br i1 %cmp1.i.i27, label %if.end.i36, label %if.end.i.i31, !prof !329

if.end.i.i31:                                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp3.i.i29 = icmp slt i32 %call.i.i26, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i3) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i2) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i1) #10
  %spec.select86 = select i1 %cmp3.i.i29, i32 %call.i.i26, i32 -5
  br label %for.inc

if.end.i36:                                       ; preds = %do.end33
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i3) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i2) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i1) #10
  %70 = ptrtoint ptr %query_bank_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %query_bank_addr, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i39) #10
  %conv.i58 = trunc i32 %72 to i8
  %73 = ptrtoint ptr %reg_addr.i39 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.i58, ptr %reg_addr.i39, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i40) #10
  %74 = ptrtoint ptr %header.i40 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -86, ptr %header.i40, align 1
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %72, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i41) #10
  %76 = call ptr @memset(ptr %len4.i44, i32 255, i32 28)
  %77 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %addr3.i, align 2
  %79 = ptrtoint ptr %xfer.i41 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %xfer.i41, align 4
  %80 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i43, align 2
  %81 = ptrtoint ptr %len4.i44 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 5, ptr %len4.i44, align 4
  %82 = ptrtoint ptr %buf.i45 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %header.i40, ptr %buf.i45, align 4
  %83 = ptrtoint ptr %arrayinit.element.i46 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %78, ptr %arrayinit.element.i46, align 4
  %84 = ptrtoint ptr %flags7.i47 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags7.i47, align 2
  %85 = ptrtoint ptr %len8.i48 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %len8.i48, align 4
  %86 = ptrtoint ptr %buf9.i49 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %reg_addr.i39, ptr %buf9.i49, align 4
  %87 = ptrtoint ptr %arrayinit.element10.i50 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %78, ptr %arrayinit.element10.i50, align 4
  %88 = ptrtoint ptr %flags13.i51 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %flags13.i51, align 2
  %89 = ptrtoint ptr %len14.i52 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 16, ptr %len14.i52, align 4
  %90 = ptrtoint ptr %buf16.i53 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %info, ptr %buf16.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %72)
  %cmp.i.i60 = icmp ult i32 %72, 256
  %cond.i.i61 = zext i1 %cmp.i.i60 to i32
  %sub.i.i62 = select i1 %cmp.i.i60, i32 2, i32 3
  %91 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter.i.i, align 8
  %arrayidx.i.i63 = getelementptr %struct.i2c_msg, ptr %xfer.i41, i32 %cond.i.i61
  %call.i.i64 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef %arrayidx.i.i63, i32 noundef %sub.i.i62) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i64, i32 %sub.i.i62)
  %cmp1.i.i65 = icmp eq i32 %call.i.i64, %sub.i.i62
  br i1 %cmp1.i.i65, label %if.end.i74, label %if.end.i.i69, !prof !329

if.end.i.i69:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %cmp3.i.i67 = icmp slt i32 %call.i.i64, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i41) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i40) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i39) #10
  %spec.select87 = select i1 %cmp3.i.i67, i32 %call.i.i64, i32 -5
  br label %for.inc

if.end.i74:                                       ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i41) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i40) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i39) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.i69, %if.end.i.i31, %if.end.i.i
  %error.1 = phi i32 [ %spec.select, %if.end.i.i ], [ %spec.select86, %if.end.i.i31 ], [ %spec.select87, %if.end.i.i69 ]
  %inc = add nuw nsw i32 %retry_cnt.092, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end44, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end44:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %error.1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end.i74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %query_bank_addr) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_info) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raydium_i2c_send(ptr noundef %client, i32 noundef %addr, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %header = alloca %struct.raydium_bank_switch_header, align 1
  %xfer = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

if.end:                                           ; preds = %entry
  %conv = trunc i32 %addr to i8
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %call9.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i, i32 1
  %1 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %len)
  %2 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header, i32 0, i32 1
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 1
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 3
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 1
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 1, i32 1
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 1, i32 2
  %conv9 = trunc i32 %add to i16
  %buf10 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %addr)
  %cmp.i = icmp ult i32 %addr, 256
  %cond.i = zext i1 %cmp.i to i32
  %sub.i = select i1 %cmp.i, i32 1, i32 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.i2c_msg, ptr %xfer, i32 %cond.i
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header) #10
  %3 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -86, ptr %header, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %addr, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer) #10
  %5 = getelementptr inbounds i8, ptr %xfer, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2, align 2
  %9 = ptrtoint ptr %xfer to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %xfer, align 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %11 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 5, ptr %len3, align 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %header, ptr %buf, align 4
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %arrayinit.element, align 4
  %14 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags6, align 2
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv9, ptr %len7, align 4
  %16 = ptrtoint ptr %buf10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i, ptr %buf10, align 4
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef %arrayidx.i, i32 noundef %sub.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub.i)
  %cmp1.i = icmp eq i32 %call.i, %sub.i
  br i1 %cmp1.i, label %if.end.cleanup23.critedge_crit_edge, label %if.end.i39, !prof !329

if.end.cleanup23.critedge_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23.critedge

if.end.i39:                                       ; preds = %if.end
  call void @msleep(i32 noundef 20) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header) #10
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header) #10
  %19 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -86, ptr %header, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %addr, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer) #10
  %21 = getelementptr inbounds i8, ptr %xfer, i32 4
  %22 = call ptr @memset(ptr %21, i32 255, i32 16)
  %23 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr2, align 2
  %25 = ptrtoint ptr %xfer to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %xfer, align 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags, align 2
  %27 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 5, ptr %len3, align 4
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %header, ptr %buf, align 4
  %29 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %24, ptr %arrayinit.element, align 4
  %30 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags6, align 2
  %31 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv9, ptr %len7, align 4
  %32 = ptrtoint ptr %buf10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i, ptr %buf10, align 4
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i.1 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef %arrayidx.i, i32 noundef %sub.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.1, i32 %sub.i)
  %cmp1.i.1 = icmp eq i32 %call.i.1, %sub.i
  br i1 %cmp1.i.1, label %if.end.i39.cleanup23.critedge_crit_edge, label %if.end.i39.1, !prof !329

if.end.i39.cleanup23.critedge_crit_edge:          ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23.critedge

if.end.i39.1:                                     ; preds = %if.end.i39
  call void @msleep(i32 noundef 20) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header) #10
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header) #10
  %35 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -86, ptr %header, align 1
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %addr, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer) #10
  %37 = getelementptr inbounds i8, ptr %xfer, i32 4
  %38 = call ptr @memset(ptr %37, i32 255, i32 16)
  %39 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr2, align 2
  %41 = ptrtoint ptr %xfer to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %xfer, align 4
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags, align 2
  %43 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 5, ptr %len3, align 4
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %header, ptr %buf, align 4
  %45 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %40, ptr %arrayinit.element, align 4
  %46 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags6, align 2
  %47 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv9, ptr %len7, align 4
  %48 = ptrtoint ptr %buf10 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i, ptr %buf10, align 4
  %49 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i, align 8
  %call.i.2 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef %arrayidx.i, i32 noundef %sub.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.2, i32 %sub.i)
  %cmp1.i.2 = icmp eq i32 %call.i.2, %sub.i
  br i1 %cmp1.i.2, label %if.end.i39.1.cleanup23.critedge_crit_edge, label %if.end.i39.2, !prof !329

if.end.i39.1.cleanup23.critedge_crit_edge:        ; preds = %if.end.i39.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23.critedge

if.end.i39.2:                                     ; preds = %if.end.i39.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 20) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp3.i = icmp slt i32 %call.i.2, 0
  %spec.select = select i1 %cmp3.i, i32 %call.i.2, i32 -5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %spec.select) #13
  br label %cleanup23

cleanup23.critedge:                               ; preds = %if.end.i39.1.cleanup23.critedge_crit_edge, %if.end.i39.cleanup23.critedge_crit_edge, %if.end.cleanup23.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header) #10
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup23.critedge, %if.end.i39.2, %entry.cleanup23_crit_edge
  %retval.2 = phi i32 [ %spec.select, %if.end.i39.2 ], [ -12, %entry.cleanup23_crit_edge ], [ 0, %cleanup23.critedge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_update_fw_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfs_mutex = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @raydium_i2c_fw_update(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %sysfs_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool4.not, i32 %count, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raydium_i2c_fw_update(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  %info = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 5
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %info, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.72, i32 noundef %5) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raydium_i2c_fw_update.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@raydium_i2c_fw_update, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !331

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raydium_i2c_fw_update.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull %call) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call9 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %call, ptr noundef %dev8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.75, ptr noundef nonnull %call) #13
  br label %out_free_fw_file

if.end16:                                         ; preds = %do.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %7) #10
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  %call17 = call fastcc i32 @raydium_i2c_do_update_firmware(ptr noundef %ts, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.77, i32 noundef %call17) #13
  br label %out_enable_irq

if.end24:                                         ; preds = %if.end16
  %call25 = call fastcc i32 @raydium_i2c_initialize(ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.out_enable_irq_crit_edge, label %do.end30

if.end24.out_enable_irq_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_enable_irq

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.80, i32 noundef %call25) #13
  br label %out_enable_irq

out_enable_irq:                                   ; preds = %do.end30, %if.end24.out_enable_irq_crit_edge, %do.end22
  %.sink = phi i32 [ 1, %do.end30 ], [ 1, %do.end22 ], [ 0, %if.end24.out_enable_irq_crit_edge ]
  %error.0 = phi i32 [ %call25, %do.end30 ], [ %call17, %do.end22 ], [ 0, %if.end24.out_enable_irq_crit_edge ]
  %boot_mode34 = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 12
  %10 = ptrtoint ptr %boot_mode34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %boot_mode34, align 4
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %12) #10
  call void @msleep(i32 noundef 100) #10
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %14) #10
  br label %out_free_fw_file

out_free_fw_file:                                 ; preds = %out_enable_irq, %do.end14
  %error.1 = phi i32 [ %call9, %do.end14 ], [ %error.0, %out_enable_irq ]
  call void @kfree(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_fw_file, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_free_fw_file ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raydium_i2c_do_update_firmware(ptr nocapture noundef %ts, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  %checksum_cmd.i = alloca [7 x i8], align 1
  %reg_addr.i.i256 = alloca i8, align 1
  %header.i.i257 = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i.i258 = alloca [3 x %struct.i2c_msg], align 4
  %buf.i259 = alloca [4 x i8], align 4
  %buf.i232 = alloca [35 x i8], align 1
  %reg_addr.i.i192 = alloca i8, align 1
  %header.i.i193 = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i.i194 = alloca [3 x %struct.i2c_msg], align 4
  %buf.i195 = alloca [4 x i8], align 4
  %reg_addr.i.i = alloca i8, align 1
  %header.i.i = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i.i = alloca [3 x %struct.i2c_msg], align 4
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  %4 = add i32 %3, -53249
  call void @__sanitizer_cov_trace_const_cmp4(i32 -53248, i32 %4)
  %5 = icmp ult i32 %4, -53248
  br i1 %5, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %6 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i.i, i32 0, i32 1
  %addr3.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 1
  %len4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1, i32 1
  %len8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1, i32 2
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1, i32 3
  %arrayinit.element10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2, i32 1
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2, i32 2
  %buf16.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2, i32 3
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %8 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 68, ptr %reg_addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i.i) #10
  %9 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -86, ptr %header.i.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 68, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i.i) #10
  %11 = call ptr @memset(ptr %len4.i.i, i32 255, i32 28)
  %12 = ptrtoint ptr %addr3.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr3.i.i, align 2
  %14 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %xfer.i.i, align 4
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i, align 2
  %16 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 5, ptr %len4.i.i, align 4
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %header.i.i, ptr %buf.i.i, align 4
  %18 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %arrayinit.element.i.i, align 4
  %19 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags7.i.i, align 2
  %20 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len8.i.i, align 4
  %21 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %reg_addr.i.i, ptr %buf9.i.i, align 4
  %22 = ptrtoint ptr %arrayinit.element10.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %13, ptr %arrayinit.element10.i.i, align 4
  %23 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags13.i.i, align 2
  %24 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4, ptr %len14.i.i, align 4
  %25 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i, ptr %buf16.i.i, align 4
  %26 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef %arrayinit.element.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp1.i.i.i, label %if.end.i.i, label %if.end.i.i.i, !prof !329

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %spec.select = select i1 %cmp3.i.i.i, i32 %call.i.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.85, i32 noundef %spec.select) #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf.i, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %29, label %if.end.i.i.if.end9_crit_edge [
    i8 98, label %if.end.i.i.if.end9.sink.split_crit_edge
    i8 102, label %if.then8.i
  ]

if.end.i.i.if.end9.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split

if.end.i.i.if.end9_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.then8.i, %if.end.i.i.if.end9.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then8.i ], [ 1, %if.end.i.i.if.end9.sink.split_crit_edge ]
  %boot_mode9.i = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 12
  %31 = ptrtoint ptr %boot_mode9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %boot_mode9.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.end.i.i.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  %boot_mode = getelementptr inbounds %struct.raydium_data, ptr %ts, i32 0, i32 12
  %32 = ptrtoint ptr %boot_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %boot_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp10 = icmp eq i32 %33, 0
  br i1 %cmp10, label %for.cond.preheader, label %if.end9.if.end37_crit_edge

if.end9.if.end37_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

for.cond.preheader:                               ; preds = %if.end9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %34 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i.i193, i32 0, i32 1
  %flags.i.i197 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 0, i32 1
  %len4.i.i198 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 0, i32 2
  %buf.i.i199 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 0, i32 3
  %arrayinit.element.i.i200 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 1
  %flags7.i.i201 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 1, i32 1
  %len8.i.i202 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 1, i32 2
  %buf9.i.i203 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 1, i32 3
  %arrayinit.element10.i.i204 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 2
  %flags13.i.i205 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 2, i32 1
  %len14.i.i206 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 2, i32 2
  %buf16.i.i207 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i194, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0353 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 17, ptr noundef nonnull @raydium_i2c_enter_bl.cal_cmd, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i190, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.111, i32 noundef %call.i.i) #13
  br label %raydium_i2c_enter_bl.exit

if.end.i.i190:                                    ; preds = %for.body
  %call1.i.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 34, ptr noundef nonnull @raydium_i2c_write_object.cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then15, label %do.end6.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.114, i32 noundef %call1.i.i) #13
  br label %raydium_i2c_enter_bl.exit

raydium_i2c_enter_bl.exit:                        ; preds = %do.end6.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %do.end6.i.i ], [ %call.i.i, %do.end.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.109, i32 noundef %retval.0.i.ph.i) #13
  br label %for.inc

if.then15:                                        ; preds = %if.end.i.i190
  call void @msleep(i32 noundef 100) #10
  %35 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i195) #10
  %addr3.i.i196 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 1
  %adapter.i.i.i208 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i195 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %buf.i195, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i.i192) #10
  %38 = ptrtoint ptr %reg_addr.i.i192 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 68, ptr %reg_addr.i.i192, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i.i193) #10
  %39 = ptrtoint ptr %header.i.i193 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -86, ptr %header.i.i193, align 1
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 68, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i.i194) #10
  %41 = call ptr @memset(ptr %len4.i.i198, i32 255, i32 28)
  %42 = ptrtoint ptr %addr3.i.i196 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr3.i.i196, align 2
  %44 = ptrtoint ptr %xfer.i.i194 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %xfer.i.i194, align 4
  %45 = ptrtoint ptr %flags.i.i197 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i.i197, align 2
  %46 = ptrtoint ptr %len4.i.i198 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 5, ptr %len4.i.i198, align 4
  %47 = ptrtoint ptr %buf.i.i199 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %header.i.i193, ptr %buf.i.i199, align 4
  %48 = ptrtoint ptr %arrayinit.element.i.i200 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %43, ptr %arrayinit.element.i.i200, align 4
  %49 = ptrtoint ptr %flags7.i.i201 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags7.i.i201, align 2
  %50 = ptrtoint ptr %len8.i.i202 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %len8.i.i202, align 4
  %51 = ptrtoint ptr %buf9.i.i203 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %reg_addr.i.i192, ptr %buf9.i.i203, align 4
  %52 = ptrtoint ptr %arrayinit.element10.i.i204 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %43, ptr %arrayinit.element10.i.i204, align 4
  %53 = ptrtoint ptr %flags13.i.i205 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags13.i.i205, align 2
  %54 = ptrtoint ptr %len14.i.i206 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 4, ptr %len14.i.i206, align 4
  %55 = ptrtoint ptr %buf16.i.i207 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf.i195, ptr %buf16.i.i207, align 4
  %56 = ptrtoint ptr %adapter.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i.i.i208, align 8
  %call.i.i.i209 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef %arrayinit.element.i.i200, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i209)
  %cmp1.i.i.i210 = icmp eq i32 %call.i.i.i209, 2
  br i1 %cmp1.i.i.i210, label %if.end.i.i214, label %if.end.i.i.i213, !prof !329

if.end.i.i.i213:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i209)
  %cmp3.i.i.i211 = icmp slt i32 %call.i.i.i209, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i194) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i193) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i192) #10
  %spec.select345 = select i1 %cmp3.i.i.i211, i32 %call.i.i.i209, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i195) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.88, i32 noundef %spec.select345) #13
  br label %cleanup

if.end.i.i214:                                    ; preds = %if.then15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i194) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i193) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i192) #10
  %58 = ptrtoint ptr %buf.i195 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %buf.i195, align 4
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %59, label %if.end23 [
    i8 98, label %if.end23.thread
    i8 102, label %if.end23.thread324
  ]

if.end23.thread:                                  ; preds = %if.end.i.i214
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %boot_mode to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %boot_mode, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i195) #10
  br label %if.end37

if.end23.thread324:                               ; preds = %if.end.i.i214
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %boot_mode to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %boot_mode, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i195) #10
  br label %for.inc

if.end23:                                         ; preds = %if.end.i.i214
  %63 = ptrtoint ptr %boot_mode to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load i32, ptr %boot_mode, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i195) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp25 = icmp eq i32 %.pr, 1
  br i1 %cmp25, label %if.end23.if.end37_crit_edge, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %if.end23.thread324, %raydium_i2c_enter_bl.exit
  %error.1 = phi i32 [ %retval.0.i.ph.i, %raydium_i2c_enter_bl.exit ], [ 0, %if.end23.for.inc_crit_edge ], [ 0, %if.end23.thread324 ]
  %inc = add nuw nsw i32 %i.0353, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %64 = ptrtoint ptr %boot_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr326 = load i32, ptr %boot_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr326)
  %cmp30 = icmp eq i32 %.pr326, 0
  br i1 %cmp30, label %do.end34, label %for.end.if.end37_crit_edge

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.91, i32 noundef %error.1) #13
  br label %cleanup

if.end37:                                         ; preds = %for.end.if.end37_crit_edge, %if.end23.if.end37_crit_edge, %if.end23.thread, %if.end9.if.end37_crit_edge
  %call.i = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef nonnull @raydium_i2c_disable_watch_dog.cmd, i32 noundef 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end41, label %raydium_i2c_disable_watch_dog.exit

raydium_i2c_disable_watch_dog.exit:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i221 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i221, ptr noundef nonnull @.str.121, i32 noundef %call.i) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call.i223 = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef nonnull @raydium_i2c_check_path.cmd, i32 noundef 7, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool.not.i224 = icmp eq i32 %call.i223, 0
  br i1 %tobool.not.i224, label %if.end45, label %raydium_i2c_check_path.exit

raydium_i2c_check_path.exit:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i225 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i225, ptr noundef nonnull @.str.123, i32 noundef %call.i223) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %call.i227 = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef nonnull @raydium_i2c_boot_trigger.cmd, i32 noundef 6, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool.not.i228 = icmp eq i32 %call.i227, 0
  br i1 %tobool.not.i228, label %for.inc.i, label %if.end45.do.end51_crit_edge

if.end45.do.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

for.inc.i:                                        ; preds = %if.end45
  %call.1.i = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x [6 x i8]], ptr @raydium_i2c_boot_trigger.cmd, i32 0, i32 1), i32 noundef 6, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.do.end51_crit_edge

for.inc.i.do.end51_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x [6 x i8]], ptr @raydium_i2c_boot_trigger.cmd, i32 0, i32 2), i32 noundef 6, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.do.end51_crit_edge

for.inc.1.i.do.end51_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x [6 x i8]], ptr @raydium_i2c_boot_trigger.cmd, i32 0, i32 3), i32 noundef 6, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.do.end51_crit_edge

for.inc.2.i.do.end51_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x [6 x i8]], ptr @raydium_i2c_boot_trigger.cmd, i32 0, i32 4), i32 noundef 6, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.4.i, label %for.inc.3.i.do.end51_crit_edge

for.inc.3.i.do.end51_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x [6 x i8]], ptr @raydium_i2c_boot_trigger.cmd, i32 0, i32 5), i32 noundef 6, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.5.i, label %for.inc.4.i.do.end51_crit_edge

for.inc.4.i.do.end51_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef getelementptr inbounds ([7 x [6 x i8]], ptr @raydium_i2c_boot_trigger.cmd, i32 0, i32 6), i32 noundef 6, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %if.end53, label %for.inc.5.i.do.end51_crit_edge

for.inc.5.i.do.end51_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end51:                                         ; preds = %for.inc.5.i.do.end51_crit_edge, %for.inc.4.i.do.end51_crit_edge, %for.inc.3.i.do.end51_crit_edge, %for.inc.2.i.do.end51_crit_edge, %for.inc.1.i.do.end51_crit_edge, %for.inc.i.do.end51_crit_edge, %if.end45.do.end51_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %if.end45.do.end51_crit_edge ], [ 1, %for.inc.i.do.end51_crit_edge ], [ 2, %for.inc.1.i.do.end51_crit_edge ], [ 3, %for.inc.2.i.do.end51_crit_edge ], [ 4, %for.inc.3.i.do.end51_crit_edge ], [ 5, %for.inc.4.i.do.end51_crit_edge ], [ 6, %for.inc.5.i.do.end51_crit_edge ]
  %call.lcssa.i = phi i32 [ %call.i227, %if.end45.do.end51_crit_edge ], [ %call.1.i, %for.inc.i.do.end51_crit_edge ], [ %call.2.i, %for.inc.1.i.do.end51_crit_edge ], [ %call.3.i, %for.inc.2.i.do.end51_crit_edge ], [ %call.4.i, %for.inc.3.i.do.end51_crit_edge ], [ %call.5.i, %for.inc.4.i.do.end51_crit_edge ], [ %call.6.i, %for.inc.5.i.do.end51_crit_edge ]
  %dev.i229 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i229, ptr noundef nonnull @.str.125, i32 noundef %i.09.lcssa.i, i32 noundef %call.lcssa.i) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i229, ptr noundef nonnull @.str.94, i32 noundef %call.lcssa.i) #13
  br label %cleanup

if.end53:                                         ; preds = %for.inc.5.i
  call void @msleep(i32 noundef 100) #10
  %data54 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %65 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool56.not354 = icmp eq i32 %66, 0
  br i1 %tobool56.not354, label %if.end53.while.end_crit_edge, label %while.body.lr.ph

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end53
  %67 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data54, align 4
  %69 = getelementptr inbounds i8, ptr %buf.i232, i32 3
  %arrayidx2.i = getelementptr inbounds [35 x i8], ptr %buf.i232, i32 0, i32 1
  %arrayidx4.i = getelementptr inbounds [35 x i8], ptr %buf.i232, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end62.while.body_crit_edge, %while.body.lr.ph
  %data.0357 = phi ptr [ %68, %while.body.lr.ph ], [ %add.ptr, %if.end62.while.body_crit_edge ]
  %page_nr.0356 = phi i32 [ 0, %while.body.lr.ph ], [ %inc58, %if.end62.while.body_crit_edge ]
  %data_len.0355 = phi i32 [ %66, %while.body.lr.ph ], [ %sub, %if.end62.while.body_crit_edge ]
  %70 = call i32 @llvm.umin.i32(i32 %data_len.0355, i32 128)
  %conv = trunc i32 %page_nr.0356 to i16
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buf.i232) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not.i233 = icmp ne i16 %conv, 0
  %conv1.i = sext i1 %tobool.not.i233 to i8
  %71 = ptrtoint ptr %buf.i232 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 11, ptr %buf.i232, align 1
  %72 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %73 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %70)
  %cmp5.i = icmp ult i32 %70, 32
  %74 = call i32 @llvm.umin.i32(i32 %data_len.0355, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %74)
  %75 = icmp ugt i32 %74, 31
  %76 = sub nuw nsw i32 32, %74
  %77 = select i1 %75, i32 0, i32 %76
  %78 = getelementptr i8, ptr %69, i32 %74
  %79 = call ptr @memset(ptr %78, i32 255, i32 %77)
  %80 = call ptr @memcpy(ptr %69, ptr %data.0357, i32 %74)
  br i1 %cmp5.i, label %if.then.i, label %while.body.if.end.i235_crit_edge

while.body.if.end.i235_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i235

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %add11.i = add nuw nsw i32 %74, 3
  %arrayidx12.i = getelementptr [35 x i8], ptr %buf.i232, i32 0, i32 %add11.i
  %sub.i = sub nuw nsw i32 32, %74
  %81 = call ptr @memset(ptr %arrayidx12.i, i32 255, i32 %sub.i)
  br label %if.end.i235

if.end.i235:                                      ; preds = %if.then.i, %while.body.if.end.i235_crit_edge
  %call.i234 = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef nonnull %buf.i232, i32 noundef 35, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool13.not.i = icmp eq i32 %call.i234, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %if.end.i235.raydium_i2c_fw_write_page.exit_crit_edge

if.end.i235.raydium_i2c_fw_write_page.exit_crit_edge: ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_i2c_fw_write_page.exit

if.end19.i:                                       ; preds = %if.end.i235
  %add.ptr.i = getelementptr i8, ptr %data.0357, i32 %74
  %sub20.i = sub nsw i32 %70, %74
  %82 = ptrtoint ptr %buf.i232 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 11, ptr %buf.i232, align 1
  %83 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %84 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 2, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub20.i)
  %cmp5.1.i = icmp ult i32 %sub20.i, 32
  %85 = call i32 @llvm.umin.i32(i32 %sub20.i, i32 32) #10
  %86 = call ptr @memcpy(ptr %69, ptr %add.ptr.i, i32 %85)
  br i1 %cmp5.1.i, label %if.then.1.i, label %if.end19.i.if.end.1.i_crit_edge

if.end19.i.if.end.1.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %add11.1.i = add nuw nsw i32 %85, 3
  %arrayidx12.1.i = getelementptr [35 x i8], ptr %buf.i232, i32 0, i32 %add11.1.i
  %sub.1.i = sub nuw nsw i32 32, %85
  %87 = call ptr @memset(ptr %arrayidx12.1.i, i32 255, i32 %sub.1.i)
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end19.i.if.end.1.i_crit_edge
  %call.1.i238 = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef nonnull %buf.i232, i32 noundef 35, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i238)
  %tobool13.not.1.i = icmp eq i32 %call.1.i238, 0
  br i1 %tobool13.not.1.i, label %if.end19.1.i, label %if.end.1.i.raydium_i2c_fw_write_page.exit_crit_edge

if.end.1.i.raydium_i2c_fw_write_page.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_i2c_fw_write_page.exit

if.end19.1.i:                                     ; preds = %if.end.1.i
  %add.ptr.1.i = getelementptr i8, ptr %add.ptr.i, i32 %85
  %sub20.1.i = sub nsw i32 %sub20.i, %85
  %88 = ptrtoint ptr %buf.i232 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 11, ptr %buf.i232, align 1
  %89 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %90 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 3, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub20.1.i)
  %cmp5.2.i = icmp ult i32 %sub20.1.i, 32
  %91 = call i32 @llvm.umin.i32(i32 %sub20.1.i, i32 32) #10
  %92 = call ptr @memcpy(ptr %69, ptr %add.ptr.1.i, i32 %91)
  br i1 %cmp5.2.i, label %if.then.2.i, label %if.end19.1.i.if.end.2.i_crit_edge

if.end19.1.i.if.end.2.i_crit_edge:                ; preds = %if.end19.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end19.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %add11.2.i = add nuw nsw i32 %91, 3
  %arrayidx12.2.i = getelementptr [35 x i8], ptr %buf.i232, i32 0, i32 %add11.2.i
  %sub.2.i = sub nuw nsw i32 32, %91
  %93 = call ptr @memset(ptr %arrayidx12.2.i, i32 255, i32 %sub.2.i)
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end19.1.i.if.end.2.i_crit_edge
  %call.2.i239 = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef nonnull %buf.i232, i32 noundef 35, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i239)
  %tobool13.not.2.i = icmp eq i32 %call.2.i239, 0
  br i1 %tobool13.not.2.i, label %if.end19.2.i, label %if.end.2.i.raydium_i2c_fw_write_page.exit_crit_edge

if.end.2.i.raydium_i2c_fw_write_page.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_i2c_fw_write_page.exit

if.end19.2.i:                                     ; preds = %if.end.2.i
  %add.ptr.2.i = getelementptr i8, ptr %add.ptr.1.i, i32 %91
  %sub20.2.i = sub nsw i32 %sub20.1.i, %91
  %94 = ptrtoint ptr %buf.i232 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 11, ptr %buf.i232, align 1
  %95 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %96 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 4, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub20.2.i)
  %cmp5.3.i = icmp ult i32 %sub20.2.i, 32
  %97 = call i32 @llvm.umin.i32(i32 %sub20.2.i, i32 32) #10
  %98 = call ptr @memcpy(ptr %69, ptr %add.ptr.2.i, i32 %97)
  br i1 %cmp5.3.i, label %if.then.3.i, label %if.end19.2.i.if.end.3.i_crit_edge

if.end19.2.i.if.end.3.i_crit_edge:                ; preds = %if.end19.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %if.end19.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %add11.3.i = add nuw nsw i32 %97, 3
  %arrayidx12.3.i = getelementptr [35 x i8], ptr %buf.i232, i32 0, i32 %add11.3.i
  %sub.3.i = sub nuw nsw i32 32, %97
  %99 = call ptr @memset(ptr %arrayidx12.3.i, i32 255, i32 %sub.3.i)
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %if.end19.2.i.if.end.3.i_crit_edge
  %call.3.i240 = call fastcc i32 @raydium_i2c_write_object(ptr noundef %1, ptr noundef nonnull %buf.i232, i32 noundef 35, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i240)
  %tobool13.not.3.i = icmp eq i32 %call.3.i240, 0
  br i1 %tobool13.not.3.i, label %if.end62, label %if.end.3.i.raydium_i2c_fw_write_page.exit_crit_edge

if.end.3.i.raydium_i2c_fw_write_page.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_i2c_fw_write_page.exit

raydium_i2c_fw_write_page.exit:                   ; preds = %if.end.3.i.raydium_i2c_fw_write_page.exit_crit_edge, %if.end.2.i.raydium_i2c_fw_write_page.exit_crit_edge, %if.end.1.i.raydium_i2c_fw_write_page.exit_crit_edge, %if.end.i235.raydium_i2c_fw_write_page.exit_crit_edge
  %call.lcssa.i236 = phi i32 [ %call.i234, %if.end.i235.raydium_i2c_fw_write_page.exit_crit_edge ], [ %call.1.i238, %if.end.1.i.raydium_i2c_fw_write_page.exit_crit_edge ], [ %call.2.i239, %if.end.2.i.raydium_i2c_fw_write_page.exit_crit_edge ], [ %call.3.i240, %if.end.3.i.raydium_i2c_fw_write_page.exit_crit_edge ]
  %i.045.lcssa.i = phi i32 [ 0, %if.end.i235.raydium_i2c_fw_write_page.exit_crit_edge ], [ 1, %if.end.1.i.raydium_i2c_fw_write_page.exit_crit_edge ], [ 2, %if.end.2.i.raydium_i2c_fw_write_page.exit_crit_edge ], [ 3, %if.end.3.i.raydium_i2c_fw_write_page.exit_crit_edge ]
  %conv.le.i = and i32 %page_nr.0356, 65535
  %dev.i237 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i237, ptr noundef nonnull @.str.127, i32 noundef %conv.le.i, i32 noundef %i.045.lcssa.i, i32 noundef %call.lcssa.i236) #13
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buf.i232) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end.3.i
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buf.i232) #10
  %inc58 = add i32 %page_nr.0356, 1
  call void @msleep(i32 noundef 20) #10
  %add.ptr = getelementptr i8, ptr %data.0357, i32 %70
  %sub = sub i32 %data_len.0355, %70
  %tobool56.not = icmp eq i32 %sub, 0
  br i1 %tobool56.not, label %if.end62.while.end_crit_edge, label %if.end62.while.body_crit_edge

if.end62.while.body_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end62.while.end_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end62.while.end_crit_edge, %if.end53.while.end_crit_edge
  %call.i.i242 = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 17, ptr noundef nonnull @raydium_i2c_leave_bl.leave_cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i242)
  %tobool.not.i.i243 = icmp eq i32 %call.i.i242, 0
  br i1 %tobool.not.i.i243, label %if.end.i.i248, label %do.end.i.i245

do.end.i.i245:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i244 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i244, ptr noundef nonnull @.str.111, i32 noundef %call.i.i242) #13
  br label %do.end68

if.end.i.i248:                                    ; preds = %while.end
  %call1.i.i246 = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 34, ptr noundef nonnull @raydium_i2c_write_object.cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i246)
  %tobool2.not.i.i247 = icmp eq i32 %call1.i.i246, 0
  br i1 %tobool2.not.i.i247, label %do.body71, label %do.end6.i.i250

do.end6.i.i250:                                   ; preds = %if.end.i.i248
  call void @__sanitizer_cov_trace_pc() #12
  %dev7.i.i249 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i249, ptr noundef nonnull @.str.114, i32 noundef %call1.i.i246) #13
  br label %do.end68

do.end68:                                         ; preds = %do.end6.i.i250, %do.end.i.i245
  %retval.0.i.ph.i251 = phi i32 [ %call1.i.i246, %do.end6.i.i250 ], [ %call.i.i242, %do.end.i.i245 ]
  %dev.i252 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i252, ptr noundef nonnull @.str.129, i32 noundef %retval.0.i.ph.i251) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i252, ptr noundef nonnull @.str.97, i32 noundef %retval.0.i.ph.i251) #13
  br label %cleanup

do.body71:                                        ; preds = %if.end.i.i248
  call void @msleep(i32 noundef 100) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raydium_i2c_do_update_firmware.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@raydium_i2c_do_update_firmware, %if.then77)) #10
          to label %do.end81 [label %if.then77], !srcloc !331

if.then77:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #12
  %dev78 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raydium_i2c_do_update_firmware.__UNIQUE_ID_ddebug296, ptr noundef %dev78, ptr noundef nonnull @.str.99) #10
  br label %do.end81

do.end81:                                         ; preds = %if.then77, %do.body71
  call void @msleep(i32 noundef 100) #10
  %100 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i259) #10
  %102 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i.i257, i32 0, i32 1
  %addr3.i.i260 = getelementptr inbounds %struct.i2c_client, ptr %101, i32 0, i32 1
  %flags.i.i261 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 0, i32 1
  %len4.i.i262 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 0, i32 2
  %buf.i.i263 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 0, i32 3
  %arrayinit.element.i.i264 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 1
  %flags7.i.i265 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 1, i32 1
  %len8.i.i266 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 1, i32 2
  %buf9.i.i267 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 1, i32 3
  %arrayinit.element10.i.i268 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 2
  %flags13.i.i269 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 2, i32 1
  %len14.i.i270 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 2, i32 2
  %buf16.i.i271 = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i258, i32 2, i32 3
  %adapter.i.i.i272 = getelementptr inbounds %struct.i2c_client, ptr %101, i32 0, i32 3
  %103 = ptrtoint ptr %buf.i259 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %buf.i259, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i.i256) #10
  %104 = ptrtoint ptr %reg_addr.i.i256 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 68, ptr %reg_addr.i.i256, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i.i257) #10
  %105 = ptrtoint ptr %header.i.i257 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -86, ptr %header.i.i257, align 1
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 68, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i.i258) #10
  %107 = call ptr @memset(ptr %len4.i.i262, i32 255, i32 28)
  %108 = ptrtoint ptr %addr3.i.i260 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %addr3.i.i260, align 2
  %110 = ptrtoint ptr %xfer.i.i258 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %xfer.i.i258, align 4
  %111 = ptrtoint ptr %flags.i.i261 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i.i261, align 2
  %112 = ptrtoint ptr %len4.i.i262 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 5, ptr %len4.i.i262, align 4
  %113 = ptrtoint ptr %buf.i.i263 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %header.i.i257, ptr %buf.i.i263, align 4
  %114 = ptrtoint ptr %arrayinit.element.i.i264 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %109, ptr %arrayinit.element.i.i264, align 4
  %115 = ptrtoint ptr %flags7.i.i265 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags7.i.i265, align 2
  %116 = ptrtoint ptr %len8.i.i266 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %len8.i.i266, align 4
  %117 = ptrtoint ptr %buf9.i.i267 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %reg_addr.i.i256, ptr %buf9.i.i267, align 4
  %118 = ptrtoint ptr %arrayinit.element10.i.i268 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %109, ptr %arrayinit.element10.i.i268, align 4
  %119 = ptrtoint ptr %flags13.i.i269 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1, ptr %flags13.i.i269, align 2
  %120 = ptrtoint ptr %len14.i.i270 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 4, ptr %len14.i.i270, align 4
  %121 = ptrtoint ptr %buf16.i.i271 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %buf.i259, ptr %buf16.i.i271, align 4
  %122 = ptrtoint ptr %adapter.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %adapter.i.i.i272, align 8
  %call.i.i.i273 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef %arrayinit.element.i.i264, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i273)
  %cmp1.i.i.i274 = icmp eq i32 %call.i.i.i273, 2
  br i1 %cmp1.i.i.i274, label %if.end.i.i278, label %if.end.i.i.i277, !prof !329

if.end.i.i.i277:                                  ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i273)
  %cmp3.i.i.i275 = icmp slt i32 %call.i.i.i273, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i258) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i257) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i256) #10
  %spec.select346 = select i1 %cmp3.i.i.i275, i32 %call.i.i.i273, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i259) #10
  %dev88 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.101, i32 noundef %spec.select346) #13
  br label %cleanup

if.end.i.i278:                                    ; preds = %do.end81
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i258) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i257) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i256) #10
  %124 = ptrtoint ptr %buf.i259 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %buf.i259, align 4
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %125, label %if.end89 [
    i8 98, label %if.end89.thread341
    i8 102, label %if.end89.thread
  ]

if.end89.thread341:                               ; preds = %if.end.i.i278
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %boot_mode to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %boot_mode, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i259) #10
  br label %do.end96

if.end89.thread:                                  ; preds = %if.end.i.i278
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %boot_mode to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %boot_mode, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i259) #10
  br label %if.end98

if.end89:                                         ; preds = %if.end.i.i278
  %129 = ptrtoint ptr %boot_mode to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pr339 = load i32, ptr %boot_mode, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i259) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr339)
  %cmp91.not = icmp eq i32 %.pr339, 0
  br i1 %cmp91.not, label %if.end89.if.end98_crit_edge, label %if.end89.do.end96_crit_edge

if.end89.do.end96_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

if.end89.if.end98_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.end96:                                         ; preds = %if.end89.do.end96_crit_edge, %if.end89.thread341
  %dev97 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97, ptr noundef nonnull @.str.104, i32 noundef 0) #13
  br label %cleanup

if.end98:                                         ; preds = %if.end89.if.end98_crit_edge, %if.end89.thread
  %call.i.i285 = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 17, ptr noundef nonnull @raydium_i2c_fw_trigger.cmd, i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i285)
  %tobool.not.i.i286 = icmp eq i32 %call.i.i285, 0
  br i1 %tobool.not.i.i286, label %if.end.i.i291, label %if.end98.do.end.i.i288_crit_edge

if.end98.do.end.i.i288_crit_edge:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i288

do.end.i.i288:                                    ; preds = %for.inc.3.i300.do.end.i.i288_crit_edge, %for.inc.2.i299.do.end.i.i288_crit_edge, %for.inc.1.i298.do.end.i.i288_crit_edge, %for.inc.i297.do.end.i.i288_crit_edge, %if.end98.do.end.i.i288_crit_edge
  %i.015.lcssa.i = phi i32 [ 0, %if.end98.do.end.i.i288_crit_edge ], [ 1, %for.inc.i297.do.end.i.i288_crit_edge ], [ 2, %for.inc.1.i298.do.end.i.i288_crit_edge ], [ 3, %for.inc.2.i299.do.end.i.i288_crit_edge ], [ 4, %for.inc.3.i300.do.end.i.i288_crit_edge ]
  %call.i.lcssa.i = phi i32 [ %call.i.i285, %if.end98.do.end.i.i288_crit_edge ], [ %call.i.1.i, %for.inc.i297.do.end.i.i288_crit_edge ], [ %call.i.2.i, %for.inc.1.i298.do.end.i.i288_crit_edge ], [ %call.i.3.i, %for.inc.2.i299.do.end.i.i288_crit_edge ], [ %call.i.4.i, %for.inc.3.i300.do.end.i.i288_crit_edge ]
  %dev.i.i287 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i287, ptr noundef nonnull @.str.111, i32 noundef %call.i.lcssa.i) #13
  br label %do.end104

if.end.i.i291:                                    ; preds = %if.end98
  %call1.i.i289 = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 34, ptr noundef nonnull @raydium_i2c_write_object.cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i289)
  %tobool2.not.i.i290 = icmp eq i32 %call1.i.i289, 0
  br i1 %tobool2.not.i.i290, label %for.inc.i297, label %if.end.i.i291.do.end6.i.i293_crit_edge

if.end.i.i291.do.end6.i.i293_crit_edge:           ; preds = %if.end.i.i291
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i293

do.end6.i.i293:                                   ; preds = %if.end.i.4.i.do.end6.i.i293_crit_edge, %if.end.i.3.i.do.end6.i.i293_crit_edge, %if.end.i.2.i.do.end6.i.i293_crit_edge, %if.end.i.1.i.do.end6.i.i293_crit_edge, %if.end.i.i291.do.end6.i.i293_crit_edge
  %call1.i.lcssa.i = phi i32 [ %call1.i.i289, %if.end.i.i291.do.end6.i.i293_crit_edge ], [ %call1.i.1.i, %if.end.i.1.i.do.end6.i.i293_crit_edge ], [ %call1.i.2.i, %if.end.i.2.i.do.end6.i.i293_crit_edge ], [ %call1.i.3.i, %if.end.i.3.i.do.end6.i.i293_crit_edge ], [ %call1.i.4.i, %if.end.i.4.i.do.end6.i.i293_crit_edge ]
  %i.015.lcssa18.i = phi i32 [ 0, %if.end.i.i291.do.end6.i.i293_crit_edge ], [ 1, %if.end.i.1.i.do.end6.i.i293_crit_edge ], [ 2, %if.end.i.2.i.do.end6.i.i293_crit_edge ], [ 3, %if.end.i.3.i.do.end6.i.i293_crit_edge ], [ 4, %if.end.i.4.i.do.end6.i.i293_crit_edge ]
  %dev7.i.i292 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i292, ptr noundef nonnull @.str.114, i32 noundef %call1.i.lcssa.i) #13
  br label %do.end104

for.inc.i297:                                     ; preds = %if.end.i.i291
  %call.i.1.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 17, ptr noundef getelementptr inbounds ([5 x [11 x i8]], ptr @raydium_i2c_fw_trigger.cmd, i32 0, i32 1), i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %for.inc.i297.do.end.i.i288_crit_edge

for.inc.i297.do.end.i.i288_crit_edge:             ; preds = %for.inc.i297
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i288

if.end.i.1.i:                                     ; preds = %for.inc.i297
  %call1.i.1.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 34, ptr noundef nonnull @raydium_i2c_write_object.cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1.i)
  %tobool2.not.i.1.i = icmp eq i32 %call1.i.1.i, 0
  br i1 %tobool2.not.i.1.i, label %for.inc.1.i298, label %if.end.i.1.i.do.end6.i.i293_crit_edge

if.end.i.1.i.do.end6.i.i293_crit_edge:            ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i293

for.inc.1.i298:                                   ; preds = %if.end.i.1.i
  %call.i.2.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 17, ptr noundef getelementptr inbounds ([5 x [11 x i8]], ptr @raydium_i2c_fw_trigger.cmd, i32 0, i32 2), i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %if.end.i.2.i, label %for.inc.1.i298.do.end.i.i288_crit_edge

for.inc.1.i298.do.end.i.i288_crit_edge:           ; preds = %for.inc.1.i298
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i288

if.end.i.2.i:                                     ; preds = %for.inc.1.i298
  %call1.i.2.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 34, ptr noundef nonnull @raydium_i2c_write_object.cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2.i)
  %tobool2.not.i.2.i = icmp eq i32 %call1.i.2.i, 0
  br i1 %tobool2.not.i.2.i, label %for.inc.2.i299, label %if.end.i.2.i.do.end6.i.i293_crit_edge

if.end.i.2.i.do.end6.i.i293_crit_edge:            ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i293

for.inc.2.i299:                                   ; preds = %if.end.i.2.i
  %call.i.3.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 17, ptr noundef getelementptr inbounds ([5 x [11 x i8]], ptr @raydium_i2c_fw_trigger.cmd, i32 0, i32 3), i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %if.end.i.3.i, label %for.inc.2.i299.do.end.i.i288_crit_edge

for.inc.2.i299.do.end.i.i288_crit_edge:           ; preds = %for.inc.2.i299
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i288

if.end.i.3.i:                                     ; preds = %for.inc.2.i299
  %call1.i.3.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 34, ptr noundef nonnull @raydium_i2c_write_object.cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3.i)
  %tobool2.not.i.3.i = icmp eq i32 %call1.i.3.i, 0
  br i1 %tobool2.not.i.3.i, label %for.inc.3.i300, label %if.end.i.3.i.do.end6.i.i293_crit_edge

if.end.i.3.i.do.end6.i.i293_crit_edge:            ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i293

for.inc.3.i300:                                   ; preds = %if.end.i.3.i
  %call.i.4.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 17, ptr noundef getelementptr inbounds ([5 x [11 x i8]], ptr @raydium_i2c_fw_trigger.cmd, i32 0, i32 4), i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i)
  %tobool.not.i.4.i = icmp eq i32 %call.i.4.i, 0
  br i1 %tobool.not.i.4.i, label %if.end.i.4.i, label %for.inc.3.i300.do.end.i.i288_crit_edge

for.inc.3.i300.do.end.i.i288_crit_edge:           ; preds = %for.inc.3.i300
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i288

if.end.i.4.i:                                     ; preds = %for.inc.3.i300
  %call1.i.4.i = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 34, ptr noundef nonnull @raydium_i2c_write_object.cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4.i)
  %tobool2.not.i.4.i = icmp eq i32 %call1.i.4.i, 0
  br i1 %tobool2.not.i.4.i, label %if.end106, label %if.end.i.4.i.do.end6.i.i293_crit_edge

if.end.i.4.i.do.end6.i.i293_crit_edge:            ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i293

do.end104:                                        ; preds = %do.end6.i.i293, %do.end.i.i288
  %i.01520.i = phi i32 [ %i.015.lcssa18.i, %do.end6.i.i293 ], [ %i.015.lcssa.i, %do.end.i.i288 ]
  %retval.0.i.ph.i294 = phi i32 [ %call1.i.lcssa.i, %do.end6.i.i293 ], [ %call.i.lcssa.i, %do.end.i.i288 ]
  %dev.i295 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i295, ptr noundef nonnull @.str.131, i32 noundef %i.01520.i, i32 noundef %retval.0.i.ph.i294) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i295, ptr noundef nonnull @.str.107, i32 noundef %retval.0.i.ph.i294) #13
  br label %cleanup

if.end106:                                        ; preds = %if.end.i.4.i
  %130 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data54, align 4
  %132 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fw, align 4
  %conv109 = trunc i32 %133 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv109)
  %cmp9.not.i = icmp eq i16 %conv109, 0
  br i1 %cmp9.not.i, label %if.end106.raydium_calc_chksum.exit_crit_edge, label %for.body.preheader.i

if.end106.raydium_calc_chksum.exit_crit_edge:     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_calc_chksum.exit

for.body.preheader.i:                             ; preds = %if.end106
  %wide.trip.count.i = and i32 %133, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %checksum.010.i = phi i16 [ 0, %for.body.preheader.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %131, i32 %indvars.iv.i
  %134 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i, align 1
  %conv3.i = zext i8 %135 to i16
  %add.i = add i16 %checksum.010.i, %conv3.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.raydium_calc_chksum.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.raydium_calc_chksum.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_calc_chksum.exit

raydium_calc_chksum.exit:                         ; preds = %for.body.i.raydium_calc_chksum.exit_crit_edge, %if.end106.raydium_calc_chksum.exit_crit_edge
  %checksum.0.lcssa.i = phi i16 [ 0, %if.end106.raydium_calc_chksum.exit_crit_edge ], [ %add.i, %for.body.i.raydium_calc_chksum.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %checksum_cmd.i) #10
  %136 = call ptr @memcpy(ptr %checksum_cmd.i, ptr @__const.raydium_i2c_write_checksum.checksum_cmd, i32 3)
  %arrayidx.i302 = getelementptr inbounds [7 x i8], ptr %checksum_cmd.i, i32 0, i32 3
  %137 = call i16 @llvm.bswap.i16(i16 %conv109) #10
  %138 = ptrtoint ptr %arrayidx.i302 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %137, ptr %arrayidx.i302, align 1
  %arrayidx1.i = getelementptr inbounds [7 x i8], ptr %checksum_cmd.i, i32 0, i32 5
  %139 = call i16 @llvm.bswap.i16(i16 %checksum.0.lcssa.i) #10
  %140 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 %139, ptr %arrayidx1.i, align 1
  %call.i.i303 = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 17, ptr noundef nonnull %checksum_cmd.i, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i303)
  %tobool.not.i.i304 = icmp eq i32 %call.i.i303, 0
  br i1 %tobool.not.i.i304, label %if.end.i.i309, label %do.end.i.i306

do.end.i.i306:                                    ; preds = %raydium_calc_chksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i305 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i305, ptr noundef nonnull @.str.111, i32 noundef %call.i.i303) #13
  br label %do.end.i314

if.end.i.i309:                                    ; preds = %raydium_calc_chksum.exit
  %call1.i.i307 = call fastcc i32 @raydium_i2c_send(ptr noundef %1, i32 noundef 34, ptr noundef nonnull @raydium_i2c_write_object.cmd, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i307)
  %tobool2.not.i.i308 = icmp eq i32 %call1.i.i307, 0
  br i1 %tobool2.not.i.i308, label %if.end.i.i309.raydium_i2c_write_checksum.exit_crit_edge, label %do.end6.i.i311

if.end.i.i309.raydium_i2c_write_checksum.exit_crit_edge: ; preds = %if.end.i.i309
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_i2c_write_checksum.exit

do.end6.i.i311:                                   ; preds = %if.end.i.i309
  call void @__sanitizer_cov_trace_pc() #12
  %dev7.i.i310 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i310, ptr noundef nonnull @.str.114, i32 noundef %call1.i.i307) #13
  br label %do.end.i314

do.end.i314:                                      ; preds = %do.end6.i.i311, %do.end.i.i306
  %retval.0.i.ph.i312 = phi i32 [ %call1.i.i307, %do.end6.i.i311 ], [ %call.i.i303, %do.end.i.i306 ]
  %dev.i313 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i313, ptr noundef nonnull @.str.133, i32 noundef %retval.0.i.ph.i312) #13
  br label %raydium_i2c_write_checksum.exit

raydium_i2c_write_checksum.exit:                  ; preds = %do.end.i314, %if.end.i.i309.raydium_i2c_write_checksum.exit_crit_edge
  %retval.0.i315 = phi i32 [ %retval.0.i.ph.i312, %do.end.i314 ], [ 0, %if.end.i.i309.raydium_i2c_write_checksum.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %checksum_cmd.i) #10
  br label %cleanup

cleanup:                                          ; preds = %raydium_i2c_write_checksum.exit, %do.end104, %do.end96, %if.end.i.i.i277, %do.end68, %raydium_i2c_fw_write_page.exit, %do.end51, %raydium_i2c_check_path.exit, %raydium_i2c_disable_watch_dog.exit, %do.end34, %if.end.i.i.i213, %if.end.i.i.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %if.end.i.i.i ], [ %spec.select345, %if.end.i.i.i213 ], [ -5, %do.end34 ], [ %call.lcssa.i, %do.end51 ], [ %retval.0.i.ph.i251, %do.end68 ], [ %spec.select346, %if.end.i.i.i277 ], [ -22, %do.end96 ], [ %retval.0.i.ph.i294, %do.end104 ], [ %call.i, %raydium_i2c_disable_watch_dog.exit ], [ %call.i223, %raydium_i2c_check_path.exit ], [ %call.lcssa.i236, %raydium_i2c_fw_write_page.exit ], [ %retval.0.i315, %raydium_i2c_write_checksum.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raydium_i2c_write_object(ptr noundef %client, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  %reg_addr.i23.i = alloca i8, align 1
  %header.i24.i = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i25.i = alloca [3 x %struct.i2c_msg], align 4
  %reg_addr.i.i = alloca i8, align 1
  %header.i.i = alloca %struct.raydium_bank_switch_header, align 1
  %xfer.i.i = alloca [3 x %struct.i2c_msg], align 4
  %rbuf.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @raydium_i2c_send(ptr noundef %client, i32 noundef 17, ptr noundef %data, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.111, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @raydium_i2c_send(ptr noundef %client, i32 noundef 34, ptr noundef nonnull @raydium_i2c_write_object.cmd, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.114, i32 noundef %call1) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rbuf.i) #10
  %0 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i24.i, i32 0, i32 1
  %addr3.i26.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %flags.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 0, i32 1
  %len4.i28.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 0, i32 2
  %buf.i29.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 0, i32 3
  %arrayinit.element.i30.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 1
  %flags7.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 1, i32 1
  %len8.i32.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 1, i32 2
  %buf9.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 1, i32 3
  %arrayinit.element10.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 2
  %flags13.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 2, i32 1
  %len14.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 2, i32 2
  %buf16.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i25.i, i32 2, i32 3
  %adapter.i.i38.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = getelementptr inbounds %struct.raydium_bank_switch_header, ptr %header.i.i, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 1
  %len4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1, i32 1
  %len8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1, i32 2
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 1, i32 3
  %arrayinit.element10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2, i32 1
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2, i32 2
  %buf16.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 2, i32 3
  %2 = call ptr @memset(ptr %rbuf.i, i32 255, i32 5)
  %3 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %state, label %do.end.i [
    i32 0, label %if.end8.raydium_i2c_bl_chk_state.exit.thread_crit_edge
    i32 2, label %if.end8.entry.split.i_crit_edge
    i32 1, label %if.end8.entry.split.i_crit_edge32
  ]

if.end8.entry.split.i_crit_edge32:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %entry.split.i

if.end8.entry.split.i_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %entry.split.i

if.end8.raydium_i2c_bl_chk_state.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_i2c_bl_chk_state.exit.thread

entry.split.i:                                    ; preds = %if.end8.entry.split.i_crit_edge, %if.end8.entry.split.i_crit_edge32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cond.i = icmp eq i32 %state, 2
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %entry.split.i
  %retry.066.i = phi i8 [ 0, %entry.split.i ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  br i1 %cond.i, label %while.body.i50.preheader.i, label %while.body.i.preheader.i

while.body.i.preheader.i:                         ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  %4 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 51, ptr %reg_addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i.i) #10
  %5 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -86, ptr %header.i.i, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 51, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i.i) #10
  %7 = call ptr @memset(ptr %len4.i.i, i32 255, i32 28)
  %8 = ptrtoint ptr %addr3.i26.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr3.i26.i, align 2
  %10 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %xfer.i.i, align 4
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 5, ptr %len4.i.i, align 4
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %header.i.i, ptr %buf.i.i, align 4
  %14 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %15 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags7.i.i, align 2
  %16 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len8.i.i, align 4
  %17 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg_addr.i.i, ptr %buf9.i.i, align 4
  %18 = ptrtoint ptr %arrayinit.element10.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %9, ptr %arrayinit.element10.i.i, align 4
  %19 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags13.i.i, align 2
  %20 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len14.i.i, align 4
  %21 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rbuf.i, ptr %buf16.i.i, align 4
  %22 = ptrtoint ptr %adapter.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i38.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef %arrayinit.element.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %call.i.i.i, 2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i.i) #10
  br i1 %cmp1.i.i.i, label %if.end.i.i, label %while.body.i.preheader.i.sw.epilog.i_crit_edge, !prof !329

while.body.i.preheader.i.sw.epilog.i_crit_edge:   ; preds = %while.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

while.body.i50.preheader.i:                       ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_addr.i23.i) #10
  %24 = ptrtoint ptr %reg_addr.i23.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 51, ptr %reg_addr.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %header.i24.i) #10
  %25 = ptrtoint ptr %header.i24.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -86, ptr %header.i24.i, align 1
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 51, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i25.i) #10
  %27 = call ptr @memset(ptr %len4.i28.i, i32 255, i32 28)
  %28 = ptrtoint ptr %addr3.i26.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr3.i26.i, align 2
  %30 = ptrtoint ptr %xfer.i25.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %xfer.i25.i, align 4
  %31 = ptrtoint ptr %flags.i27.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i27.i, align 2
  %32 = ptrtoint ptr %len4.i28.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 5, ptr %len4.i28.i, align 4
  %33 = ptrtoint ptr %buf.i29.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %header.i24.i, ptr %buf.i29.i, align 4
  %34 = ptrtoint ptr %arrayinit.element.i30.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %29, ptr %arrayinit.element.i30.i, align 4
  %35 = ptrtoint ptr %flags7.i31.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags7.i31.i, align 2
  %36 = ptrtoint ptr %len8.i32.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %len8.i32.i, align 4
  %37 = ptrtoint ptr %buf9.i33.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg_addr.i23.i, ptr %buf9.i33.i, align 4
  %38 = ptrtoint ptr %arrayinit.element10.i34.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %29, ptr %arrayinit.element10.i34.i, align 4
  %39 = ptrtoint ptr %flags13.i35.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags13.i35.i, align 2
  %40 = ptrtoint ptr %len14.i36.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 5, ptr %len14.i36.i, align 4
  %41 = ptrtoint ptr %buf16.i37.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %rbuf.i, ptr %buf16.i37.i, align 4
  %42 = ptrtoint ptr %adapter.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i.i38.i, align 8
  %call.i.i48.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef %arrayinit.element.i30.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i48.i)
  %cmp1.i.i49.i = icmp eq i32 %call.i.i48.i, 2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i25.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %header.i24.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_addr.i23.i) #10
  br i1 %cmp1.i.i49.i, label %if.end.i58.i, label %while.body.i50.preheader.i.sw.epilog.i_crit_edge, !prof !329

while.body.i50.preheader.i.sw.epilog.i_crit_edge: ; preds = %while.body.i50.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.i.i:                                       ; preds = %while.body.i.preheader.i
  %44 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rbuf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp5.i = icmp eq i8 %45, -1
  br i1 %cmp5.i, label %if.end.i.i.raydium_i2c_bl_chk_state.exit.thread_crit_edge, label %if.end.i.i.sw.epilog.i_crit_edge

if.end.i.i.sw.epilog.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.i.i.raydium_i2c_bl_chk_state.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_i2c_bl_chk_state.exit.thread

if.end.i58.i:                                     ; preds = %while.body.i50.preheader.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %rbuf.i, ptr noundef nonnull dereferenceable(5) @raydium_i2c_bl_chk_state.ack_ok, i32 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool13.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool13.not.i, label %if.end.i58.i.raydium_i2c_bl_chk_state.exit.thread_crit_edge, label %if.end.i58.i.sw.epilog.i_crit_edge

if.end.i58.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.i58.i.raydium_i2c_bl_chk_state.exit.thread_crit_edge: ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_i2c_bl_chk_state.exit.thread

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef %state) #13
  br label %do.end14

sw.epilog.i:                                      ; preds = %if.end.i58.i.sw.epilog.i_crit_edge, %if.end.i.i.sw.epilog.i_crit_edge, %while.body.i50.preheader.i.sw.epilog.i_crit_edge, %while.body.i.preheader.i.sw.epilog.i_crit_edge
  call void @msleep(i32 noundef 20) #10
  %inc.i = add nuw nsw i8 %retry.066.i, 1
  %cmp.i = icmp ult i8 %retry.066.i, 29
  br i1 %cmp.i, label %sw.epilog.i.for.body.i_crit_edge, label %sw.epilog.i.do.end14_crit_edge

sw.epilog.i.do.end14_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

raydium_i2c_bl_chk_state.exit.thread:             ; preds = %if.end.i58.i.raydium_i2c_bl_chk_state.exit.thread_crit_edge, %if.end.i.i.raydium_i2c_bl_chk_state.exit.thread_crit_edge, %if.end8.raydium_i2c_bl_chk_state.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rbuf.i) #10
  br label %cleanup

do.end14:                                         ; preds = %sw.epilog.i.do.end14_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -110, %sw.epilog.i.do.end14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rbuf.i) #10
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.117, i32 noundef %retval.0.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %raydium_i2c_bl_chk_state.exit.thread, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end6 ], [ %retval.0.i, %do.end14 ], [ 0, %raydium_i2c_bl_chk_state.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_boot_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %boot_mode = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %boot_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %boot_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, ptr @.str.137, ptr @.str.138
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.136, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_fw_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %main_ver = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %main_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %main_ver, align 4
  %conv = zext i8 %3 to i32
  %sub_ver = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %sub_ver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sub_ver, align 1
  %conv2 = zext i8 %5 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.140, i32 noundef %conv, i32 noundef %conv2)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_hw_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %info = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.142, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_calibrate_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfs_mutex = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call2 = tail call fastcc i32 @raydium_i2c_write_object(ptr noundef %add.ptr, ptr noundef nonnull @raydium_i2c_calibrate_store.cal_cmd, i32 noundef 3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.144, i32 noundef %call2) #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %spec.select = phi i32 [ %call2, %do.end ], [ %count, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sysfs_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %boot_mode = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %boot_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %boot_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr i8, ptr %dev, i32 932
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #10
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %device_may_wakeup.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then2

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then2:                                         ; preds = %device_may_wakeup.exit
  %call.i = tail call fastcc i32 @raydium_i2c_send(ptr noundef %add.ptr, i32 noundef 78, ptr noundef nonnull @raydium_enter_sleep.sleep_cmd, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i14 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i14, label %if.then2.raydium_enter_sleep.exit_crit_edge, label %do.end.i

if.then2.raydium_enter_sleep.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %raydium_enter_sleep.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.146, i32 noundef %call.i) #13
  br label %raydium_enter_sleep.exit

raydium_enter_sleep.exit:                         ; preds = %do.end.i, %if.then2.raydium_enter_sleep.exit_crit_edge
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i15 = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %cmp5 = icmp eq i32 %call.i15, 0
  %wake_irq_enabled = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 13
  %frombool = zext i1 %cmp5 to i8
  %11 = ptrtoint ptr %wake_irq_enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %wake_irq_enabled, align 4
  br label %cleanup

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %reset_gpio.i = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i16 = icmp eq ptr %13, null
  br i1 %tobool.not.i16, label %if.else.cleanup_crit_edge, label %if.then.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %13, i32 noundef 1) #10
  %vccio.i = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %vccio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vccio.i, align 4
  %call.i17 = tail call i32 @regulator_disable(ptr noundef %15) #10
  %avdd.i = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %avdd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %avdd.i, align 4
  %call2.i = tail call i32 @regulator_disable(ptr noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.else.cleanup_crit_edge, %raydium_enter_sleep.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %raydium_enter_sleep.exit ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  %soft_rst_cmd.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %wake_irq_enabled = getelementptr inbounds %struct.raydium_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %wake_irq_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wake_irq_enabled, align 4, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %irq = getelementptr i8, ptr %dev, i32 932
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %soft_rst_cmd.i) #10
  %9 = ptrtoint ptr %soft_rst_cmd.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %soft_rst_cmd.i, align 1
  %call.i15 = call fastcc i32 @raydium_i2c_send(ptr noundef %add.ptr, i32 noundef 1073741828, ptr noundef nonnull %soft_rst_cmd.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.148, i32 noundef %call.i15) #13
  br label %raydium_i2c_sw_reset.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  br label %raydium_i2c_sw_reset.exit

raydium_i2c_sw_reset.exit:                        ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %soft_rst_cmd.i) #10
  br label %if.end7

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call5 = tail call fastcc i32 @raydium_i2c_power_on(ptr noundef %1)
  %call6 = tail call fastcc i32 @raydium_i2c_initialize(ptr noundef %1)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %raydium_i2c_sw_reset.exit
  %irq8 = getelementptr i8, ptr %dev, i32 932
  %10 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq8, align 4
  tail call void @enable_irq(i32 noundef %11) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !138, !140, !141, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !203, !204, !205, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !225, !226, !227, !228, !230, !232, !233, !234, !235, !237, !239, !240, !241, !242, !244, !246, !247, !248, !249, !251, !252, !253, !254, !256, !258, !259, !260, !261, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !278, !280, !282, !284, !285, !287, !289, !290, !292, !294, !295, !297, !299, !300, !301, !302, !304, !306, !308, !310, !311, !312, !313, !315, !316, !317, !318}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @__initcall__kmod_raydium_i2c_ts__302_1289_raydium_i2c_driver_init6, !1, !"__initcall__kmod_raydium_i2c_ts__302_1289_raydium_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1289, i32 1}
!2 = !{ptr @__exitcall_raydium_i2c_driver_exit, !1, !"__exitcall_raydium_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1291, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1292, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1293, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1283, i32 11}
!12 = !{ptr @raydium_i2c_driver, !13, !"raydium_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1279, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1075, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @raydium_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @raydium_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @raydium_i2c_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1084, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1089, i32 46}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1093, i32 4}
!29 = !{ptr @raydium_i2c_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @raydium_i2c_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1098, i32 47}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1102, i32 4}
!35 = !{ptr @raydium_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @raydium_i2c_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1107, i32 57}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1112, i32 4}
!41 = !{ptr @raydium_i2c_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @raydium_i2c_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1124, i32 3}
!45 = !{ptr @raydium_i2c_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @raydium_i2c_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1132, i32 3}
!49 = !{ptr @raydium_i2c_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @raydium_i2c_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1138, i32 3}
!53 = !{ptr @raydium_i2c_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @raydium_i2c_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1149, i32 3}
!57 = !{ptr @raydium_i2c_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @raydium_i2c_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1153, i32 20}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1169, i32 3}
!63 = !{ptr @raydium_i2c_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @raydium_i2c_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1176, i32 3}
!67 = !{ptr @raydium_i2c_probe._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @raydium_i2c_probe._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1185, i32 3}
!71 = !{ptr @raydium_i2c_probe._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @raydium_i2c_probe._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1192, i32 3}
!75 = !{ptr @raydium_i2c_probe._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @raydium_i2c_probe._entry_ptr.43, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1030, i32 3}
!79 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @raydium_i2c_power_on._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @raydium_i2c_power_on._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1038, i32 3}
!84 = !{ptr @raydium_i2c_power_on._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @raydium_i2c_power_on._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 416, i32 4}
!88 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @raydium_i2c_initialize._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @raydium_i2c_initialize._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"bl_ack", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 388, i32 18}
!93 = distinct !{null, !94, !"main_ack", i1 false, i1 false}
!94 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 389, i32 18}
!95 = !{ptr @raydium_i2c_query_ts_bootloader_info.get_hwid, !96, !"get_hwid", i1 false, i1 false}
!96 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 297, i32 18}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 306, i32 3}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @raydium_i2c_query_ts_bootloader_info._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @raydium_i2c_query_ts_bootloader_info._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 312, i32 3}
!104 = !{ptr @raydium_i2c_query_ts_bootloader_info._entry.53, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @raydium_i2c_query_ts_bootloader_info._entry_ptr.55, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 318, i32 3}
!108 = !{ptr @raydium_i2c_query_ts_bootloader_info._entry.56, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @raydium_i2c_query_ts_bootloader_info._entry_ptr.58, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 219, i32 2}
!112 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @raydium_i2c_send._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @raydium_i2c_send._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 352, i32 4}
!117 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @raydium_i2c_query_ts_info._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @raydium_i2c_query_ts_info._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 363, i32 3}
!123 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @raydium_i2c_query_ts_info.__UNIQUE_ID_ddebug290, !122, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 381, i32 2}
!127 = !{ptr @raydium_i2c_query_ts_info._entry.66, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @raydium_i2c_query_ts_info._entry_ptr.68, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 917, i32 3}
!131 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @raydium_i2c_irq._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @raydium_i2c_irq._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @raydium_i2c_attribute_group, !135, !"raydium_i2c_attribute_group", i1 false, i1 false}
!135 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1015, i32 37}
!136 = !{ptr @raydium_i2c_attributes, !137, !"raydium_i2c_attributes", i1 false, i1 false}
!137 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1006, i32 26}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1003, i32 8}
!140 = !{ptr @dev_attr_update_fw, !139, !"dev_attr_update_fw", i1 false, i1 false}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 821, i32 34}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 826, i32 2}
!145 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @raydium_i2c_fw_update.__UNIQUE_ID_ddebug297, !144, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 830, i32 3}
!149 = !{ptr @raydium_i2c_fw_update._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @raydium_i2c_fw_update._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 838, i32 3}
!153 = !{ptr @raydium_i2c_fw_update._entry.76, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @raydium_i2c_fw_update._entry_ptr.78, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 845, i32 3}
!157 = !{ptr @raydium_i2c_fw_update._entry.79, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @raydium_i2c_fw_update._entry_ptr.81, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 706, i32 3}
!161 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @raydium_i2c_do_update_firmware._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @raydium_i2c_do_update_firmware._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 712, i32 3}
!166 = !{ptr @raydium_i2c_do_update_firmware._entry.84, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @raydium_i2c_do_update_firmware._entry_ptr.86, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 722, i32 6}
!170 = !{ptr @raydium_i2c_do_update_firmware._entry.87, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @raydium_i2c_do_update_firmware._entry_ptr.89, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 734, i32 4}
!174 = !{ptr @raydium_i2c_do_update_firmware._entry.90, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @raydium_i2c_do_update_firmware._entry_ptr.92, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.94, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 751, i32 3}
!178 = !{ptr @raydium_i2c_do_update_firmware._entry.93, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @raydium_i2c_do_update_firmware._entry_ptr.95, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 776, i32 3}
!182 = !{ptr @raydium_i2c_do_update_firmware._entry.96, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @raydium_i2c_do_update_firmware._entry_ptr.98, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 781, i32 2}
!186 = !{ptr @raydium_i2c_do_update_firmware.__UNIQUE_ID_ddebug296, !185, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 786, i32 3}
!189 = !{ptr @raydium_i2c_do_update_firmware._entry.100, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @raydium_i2c_do_update_firmware._entry_ptr.102, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.104, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 793, i32 3}
!193 = !{ptr @raydium_i2c_do_update_firmware._entry.103, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @raydium_i2c_do_update_firmware._entry_ptr.105, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.107, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 801, i32 3}
!197 = !{ptr @raydium_i2c_do_update_firmware._entry.106, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @raydium_i2c_do_update_firmware._entry_ptr.108, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @raydium_i2c_enter_bl.cal_cmd, !200, !"cal_cmd", i1 false, i1 false}
!200 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 578, i32 18}
!201 = !{ptr @.str.109, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 584, i32 3}
!203 = !{ptr @.str.110, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @raydium_i2c_enter_bl._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @raydium_i2c_enter_bl._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @raydium_i2c_write_object.cmd, !207, !"cmd", i1 false, i1 false}
!207 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 484, i32 18}
!208 = !{ptr @.str.111, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 488, i32 3}
!210 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @raydium_i2c_write_object._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @raydium_i2c_write_object._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.114, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 495, i32 3}
!215 = !{ptr @raydium_i2c_write_object._entry.113, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @raydium_i2c_write_object._entry_ptr.115, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.117, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 501, i32 3}
!219 = !{ptr @raydium_i2c_write_object._entry.116, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @raydium_i2c_write_object._entry_ptr.118, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @raydium_i2c_bl_chk_state.ack_ok, !222, !"ack_ok", i1 false, i1 false}
!222 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 441, i32 18}
!223 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 468, i32 4}
!225 = !{ptr @.str.120, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @raydium_i2c_bl_chk_state._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @raydium_i2c_bl_chk_state._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @raydium_i2c_disable_watch_dog.cmd, !229, !"cmd", i1 false, i1 false}
!229 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 631, i32 18}
!230 = !{ptr @.str.121, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 637, i32 3}
!232 = !{ptr @.str.122, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @raydium_i2c_disable_watch_dog._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @raydium_i2c_disable_watch_dog._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @raydium_i2c_check_path.cmd, !236, !"cmd", i1 false, i1 false}
!236 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 563, i32 18}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 569, i32 3}
!239 = !{ptr @.str.124, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @raydium_i2c_check_path._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @raydium_i2c_check_path._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @raydium_i2c_boot_trigger.cmd, !243, !"cmd", i1 false, i1 false}
!243 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 509, i32 18}
!244 = !{ptr @.str.125, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 525, i32 4}
!246 = !{ptr @.str.126, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @raydium_i2c_boot_trigger._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @raydium_i2c_boot_trigger._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 669, i32 4}
!251 = !{ptr @.str.128, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @raydium_i2c_fw_write_page._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @raydium_i2c_fw_write_page._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @raydium_i2c_leave_bl.leave_cmd, !255, !"leave_cmd", i1 false, i1 false}
!255 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 594, i32 18}
!256 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 600, i32 3}
!258 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @raydium_i2c_leave_bl._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @raydium_i2c_leave_bl._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @raydium_i2c_fw_trigger.cmd, !262, !"cmd", i1 false, i1 false}
!262 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 537, i32 18}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 551, i32 4}
!265 = !{ptr @.str.132, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @raydium_i2c_fw_trigger._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @raydium_i2c_fw_trigger._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 621, i32 3}
!270 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @raydium_i2c_write_checksum._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @raydium_i2c_write_checksum._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1002, i32 8}
!275 = !{ptr @dev_attr_boot_mode, !274, !"dev_attr_boot_mode", i1 false, i1 false}
!276 = !{ptr @.str.136, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 954, i32 22}
!278 = !{ptr @.str.137, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 956, i32 5}
!280 = !{ptr @.str.138, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 956, i32 16}
!282 = !{ptr @.str.139, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1000, i32 8}
!284 = !{ptr @dev_attr_fw_version, !283, !"dev_attr_fw_version", i1 false, i1 false}
!285 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 935, i32 22}
!287 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1001, i32 8}
!289 = !{ptr @dev_attr_hw_version, !288, !"dev_attr_hw_version", i1 false, i1 false}
!290 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 944, i32 22}
!292 = !{ptr @.str.143, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1004, i32 8}
!294 = !{ptr @dev_attr_calibrate, !293, !"dev_attr_calibrate", i1 false, i1 false}
!295 = !{ptr @raydium_i2c_calibrate_store.cal_cmd, !296, !"cal_cmd", i1 false, i1 false}
!296 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 984, i32 18}
!297 = !{ptr @.str.144, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 994, i32 3}
!299 = !{ptr @.str.145, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @raydium_i2c_calibrate_store._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @raydium_i2c_calibrate_store._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @raydium_of_match, !303, !"raydium_of_match", i1 false, i1 false}
!303 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1272, i32 34}
!304 = !{ptr @raydium_i2c_pm_ops, !305, !"raydium_i2c_pm_ops", i1 false, i1 false}
!305 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1253, i32 8}
!306 = !{ptr @raydium_enter_sleep.sleep_cmd, !307, !"sleep_cmd", i1 false, i1 false}
!307 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1202, i32 18}
!308 = !{ptr @.str.146, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1208, i32 3}
!310 = !{ptr @.str.147, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @raydium_enter_sleep._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @raydium_enter_sleep._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.148, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 285, i32 3}
!315 = !{ptr @.str.149, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @raydium_i2c_sw_reset._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @raydium_i2c_sw_reset._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @raydium_i2c_id, !319, !"raydium_i2c_id", i1 false, i1 false}
!319 = !{!"../drivers/input/touchscreen/raydium_i2c_ts.c", i32 1256, i32 35}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{!"branch_weights", i32 2000, i32 1}
!330 = !{!"auto-init"}
!331 = !{i64 2148976760, i64 2148976765, i64 2148976778, i64 2148976822, i64 2148976856, i64 2148976877}
!332 = !{i8 0, i8 2}
