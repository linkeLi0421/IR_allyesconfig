; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/elan_i2c_core.c_pt.bc'
source_filename = "../drivers/input/mouse/elan_i2c_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.elan_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.elan_tp_data = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, i8, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i16, i8, i8, i8, i16, i32, i32, i32, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_elan_i2c__301_1450_elan_driver_init6 = internal global ptr @elan_driver_init, section ".initcall6.init", align 4
@elan_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @elan_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @elan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @elan_pm_ops, ptr null, ptr null }, ptr @elan_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_elan_driver_exit = internal global ptr @elan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [48 x i8] c"elan_i2c.author=Duson Lin <dusonlin@emc.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [52 x i8] c"elan_i2c.description=Elan I2C/SMBus Touchpad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [43 x i8] c"elan_i2c.file=drivers/input/mouse/elan_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [21 x i8] c"elan_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"elan_i2c\00", [23 x i8] zeroinitializer }, align 32
@elan_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"elan,ekth3000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@elan_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @elan_suspend, ptr @elan_resume, ptr @elan_suspend, ptr @elan_resume, ptr @elan_suspend, ptr @elan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@elan_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"elan_i2c\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@elan_i2c_ops = external dso_local constant %struct.elan_transport_ops, align 4
@elan_smbus_ops = external dso_local constant %struct.elan_transport_ops, align 4
@elan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"not a supported I2C/SMBus adapter\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"elan_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/mouse/elan_i2c_core.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr = internal global ptr @elan_probe._entry, section ".printk_index", align 4
@elan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->sysfs_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@elan_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get 'vcc' regulator: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.10 = internal global ptr @elan_probe._entry.8, section ".printk_index", align 4
@elan_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.13 = internal global ptr @elan_probe._entry.11, section ".printk_index", align 4
@elan_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to add disable regulator action: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.16 = internal global ptr @elan_probe._entry.14, section ".printk_index", align 4
@elan_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 1, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nothing at this address: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@elan_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1272, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Elan Touchpad: Module ID: 0x%04x, Firmware: 0x%04x, Sample: 0x%04x, IAP: 0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.21 = internal global ptr @elan_probe._entry.18, section ".printk_index", align 4
@elan_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 1, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [161 x i8], [63 x i8] } { [161 x i8] c"Elan Touchpad Extra Information:\0A    Max ABS X,Y:   %d,%d\0A    Width X,Y:   %d,%d\0A    Resolution X,Y:   %d,%d (dots/mm)\0A    ic type: 0x%x\0A    info pattern: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"elan,trackpoint\00", [16 x i8] zeroinitializer }, align 32
@elan_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot register irq=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.26 = internal global ptr @elan_probe._entry.24, section ".printk_index", align 4
@elan_sysfs_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @elan_sysfs_group, ptr @elan_baseline_sysfs_group, ptr null], [20 x i8] zeroinitializer }, align 32
@elan_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to create sysfs attributes: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.29 = internal global ptr @elan_probe._entry.27, section ".printk_index", align 4
@elan_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.32 = internal global ptr @elan_probe._entry.30, section ".printk_index", align 4
@elan_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to register TrackPoint input device: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.35 = internal global ptr @elan_probe._entry.33, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__elan_initialize._entry = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, align 1
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device initialize failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__elan_initialize\00", [46 x i8] zeroinitializer }, align 32
@__elan_initialize._entry_ptr = internal global ptr @__elan_initialize._entry, section ".printk_index", align 4
@__elan_initialize._entry.39 = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, align 1
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to wake device up: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__elan_initialize._entry_ptr.41 = internal global ptr @__elan_initialize._entry.39, section ".printk_index", align 4
@__elan_initialize._entry.42 = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, align 1
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to switch to absolute mode: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__elan_initialize._entry_ptr.44 = internal global ptr @__elan_initialize._entry.42, section ".printk_index", align 4
@__elan_initialize._entry.45 = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, align 1
@__elan_initialize._entry_ptr.46 = internal global ptr @__elan_initialize._entry.45, section ".printk_index", align 4
@elan_query_device_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 372, ptr @.str.49, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"unexpected iap version %#04x (ic type: %#04x), firmware update will not work\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"elan_query_device_info\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@elan_query_device_info._entry_ptr = internal global ptr @elan_query_device_info._entry, section ".printk_index", align 4
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-size-x\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-size-y\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"elan,x_traces\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"elan,y_traces\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"touchscreen-x-mm\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"touchscreen-y-mm\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"elan,clickpad\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"elan,middle-button\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Elan Touchpad\00", [18 x i8] zeroinitializer }, align 32
@elan_setup_input_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize MT slots: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"elan_setup_input_device\00", [40 x i8] zeroinitializer }, align 32
@elan_setup_input_device._entry_ptr = internal global ptr @elan_setup_input_device._entry, section ".printk_index", align 4
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Elan TrackPoint\00", [16 x i8] zeroinitializer }, align 32
@elan_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 1076, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid report id data (%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"elan_isr\00", [23 x i8] zeroinitializer }, align 32
@elan_isr._entry_ptr = internal global ptr @elan_isr._entry, section ".printk_index", align 4
@elan_report_contact.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elan_report_contact\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%d] x=%d y=%d over max (%d, %d)\00", [63 x i8] zeroinitializer }, align 32
@elan_report_trackpoint.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@elan_report_trackpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1024, ptr @.str.49, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"received a trackpoint report while no trackpoint device has been created. Please report upstream.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"elan_report_trackpoint\00", [41 x i8] zeroinitializer }, align 32
@elan_report_trackpoint._entry_ptr = internal global ptr @elan_report_trackpoint._entry, section ".printk_index", align 4
@elan_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @elan_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@elan_baseline_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.115, ptr null, ptr null, ptr @elan_baseline_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@elan_sysfs_entries = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_product_id, ptr @dev_attr_firmware_version, ptr @dev_attr_sample_version, ptr @dev_attr_iap_version, ptr @dev_attr_fw_checksum, ptr @dev_attr_calibrate, ptr @dev_attr_mode, ptr @dev_attr_update_fw, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elan_sysfs_read_product_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elan_sysfs_read_fw_ver, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sample_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elan_sysfs_read_sm_ver, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iap_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elan_sysfs_read_iap_ver, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_checksum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elan_sysfs_read_fw_checksum, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_calibrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @calibrate_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elan_sysfs_read_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @elan_sysfs_update_fw }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d.0\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sample_version\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iap_version\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw_checksum\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"calibrate\00", [22 x i8] zeroinitializer }, align 32
@calibrate_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 693, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enable calibration mode: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"calibrate_store\00", [16 x i8] zeroinitializer }, align 32
@calibrate_store._entry_ptr = internal global ptr @calibrate_store._entry, section ".printk_index", align 4
@calibrate_store._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to start calibration: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@calibrate_store._entry_ptr.80 = internal global ptr @calibrate_store._entry.78, section ".printk_index", align 4
@calibrate_store._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.3, i32 712, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to check calibration result: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@calibrate_store._entry_ptr.83 = internal global ptr @calibrate_store._entry.81, section ".printk_index", align 4
@calibrate_store._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.3, i32 719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to calibrate. Timeout.\0A\00", [33 x i8] zeroinitializer }, align 32
@calibrate_store._entry_ptr.86 = internal global ptr @calibrate_store._entry.84, section ".printk_index", align 4
@calibrate_store._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to disable calibration mode: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@calibrate_store._entry_ptr.89 = internal global ptr @calibrate_store._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@elan_sysfs_update_fw.signature = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\AAU\CC3\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"elan_i2c_%d.0.bin\00", [46 x i8] zeroinitializer }, align 32
@elan_sysfs_update_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 637, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to allocate memory for firmware name\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"elan_sysfs_update_fw\00", [43 x i8] zeroinitializer }, align 32
@elan_sysfs_update_fw._entry_ptr = internal global ptr @elan_sysfs_update_fw._entry, section ".printk_index", align 4
@elan_sysfs_update_fw._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 641, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"requesting fw '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@elan_sysfs_update_fw._entry_ptr.98 = internal global ptr @elan_sysfs_update_fw._entry.96, section ".printk_index", align 4
@elan_sysfs_update_fw._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request firmware: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@elan_sysfs_update_fw._entry_ptr.101 = internal global ptr @elan_sysfs_update_fw._entry.99, section ".printk_index", align 4
@elan_sysfs_update_fw._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.3, i32 654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"signature mismatch (expected %*ph, got %*ph)\0A\00", [50 x i8] zeroinitializer }, align 32
@elan_sysfs_update_fw._entry_ptr.104 = internal global ptr @elan_sysfs_update_fw._entry.102, section ".printk_index", align 4
@elan_update_firmware.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.3, ptr @.str.106, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"elan_update_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Starting firmware update....\0A\00", [34 x i8] zeroinitializer }, align 32
@elan_update_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware update failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@elan_update_firmware._entry_ptr = internal global ptr @elan_update_firmware._entry, section ".printk_index", align 4
@__elan_update_firmware._entry = internal constant %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, align 1
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"write page %d fail: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__elan_update_firmware\00", [41 x i8] zeroinitializer }, align 32
@__elan_update_firmware._entry_ptr = internal global ptr @__elan_update_firmware._entry, section ".printk_index", align 4
@__elan_update_firmware._entry.110 = internal constant %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 530, ptr @.str.4, ptr @.str.5 }, align 1
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"checksum diff sw=[%04X], fw=[%04X]\0A\00", [60 x i8] zeroinitializer }, align 32
@__elan_update_firmware._entry_ptr.112 = internal global ptr @__elan_update_firmware._entry.110, section ".printk_index", align 4
@elan_write_fw_block.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.3, ptr @.str.114, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elan_write_fw_block\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IAP retrying page %d (error: %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"baseline\00", [23 x i8] zeroinitializer }, align 32
@elan_baseline_sysfs_entries = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_acquire, ptr @dev_attr_min, ptr @dev_attr_max, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_acquire = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @acquire_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acquire\00", [24 x i8] zeroinitializer }, align 32
@acquire_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 807, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to enable calibration mode to get baseline: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acquire_store\00", [18 x i8] zeroinitializer }, align 32
@acquire_store._entry_ptr = internal global ptr @acquire_store._entry, section ".printk_index", align 4
@acquire_store._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.3, i32 817, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to read max baseline form device: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@acquire_store._entry_ptr.121 = internal global ptr @acquire_store._entry.119, section ".printk_index", align 4
@acquire_store._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.3, i32 825, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to read min baseline form device: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@acquire_store._entry_ptr.124 = internal global ptr @acquire_store._entry.122, section ".printk_index", align 4
@acquire_store._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.3, i32 836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Failed to disable calibration mode after acquiring baseline: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@acquire_store._entry_ptr.127 = internal global ptr @acquire_store._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@elan_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 1374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error %d disabling regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"elan_suspend\00", [19 x i8] zeroinitializer }, align 32
@elan_suspend._entry_ptr = internal global ptr @elan_suspend._entry, section ".printk_index", align 4
@elan_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set power %s: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"elan_set_power\00", [17 x i8] zeroinitializer }, align 32
@elan_set_power._entry_ptr = internal global ptr @elan_set_power._entry, section ".printk_index", align 4
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@elan_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 1394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error %d enabling regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"elan_resume\00", [20 x i8] zeroinitializer }, align 32
@elan_resume._entry_ptr = internal global ptr @elan_resume._entry, section ".printk_index", align 4
@elan_resume._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.3, i32 1404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"power up when resuming failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@elan_resume._entry_ptr.141 = internal global ptr @elan_resume._entry.139, section ".printk_index", align 4
@elan_resume._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.3, i32 1410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"initialize when resuming failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@elan_resume._entry_ptr.144 = internal global ptr @elan_resume._entry.142, section ".printk_index", align 4
@switch.table.elan_get_fwinfo = internal constant { [22 x i16], [52 x i8] } { [22 x i16] [i16 512, i16 512, i16 512, i16 768, i16 512, i16 512, i16 512, i16 768, i16 512, i16 768, i16 768, i16 768, i16 768, i16 896, i16 640, i16 512, i16 1024, i16 1280, i16 512, i16 2048, i16 1024, i16 1024], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 14]
@__sancov_gen_cov_switch_values.145 = internal global [7 x i64] [i64 5, i64 16, i64 5, i64 6, i64 7, i64 9, i64 19]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 8, i64 93, i64 94, i64 95, i64 96]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 16, i64 13, i64 16, i64 20]
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"elan_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1438, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1440, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"elan_of_match\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1431, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"elan_pm_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1417, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant [8 x i8] c"elan_id\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1419, i32 35 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1210, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1223, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1225, i32 38 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1229, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1236, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1242, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1250, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1267, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1274, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1291, i32 46 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1310, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [18 x i8] c"elan_sysfs_groups\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 909, i32 38 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1316, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1322, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1329, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 87, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 270, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 287, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 299, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 370, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 403, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 405, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 418, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 421, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 432, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 434, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 447, i32 46 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 450, i32 46 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1130, i32 16 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1139, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1098, i32 16 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1075, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 938, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1023, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"elan_sysfs_group\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 783, i32 37 }
@___asan_gen_.349 = private unnamed_addr constant [26 x i8] c"elan_baseline_sysfs_group\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 904, i32 37 }
@___asan_gen_.352 = private unnamed_addr constant [19 x i8] c"elan_sysfs_entries\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 771, i32 26 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c"dev_attr_product_id\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [24 x i8] c"dev_attr_sample_version\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [21 x i8] c"dev_attr_iap_version\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [21 x i8] c"dev_attr_fw_checksum\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [19 x i8] c"dev_attr_calibrate\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 761, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 586, i32 22 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 762, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 763, i32 8 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 764, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 765, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 576, i32 22 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 769, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 692, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 699, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 711, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 719, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 727, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 766, i32 8 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 758, i32 22 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 767, i32 8 }
@___asan_gen_.445 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 629, i32 18 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 635, i32 34 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 637, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 641, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 645, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 652, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 543, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 550, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 510, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 529, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 473, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 905, i32 10 }
@___asan_gen_.508 = private unnamed_addr constant [28 x i8] c"elan_baseline_sysfs_entries\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 897, i32 26 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"dev_attr_acquire\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [13 x i8] c"dev_attr_min\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [13 x i8] c"dev_attr_max\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 893, i32 8 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 806, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 816, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 824, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 835, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 894, i32 8 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 862, i32 36 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 895, i32 8 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1374, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 202, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1394, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1404, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.601 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.602 = private constant [39 x i8] c"../drivers/input/mouse/elan_i2c_core.c\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1410, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant [29 x i8] c"switch.table.elan_get_fwinfo\00", align 1
@llvm.compiler.used = appending global [204 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__elan_initialize._entry, ptr @__elan_initialize._entry.39, ptr @__elan_initialize._entry.42, ptr @__elan_initialize._entry.45, ptr @__elan_initialize._entry_ptr, ptr @__elan_initialize._entry_ptr.41, ptr @__elan_initialize._entry_ptr.44, ptr @__elan_initialize._entry_ptr.46, ptr @__elan_update_firmware._entry, ptr @__elan_update_firmware._entry.110, ptr @__elan_update_firmware._entry_ptr, ptr @__elan_update_firmware._entry_ptr.112, ptr @__exitcall_elan_driver_exit, ptr @__initcall__kmod_elan_i2c__301_1450_elan_driver_init6, ptr @acquire_store._entry, ptr @acquire_store._entry.119, ptr @acquire_store._entry.122, ptr @acquire_store._entry.125, ptr @acquire_store._entry_ptr, ptr @acquire_store._entry_ptr.121, ptr @acquire_store._entry_ptr.124, ptr @acquire_store._entry_ptr.127, ptr @calibrate_store._entry, ptr @calibrate_store._entry.78, ptr @calibrate_store._entry.81, ptr @calibrate_store._entry.84, ptr @calibrate_store._entry.87, ptr @calibrate_store._entry_ptr, ptr @calibrate_store._entry_ptr.80, ptr @calibrate_store._entry_ptr.83, ptr @calibrate_store._entry_ptr.86, ptr @calibrate_store._entry_ptr.89, ptr @elan_driver_exit, ptr @elan_isr._entry, ptr @elan_isr._entry_ptr, ptr @elan_probe._entry, ptr @elan_probe._entry.11, ptr @elan_probe._entry.14, ptr @elan_probe._entry.18, ptr @elan_probe._entry.24, ptr @elan_probe._entry.27, ptr @elan_probe._entry.30, ptr @elan_probe._entry.33, ptr @elan_probe._entry.8, ptr @elan_probe._entry_ptr, ptr @elan_probe._entry_ptr.10, ptr @elan_probe._entry_ptr.13, ptr @elan_probe._entry_ptr.16, ptr @elan_probe._entry_ptr.21, ptr @elan_probe._entry_ptr.26, ptr @elan_probe._entry_ptr.29, ptr @elan_probe._entry_ptr.32, ptr @elan_probe._entry_ptr.35, ptr @elan_query_device_info._entry, ptr @elan_query_device_info._entry_ptr, ptr @elan_report_trackpoint._entry, ptr @elan_report_trackpoint._entry_ptr, ptr @elan_resume._entry, ptr @elan_resume._entry.139, ptr @elan_resume._entry.142, ptr @elan_resume._entry_ptr, ptr @elan_resume._entry_ptr.141, ptr @elan_resume._entry_ptr.144, ptr @elan_set_power._entry, ptr @elan_set_power._entry_ptr, ptr @elan_setup_input_device._entry, ptr @elan_setup_input_device._entry_ptr, ptr @elan_suspend._entry, ptr @elan_suspend._entry_ptr, ptr @elan_sysfs_update_fw._entry, ptr @elan_sysfs_update_fw._entry.102, ptr @elan_sysfs_update_fw._entry.96, ptr @elan_sysfs_update_fw._entry.99, ptr @elan_sysfs_update_fw._entry_ptr, ptr @elan_sysfs_update_fw._entry_ptr.101, ptr @elan_sysfs_update_fw._entry_ptr.104, ptr @elan_sysfs_update_fw._entry_ptr.98, ptr @elan_update_firmware._entry, ptr @elan_update_firmware._entry_ptr, ptr @elan_driver, ptr @.str, ptr @elan_of_match, ptr @elan_pm_ops, ptr @elan_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @elan_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @elan_sysfs_groups, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @init_completion.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @elan_sysfs_group, ptr @elan_baseline_sysfs_group, ptr @elan_sysfs_entries, ptr @dev_attr_product_id, ptr @dev_attr_firmware_version, ptr @dev_attr_sample_version, ptr @dev_attr_iap_version, ptr @dev_attr_fw_checksum, ptr @dev_attr_calibrate, ptr @dev_attr_mode, ptr @dev_attr_update_fw, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @elan_sysfs_update_fw.signature, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @elan_baseline_sysfs_entries, ptr @dev_attr_acquire, ptr @dev_attr_min, ptr @dev_attr_max, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @switch.table.elan_get_fwinfo], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 161, i32 224, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_sysfs_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_query_device_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_setup_input_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_report_trackpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_baseline_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_sysfs_entries to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sample_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iap_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_checksum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_calibrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_store._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_store._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_store._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_store._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_sysfs_update_fw.signature to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_sysfs_update_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_sysfs_update_fw._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_sysfs_update_fw._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_sysfs_update_fw._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_update_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_baseline_sysfs_entries to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_acquire to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_store._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_store._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_store._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_resume._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_resume._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.elan_get_fwinfo to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @elan_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @elan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @elan_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_probe(ptr noundef %client, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  %x_traces.i = alloca i32, align 4
  %y_traces.i = alloca i32, align 4
  %x_mm.i = alloca i32, align 4
  %y_mm.i = alloca i32, align 4
  %hw_x_res.i = alloca i8, align 1
  %hw_y_res.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #11
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %algo.i.i245 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %algo.i.i245 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %algo.i.i245, align 8
  %functionality.i.i246 = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %functionality.i.i246 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %functionality.i.i246, align 4
  %call.i.i247 = tail call i32 %11(ptr noundef %7) #11
  %and.i248 = and i32 %call.i.i247, 253231104
  call void @__sanitizer_cov_trace_const_cmp4(i32 253231104, i32 %and.i248)
  %cmp.i249.not = icmp eq i32 %and.i248, 253231104
  br i1 %cmp.i249.not, label %if.else.if.end7_crit_edge, label %do.end

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %transport_ops.0 = phi ptr [ @elan_i2c_ops, %entry.if.end7_crit_edge ], [ @elan_smbus_ops, %if.else.if.end7_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 244, i32 noundef 3520) #11
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %ops = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transport_ops.0, ptr %ops, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client, ptr %call.i, align 4
  %fw_completion = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %fw_completion to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fw_completion, align 4
  %wait.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #11
  %sysfs_mutex = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %sysfs_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @elan_probe.__key) #11
  %call16 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  %vcc = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call16, ptr %vcc, align 4
  %cmp.i251 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.end11
  %cmp.not = icmp eq ptr %call16, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then19.cleanup_crit_edge, label %do.end25

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %call16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %17) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end11
  %call29 = tail call i32 @regulator_enable(ptr noundef %call16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call29) #14
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %call.i252 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @elan_disable_regulator, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %tobool.not.i = icmp eq i32 %call.i252, 0
  br i1 %tobool.not.i, label %if.end42, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vcc, align 4
  %call.i.i253 = tail call i32 @regulator_disable(ptr noundef %19) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call.i252) #14
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %call43 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.body46, label %if.end56

do.body46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elan_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elan_probe, %if.then51)) #11
          to label %cleanup [label %if.then51], !srcloc !308

if.then51:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elan_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call43) #11
  br label %cleanup

if.end56:                                         ; preds = %if.end42
  %call57 = tail call fastcc i32 @elan_initialize(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  %call61 = tail call fastcc i32 @elan_query_device_info(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_traces.i) #11
  %22 = ptrtoint ptr %x_traces.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %x_traces.i, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y_traces.i) #11
  %23 = ptrtoint ptr %y_traces.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %y_traces.i, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_mm.i) #11
  %24 = ptrtoint ptr %x_mm.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %x_mm.i, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y_mm.i) #11
  %25 = ptrtoint ptr %y_mm.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %y_mm.i, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hw_x_res.i) #11
  %26 = ptrtoint ptr %hw_x_res.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %hw_x_res.i, align 1, !annotation !309
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hw_y_res.i) #11
  %27 = ptrtoint ptr %hw_y_res.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %hw_y_res.i, align 1, !annotation !309
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %max_x.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 8
  %call.i.i254 = tail call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.50, ptr noundef %max_x.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i254)
  %tobool.not.i255 = icmp eq i32 %call.i.i254, 0
  br i1 %tobool.not.i255, label %lor.lhs.false.i, label %if.end64.if.then.i256_crit_edge

if.end64.if.then.i256_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i256

lor.lhs.false.i:                                  ; preds = %if.end64
  %max_y.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 9
  %call.i112.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.51, ptr noundef %max_y.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %tobool4.not.i = icmp eq i32 %call.i112.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i256_crit_edge

lor.lhs.false.i.if.then.i256_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i256

if.then.i256:                                     ; preds = %lor.lhs.false.i.if.then.i256_crit_edge, %if.end64.if.then.i256_crit_edge
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %get_max.i = getelementptr inbounds %struct.elan_transport_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %get_max.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_max.i, align 4
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %max_y7.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 9
  %call8.i = tail call i32 %31(ptr noundef %33, ptr noundef %max_x.i, ptr noundef %max_y7.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then.i256.if.end14.i_crit_edge, label %if.then.i256.elan_query_device_parameters.exit.thread_crit_edge

if.then.i256.elan_query_device_parameters.exit.thread_crit_edge: ; preds = %if.then.i256
  call void @__sanitizer_cov_trace_pc() #13
  br label %elan_query_device_parameters.exit.thread

if.then.i256.if.end14.i_crit_edge:                ; preds = %if.then.i256
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %max_x.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_x.i, align 4
  %dec.i = add i32 %35, -1
  store i32 %dec.i, ptr %max_x.i, align 4
  %36 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_y.i, align 4
  %dec13.i = add i32 %37, -1
  store i32 %dec13.i, ptr %max_y.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then.i256.if.end14.i_crit_edge
  %call.i113.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %x_traces.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i)
  %tobool17.not.i = icmp eq i32 %call.i113.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false18.i, label %if.end14.i.if.then22.i_crit_edge

if.end14.i.if.then22.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i

lor.lhs.false18.i:                                ; preds = %if.end14.i
  %call.i114.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.53, ptr noundef nonnull %y_traces.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i)
  %tobool21.not.i = icmp eq i32 %call.i114.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false18.i.if.end29.i_crit_edge, label %lor.lhs.false18.i.if.then22.i_crit_edge

lor.lhs.false18.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i

lor.lhs.false18.i.if.end29.i_crit_edge:           ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then22.i:                                      ; preds = %lor.lhs.false18.i.if.then22.i_crit_edge, %if.end14.i.if.then22.i_crit_edge
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %get_num_traces.i = getelementptr inbounds %struct.elan_transport_ops, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %get_num_traces.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_num_traces.i, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call25.i = call i32 %41(ptr noundef %43, ptr noundef nonnull %x_traces.i, ptr noundef nonnull %y_traces.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then22.i.if.end29.i_crit_edge, label %if.then22.i.elan_query_device_parameters.exit.thread_crit_edge

if.then22.i.elan_query_device_parameters.exit.thread_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %elan_query_device_parameters.exit.thread

if.then22.i.if.end29.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then22.i.if.end29.i_crit_edge, %lor.lhs.false18.i.if.end29.i_crit_edge
  %44 = ptrtoint ptr %max_x.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_x.i, align 4
  %46 = ptrtoint ptr %x_traces.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %x_traces.i, align 4
  %div.i = udiv i32 %45, %47
  %width_x.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 10
  %48 = ptrtoint ptr %width_x.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div.i, ptr %width_x.i, align 4
  %max_y31.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 9
  %49 = ptrtoint ptr %max_y31.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_y31.i, align 4
  %51 = ptrtoint ptr %y_traces.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %y_traces.i, align 4
  %div32.i = udiv i32 %50, %52
  %width_y.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 11
  %53 = ptrtoint ptr %width_y.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div32.i, ptr %width_y.i, align 4
  %call.i115.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.54, ptr noundef nonnull %x_mm.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i)
  %tobool35.not.i = icmp eq i32 %call.i115.i, 0
  br i1 %tobool35.not.i, label %lor.lhs.false36.i, label %if.end29.i.if.then40.i_crit_edge

if.end29.i.if.then40.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40.i

lor.lhs.false36.i:                                ; preds = %if.end29.i
  %call.i116.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull %y_mm.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %tobool39.not.i = icmp eq i32 %call.i116.i, 0
  br i1 %tobool39.not.i, label %if.else50.i, label %lor.lhs.false36.i.if.then40.i_crit_edge

lor.lhs.false36.i.if.then40.i_crit_edge:          ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40.i

if.then40.i:                                      ; preds = %lor.lhs.false36.i.if.then40.i_crit_edge, %if.end29.i.if.then40.i_crit_edge
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %get_resolution.i = getelementptr inbounds %struct.elan_transport_ops, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %get_resolution.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_resolution.i, align 4
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %call43.i = call i32 %57(ptr noundef %59, ptr noundef nonnull %hw_x_res.i, ptr noundef nonnull %hw_y_res.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.then40.i.elan_query_device_parameters.exit.thread_crit_edge

if.then40.i.elan_query_device_parameters.exit.thread_crit_edge: ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %elan_query_device_parameters.exit.thread

if.end46.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %hw_x_res.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hw_x_res.i, align 1
  %pattern.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 14
  %62 = ptrtoint ptr %pattern.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pattern.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %cmp.i.i = icmp ult i8 %63, 2
  %conv2.i.i = zext i8 %61 to i32
  %..i.i = select i1 %cmp.i.i, i32 10, i32 100
  %.11.i.i = select i1 %cmp.i.i, i32 790, i32 300
  %64 = mul nuw nsw i32 %..i.i, %conv2.i.i
  %mul5.i.i = add nuw nsw i32 %64, %.11.i.i
  %mul6.i.i = mul nuw nsw i32 %mul5.i.i, 10
  %div8.i.i = udiv i32 %mul6.i.i, 254
  %x_res.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 12
  %65 = ptrtoint ptr %x_res.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div8.i.i, ptr %x_res.i, align 4
  %66 = ptrtoint ptr %hw_y_res.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hw_y_res.i, align 1
  %conv2.i118.i = zext i8 %67 to i32
  %68 = mul nuw nsw i32 %..i.i, %conv2.i118.i
  %mul5.i121.i = add nuw nsw i32 %68, %.11.i.i
  %mul6.i122.i = mul nuw nsw i32 %mul5.i121.i, 10
  %div8.i123.i = udiv i32 %mul6.i122.i, 254
  br label %if.end58.i

if.else50.i:                                      ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %max_x.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_x.i, align 4
  %add.i = add i32 %70, 1
  %71 = ptrtoint ptr %x_mm.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %x_mm.i, align 4
  %div52.i = udiv i32 %add.i, %72
  %x_res53.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 12
  %73 = ptrtoint ptr %x_res53.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %div52.i, ptr %x_res53.i, align 4
  %74 = ptrtoint ptr %max_y31.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_y31.i, align 4
  %add55.i = add i32 %75, 1
  %76 = ptrtoint ptr %y_mm.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %y_mm.i, align 4
  %div56.i = udiv i32 %add55.i, %77
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else50.i, %if.end46.i
  %div56.sink.i = phi i32 [ %div56.i, %if.else50.i ], [ %div8.i123.i, %if.end46.i ]
  %y_res57.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 13
  %78 = ptrtoint ptr %y_res57.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %div56.sink.i, ptr %y_res57.i, align 4
  %call.i124.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.56) #11
  br i1 %call.i124.i, label %if.then61.i, label %if.end58.i.if.end62.i_crit_edge

if.end58.i.if.end62.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  %clickpad.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 32
  %79 = ptrtoint ptr %clickpad.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %clickpad.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then61.i, %if.end58.i.if.end62.i_crit_edge
  %call.i125.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.57) #11
  br i1 %call.i125.i, label %if.then65.i, label %if.end62.i.do.end71_crit_edge

if.end62.i.do.end71_crit_edge:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

if.then65.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  %middle_button.i = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 33
  %80 = ptrtoint ptr %middle_button.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %middle_button.i, align 1
  br label %do.end71

elan_query_device_parameters.exit.thread:         ; preds = %if.then40.i.elan_query_device_parameters.exit.thread_crit_edge, %if.then22.i.elan_query_device_parameters.exit.thread_crit_edge, %if.then.i256.elan_query_device_parameters.exit.thread_crit_edge
  %retval.0.i257.ph = phi i32 [ %call43.i, %if.then40.i.elan_query_device_parameters.exit.thread_crit_edge ], [ %call25.i, %if.then22.i.elan_query_device_parameters.exit.thread_crit_edge ], [ %call8.i, %if.then.i256.elan_query_device_parameters.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hw_y_res.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hw_x_res.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_mm.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_mm.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_traces.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_traces.i) #11
  br label %cleanup

do.end71:                                         ; preds = %if.then65.i, %if.end62.i.do.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hw_y_res.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hw_x_res.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_mm.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_mm.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_traces.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_traces.i) #11
  %product_id = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 15
  %81 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %product_id, align 2
  %conv = zext i16 %82 to i32
  %fw_version = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 16
  %83 = ptrtoint ptr %fw_version to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %fw_version, align 4
  %conv72 = zext i8 %84 to i32
  %sm_version = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 17
  %85 = ptrtoint ptr %sm_version to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %sm_version, align 1
  %conv73 = zext i8 %86 to i32
  %iap_version = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 18
  %87 = ptrtoint ptr %iap_version to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %iap_version, align 2
  %conv74 = zext i8 %88 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv72, i32 noundef %conv73, i32 noundef %conv74) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elan_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elan_probe, %if.then87)) #11
          to label %do.end92 [label %if.then87], !srcloc !308

if.then87:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %max_x.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_x.i, align 4
  %91 = ptrtoint ptr %max_y31.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_y31.i, align 4
  %93 = ptrtoint ptr %width_x.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %width_x.i, align 4
  %95 = ptrtoint ptr %width_y.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %width_y.i, align 4
  %x_res = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 12
  %97 = ptrtoint ptr %x_res to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %x_res, align 4
  %99 = ptrtoint ptr %y_res57.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %y_res57.i, align 4
  %ic_type = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 24
  %101 = ptrtoint ptr %ic_type to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %ic_type, align 2
  %conv88 = zext i16 %102 to i32
  %pattern = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 14
  %103 = ptrtoint ptr %pattern to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %pattern, align 4
  %conv89 = zext i8 %104 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elan_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %98, i32 noundef %100, i32 noundef %conv88, i32 noundef %conv89) #11
  br label %do.end92

do.end92:                                         ; preds = %if.then87, %do.end71
  %call93 = call fastcc i32 @elan_setup_input_device(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %do.end92.cleanup_crit_edge

do.end92.cleanup_crit_edge:                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end96:                                         ; preds = %do.end92
  %call.i258 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.23) #11
  br i1 %call.i258, label %if.then99, label %if.end96.if.end104_crit_edge

if.end96.if.end104_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then99:                                        ; preds = %if.end96
  %call100 = call fastcc i32 @elan_setup_trackpoint_input_device(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then99.if.end104_crit_edge, label %if.then99.cleanup_crit_edge

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then99.if.end104_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.end104:                                        ; preds = %if.then99.if.end104_crit_edge, %if.end96.if.end104_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %105 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %irq, align 4
  %call.i259 = call ptr @irq_get_irq_data(i32 noundef %106) #11
  %tobool.not.i260 = icmp eq ptr %call.i259, null
  br i1 %tobool.not.i260, label %irq_get_trigger_type.exit.thread, label %irq_get_trigger_type.exit

irq_get_trigger_type.exit.thread:                 ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %irq, align 4
  br label %115

irq_get_trigger_type.exit:                        ; preds = %if.end104
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i259, i32 0, i32 3
  %109 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %common.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %and.i.i = and i32 %112, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool106.not = icmp eq i32 %and.i.i, 0
  %113 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq, align 4
  %call105.op = or i32 %and.i.i, 8192
  br i1 %tobool106.not, label %irq_get_trigger_type.exit._crit_edge, label %irq_get_trigger_type.exit._crit_edge268

irq_get_trigger_type.exit._crit_edge268:          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %117

irq_get_trigger_type.exit._crit_edge:             ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %115

115:                                              ; preds = %irq_get_trigger_type.exit._crit_edge, %irq_get_trigger_type.exit.thread
  %116 = phi i32 [ %108, %irq_get_trigger_type.exit.thread ], [ %114, %irq_get_trigger_type.exit._crit_edge ]
  br label %117

117:                                              ; preds = %115, %irq_get_trigger_type.exit._crit_edge268
  %118 = phi i32 [ %116, %115 ], [ %114, %irq_get_trigger_type.exit._crit_edge268 ]
  %119 = phi i32 [ 8194, %115 ], [ %call105.op, %irq_get_trigger_type.exit._crit_edge268 ]
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call110 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %118, ptr noundef null, ptr noundef nonnull @elan_isr, i32 noundef %119, ptr noundef %name, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end117, label %do.end115

do.end115:                                        ; preds = %117
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %121) #14
  br label %cleanup

if.end117:                                        ; preds = %117
  %call118 = call i32 @devm_device_add_groups(ptr noundef %dev1, ptr noundef nonnull @elan_sysfs_groups) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end124, label %do.end123

do.end123:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call118) #14
  br label %cleanup

if.end124:                                        ; preds = %if.end117
  %input = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 1
  %122 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %input, align 4
  %call125 = call i32 @input_register_device(ptr noundef %123) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end131, label %do.end130

do.end130:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call125) #14
  br label %cleanup

if.end131:                                        ; preds = %if.end124
  %tp_input = getelementptr inbounds %struct.elan_tp_data, ptr %call.i, i32 0, i32 2
  %124 = ptrtoint ptr %tp_input to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tp_input, align 4
  %tobool132.not = icmp eq ptr %125, null
  br i1 %tobool132.not, label %if.end131.if.end143_crit_edge, label %if.then133

if.end131.if.end143_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

if.then133:                                       ; preds = %if.end131
  %call135 = call i32 @input_register_device(ptr noundef nonnull %125) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then133.if.end143_crit_edge, label %do.end140

if.then133.if.end143_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

do.end140:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call135) #14
  br label %cleanup

if.end143:                                        ; preds = %if.then133.if.end143_crit_edge, %if.end131.if.end143_crit_edge
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %126 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %of_node, align 8
  %tobool144.not = icmp eq ptr %127, null
  br i1 %tobool144.not, label %if.then145, label %if.end143.cleanup_crit_edge

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then145:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  %call146 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then145, %if.end143.cleanup_crit_edge, %do.end140, %do.end130, %do.end123, %do.end115, %if.then99.cleanup_crit_edge, %do.end92.cleanup_crit_edge, %elan_query_device_parameters.exit.thread, %if.end60.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then51, %do.body46, %do.end41, %do.end34, %do.end25, %if.then19.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call29, %do.end34 ], [ %call.i252, %do.end41 ], [ %call110, %do.end115 ], [ %call118, %do.end123 ], [ %call125, %do.end130 ], [ %call135, %do.end140 ], [ -5, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ %17, %do.end25 ], [ -517, %if.then19.cleanup_crit_edge ], [ -6, %if.then51 ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call61, %if.end60.cleanup_crit_edge ], [ %call93, %do.end92.cleanup_crit_edge ], [ %call100, %if.then99.cleanup_crit_edge ], [ 0, %if.then145 ], [ 0, %if.end143.cleanup_crit_edge ], [ -6, %do.body46 ], [ %retval.0.i257.ph, %elan_query_device_parameters.exit.thread ]
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
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @elan_disable_regulator(ptr nocapture noundef readonly %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vcc = getelementptr inbounds %struct.elan_tp_data, ptr %_data, i32 0, i32 3
  %0 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcc, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elan_initialize(ptr noundef %data, i1 noundef zeroext %skip_reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 4
  %product_id.i.i = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 15
  %pattern.i.i = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 14
  %ic_type.i.i = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 24
  %sm_version.i.i = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 17
  %clickpad.i.i = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 32
  %mode.i = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 23
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %skip_reset.addr.0.off0 = phi i1 [ %skip_reset, %entry ], [ false, %if.end.do.body_crit_edge ]
  %repeat.0 = phi i32 [ 3, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  br i1 %skip_reset.addr.0.off0, label %do.body.if.end4.i_crit_edge, label %if.then.i

do.body.if.end4.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then.i:                                        ; preds = %do.body
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %do.end.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %call.i) #14
  br label %if.end

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %do.body.if.end4.i_crit_edge
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %get_product_id.i.i = getelementptr inbounds %struct.elan_transport_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %get_product_id.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_product_id.i.i, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call.i.i = tail call i32 %9(ptr noundef %11, ptr noundef %product_id.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %if.end4.i
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %get_pattern.i.i = getelementptr inbounds %struct.elan_transport_ops, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %get_pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_pattern.i.i, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call3.i.i = tail call i32 %15(ptr noundef %17, ptr noundef %pattern.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %elan_query_product.exit.i, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

elan_query_product.exit.i:                        ; preds = %if.end.i.i
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %get_sm_version.i.i = getelementptr inbounds %struct.elan_transport_ops, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %get_sm_version.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_sm_version.i.i, align 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %pattern.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pattern.i.i, align 4
  %call10.i.i = tail call i32 %21(ptr noundef %23, i8 noundef zeroext %25, ptr noundef %ic_type.i.i, ptr noundef %sm_version.i.i, ptr noundef %clickpad.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool6.not.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %elan_query_product.exit.i.if.end_crit_edge

elan_query_product.exit.i.if.end_crit_edge:       ; preds = %elan_query_product.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end8.i:                                        ; preds = %elan_query_product.exit.i
  %26 = ptrtoint ptr %ic_type.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ic_type.i.i, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i16 %27, label %if.end8.i.if.end21.i_crit_edge [
    i16 14, label %if.then.i.i
    i16 8, label %land.lhs.true.i.i
  ]

if.end8.i.if.end21.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then.i.i:                                      ; preds = %if.end8.i
  %29 = ptrtoint ptr %product_id.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %product_id.i.i, align 2
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.145)
  switch i16 %30, label %if.then.i.i.if.end21.i_crit_edge [
    i16 9, label %if.then.i.i.if.then11.i_crit_edge
    i16 19, label %if.then.i.i.if.then11.i_crit_edge7
    i16 5, label %if.then.i.i.if.then11.i_crit_edge8
    i16 6, label %if.then.i.i.if.then11.i_crit_edge9
    i16 7, label %if.then.i.i.if.then11.i_crit_edge10
  ]

if.then.i.i.if.then11.i_crit_edge10:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then.i.i.if.then11.i_crit_edge9:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then.i.i.if.then11.i_crit_edge8:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then.i.i.if.then11.i_crit_edge7:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then.i.i.if.then11.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then.i.i.if.end21.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

land.lhs.true.i.i:                                ; preds = %if.end8.i
  %32 = ptrtoint ptr %product_id.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %product_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 38, i16 %33)
  %cmp10.i.i = icmp eq i16 %33, 38
  br i1 %cmp10.i.i, label %land.lhs.true.i.i.if.then11.i_crit_edge, label %land.lhs.true.i.i.if.end21.i_crit_edge

land.lhs.true.i.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

land.lhs.true.i.i.if.then11.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then11.i:                                      ; preds = %land.lhs.true.i.i.if.then11.i_crit_edge, %if.then.i.i.if.then11.i_crit_edge, %if.then.i.i.if.then11.i_crit_edge7, %if.then.i.i.if.then11.i_crit_edge8, %if.then.i.i.if.then11.i_crit_edge9, %if.then.i.i.if.then11.i_crit_edge10
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %sleep_control.i = getelementptr inbounds %struct.elan_transport_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %sleep_control.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sleep_control.i, align 4
  %call13.i = tail call i32 %37(ptr noundef %1, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end20.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev19.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.40, i32 noundef %call13.i) #14
  br label %if.end

if.end20.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 200) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end20.i, %land.lhs.true.i.i.if.end21.i_crit_edge, %if.then.i.i.if.end21.i_crit_edge, %if.end8.i.if.end21.i_crit_edge
  %tobool10.not84.i = phi i1 [ false, %if.end20.i ], [ true, %if.end8.i.if.end21.i_crit_edge ], [ true, %if.then.i.i.if.end21.i_crit_edge ], [ true, %land.lhs.true.i.i.if.end21.i_crit_edge ]
  %38 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mode.i, align 4
  %40 = or i8 %39, 1
  store i8 %40, ptr %mode.i, align 4
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %set_mode.i = getelementptr inbounds %struct.elan_transport_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_mode.i, align 4
  %call25.i = tail call i32 %44(ptr noundef %1, i8 noundef zeroext %40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end32.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev31.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i, ptr noundef nonnull @.str.43, i32 noundef %call25.i) #14
  br label %if.end

if.end32.i:                                       ; preds = %if.end21.i
  br i1 %tobool10.not84.i, label %if.then34.i, label %if.end32.i.cleanup_crit_edge

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34.i:                                      ; preds = %if.end32.i
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %sleep_control36.i = getelementptr inbounds %struct.elan_transport_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %sleep_control36.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sleep_control36.i, align 4
  %call37.i = tail call i32 %48(ptr noundef %1, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then34.i.cleanup_crit_edge, label %do.end42.i

if.then34.i.cleanup_crit_edge:                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end42.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev43.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i, ptr noundef nonnull @.str.40, i32 noundef %call37.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end42.i, %do.end30.i, %do.end18.i, %elan_query_product.exit.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.end4.i.if.end_crit_edge ], [ %call3.i.i, %if.end.i.i.if.end_crit_edge ], [ %call10.i.i, %elan_query_product.exit.i.if.end_crit_edge ], [ %call.i, %do.end.i ], [ %call37.i, %do.end42.i ], [ %call25.i, %do.end30.i ], [ %call13.i, %do.end18.i ]
  tail call void @msleep(i32 noundef 30) #11
  %dec = add nsw i32 %repeat.0, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then34.i.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.end.cleanup_crit_edge ], [ 0, %if.end32.i.cleanup_crit_edge ], [ 0, %if.then34.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elan_query_device_info(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %get_version = getelementptr inbounds %struct.elan_transport_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %get_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_version, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %pattern = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 14
  %6 = ptrtoint ptr %pattern to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pattern, align 4
  %fw_version = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 16
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext %7, i1 noundef zeroext false, ptr noundef %fw_version) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_checksum = getelementptr inbounds %struct.elan_transport_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %get_checksum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_checksum, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %fw_checksum = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 19
  %call3 = tail call i32 %11(ptr noundef %13, i1 noundef zeroext false, ptr noundef %fw_checksum) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %get_version8 = getelementptr inbounds %struct.elan_transport_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %get_version8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_version8, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %pattern to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pattern, align 4
  %iap_version = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 18
  %call11 = tail call i32 %17(ptr noundef %19, i8 noundef zeroext %21, i1 noundef zeroext true, ptr noundef %iap_version) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %get_pressure_adjustment = getelementptr inbounds %struct.elan_transport_ops, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %get_pressure_adjustment to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_pressure_adjustment, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %pressure_adjustment = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 22
  %call17 = tail call i32 %25(ptr noundef %27, ptr noundef %pressure_adjustment) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %get_report_features = getelementptr inbounds %struct.elan_transport_ops, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %get_report_features to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_report_features, align 4
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %pattern to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pattern, align 4
  %report_features = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 20
  %report_len = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 21
  %call24 = tail call i32 %31(ptr noundef %33, i8 noundef zeroext %35, ptr noundef %report_features, ptr noundef %report_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %ic_type = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 24
  %36 = ptrtoint ptr %ic_type to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ic_type, align 2
  %product_id = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 15
  %38 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %product_id, align 2
  %call28 = tail call fastcc i32 @elan_i2c_lookup_quirks(i16 noundef zeroext %37, i16 noundef zeroext %39)
  %quirks = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 34
  %40 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call28, ptr %quirks, align 4
  %41 = ptrtoint ptr %iap_version to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %iap_version, align 2
  %fw_validpage_count = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 25
  %fw_signature_address = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 27
  %fw_page_size = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 26
  %call31 = tail call fastcc i32 @elan_get_fwinfo(i16 noundef zeroext %37, i8 noundef zeroext %42, ptr noundef %fw_validpage_count, ptr noundef %fw_signature_address, ptr noundef %fw_page_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end27.cleanup_crit_edge, label %do.end

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %iap_version to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %iap_version, align 2
  %conv = zext i8 %46 to i32
  %47 = ptrtoint ptr %ic_type to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ic_type, align 2
  %conv37 = zext i16 %48 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %conv37) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end27.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call11, %if.end6.cleanup_crit_edge ], [ %call17, %if.end14.cleanup_crit_edge ], [ %call24, %if.end20.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elan_setup_input_device(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %width_x = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 10
  %2 = ptrtoint ptr %width_x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width_x, align 4
  %width_y = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %width_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width_y, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5)
  %7 = tail call i32 @llvm.umin.i32(i32 %3, i32 %5)
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.58, ptr %call, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 24, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1267, ptr %vendor, align 2
  %product_id = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 15
  %11 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %product_id, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %product, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %driver_data.i.i, align 4
  %call12 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call, i32 noundef 5, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.59, i32 noundef %call12) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %evbit, align 4
  %or.i = or i32 %16, 8
  store i32 %or.i, ptr %evbit, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %propbit, align 4
  %or.i104 = or i32 %18, 1
  store i32 %or.i104, ptr %propbit, align 4
  %clickpad = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 32
  %19 = ptrtoint ptr %clickpad to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %clickpad, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %or.i105 = or i32 %18, 5
  %21 = ptrtoint ptr %propbit to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i105, ptr %propbit, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end15
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %or.i106 = or i32 %23, 131072
  store i32 %or.i106, ptr %add.ptr.i, align 4
  %middle_button = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 33
  %24 = ptrtoint ptr %middle_button to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %middle_button, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22.not = icmp eq i8 %25, 0
  br i1 %tobool22.not, label %if.else.if.end27_crit_edge, label %if.then23

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %or.i108 = or i32 %23, 393216
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i108, ptr %add.ptr.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.else.if.end27_crit_edge, %if.then18
  %add.ptr.i109 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 8
  %27 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i109, align 4
  %or.i110 = or i32 %28, 65536
  store i32 %or.i110, ptr %add.ptr.i109, align 4
  %max_x = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 8
  %29 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_x, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef %30, i32 noundef 0, i32 noundef 0) #11
  %max_y = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 9
  %31 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_y, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 0, i32 noundef %32, i32 noundef 0, i32 noundef 0) #11
  %x_res = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 12
  %33 = ptrtoint ptr %x_res to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %x_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call) #11
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 26
  %35 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end27.input_abs_set_res.exit_crit_edge, label %if.then.i

if.end27.input_abs_set_res.exit_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i = getelementptr %struct.input_absinfo, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.end27.input_abs_set_res.exit_crit_edge
  %y_res = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 13
  %38 = ptrtoint ptr %y_res to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %y_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call) #11
  %40 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i112 = icmp eq ptr %41, null
  br i1 %tobool.not.i112, label %input_abs_set_res.exit.input_abs_set_res.exit115_crit_edge, label %if.then.i114

input_abs_set_res.exit.input_abs_set_res.exit115_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit115

if.then.i114:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i113 = getelementptr %struct.input_absinfo, ptr %41, i32 1, i32 5
  %42 = ptrtoint ptr %resolution.i113 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %resolution.i113, align 4
  br label %input_abs_set_res.exit115

input_abs_set_res.exit115:                        ; preds = %if.then.i114, %input_abs_set_res.exit.input_abs_set_res.exit115_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  %report_features = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 20
  %43 = ptrtoint ptr %report_features to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %report_features, align 4
  %and = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %input_abs_set_res.exit115.if.end32_crit_edge, label %if.then31

input_abs_set_res.exit115.if.end32_crit_edge:     ; preds = %input_abs_set_res.exit115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then31:                                        ; preds = %input_abs_set_res.exit115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %input_abs_set_res.exit115.if.end32_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 25, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  %45 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_x, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 53, i32 noundef 0, i32 noundef %46, i32 noundef 0, i32 noundef 0) #11
  %47 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_y, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 54, i32 noundef 0, i32 noundef %48, i32 noundef 0, i32 noundef 0) #11
  %49 = ptrtoint ptr %x_res to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %x_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call) #11
  %51 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i117 = icmp eq ptr %52, null
  br i1 %tobool.not.i117, label %if.end32.input_abs_set_res.exit120_crit_edge, label %if.then.i119

if.end32.input_abs_set_res.exit120_crit_edge:     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit120

if.then.i119:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i118 = getelementptr %struct.input_absinfo, ptr %52, i32 53, i32 5
  %53 = ptrtoint ptr %resolution.i118 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %resolution.i118, align 4
  br label %input_abs_set_res.exit120

input_abs_set_res.exit120:                        ; preds = %if.then.i119, %if.end32.input_abs_set_res.exit120_crit_edge
  %54 = ptrtoint ptr %y_res to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %y_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call) #11
  %56 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i122 = icmp eq ptr %57, null
  br i1 %tobool.not.i122, label %input_abs_set_res.exit120.input_abs_set_res.exit125_crit_edge, label %if.then.i124

input_abs_set_res.exit120.input_abs_set_res.exit125_crit_edge: ; preds = %input_abs_set_res.exit120
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit125

if.then.i124:                                     ; preds = %input_abs_set_res.exit120
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i123 = getelementptr %struct.input_absinfo, ptr %57, i32 54, i32 5
  %58 = ptrtoint ptr %resolution.i123 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %resolution.i123, align 4
  br label %input_abs_set_res.exit125

input_abs_set_res.exit125:                        ; preds = %if.then.i124, %input_abs_set_res.exit120.input_abs_set_res.exit125_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  %59 = ptrtoint ptr %report_features to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %report_features, align 4
  %and38 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %input_abs_set_res.exit125.if.end42_crit_edge, label %if.then40

input_abs_set_res.exit125.if.end42_crit_edge:     ; preds = %input_abs_set_res.exit125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then40:                                        ; preds = %input_abs_set_res.exit125
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %6, 15
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 48, i32 noundef 0, i32 noundef %mul, i32 noundef 0, i32 noundef 0) #11
  %mul41 = mul i32 %7, 15
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 49, i32 noundef 0, i32 noundef %mul41, i32 noundef 0, i32 noundef 0) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %input_abs_set_res.exit125.if.end42_crit_edge
  %input43 = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 1
  %61 = ptrtoint ptr %input43 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call, ptr %input43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ 0, %if.end42 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elan_setup_trackpoint_input_device(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.61, ptr %call, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 24, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1267, ptr %vendor, align 2
  %product_id = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 15
  %5 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %product_id, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %product, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %driver_data.i.i, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 2, i32 noundef 0) #11
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 2, i32 noundef 1) #11
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 272) #11
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 273) #11
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 274) #11
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %propbit, align 4
  %or.i23 = or i32 %10, 33
  store i32 %or.i23, ptr %propbit, align 4
  %tp_input = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %tp_input to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %tp_input, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %report = alloca [39 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %report) #11
  %0 = call ptr @memset(ptr %report, i32 255, i32 39)
  %in_fw_update = getelementptr inbounds %struct.elan_tp_data, ptr %dev_id, i32 0, i32 6
  %1 = ptrtoint ptr %in_fw_update to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %in_fw_update, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fw_completion = getelementptr inbounds %struct.elan_tp_data, ptr %dev_id, i32 0, i32 5
  tail call void @complete(ptr noundef %fw_completion) #11
  br label %out

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.elan_tp_data, ptr %dev_id, i32 0, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_report = getelementptr inbounds %struct.elan_transport_ops, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %get_report to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_report, align 4
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %report_len = getelementptr inbounds %struct.elan_tp_data, ptr %dev_id, i32 0, i32 21
  %9 = ptrtoint ptr %report_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %report_len, align 4
  %call = call i32 %6(ptr noundef %8, ptr noundef nonnull %report, i32 noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [39 x i8], ptr %report, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %12, label %do.end [
    i8 93, label %sw.bb
    i8 96, label %sw.bb5
    i8 94, label %if.end3.sw.bb7_crit_edge
    i8 95, label %if.end3.sw.bb7_crit_edge20
  ]

if.end3.sw.bb7_crit_edge20:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end3.sw.bb7_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @elan_report_absolute(ptr noundef %dev_id, ptr noundef nonnull %report, i1 noundef zeroext false)
  br label %out

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @elan_report_absolute(ptr noundef %dev_id, ptr noundef nonnull %report, i1 noundef zeroext true)
  br label %out

sw.bb7:                                           ; preds = %if.end3.sw.bb7_crit_edge, %if.end3.sw.bb7_crit_edge20
  %tp_input.i = getelementptr inbounds %struct.elan_tp_data, ptr %dev_id, i32 0, i32 2
  %14 = ptrtoint ptr %tp_input.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tp_input.i, align 4
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void @pm_wakeup_dev_event(ptr noundef %dev.i, i32 noundef 0, i1 noundef zeroext false) #11
  %18 = ptrtoint ptr %tp_input.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp_input.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %sw.bb7
  %.b52.i = load i1, ptr @elan_report_trackpoint.__print_once, align 1
  br i1 %.b52.i, label %do.body.i.out_crit_edge, label %if.then3.i

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @elan_report_trackpoint.__print_once, align 1
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  %dev6.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i, ptr noundef nonnull @.str.66) #14
  br label %out

if.end9.i:                                        ; preds = %sw.bb7
  %arrayidx.i = getelementptr inbounds i8, ptr %report, i32 3
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %24 = and i8 %23, 1
  %25 = zext i8 %24 to i32
  call void @input_event(ptr noundef %15, i32 noundef 1, i32 noundef 272, i32 noundef %25) #11
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %28 = lshr i8 %27, 1
  %.lobit.i = and i8 %28, 1
  %29 = zext i8 %.lobit.i to i32
  call void @input_event(ptr noundef %15, i32 noundef 1, i32 noundef 273, i32 noundef %29) #11
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %32 = lshr i8 %31, 2
  %.lobit57.i = and i8 %32, 1
  %33 = zext i8 %.lobit57.i to i32
  call void @input_event(ptr noundef %15, i32 noundef 1, i32 noundef 274, i32 noundef %33) #11
  %arrayidx17.i = getelementptr inbounds i8, ptr %report, i32 6
  %34 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx17.i, align 1
  %36 = and i8 %35, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %36)
  %cmp.i = icmp eq i8 %36, 6
  br i1 %cmp.i, label %if.then21.i, label %if.end9.i.if.end33.i_crit_edge

if.end9.i.if.end33.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then21.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx22.i = getelementptr inbounds i8, ptr %report, i32 7
  %37 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %38 to i32
  %arrayidx24.i = getelementptr inbounds i8, ptr %report, i32 4
  %39 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx24.i, align 1
  %41 = xor i8 %40, -128
  %xor.i = zext i8 %41 to i32
  %shl.neg.i = mul nsw i32 %xor.i, -2
  %sub.i = add nsw i32 %shl.neg.i, %conv23.i
  %arrayidx26.i = getelementptr inbounds i8, ptr %report, i32 5
  %42 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx26.i, align 1
  %44 = xor i8 %43, -128
  %xor28.i = zext i8 %44 to i32
  %shl29.i = shl nuw nsw i32 %xor28.i, 1
  %arrayidx30.i = getelementptr inbounds i8, ptr %report, i32 8
  %45 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %46 to i32
  %sub32.i = sub nsw i32 %shl29.i, %conv31.i
  call void @input_event(ptr noundef %15, i32 noundef 2, i32 noundef 0, i32 noundef %sub.i) #11
  call void @input_event(ptr noundef %15, i32 noundef 2, i32 noundef 1, i32 noundef %sub32.i) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then21.i, %if.end9.i.if.end33.i_crit_edge
  call void @input_event(ptr noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %out

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %12 to i32
  %47 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %conv) #14
  br label %out

out:                                              ; preds = %do.end, %if.end33.i, %if.then3.i, %do.body.i.out_crit_edge, %sw.bb5, %sw.bb, %if.end.out_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %report) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elan_i2c_lookup_quirks(i16 noundef zeroext %ic_type, i16 noundef zeroext %product_id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %ic_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.147)
  switch i16 %ic_type, label %entry.for.inc.4_crit_edge [
    i16 13, label %land.lhs.true
    i16 16, label %land.lhs.true.2
    i16 20, label %land.lhs.true.3
  ]

entry.for.inc.4_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 194, i16 %product_id)
  %switch.selectcmp.case1 = icmp eq i16 %product_id, 194
  call void @__sanitizer_cov_trace_const_cmp2(i16 184, i16 %product_id)
  %switch.selectcmp.case2 = icmp eq i16 %product_id, 184
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %for.inc.4

land.lhs.true.2:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 191, i16 %product_id)
  %cmp9.2 = icmp eq i16 %product_id, 191
  br label %for.inc.4

land.lhs.true.3:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = and i16 %product_id, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 288, i16 %1)
  %switch = icmp eq i16 %1, 288
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true, %entry.for.inc.4_crit_edge
  %quirks.1.4.shrunk = phi i1 [ %cmp9.2, %land.lhs.true.2 ], [ false, %entry.for.inc.4_crit_edge ], [ %switch.selectcmp, %land.lhs.true ], [ %switch, %land.lhs.true.3 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %ic_type)
  %cmp14 = icmp ugt i16 %ic_type, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 290, i16 %product_id)
  %cmp18 = icmp ugt i16 %product_id, 290
  %or.cond = and i1 %cmp14, %cmp18
  %quirks.251 = or i1 %quirks.1.4.shrunk, %or.cond
  %quirks.2 = zext i1 %quirks.251 to i32
  ret i32 %quirks.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @elan_get_fwinfo(i16 noundef zeroext %ic_type, i8 noundef zeroext %iap_version, ptr nocapture noundef %validpage_count, ptr nocapture noundef writeonly %signature_address, ptr nocapture noundef writeonly %page_size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %ic_type)
  %0 = icmp ult i16 %ic_type, 22
  br i1 %0, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  %1 = ptrtoint ptr %validpage_count to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %validpage_count, align 2
  %2 = ptrtoint ptr %signature_address to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %signature_address, align 4
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i16 %ic_type to i32
  %switch.shifted = lshr i32 3899337, %switch.maskindex
  %3 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.lobit.not = icmp eq i32 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %4 = sext i16 %ic_type to i32
  %switch.gep = getelementptr inbounds [22 x i16], ptr @switch.table.elan_get_fwinfo, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load = load i16, ptr %switch.gep, align 2
  %6 = ptrtoint ptr %validpage_count to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %switch.load, ptr %validpage_count, align 2
  %conv8 = zext i16 %switch.load to i32
  %mul = shl nuw nsw i32 %conv8, 6
  %sub = add nsw i32 %mul, -6
  %7 = ptrtoint ptr %signature_address to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %signature_address, align 4
  %8 = and i16 %ic_type, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %8)
  %switch = icmp eq i16 %8, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %iap_version)
  %cmp15 = icmp ugt i8 %iap_version, 1
  %or.cond51 = and i1 %switch, %cmp15
  br i1 %or.cond51, label %if.then, label %if.else

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %validpage_count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %validpage_count, align 2
  %11 = lshr i16 %10, 3
  store i16 %11, ptr %validpage_count, align 2
  br label %return

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %ic_type)
  %cmp20 = icmp ult i16 %ic_type, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %iap_version)
  %cmp24.not = icmp eq i8 %iap_version, 0
  %or.cond = or i1 %cmp20, %cmp24.not
  br i1 %or.cond, label %if.else.return_crit_edge, label %if.then26

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %validpage_count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %validpage_count, align 2
  %14 = lshr i16 %13, 1
  store i16 %14, ptr %validpage_count, align 2
  br label %return

return:                                           ; preds = %if.then26, %if.else.return_crit_edge, %if.then, %sw.default
  %.sink52 = phi i16 [ 512, %if.then ], [ 128, %if.then26 ], [ 0, %sw.default ], [ 64, %if.else.return_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then26 ], [ -6, %sw.default ], [ 0, %if.else.return_crit_edge ]
  %15 = ptrtoint ptr %page_size to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %.sink52, ptr %page_size, align 2
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elan_report_absolute(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %packet, i1 noundef zeroext %high_precision) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %arrayidx = getelementptr i8, ptr %packet, i32 4
  %arrayidx2 = getelementptr i8, ptr %packet, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %packet, i32 30
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void @pm_wakeup_dev_event(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext false) #11
  %conv6 = zext i8 %3 to i32
  %and7 = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8 = icmp ne i32 %and7, 0
  tail call fastcc void @elan_report_contact(ptr noundef %data, i32 noundef 0, i1 noundef zeroext %tobool8, i1 noundef zeroext %high_precision, ptr noundef %packet, ptr noundef %arrayidx)
  %spec.select.idx = select i1 %tobool8, i32 5, i32 0
  %spec.select = getelementptr i8, ptr %arrayidx, i32 %spec.select.idx
  %and7.1 = and i32 %conv6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool8.1 = icmp ne i32 %and7.1, 0
  tail call fastcc void @elan_report_contact(ptr noundef %data, i32 noundef 1, i1 noundef zeroext %tobool8.1, i1 noundef zeroext %high_precision, ptr noundef %packet, ptr noundef %spec.select)
  %spec.select.idx.1 = select i1 %tobool8.1, i32 5, i32 0
  %spec.select.1 = getelementptr i8, ptr %spec.select, i32 %spec.select.idx.1
  %and7.2 = and i32 %conv6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %tobool8.2 = icmp ne i32 %and7.2, 0
  tail call fastcc void @elan_report_contact(ptr noundef %data, i32 noundef 2, i1 noundef zeroext %tobool8.2, i1 noundef zeroext %high_precision, ptr noundef %packet, ptr noundef %spec.select.1)
  %spec.select.idx.2 = select i1 %tobool8.2, i32 5, i32 0
  %spec.select.2 = getelementptr i8, ptr %spec.select.1, i32 %spec.select.idx.2
  %and7.3 = and i32 %conv6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.3)
  %tobool8.3 = icmp ne i32 %and7.3, 0
  tail call fastcc void @elan_report_contact(ptr noundef %data, i32 noundef 3, i1 noundef zeroext %tobool8.3, i1 noundef zeroext %high_precision, ptr noundef %packet, ptr noundef %spec.select.2)
  %spec.select.idx.3 = select i1 %tobool8.3, i32 5, i32 0
  %spec.select.3 = getelementptr i8, ptr %spec.select.2, i32 %spec.select.idx.3
  %and7.4 = and i32 %conv6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.4)
  %tobool8.4 = icmp ne i32 %and7.4, 0
  tail call fastcc void @elan_report_contact(ptr noundef %data, i32 noundef 4, i1 noundef zeroext %tobool8.4, i1 noundef zeroext %high_precision, ptr noundef %packet, ptr noundef %spec.select.3)
  %and14 = and i32 %conv6, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 272, i32 noundef %and14) #11
  %and16 = lshr i32 %conv6, 2
  %and16.lobit = and i32 %and16, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 274, i32 noundef %and16.lobit) #11
  %and18 = lshr i32 %conv6, 1
  %and18.lobit = and i32 %and18, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 273, i32 noundef %and18.lobit) #11
  %8 = lshr i8 %5, 6
  %.lobit = and i8 %8, 1
  %9 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 25, i32 noundef %9) #11
  tail call void @input_mt_report_pointer_emulation(ptr noundef %1, i1 noundef zeroext true) #11
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elan_report_contact(ptr nocapture noundef readonly %data, i32 noundef %contact_num, i1 noundef zeroext %contact_valid, i1 noundef zeroext %high_precision, ptr nocapture noundef readonly %packet, ptr nocapture noundef readonly %finger_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %input2 = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input2, align 4
  br i1 %contact_valid, label %if.then, label %if.else73

if.then:                                          ; preds = %entry
  br i1 %high_precision, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %finger_data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %finger_data, align 1
  %conv = zext i16 %3 to i32
  %arrayidx5 = getelementptr i8, ptr %finger_data, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %arrayidx5, align 1
  %conv7 = zext i16 %5 to i32
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %finger_data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %finger_data, align 1
  %conv9 = zext i8 %7 to i32
  %and = shl nuw nsw i32 %conv9, 4
  %shl = and i32 %and, 3840
  %arrayidx10 = getelementptr i8, ptr %finger_data, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %or = or i32 %shl, %conv11
  %and14 = shl nuw nsw i32 %conv9, 8
  %shl15 = and i32 %and14, 3840
  %arrayidx16 = getelementptr i8, ptr %finger_data, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %11 to i32
  %or18 = or i32 %shl15, %conv17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %pos_y.0 = phi i32 [ %conv7, %if.then4 ], [ %or18, %if.else ]
  %pos_x.0 = phi i32 [ %conv, %if.then4 ], [ %or, %if.else ]
  %max_x = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 8
  %12 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos_x.0, i32 %13)
  %cmp = icmp ugt i32 %pos_x.0, %13
  br i1 %cmp, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %max_y = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 9
  %14 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos_y.0, i32 %15)
  %cmp20 = icmp ugt i32 %pos_y.0, %15
  br i1 %cmp20, label %lor.lhs.false.do.body_crit_edge, label %if.end32

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elan_report_contact.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elan_report_contact, %if.then28)) #11
          to label %cleanup [label %if.then28], !srcloc !308

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %parent = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %18 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_x, align 4
  %max_y30 = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 9
  %20 = ptrtoint ptr %max_y30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_y30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elan_report_contact.__UNIQUE_ID_ddebug290, ptr noundef %17, ptr noundef nonnull @.str.65, i32 noundef %contact_num, i32 noundef %pos_x.0, i32 noundef %pos_y.0, i32 noundef %19, i32 noundef %21) #11
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  %arrayidx33 = getelementptr i8, ptr %finger_data, i32 4
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %pressure_adjustment = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 22
  %24 = ptrtoint ptr %pressure_adjustment to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pressure_adjustment, align 4
  %add = add i32 %25, %conv34
  %26 = tail call i32 @llvm.umin.i32(i32 %add, i32 255)
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %contact_num) #11
  %call39 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #11
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %pos_x.0) #11
  %27 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_y, align 4
  %sub = sub i32 %28, %pos_y.0
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %sub) #11
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 58, i32 noundef %26) #11
  %report_features = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 20
  %29 = ptrtoint ptr %report_features to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %report_features, align 4
  %and41 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end32.cleanup_crit_edge, label %if.then43

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %add46 = add i32 %contact_num, 33
  %arrayidx47 = getelementptr i8, ptr %packet, i32 %add46
  %arrayidx49 = getelementptr i8, ptr %finger_data, i32 3
  %cond.in.in = select i1 %high_precision, ptr %arrayidx47, ptr %arrayidx49
  %31 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %31)
  %cond.in122 = load i8, ptr %cond.in.in, align 1
  %conv52 = zext i8 %cond.in122 to i32
  %and53 = and i32 %conv52, 15
  %32 = lshr i32 %conv52, 4
  %width_x = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 10
  %33 = ptrtoint ptr %width_x to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width_x, align 4
  %sub55 = add i32 %34, -90
  %mul = mul i32 %and53, %sub55
  %width_y = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 11
  %35 = ptrtoint ptr %width_y to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width_y, align 4
  %sub56 = add i32 %36, -90
  %mul57 = mul i32 %sub56, %32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 28, i32 noundef %and53) #11
  %37 = tail call i32 @llvm.umax.i32(i32 %mul, i32 %mul57)
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 48, i32 noundef %37) #11
  %38 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %mul57)
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 49, i32 noundef %38) #11
  br label %cleanup

if.else73:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %contact_num) #11
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else73, %if.then43, %if.end32.cleanup_crit_edge, %if.then28, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_product_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %product_id = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %product_id, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.69, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_fw_ver(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_version = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_version, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.69, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_sm_ver(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sm_version = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %sm_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sm_version, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.69, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_iap_ver(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iap_version = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %iap_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iap_version, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.69, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_fw_checksum(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_checksum = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %fw_checksum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fw_checksum, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.74, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !309
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !309
  %5 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !309
  %sysfs_mutex = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr i8, ptr %dev, i32 932
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #11
  %mode = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode, align 4
  %11 = or i8 %10, 2
  store i8 %11, ptr %mode, align 4
  %ops = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %set_mode = getelementptr inbounds %struct.elan_transport_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_mode, align 4
  %call5 = tail call i32 %15(ptr noundef %add.ptr, i8 noundef zeroext %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %call5) #14
  br label %out

if.end8:                                          ; preds = %if.end
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %calibrate = getelementptr inbounds %struct.elan_transport_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %calibrate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %calibrate, align 4
  %call10 = tail call i32 %19(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %call10) #14
  br label %out_disable_calibrate

if.end16:                                         ; preds = %if.end8
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val, align 1
  br label %do.body17

do.body17:                                        ; preds = %do.cond31.do.body17_crit_edge, %if.end16
  %tries.0 = phi i32 [ 20, %if.end16 ], [ %dec, %do.cond31.do.body17_crit_edge ]
  call void @msleep(i32 noundef 250) #11
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %calibrate_result = getelementptr inbounds %struct.elan_transport_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %calibrate_result to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %calibrate_result, align 4
  %call19 = call i32 %24(ptr noundef %add.ptr, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else, label %do.end24

do.end24:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %call19) #14
  br label %do.cond31

if.else:                                          ; preds = %do.body17
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  br i1 %cmp, label %if.else.out_disable_calibrate_crit_edge, label %if.else.do.cond31_crit_edge

if.else.do.cond31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond31

if.else.out_disable_calibrate_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_calibrate

do.cond31:                                        ; preds = %if.else.do.cond31_crit_edge, %do.end24
  %dec = add nsw i32 %tries.0, -1
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %do.end39, label %do.cond31.do.body17_crit_edge

do.cond31.do.body17_crit_edge:                    ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

do.end39:                                         ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85) #14
  br label %out_disable_calibrate

out_disable_calibrate:                            ; preds = %do.end39, %if.else.out_disable_calibrate_crit_edge, %do.end15
  %retval1.0 = phi i32 [ %call10, %do.end15 ], [ -110, %do.end39 ], [ 0, %if.else.out_disable_calibrate_crit_edge ]
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mode, align 4
  %29 = and i8 %28, -3
  store i8 %29, ptr %mode, align 4
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %set_mode45 = getelementptr inbounds %struct.elan_transport_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %set_mode45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_mode45, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call48 = call i32 %33(ptr noundef %35, i8 noundef zeroext %29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %out_disable_calibrate.out_crit_edge, label %do.end53

out_disable_calibrate.out_crit_edge:              ; preds = %out_disable_calibrate
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end53:                                         ; preds = %out_disable_calibrate
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %call48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool54.not = icmp eq i32 %retval1.0, 0
  %spec.select = select i1 %tobool54.not, i32 %call48, i32 %retval1.0
  br label %out

out:                                              ; preds = %do.end53, %out_disable_calibrate.out_crit_edge, %do.end
  %retval1.1 = phi i32 [ %call5, %do.end ], [ %retval1.0, %out_disable_calibrate.out_crit_edge ], [ %spec.select, %do.end53 ]
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %37) #11
  call void @mutex_unlock(ptr noundef %sysfs_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %tobool60.not = icmp eq i32 %retval1.1, 0
  %spec.select98 = select i1 %tobool60.not, i32 %count, i32 %retval1.1
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select98, %out ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #11
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4, !annotation !309
  %sysfs_mutex = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %iap_get_mode = getelementptr inbounds %struct.elan_transport_ops, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %iap_get_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iap_get_mode, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call3 = call i32 %6(ptr noundef %8, ptr noundef nonnull %mode) #11
  call void @mutex_unlock(ptr noundef %sysfs_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.91, i32 noundef %10)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_sysfs_update_fw(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !309
  %fw_validpage_count = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %fw_validpage_count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fw_validpage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %product_id = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %product_id, align 2
  %conv2 = zext i16 %6 to i32
  %call3 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.93, i32 noundef %conv2) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94) #14
  br label %cleanup

do.end8:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.97, ptr noundef nonnull %call3) #14
  %call9 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %call3, ptr noundef %dev) #11
  call void @kfree(ptr noundef nonnull %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %call9) #14
  br label %cleanup

if.end15:                                         ; preds = %do.end8
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  %data16 = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data16, align 4
  %fw_signature_address = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %fw_signature_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_signature_address, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 %12
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx, ptr noundef nonnull dereferenceable(6) @elan_sysfs_update_fw.signature, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp18.not = icmp eq i32 %bcmp, 0
  br i1 %cmp18.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103, i32 noundef 6, ptr noundef nonnull @elan_sysfs_update_fw.signature, i32 noundef 6, ptr noundef %arrayidx) #14
  br label %out_release_fw.thread

if.end24:                                         ; preds = %if.end15
  %sysfs_mutex = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 7
  %call25 = call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %out_release_fw, label %if.end24.out_release_fw.thread_crit_edge

if.end24.out_release_fw.thread_crit_edge:         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_fw.thread

out_release_fw.thread:                            ; preds = %if.end24.out_release_fw.thread_crit_edge, %do.end23
  %error.0.ph = phi i32 [ %call25, %if.end24.out_release_fw.thread_crit_edge ], [ -9, %do.end23 ]
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %14) #11
  br label %cleanup

out_release_fw:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %call29 = call fastcc i32 @elan_update_firmware(ptr noundef %1, ptr noundef %16)
  call void @mutex_unlock(ptr noundef %sysfs_mutex) #11
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool31.not = icmp eq i32 %call29, 0
  %spec.select = select i1 %tobool31.not, i32 %count, i32 %call29
  br label %cleanup

cleanup:                                          ; preds = %out_release_fw, %out_release_fw.thread, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ -12, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %error.0.ph, %out_release_fw.thread ], [ %spec.select, %out_release_fw ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elan_update_firmware(ptr noundef %data, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elan_update_firmware.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elan_update_firmware, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elan_update_firmware.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.106) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #11
  %in_fw_update = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %in_fw_update to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %in_fw_update, align 4
  %call5 = tail call fastcc i32 @__elan_update_firmware(ptr noundef %data, ptr noundef %fw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.107, i32 noundef %call5) #14
  %ops = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %iap_reset = getelementptr inbounds %struct.elan_transport_ops, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %iap_reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iap_reset, align 4
  %call12 = tail call i32 %8(ptr noundef %1) #11
  br label %if.end15

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call fastcc i32 @elan_initialize(ptr noundef %data, i1 noundef zeroext false)
  %call14 = tail call fastcc i32 @elan_query_device_info(ptr noundef %data)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %do.end10
  %9 = ptrtoint ptr %in_fw_update to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %in_fw_update, align 4
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %11) #11
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__elan_update_firmware(ptr noundef %data, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  %fw_checksum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_checksum) #11
  %2 = ptrtoint ptr %fw_checksum to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %fw_checksum, align 2
  %ops = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %prepare_fw_update = getelementptr inbounds %struct.elan_transport_ops, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %prepare_fw_update to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prepare_fw_update, align 4
  %ic_type = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 24
  %7 = ptrtoint ptr %ic_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ic_type, align 2
  %iap_version = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 18
  %9 = ptrtoint ptr %iap_version to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iap_version, align 2
  %fw_page_size = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 26
  %11 = ptrtoint ptr %fw_page_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fw_page_size, align 2
  %call = tail call i32 %6(ptr noundef %1, i16 noundef zeroext %8, i8 noundef zeroext %10, i16 noundef zeroext %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup63

if.end:                                           ; preds = %entry
  %data3 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %13 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data3, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 262
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #11
  %conv = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %18 = ptrtoint ptr %fw_page_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fw_page_size, align 2
  %conv6 = zext i16 %19 to i32
  %div = udiv i32 %mul, %conv6
  %conv8 = and i32 %div, 65535
  %fw_validpage_count = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 25
  %20 = ptrtoint ptr %fw_validpage_count to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fw_validpage_count, align 4
  %conv9121 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %conv9121)
  %cmp122 = icmp ult i32 %conv8, %conv9121
  br i1 %cmp122, label %if.end.for.body_crit_edge, label %if.end.for.end41_crit_edge

if.end.for.end41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc40.for.body_crit_edge, %if.end.for.body_crit_edge
  %sw_checksum.0124 = phi i16 [ %add37, %for.inc40.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.0123 = phi i32 [ %inc, %for.inc40.for.body_crit_edge ], [ %conv8, %if.end.for.body_crit_edge ]
  %22 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data3, align 4
  %24 = ptrtoint ptr %fw_page_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %fw_page_size, align 2
  %conv13 = zext i16 %25 to i32
  %mul14 = mul i32 %i.0123, %conv13
  %arrayidx15 = getelementptr i8, ptr %23, i32 %mul14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp19118.not = icmp eq i16 %25, 0
  br i1 %cmp19118.not, label %for.body.do.body.i.preheader_crit_edge, label %for.body.for.body21_crit_edge

for.body.for.body21_crit_edge:                    ; preds = %for.body
  br label %for.body21

for.body.do.body.i.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %for.body21.do.body.i.preheader_crit_edge, %for.body.do.body.i.preheader_crit_edge
  %checksum.0.lcssa = phi i16 [ 0, %for.body.do.body.i.preheader_crit_edge ], [ %add27, %for.body21.do.body.i.preheader_crit_edge ]
  br label %do.body.i

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body.for.body21_crit_edge
  %checksum.0120 = phi i16 [ %add27, %for.body21.for.body21_crit_edge ], [ 0, %for.body.for.body21_crit_edge ]
  %j.0119 = phi i32 [ %add29, %for.body21.for.body21_crit_edge ], [ 0, %for.body.for.body21_crit_edge ]
  %add = or i32 %j.0119, 1
  %arrayidx22 = getelementptr i8, ptr %arrayidx15, i32 %add
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %27 to i16
  %shl = shl nuw i16 %conv23, 8
  %arrayidx24 = getelementptr i8, ptr %arrayidx15, i32 %j.0119
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %29 to i16
  %or = or i16 %shl, %conv25
  %add27 = add i16 %or, %checksum.0120
  %add29 = add nuw nsw i32 %j.0119, 2
  %cmp19 = icmp ult i32 %add29, %conv13
  br i1 %cmp19, label %for.body21.for.body21_crit_edge, label %for.body21.do.body.i.preheader_crit_edge

for.body21.do.body.i.preheader_crit_edge:         ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.preheader

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21

do.body.i:                                        ; preds = %do.cond9.i.do.body.i_crit_edge, %do.body.i.preheader
  %retry.0.i = phi i32 [ %dec.i, %do.cond9.i.do.body.i_crit_edge ], [ 3, %do.body.i.preheader ]
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %write_fw_block.i = getelementptr inbounds %struct.elan_transport_ops, ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %write_fw_block.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_fw_block.i, align 4
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %call.i = tail call i32 %33(ptr noundef %35, i16 noundef zeroext %25, ptr noundef %arrayidx15, i16 noundef zeroext %checksum.0.lcssa, i32 noundef %i.0123) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc40, label %do.body1.i

do.body1.i:                                       ; preds = %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elan_write_fw_block.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__elan_update_firmware, %if.then6.i)) #11
          to label %do.cond9.i [label %if.then6.i], !srcloc !308

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elan_write_fw_block.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.114, i32 noundef %i.0123, i32 noundef %call.i) #11
  br label %do.cond9.i

do.cond9.i:                                       ; preds = %if.then6.i, %do.body1.i
  %dec.i = add nsw i32 %retry.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %cleanup, label %do.cond9.i.do.body.i_crit_edge

do.cond9.i.do.body.i_crit_edge:                   ; preds = %do.cond9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

cleanup:                                          ; preds = %do.cond9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.108, i32 noundef %i.0123, i32 noundef %call.i) #14
  br label %cleanup63

for.inc40:                                        ; preds = %do.body.i
  %add37 = add i16 %checksum.0.lcssa, %sw_checksum.0124
  %inc = add nuw nsw i32 %i.0123, 1
  %38 = ptrtoint ptr %fw_validpage_count to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fw_validpage_count, align 4
  %conv9 = zext i16 %39 to i32
  %cmp = icmp ult i32 %inc, %conv9
  br i1 %cmp, label %for.inc40.for.body_crit_edge, label %for.inc40.for.end41_crit_edge

for.inc40.for.end41_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41

for.inc40.for.body_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end41:                                        ; preds = %for.inc40.for.end41_crit_edge, %if.end.for.end41_crit_edge
  %sw_checksum.0.lcssa = phi i16 [ 0, %if.end.for.end41_crit_edge ], [ %add37, %for.inc40.for.end41_crit_edge ]
  tail call void @msleep(i32 noundef 600) #11
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %finish_fw_update = getelementptr inbounds %struct.elan_transport_ops, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %finish_fw_update to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %finish_fw_update, align 4
  %fw_completion = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 5
  %call43 = tail call i32 %43(ptr noundef %1, ptr noundef %fw_completion) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %for.end41.cleanup63_crit_edge

for.end41.cleanup63_crit_edge:                    ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup63

if.end46:                                         ; preds = %for.end41
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %get_checksum = getelementptr inbounds %struct.elan_transport_ops, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %get_checksum to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_checksum, align 4
  %call48 = call i32 %47(ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull %fw_checksum) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.cleanup63_crit_edge

if.end46.cleanup63_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup63

if.end51:                                         ; preds = %if.end46
  %48 = ptrtoint ptr %fw_checksum to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %fw_checksum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sw_checksum.0.lcssa, i16 %49)
  %cmp54.not = icmp eq i16 %sw_checksum.0.lcssa, %49
  br i1 %cmp54.not, label %if.end51.cleanup63_crit_edge, label %do.end59

if.end51.cleanup63_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup63

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %conv53 = zext i16 %49 to i32
  %conv52 = zext i16 %sw_checksum.0.lcssa to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.111, i32 noundef %conv52, i32 noundef %conv53) #14
  br label %cleanup63

cleanup63:                                        ; preds = %do.end59, %if.end51.cleanup63_crit_edge, %if.end46.cleanup63_crit_edge, %for.end41.cleanup63_crit_edge, %cleanup, %entry.cleanup63_crit_edge
  %retval.2 = phi i32 [ %call.i, %cleanup ], [ -5, %do.end59 ], [ %call, %entry.cleanup63_crit_edge ], [ %call43, %for.end41.cleanup63_crit_edge ], [ %call48, %if.end46.cleanup63_crit_edge ], [ 0, %if.end51.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_checksum) #11
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acquire_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfs_mutex = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #11
  %baseline_ready = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %baseline_ready to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %baseline_ready, align 1
  %mode = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode, align 4
  %7 = or i8 %6, 2
  store i8 %7, ptr %mode, align 4
  %ops = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %set_mode = getelementptr inbounds %struct.elan_transport_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_mode, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call6 = tail call i32 %11(ptr noundef %13, i8 noundef zeroext %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.117, i32 noundef %call6) #14
  br label %out

if.end9:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 250) #11
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %get_baseline_data = getelementptr inbounds %struct.elan_transport_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %get_baseline_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_baseline_data, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %max_baseline = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 30
  %call12 = tail call i32 %17(ptr noundef %19, i1 noundef zeroext true, ptr noundef %max_baseline) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.120, i32 noundef %call12) #14
  br label %out_disable_calibrate

if.end18:                                         ; preds = %if.end9
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %get_baseline_data20 = getelementptr inbounds %struct.elan_transport_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %get_baseline_data20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_baseline_data20, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %min_baseline = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 29
  %call22 = tail call i32 %23(ptr noundef %25, i1 noundef zeroext false, ptr noundef %min_baseline) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %call22) #14
  br label %out_disable_calibrate

if.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %baseline_ready to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %baseline_ready, align 1
  br label %out_disable_calibrate

out_disable_calibrate:                            ; preds = %if.end28, %do.end27, %do.end17
  %retval1.0 = phi i32 [ %call12, %do.end17 ], [ %call22, %do.end27 ], [ 0, %if.end28 ]
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mode, align 4
  %29 = and i8 %28, -3
  store i8 %29, ptr %mode, align 4
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %set_mode34 = getelementptr inbounds %struct.elan_transport_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %set_mode34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_mode34, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call37 = tail call i32 %33(ptr noundef %35, i8 noundef zeroext %29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %out_disable_calibrate.out_crit_edge, label %do.end42

out_disable_calibrate.out_crit_edge:              ; preds = %out_disable_calibrate
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end42:                                         ; preds = %out_disable_calibrate
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %call37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool43.not = icmp eq i32 %retval1.0, 0
  %spec.select = select i1 %tobool43.not, i32 %call37, i32 %retval1.0
  br label %out

out:                                              ; preds = %do.end42, %out_disable_calibrate.out_crit_edge, %do.end
  %retval1.1 = phi i32 [ %call6, %do.end ], [ %retval1.0, %out_disable_calibrate.out_crit_edge ], [ %spec.select, %do.end42 ]
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %37) #11
  tail call void @mutex_unlock(ptr noundef %sysfs_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %tobool49.not = icmp eq i32 %retval1.1, 0
  %spec.select87 = select i1 %tobool49.not, i32 %count, i32 %retval1.1
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select87, %out ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfs_mutex = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %baseline_ready = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %baseline_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %baseline_ready, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %min_baseline = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %min_baseline to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min_baseline, align 1
  %conv = zext i8 %5 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.129, i32 noundef %conv)
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge
  %retval1.0 = phi i32 [ %call6, %if.end5 ], [ -61, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sysfs_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %out ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfs_mutex = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %baseline_ready = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %baseline_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %baseline_ready, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %max_baseline = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %max_baseline to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_baseline, align 2
  %conv = zext i8 %5 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.129, i32 noundef %conv)
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge
  %retval1.0 = phi i32 [ %call6, %if.end5 ], [ -61, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sysfs_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %out ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfs_mutex = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #11
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %device_may_wakeup.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then3

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then3:                                         ; preds = %device_may_wakeup.exit
  %ops.i = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %sleep_control.i = getelementptr inbounds %struct.elan_transport_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sleep_control.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sleep_control.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %10(ptr noundef %12, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i35 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i35, label %if.then3.elan_sleep.exit_crit_edge, label %if.end.i

if.then3.elan_sleep.exit_crit_edge:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %elan_sleep.exit

if.end.i:                                         ; preds = %if.then3
  tail call void @msleep(i32 noundef 30) #11
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %sleep_control.1.i = getelementptr inbounds %struct.elan_transport_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sleep_control.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sleep_control.1.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.1.i = tail call i32 %16(ptr noundef %18, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.i.elan_sleep.exit_crit_edge, label %if.end.1.i

if.end.i.elan_sleep.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %elan_sleep.exit

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @msleep(i32 noundef 30) #11
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %sleep_control.2.i = getelementptr inbounds %struct.elan_transport_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sleep_control.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sleep_control.2.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.2.i = tail call i32 %22(ptr noundef %24, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.1.i.elan_sleep.exit_crit_edge, label %if.end.2.i

if.end.1.i.elan_sleep.exit_crit_edge:             ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %elan_sleep.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 30) #11
  br label %elan_sleep.exit

elan_sleep.exit:                                  ; preds = %if.end.2.i, %if.end.1.i.elan_sleep.exit_crit_edge, %if.end.i.elan_sleep.exit_crit_edge, %if.then3.elan_sleep.exit_crit_edge
  %call.lcssa.i = phi i32 [ 0, %if.then3.elan_sleep.exit_crit_edge ], [ 0, %if.end.i.elan_sleep.exit_crit_edge ], [ 0, %if.end.1.i.elan_sleep.exit_crit_edge ], [ %call.2.i, %if.end.2.i ]
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %call.i36 = tail call i32 @irq_set_irq_wake(i32 noundef %26, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp = icmp eq i32 %call.i36, 0
  %irq_wake = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 28
  %frombool = zext i1 %cmp to i8
  %27 = ptrtoint ptr %irq_wake to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %irq_wake, align 4
  br label %err

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %call7 = tail call fastcc i32 @elan_set_power(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.else.err_crit_edge

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end10:                                         ; preds = %if.else
  %vcc = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vcc, align 4
  %call11 = tail call i32 @regulator_disable(ptr noundef %29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.err_crit_edge, label %do.end

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %call11) #14
  %call14 = tail call fastcc i32 @elan_set_power(ptr noundef %1, i1 noundef zeroext true)
  br label %err

err:                                              ; preds = %do.end, %if.end10.err_crit_edge, %if.else.err_crit_edge, %elan_sleep.exit
  %ret.0 = phi i32 [ %call.lcssa.i, %elan_sleep.exit ], [ %call7, %if.else.err_crit_edge ], [ %call11, %do.end ], [ 0, %if.end10.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sysfs_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %if.else

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %vcc = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vcc, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end9_crit_edge, label %do.end

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.137, i32 noundef %call2) #14
  br label %err

if.else:                                          ; preds = %device_may_wakeup.exit
  %irq_wake = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %irq_wake, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.else.if.end9_crit_edge, label %if.then5

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %irq = getelementptr i8, ptr %dev, i32 932
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #11
  %11 = ptrtoint ptr %irq_wake to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %irq_wake, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.else.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %call10 = tail call fastcc i32 @elan_set_power(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.140, i32 noundef %call10) #14
  br label %err

if.end16:                                         ; preds = %if.end9
  %quirks = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 34
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17 = icmp ne i32 %and, 0
  %call18 = tail call fastcc i32 @elan_initialize(ptr noundef %1, i1 noundef zeroext %tobool17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.err_crit_edge, label %do.end23

if.end16.err_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.143, i32 noundef %call18) #14
  br label %err

err:                                              ; preds = %do.end23, %if.end16.err_crit_edge, %do.end15, %do.end
  %error.0 = phi i32 [ %call10, %do.end15 ], [ %call18, %do.end23 ], [ 0, %if.end16.err_crit_edge ], [ %call2, %do.end ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %irq26 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq26, align 4
  tail call void @enable_irq(i32 noundef %17) #11
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elan_set_power(ptr nocapture noundef readonly %data, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.elan_tp_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %power_control = getelementptr inbounds %struct.elan_transport_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_control, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call = tail call i32 %3(ptr noundef %5, i1 noundef zeroext %on) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 30) #11
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %power_control.1 = getelementptr inbounds %struct.elan_transport_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %power_control.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_control.1, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call.1 = tail call i32 %9(ptr noundef %11, i1 noundef zeroext %on) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1)
  %cmp.1 = icmp sgt i32 %call.1, -1
  br i1 %cmp.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 30) #11
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %power_control.2 = getelementptr inbounds %struct.elan_transport_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %power_control.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power_control.2, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call.2 = tail call i32 %15(ptr noundef %17, i1 noundef zeroext %on) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2)
  %cmp.2 = icmp sgt i32 %call.2, -1
  br i1 %cmp.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 30) #11
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %cond = select i1 %on, ptr @.str.135, ptr @.str.136
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.133, ptr noundef nonnull %cond, i32 noundef %call.2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.2, %if.end.2 ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !135, !137, !139, !141, !143, !144, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !191, !192, !194, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !238, !240, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !265, !267, !268, !270, !272, !274, !275, !276, !277, !279, !280, !281, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !{ptr @__initcall__kmod_elan_i2c__301_1450_elan_driver_init6, !1, !"__initcall__kmod_elan_i2c__301_1450_elan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1450, i32 1}
!2 = !{ptr @__exitcall_elan_driver_exit, !1, !"__exitcall_elan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1452, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1453, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1454, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1440, i32 11}
!12 = !{ptr @elan_driver, !13, !"elan_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1438, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1210, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @elan_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @elan_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @elan_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1223, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1225, i32 38}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1229, i32 4}
!29 = !{ptr @elan_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @elan_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1236, i32 3}
!33 = !{ptr @elan_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @elan_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1242, i32 3}
!37 = !{ptr @elan_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @elan_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1250, i32 3}
!41 = !{ptr @elan_probe.__UNIQUE_ID_ddebug299, !40, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1267, i32 2}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @elan_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @elan_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1274, i32 2}
!49 = !{ptr @elan_probe.__UNIQUE_ID_ddebug300, !48, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1291, i32 46}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1310, i32 3}
!54 = !{ptr @elan_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @elan_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1316, i32 3}
!58 = !{ptr @elan_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @elan_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1322, i32 3}
!62 = !{ptr @elan_probe._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @elan_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1329, i32 4}
!66 = !{ptr @elan_probe._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @elan_probe._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @init_completion.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../include/linux/completion.h", i32 87, i32 2}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 270, i32 4}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__elan_initialize._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @__elan_initialize._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 287, i32 4}
!78 = !{ptr @__elan_initialize._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @__elan_initialize._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 299, i32 3}
!82 = !{ptr @__elan_initialize._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @__elan_initialize._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @__elan_initialize._entry.45, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 307, i32 4}
!86 = !{ptr @__elan_initialize._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 370, i32 3}
!89 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @elan_query_device_info._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @elan_query_device_info._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"elan_i2c_quirks", i1 false, i1 false}
!94 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 106, i32 4}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 403, i32 10}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 405, i32 10}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 418, i32 10}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 421, i32 10}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 432, i32 10}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 434, i32 10}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 447, i32 46}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 450, i32 46}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1130, i32 16}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1139, i32 3}
!115 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @elan_setup_input_device._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @elan_setup_input_device._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1098, i32 16}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1075, i32 3}
!122 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @elan_isr._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @elan_isr._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 938, i32 4}
!127 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @elan_report_contact.__UNIQUE_ID_ddebug290, !126, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!129 = distinct !{null, !130, !"__print_once", i1 false, i1 false}
!130 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1023, i32 3}
!131 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @elan_report_trackpoint._entry, !130, !"_entry", i1 false, i1 false}
!134 = !{ptr @elan_report_trackpoint._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @elan_sysfs_groups, !136, !"elan_sysfs_groups", i1 false, i1 false}
!136 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 909, i32 38}
!137 = !{ptr @elan_sysfs_group, !138, !"elan_sysfs_group", i1 false, i1 false}
!138 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 783, i32 37}
!139 = !{ptr @elan_sysfs_entries, !140, !"elan_sysfs_entries", i1 false, i1 false}
!140 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 771, i32 26}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 761, i32 8}
!143 = !{ptr @dev_attr_product_id, !142, !"dev_attr_product_id", i1 false, i1 false}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 586, i32 22}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 762, i32 8}
!148 = !{ptr @dev_attr_firmware_version, !147, !"dev_attr_firmware_version", i1 false, i1 false}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 763, i32 8}
!151 = !{ptr @dev_attr_sample_version, !150, !"dev_attr_sample_version", i1 false, i1 false}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 764, i32 8}
!154 = !{ptr @dev_attr_iap_version, !153, !"dev_attr_iap_version", i1 false, i1 false}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 765, i32 8}
!157 = !{ptr @dev_attr_fw_checksum, !156, !"dev_attr_fw_checksum", i1 false, i1 false}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 576, i32 22}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 769, i32 8}
!162 = !{ptr @dev_attr_calibrate, !161, !"dev_attr_calibrate", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 692, i32 3}
!165 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @calibrate_store._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @calibrate_store._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 699, i32 3}
!170 = !{ptr @calibrate_store._entry.78, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @calibrate_store._entry_ptr.80, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 711, i32 4}
!174 = !{ptr @calibrate_store._entry.81, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @calibrate_store._entry_ptr.83, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 719, i32 3}
!178 = !{ptr @calibrate_store._entry.84, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @calibrate_store._entry_ptr.86, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 727, i32 3}
!182 = !{ptr @calibrate_store._entry.87, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @calibrate_store._entry_ptr.89, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 766, i32 8}
!186 = !{ptr @dev_attr_mode, !185, !"dev_attr_mode", i1 false, i1 false}
!187 = !{ptr @.str.91, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 758, i32 22}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 767, i32 8}
!191 = !{ptr @dev_attr_update_fw, !190, !"dev_attr_update_fw", i1 false, i1 false}
!192 = !{ptr @elan_sysfs_update_fw.signature, !193, !"signature", i1 false, i1 false}
!193 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 629, i32 18}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 635, i32 34}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 637, i32 3}
!198 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @elan_sysfs_update_fw._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @elan_sysfs_update_fw._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 641, i32 2}
!203 = !{ptr @elan_sysfs_update_fw._entry.96, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @elan_sysfs_update_fw._entry_ptr.98, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 645, i32 3}
!207 = !{ptr @elan_sysfs_update_fw._entry.99, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @elan_sysfs_update_fw._entry_ptr.101, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 652, i32 3}
!211 = !{ptr @elan_sysfs_update_fw._entry.102, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @elan_sysfs_update_fw._entry_ptr.104, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 543, i32 2}
!215 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @elan_update_firmware.__UNIQUE_ID_ddebug289, !214, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 550, i32 3}
!219 = !{ptr @elan_update_firmware._entry, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @elan_update_firmware._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 510, i32 4}
!223 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @__elan_update_firmware._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @__elan_update_firmware._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 529, i32 3}
!228 = !{ptr @__elan_update_firmware._entry.110, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @__elan_update_firmware._entry_ptr.112, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.113, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 473, i32 3}
!232 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @elan_write_fw_block.__UNIQUE_ID_ddebug288, !231, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!234 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 905, i32 10}
!236 = !{ptr @elan_baseline_sysfs_group, !237, !"elan_baseline_sysfs_group", i1 false, i1 false}
!237 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 904, i32 37}
!238 = !{ptr @elan_baseline_sysfs_entries, !239, !"elan_baseline_sysfs_entries", i1 false, i1 false}
!239 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 897, i32 26}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 893, i32 8}
!242 = !{ptr @dev_attr_acquire, !241, !"dev_attr_acquire", i1 false, i1 false}
!243 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 806, i32 3}
!245 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @acquire_store._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @acquire_store._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 816, i32 3}
!250 = !{ptr @acquire_store._entry.119, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @acquire_store._entry_ptr.121, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.123, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 824, i32 3}
!254 = !{ptr @acquire_store._entry.122, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @acquire_store._entry_ptr.124, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.126, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 835, i32 3}
!258 = !{ptr @acquire_store._entry.125, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @acquire_store._entry_ptr.127, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 894, i32 8}
!262 = !{ptr @dev_attr_min, !261, !"dev_attr_min", i1 false, i1 false}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 862, i32 36}
!265 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 895, i32 8}
!267 = !{ptr @dev_attr_max, !266, !"dev_attr_max", i1 false, i1 false}
!268 = !{ptr @elan_of_match, !269, !"elan_of_match", i1 false, i1 false}
!269 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1431, i32 34}
!270 = !{ptr @elan_pm_ops, !271, !"elan_pm_ops", i1 false, i1 false}
!271 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1417, i32 8}
!272 = !{ptr @.str.131, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1374, i32 4}
!274 = !{ptr @.str.132, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @elan_suspend._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @elan_suspend._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.133, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 202, i32 2}
!279 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @elan_set_power._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @elan_set_power._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.137, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1394, i32 4}
!286 = !{ptr @.str.138, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @elan_resume._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @elan_resume._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.140, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1404, i32 3}
!291 = !{ptr @elan_resume._entry.139, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @elan_resume._entry_ptr.141, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1410, i32 3}
!295 = !{ptr @elan_resume._entry.142, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @elan_resume._entry_ptr.144, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @elan_id, !298, !"elan_id", i1 false, i1 false}
!298 = !{!"../drivers/input/mouse/elan_i2c_core.c", i32 1419, i32 35}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{i64 2148982066, i64 2148982071, i64 2148982084, i64 2148982128, i64 2148982162, i64 2148982183}
!309 = !{!"auto-init"}
!310 = !{i8 0, i8 2}
