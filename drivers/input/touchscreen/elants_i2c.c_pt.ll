; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/elants_i2c.c_pt.bc'
source_filename = "../drivers/input/touchscreen/elants_i2c.c"
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
%struct.elants_version_attribute = type { %struct.device_attribute, i32, i32 }
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
%struct.elants_data = type { ptr, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i8, i16, i8, i32, i32, i32, i32, i32, i32, %struct.touchscreen_properties, i32, i32, i32, %struct.mutex, [4 x i8], %struct.completion, i8, i8, [22 x i8], [169 x i8], [87 x i8] }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_elants_i2c__303_1700_elants_i2c_driver_init6 = internal global ptr @elants_i2c_driver_init, section ".initcall6.init", align 4
@elants_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @elants_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @elants_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @elants_i2c_pm_ops, ptr null, ptr null }, ptr @elants_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_elants_i2c_driver_exit = internal global ptr @elants_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [51 x i8] c"elants_i2c.author=Scott Liu <scott.liu@emc.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [51 x i8] c"elants_i2c.description=Elan I2c Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [53 x i8] c"elants_i2c.file=drivers/input/touchscreen/elants_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [23 x i8] c"elants_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"elants_i2c\00", [21 x i8] zeroinitializer }, align 32
@elants_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"elan,ekth3500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"elan,ektf3624\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@elants_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @elants_i2c_suspend, ptr @elants_i2c_resume, ptr @elants_i2c_suspend, ptr @elants_i2c_resume, ptr @elants_i2c_suspend, ptr @elants_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@elants_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"elants_i2c\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ekth3500\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ektf3624\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"This device appears to be an I2C-HID device, not binding\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"elants_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/elants_i2c.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr = internal global ptr @elants_i2c_probe._entry, section ".printk_index", align 4
@elants_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1430, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I2C check functionality error\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.9 = internal global ptr @elants_i2c_probe._entry.6, section ".printk_index", align 4
@elants_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ts->sysfs_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcc33\00", [26 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1451, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get 'vcc33' regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.14 = internal global ptr @elants_i2c_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vccio\00", [26 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1461, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get 'vccio' regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.18 = internal global ptr @elants_i2c_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1475, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get reset gpio: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.22 = internal global ptr @elants_i2c_probe._entry.20, section ".printk_index", align 4
@elants_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1490, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to install power off action: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.25 = internal global ptr @elants_i2c_probe._entry.23, section ".printk_index", align 4
@elants_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1497, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nothing at this address\0A\00", [39 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.28 = internal global ptr @elants_i2c_probe._entry.26, section ".printk_index", align 4
@elants_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1503, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialize: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.31 = internal global ptr @elants_i2c_probe._entry.29, section ".printk_index", align 4
@elants_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1509, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.34 = internal global ptr @elants_i2c_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Elan Touchscreen\00", [47 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 1541, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize MT slots: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.38 = internal global ptr @elants_i2c_probe._entry.36, section ".printk_index", align 4
@elants_i2c_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 1548, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.41 = internal global ptr @elants_i2c_probe._entry.39, section ".printk_index", align 4
@elants_i2c_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 1566, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.44 = internal global ptr @elants_i2c_probe._entry.42, section ".printk_index", align 4
@elants_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @elants_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 1580, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to create sysfs attributes: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@elants_i2c_probe._entry_ptr.47 = internal global ptr @elants_i2c_probe._entry.45, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@elants_i2c_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 1338, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable vcc33 regulator: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elants_i2c_power_on\00", [44 x i8] zeroinitializer }, align 32
@elants_i2c_power_on._entry_ptr = internal global ptr @elants_i2c_power_on._entry, section ".printk_index", align 4
@elants_i2c_power_on._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 1346, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable vccio regulator: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@elants_i2c_power_on._entry_ptr.53 = internal global ptr @elants_i2c_power_on._entry.51, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@elants_i2c_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 632, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read 'hello' packet: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"elants_i2c_initialize\00", [42 x i8] zeroinitializer }, align 32
@elants_i2c_initialize._entry_ptr = internal global ptr @elants_i2c_initialize._entry, section ".printk_index", align 4
@elants_i2c_initialize._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 647, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid 'hello' packet: %*ph\0A\00", [34 x i8] zeroinitializer }, align 32
@elants_i2c_initialize._entry_ptr.58 = internal global ptr @elants_i2c_initialize._entry.56, section ".printk_index", align 4
@elants_i2c_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 347, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"software reset failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elants_i2c_sw_reset\00", [44 x i8] zeroinitializer }, align 32
@elants_i2c_sw_reset._entry_ptr = internal global ptr @elants_i2c_sw_reset._entry, section ".printk_index", align 4
@elants_i2c_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 203, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s failed (%*ph): %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"elants_i2c_send\00", [16 x i8] zeroinitializer }, align 32
@elants_i2c_send._entry_ptr = internal global ptr @elants_i2c_send._entry, section ".printk_index", align 4
@elants_i2c_fastboot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 595, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"boot failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elants_i2c_fastboot\00", [44 x i8] zeroinitializer }, align 32
@elants_i2c_fastboot._entry_ptr = internal global ptr @elants_i2c_fastboot._entry, section ".printk_index", align 4
@elants_i2c_fastboot.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"boot success -- 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@elants_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 219, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"elants_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@elants_i2c_read._entry_ptr = internal global ptr @elants_i2c_read._entry, section ".printk_index", align 4
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read fw id\00", [21 x i8] zeroinitializer }, align 32
@elants_i2c_query_hw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 385, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid fw id: %#04x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"elants_i2c_query_hw_version\00", [36 x i8] zeroinitializer }, align 32
@elants_i2c_query_hw_version._entry_ptr = internal global ptr @elants_i2c_query_hw_version._entry, section ".printk_index", align 4
@elants_i2c_execute_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 248, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(%s): invalid command: %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"elants_i2c_execute_command\00", [37 x i8] zeroinitializer }, align 32
@elants_i2c_execute_command._entry_ptr = internal global ptr @elants_i2c_execute_command._entry, section ".printk_index", align 4
@elants_i2c_execute_command.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(%s) I2C transfer failed: %pe (retrying)\0A\00", [54 x i8] zeroinitializer }, align 32
@elants_i2c_execute_command._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.3, i32 275, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(%s) I2C transfer failed: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@elants_i2c_execute_command._entry_ptr.76 = internal global ptr @elants_i2c_execute_command._entry.74, section ".printk_index", align 4
@elants_i2c_execute_command.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.3, ptr @.str.77, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(%s) unexpected response: %*ph (retrying)\0A\00", [53 x i8] zeroinitializer }, align 32
@elants_i2c_execute_command._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.72, ptr @.str.3, i32 290, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(%s) unexpected response: %*ph\0A\00", [32 x i8] zeroinitializer }, align 32
@elants_i2c_execute_command._entry_ptr.80 = internal global ptr @elants_i2c_execute_command._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read BC version\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read fw version\00", [16 x i8] zeroinitializer }, align 32
@elants_i2c_query_fw_version.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"elants_i2c_query_fw_version\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(read fw version) resp %*phC\0A\00", [34 x i8] zeroinitializer }, align 32
@elants_i2c_query_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 413, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid fw ver: %#04x\0A\00", [41 x i8] zeroinitializer }, align 32
@elants_i2c_query_fw_version._entry_ptr = internal global ptr @elants_i2c_query_fw_version._entry, section ".printk_index", align 4
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read test version\00", [46 x i8] zeroinitializer }, align 32
@elants_i2c_query_test_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 430, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read test version\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"elants_i2c_query_test_version\00", [34 x i8] zeroinitializer }, align 32
@elants_i2c_query_test_version._entry_ptr = internal global ptr @elants_i2c_query_test_version._entry, section ".printk_index", align 4
@__const.elants_i2c_query_ts_info_ekth.get_resolution_cmd = private unnamed_addr constant [6 x i8] c"[\00\00\00\00\00", align 1
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get resolution\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"get osr\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get physical scan\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get physical drive\00", [45 x i8] zeroinitializer }, align 32
@elants_i2c_query_ts_info_ekth.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"elants_i2c_query_ts_info_ekth\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy_x=%d, phy_y=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@elants_i2c_query_ts_info_ekth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.3, i32 574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid trace number data: %d, %d, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@elants_i2c_query_ts_info_ekth._entry_ptr = internal global ptr @elants_i2c_query_ts_info_ekth._entry, section ".printk_index", align 4
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"get X size\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"get Y size\00", [21 x i8] zeroinitializer }, align 32
@elants_i2c_query_ts_info_ektf.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.3, ptr @.str.94, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"elants_i2c_query_ts_info_ektf\00", [34 x i8] zeroinitializer }, align 32
@__const.elants_i2c_irq.wait_packet = private unnamed_addr constant [4 x i8] c"dddd", align 1
@elants_i2c_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 1077, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to read data: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"elants_i2c_irq\00", [17 x i8] zeroinitializer }, align 32
@elants_i2c_irq._entry_ptr = internal global ptr @elants_i2c_irq._entry, section ".printk_index", align 4
@elants_i2c_irq.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.101, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: packet %*ph\0A\00", [47 x i8] zeroinitializer }, align 32
@elants_i2c_irq._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.100, ptr @.str.3, i32 1111, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid wait packet %*ph\0A\00", [38 x i8] zeroinitializer }, align 32
@elants_i2c_irq._entry_ptr.104 = internal global ptr @elants_i2c_irq._entry.102, section ".printk_index", align 4
@elants_i2c_irq._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.100, ptr @.str.3, i32 1142, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad report count: %*ph\0A\00", [40 x i8] zeroinitializer }, align 32
@elants_i2c_irq._entry_ptr.107 = internal global ptr @elants_i2c_irq._entry.105, section ".printk_index", align 4
@elants_i2c_irq.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@elants_i2c_irq.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.108, i8 1, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using old report format\0A\00", [39 x i8] zeroinitializer }, align 32
@elants_i2c_irq._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.100, ptr @.str.3, i32 1155, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mismatching report length: %*ph\0A\00", [63 x i8] zeroinitializer }, align 32
@elants_i2c_irq._entry_ptr.111 = internal global ptr @elants_i2c_irq._entry.109, section ".printk_index", align 4
@elants_i2c_irq._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.100, ptr @.str.3, i32 1168, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown packet %*ph\0A\00", [43 x i8] zeroinitializer }, align 32
@elants_i2c_irq._entry_ptr.114 = internal global ptr @elants_i2c_irq._entry.112, section ".printk_index", align 4
@elants_i2c_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 1056, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: invalid checksum for packet %02x: %02x vs. %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"elants_i2c_event\00", [47 x i8] zeroinitializer }, align 32
@elants_i2c_event._entry_ptr = internal global ptr @elants_i2c_event._entry, section ".printk_index", align 4
@elants_i2c_event._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.3, i32 1060, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: unknown packet type: %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@elants_i2c_event._entry_ptr.119 = internal global ptr @elants_i2c_event._entry.117, section ".printk_index", align 4
@elants_i2c_mt_event.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.3, ptr @.str.121, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elants_i2c_mt_event\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"n_fingers: %u, state: %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@elants_i2c_mt_event.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.3, ptr @.str.122, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i=%d x=%d y=%d p=%d w=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@elants_attributes = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_calibrate, ptr @dev_attr_update_fw, ptr @dev_attr_iap_mode, ptr @dev_attr_calibration_count, ptr @elants_ver_attr_fw_version, ptr @elants_ver_attr_hw_version, ptr @elants_ver_attr_test_version, ptr @elants_ver_attr_solution_version, ptr @elants_ver_attr_bc_version, ptr @elants_ver_attr_iap_version, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_calibrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @calibrate_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @write_update_fw }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iap_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.195, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_iap_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_calibration_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.199, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_calibration_count, ptr null }, [36 x i8] zeroinitializer }, align 32
@elants_ver_attr_fw_version = internal global { %struct.elants_version_attribute, [60 x i8] } { %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.203, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elants_version_attribute_show, ptr null }, i32 20, i32 2 }, [60 x i8] zeroinitializer }, align 32
@elants_ver_attr_hw_version = internal global { %struct.elants_version_attribute, [60 x i8] } { %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.205, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elants_version_attribute_show, ptr null }, i32 26, i32 2 }, [60 x i8] zeroinitializer }, align 32
@elants_ver_attr_test_version = internal global { %struct.elants_version_attribute, [60 x i8] } { %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.206, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elants_version_attribute_show, ptr null }, i32 22, i32 1 }, [60 x i8] zeroinitializer }, align 32
@elants_ver_attr_solution_version = internal global { %struct.elants_version_attribute, [60 x i8] } { %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.207, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elants_version_attribute_show, ptr null }, i32 23, i32 1 }, [60 x i8] zeroinitializer }, align 32
@elants_ver_attr_bc_version = internal global { %struct.elants_version_attribute, [60 x i8] } { %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.208, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elants_version_attribute_show, ptr null }, i32 24, i32 1 }, [60 x i8] zeroinitializer }, align 32
@elants_ver_attr_iap_version = internal global { %struct.elants_version_attribute, [60 x i8] } { %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.209, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elants_version_attribute_show, ptr null }, i32 25, i32 1 }, [60 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"calibrate\00", [22 x i8] zeroinitializer }, align 32
@elants_i2c_calibrate.w_flashkey = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"T\C0\E1Z", [28 x i8] zeroinitializer }, align 32
@elants_i2c_calibrate.rek = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"T)\00\01", [28 x i8] zeroinitializer }, align 32
@elants_i2c_calibrate.rek_resp = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ffff", [28 x i8] zeroinitializer }, align 32
@elants_i2c_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 325, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error while waiting for calibration to complete: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"elants_i2c_calibrate\00", [43 x i8] zeroinitializer }, align 32
@elants_i2c_calibrate._entry_ptr = internal global ptr @elants_i2c_calibrate._entry, section ".printk_index", align 4
@elants_i2c_calibrate._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.3, i32 332, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unexpected calibration response: %*ph\0A\00", [57 x i8] zeroinitializer }, align 32
@elants_i2c_calibrate._entry_ptr.128 = internal global ptr @elants_i2c_calibrate._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@write_update_fw.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.3, ptr @.str.131, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write_update_fw\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware update result: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elants_i2c_%04x.bin\00", [44 x i8] zeroinitializer }, align 32
@elants_i2c_fw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 917, ptr @.str.135, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"requesting fw name = %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"elants_i2c_fw_update\00", [43 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@elants_i2c_fw_update._entry_ptr = internal global ptr @elants_i2c_fw_update._entry, section ".printk_index", align 4
@elants_i2c_fw_update._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.134, ptr @.str.3, i32 922, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request firmware: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@elants_i2c_fw_update._entry_ptr.138 = internal global ptr @elants_i2c_fw_update._entry.136, section ".printk_index", align 4
@elants_i2c_fw_update._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.134, ptr @.str.3, i32 928, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid firmware length: %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@elants_i2c_fw_update._entry_ptr.141 = internal global ptr @elants_i2c_fw_update._entry.139, section ".printk_index", align 4
@elants_i2c_fw_update._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.134, ptr @.str.3, i32 938, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware update failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@elants_i2c_fw_update._entry_ptr.144 = internal global ptr @elants_i2c_fw_update._entry.142, section ".printk_index", align 4
@elants_i2c_fw_update._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.134, ptr @.str.3, i32 947, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"failed to initialize device after firmware update: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@elants_i2c_fw_update._entry_ptr.147 = internal global ptr @elants_i2c_fw_update._entry.145, section ".printk_index", align 4
@elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.3, ptr @.str.149, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"elants_i2c_do_update_firmware\00", [34 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Recovery mode procedure\0A\00", [39 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.3, i32 811, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enter IAP mode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr = internal global ptr @elants_i2c_do_update_firmware._entry, section ".printk_index", align 4
@elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.3, ptr @.str.151, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Normal IAP procedure\0A\00", [42 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.148, ptr @.str.3, i32 821, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed close idle: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.154 = internal global ptr @elants_i2c_do_update_firmware._entry.152, section ".printk_index", align 4
@elants_i2c_do_update_firmware._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.3, i32 836, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.156 = internal global ptr @elants_i2c_do_update_firmware._entry.155, section ".printk_index", align 4
@elants_i2c_do_update_firmware._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.148, ptr @.str.3, i32 848, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to read IAP acknowledgement: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.159 = internal global ptr @elants_i2c_do_update_firmware._entry.157, section ".printk_index", align 4
@elants_i2c_do_update_firmware._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.148, ptr @.str.3, i32 855, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enter IAP: %*ph (expected %*ph)\0A\00", [53 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.162 = internal global ptr @elants_i2c_do_update_firmware._entry.160, section ".printk_index", align 4
@elants_i2c_do_update_firmware._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.148, ptr @.str.3, i32 859, ptr @.str.135, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"successfully entered IAP mode\00", [34 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.165 = internal global ptr @elants_i2c_do_update_firmware._entry.163, section ".printk_index", align 4
@elants_i2c_do_update_firmware._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.148, ptr @.str.3, i32 865, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sending dummy byte failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.168 = internal global ptr @elants_i2c_do_update_firmware._entry.166, section ".printk_index", align 4
@elants_i2c_do_update_firmware._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.148, ptr @.str.3, i32 873, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"clearing of the last page failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.171 = internal global ptr @elants_i2c_do_update_firmware._entry.169, section ".printk_index", align 4
@elants_i2c_do_update_firmware._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.148, ptr @.str.3, i32 881, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to read ACK for clearing the last page: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.174 = internal global ptr @elants_i2c_do_update_firmware._entry.172, section ".printk_index", align 4
@elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.3, ptr @.str.175, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IAP Pages = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.148, ptr @.str.3, i32 894, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to write FW page %d: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.178 = internal global ptr @elants_i2c_do_update_firmware._entry.176, section ".printk_index", align 4
@elants_i2c_do_update_firmware._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.148, ptr @.str.3, i32 902, ptr @.str.135, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"firmware update completed\0A\00", [37 x i8] zeroinitializer }, align 32
@elants_i2c_do_update_firmware._entry_ptr.181 = internal global ptr @elants_i2c_do_update_firmware._entry.179, section ".printk_index", align 4
@elants_i2c_should_check_remark_id.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.182, ptr @.str.3, ptr @.str.183, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"elants_i2c_should_check_remark_id\00", [62 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"eKTH3900/eKTH5312(0x%02x) are not support remark id\0A\00", [43 x i8] zeroinitializer }, align 32
@__const.elants_i2c_validate_remark_id.cmd = private unnamed_addr constant [6 x i8] c"\96\80\1F\00\00!", align 1
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read Remark ID\00", [17 x i8] zeroinitializer }, align 32
@elants_i2c_validate_remark_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.3, i32 745, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Remark ID Mismatched: ts_remark_id=0x%04x, fw_remark_id=0x%04x.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"elants_i2c_validate_remark_id\00", [34 x i8] zeroinitializer }, align 32
@elants_i2c_validate_remark_id._entry_ptr = internal global ptr @elants_i2c_validate_remark_id._entry, section ".printk_index", align 4
@__const.elants_i2c_fw_write_page.ack_ok = private unnamed_addr constant [2 x i8] c"\AA\AA", align 1
@elants_i2c_fw_write_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.3, i32 698, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IAP Write Page failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"elants_i2c_fw_write_page\00", [39 x i8] zeroinitializer }, align 32
@elants_i2c_fw_write_page._entry_ptr = internal global ptr @elants_i2c_fw_write_page._entry, section ".printk_index", align 4
@elants_i2c_fw_write_page._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.3, i32 705, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IAP Ack read failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@elants_i2c_fw_write_page._entry_ptr.191 = internal global ptr @elants_i2c_fw_write_page._entry.189, section ".printk_index", align 4
@elants_i2c_fw_write_page._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.3, i32 715, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IAP Get Ack Error [%02x:%02x]\0A\00", [33 x i8] zeroinitializer }, align 32
@elants_i2c_fw_write_page._entry_ptr.194 = internal global ptr @elants_i2c_fw_write_page._entry.192, section ".printk_index", align 4
@.str.195 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iap_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"calibration_count\00", [46 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read ReK status\00", [16 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%0*x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_version\00", [19 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"solution_version\00", [47 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bc_version\00", [21 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iap_version\00", [20 x i8] zeroinitializer }, align 32
@elants_i2c_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.3, i32 1617, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"suspend command failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"elants_i2c_suspend\00", [45 x i8] zeroinitializer }, align 32
@elants_i2c_suspend._entry_ptr = internal global ptr @elants_i2c_suspend._entry, section ".printk_index", align 4
@elants_i2c_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.3, i32 1648, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"resume command failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"elants_i2c_resume\00", [46 x i8] zeroinitializer }, align 32
@elants_i2c_resume._entry_ptr = internal global ptr @elants_i2c_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294966779, i64 4294967258, i64 4294967294]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.215 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.216 = internal global [8 x i64] [i64 6, i64 8, i64 82, i64 85, i64 98, i64 99, i64 100, i64 102]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 8, i64 40, i64 55]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.219 = internal global [5 x i64] [i64 3, i64 8, i64 83, i64 91, i64 150]
@__sancov_gen_cov_switch_values.220 = internal global [13 x i64] [i64 11, i64 8, i64 103, i64 104, i64 109, i64 110, i64 114, i64 116, i64 117, i64 119, i64 120, i64 130, i64 146]
@___asan_gen_.221 = private unnamed_addr constant [18 x i8] c"elants_i2c_driver\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1689, i32 26 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1693, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant [16 x i8] c"elants_of_match\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1681, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant [18 x i8] c"elants_i2c_pm_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1661, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant [14 x i8] c"elants_i2c_id\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1664, i32 35 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1425, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1430, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1438, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1445, i32 47 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1449, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1455, i32 47 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1459, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1465, i32 48 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1473, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1489, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1497, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1503, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1509, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1513, i32 20 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1540, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1547, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1566, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [23 x i8] c"elants_attribute_group\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1317, i32 37 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1579, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 87, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1336, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1344, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 631, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 645, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 347, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 202, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 595, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 599, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 219, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 376, i32 10 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 385, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 247, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 267, i32 5 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 273, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 282, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 288, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 451, i32 9 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 401, i32 10 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 409, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 413, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 428, i32 9 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 430, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 530, i32 9 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 543, i32 32 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 553, i32 9 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 563, i32 9 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 569, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 572, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 479, i32 9 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 488, i32 9 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 494, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1076, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1081, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1109, i32 5 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1140, i32 5 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1150, i32 5 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1153, i32 5 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1167, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1053, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1058, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 983, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1017, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant [18 x i8] c"elants_attributes\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1302, i32 26 }
@___asan_gen_.593 = private unnamed_addr constant [19 x i8] c"dev_attr_calibrate\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [18 x i8] c"dev_attr_iap_mode\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [27 x i8] c"dev_attr_calibration_count\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [27 x i8] c"elants_ver_attr_fw_version\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [27 x i8] c"elants_ver_attr_hw_version\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [29 x i8] c"elants_ver_attr_test_version\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [33 x i8] c"elants_ver_attr_solution_version\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [27 x i8] c"elants_ver_attr_bc_version\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [28 x i8] c"elants_ver_attr_iap_version\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1248, i32 8 }
@___asan_gen_.626 = private unnamed_addr constant [11 x i8] c"w_flashkey\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 302, i32 18 }
@___asan_gen_.629 = private unnamed_addr constant [4 x i8] c"rek\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 303, i32 18 }
@___asan_gen_.632 = private unnamed_addr constant [9 x i8] c"rek_resp\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 304, i32 18 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 323, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 330, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1251, i32 8 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1212, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 913, i32 34 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 917, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 921, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 927, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 938, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 945, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 800, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 810, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 816, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 821, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 835, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 846, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 853, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 859, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 864, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 872, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 879, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 886, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 892, i32 4 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 902, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 770, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 734, i32 12 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 743, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 697, i32 4 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 704, i32 4 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 713, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1249, i32 8 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1224, i32 22 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1226, i32 5 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1226, i32 16 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1250, i32 8 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1240, i32 9 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1242, i32 23 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1245, i32 22 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1295, i32 8 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1292, i32 22 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1296, i32 8 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1297, i32 8 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1298, i32 8 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1299, i32 8 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1300, i32 8 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1616, i32 4 }
@___asan_gen_.866 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.873 = private constant [42 x i8] c"../drivers/input/touchscreen/elants_i2c.c\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1647, i32 4 }
@llvm.compiler.used = appending global [284 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_elants_i2c_driver_exit, ptr @__initcall__kmod_elants_i2c__303_1700_elants_i2c_driver_init6, ptr @elants_i2c_calibrate._entry, ptr @elants_i2c_calibrate._entry.126, ptr @elants_i2c_calibrate._entry_ptr, ptr @elants_i2c_calibrate._entry_ptr.128, ptr @elants_i2c_do_update_firmware._entry, ptr @elants_i2c_do_update_firmware._entry.152, ptr @elants_i2c_do_update_firmware._entry.155, ptr @elants_i2c_do_update_firmware._entry.157, ptr @elants_i2c_do_update_firmware._entry.160, ptr @elants_i2c_do_update_firmware._entry.163, ptr @elants_i2c_do_update_firmware._entry.166, ptr @elants_i2c_do_update_firmware._entry.169, ptr @elants_i2c_do_update_firmware._entry.172, ptr @elants_i2c_do_update_firmware._entry.176, ptr @elants_i2c_do_update_firmware._entry.179, ptr @elants_i2c_do_update_firmware._entry_ptr, ptr @elants_i2c_do_update_firmware._entry_ptr.154, ptr @elants_i2c_do_update_firmware._entry_ptr.156, ptr @elants_i2c_do_update_firmware._entry_ptr.159, ptr @elants_i2c_do_update_firmware._entry_ptr.162, ptr @elants_i2c_do_update_firmware._entry_ptr.165, ptr @elants_i2c_do_update_firmware._entry_ptr.168, ptr @elants_i2c_do_update_firmware._entry_ptr.171, ptr @elants_i2c_do_update_firmware._entry_ptr.174, ptr @elants_i2c_do_update_firmware._entry_ptr.178, ptr @elants_i2c_do_update_firmware._entry_ptr.181, ptr @elants_i2c_driver_exit, ptr @elants_i2c_event._entry, ptr @elants_i2c_event._entry.117, ptr @elants_i2c_event._entry_ptr, ptr @elants_i2c_event._entry_ptr.119, ptr @elants_i2c_execute_command._entry, ptr @elants_i2c_execute_command._entry.74, ptr @elants_i2c_execute_command._entry.78, ptr @elants_i2c_execute_command._entry_ptr, ptr @elants_i2c_execute_command._entry_ptr.76, ptr @elants_i2c_execute_command._entry_ptr.80, ptr @elants_i2c_fastboot._entry, ptr @elants_i2c_fastboot._entry_ptr, ptr @elants_i2c_fw_update._entry, ptr @elants_i2c_fw_update._entry.136, ptr @elants_i2c_fw_update._entry.139, ptr @elants_i2c_fw_update._entry.142, ptr @elants_i2c_fw_update._entry.145, ptr @elants_i2c_fw_update._entry_ptr, ptr @elants_i2c_fw_update._entry_ptr.138, ptr @elants_i2c_fw_update._entry_ptr.141, ptr @elants_i2c_fw_update._entry_ptr.144, ptr @elants_i2c_fw_update._entry_ptr.147, ptr @elants_i2c_fw_write_page._entry, ptr @elants_i2c_fw_write_page._entry.189, ptr @elants_i2c_fw_write_page._entry.192, ptr @elants_i2c_fw_write_page._entry_ptr, ptr @elants_i2c_fw_write_page._entry_ptr.191, ptr @elants_i2c_fw_write_page._entry_ptr.194, ptr @elants_i2c_initialize._entry, ptr @elants_i2c_initialize._entry.56, ptr @elants_i2c_initialize._entry_ptr, ptr @elants_i2c_initialize._entry_ptr.58, ptr @elants_i2c_irq._entry, ptr @elants_i2c_irq._entry.102, ptr @elants_i2c_irq._entry.105, ptr @elants_i2c_irq._entry.109, ptr @elants_i2c_irq._entry.112, ptr @elants_i2c_irq._entry_ptr, ptr @elants_i2c_irq._entry_ptr.104, ptr @elants_i2c_irq._entry_ptr.107, ptr @elants_i2c_irq._entry_ptr.111, ptr @elants_i2c_irq._entry_ptr.114, ptr @elants_i2c_power_on._entry, ptr @elants_i2c_power_on._entry.51, ptr @elants_i2c_power_on._entry_ptr, ptr @elants_i2c_power_on._entry_ptr.53, ptr @elants_i2c_probe._entry, ptr @elants_i2c_probe._entry.12, ptr @elants_i2c_probe._entry.16, ptr @elants_i2c_probe._entry.20, ptr @elants_i2c_probe._entry.23, ptr @elants_i2c_probe._entry.26, ptr @elants_i2c_probe._entry.29, ptr @elants_i2c_probe._entry.32, ptr @elants_i2c_probe._entry.36, ptr @elants_i2c_probe._entry.39, ptr @elants_i2c_probe._entry.42, ptr @elants_i2c_probe._entry.45, ptr @elants_i2c_probe._entry.6, ptr @elants_i2c_probe._entry_ptr, ptr @elants_i2c_probe._entry_ptr.14, ptr @elants_i2c_probe._entry_ptr.18, ptr @elants_i2c_probe._entry_ptr.22, ptr @elants_i2c_probe._entry_ptr.25, ptr @elants_i2c_probe._entry_ptr.28, ptr @elants_i2c_probe._entry_ptr.31, ptr @elants_i2c_probe._entry_ptr.34, ptr @elants_i2c_probe._entry_ptr.38, ptr @elants_i2c_probe._entry_ptr.41, ptr @elants_i2c_probe._entry_ptr.44, ptr @elants_i2c_probe._entry_ptr.47, ptr @elants_i2c_probe._entry_ptr.9, ptr @elants_i2c_query_fw_version._entry, ptr @elants_i2c_query_fw_version._entry_ptr, ptr @elants_i2c_query_hw_version._entry, ptr @elants_i2c_query_hw_version._entry_ptr, ptr @elants_i2c_query_test_version._entry, ptr @elants_i2c_query_test_version._entry_ptr, ptr @elants_i2c_query_ts_info_ekth._entry, ptr @elants_i2c_query_ts_info_ekth._entry_ptr, ptr @elants_i2c_read._entry, ptr @elants_i2c_read._entry_ptr, ptr @elants_i2c_resume._entry, ptr @elants_i2c_resume._entry_ptr, ptr @elants_i2c_send._entry, ptr @elants_i2c_send._entry_ptr, ptr @elants_i2c_suspend._entry, ptr @elants_i2c_suspend._entry_ptr, ptr @elants_i2c_sw_reset._entry, ptr @elants_i2c_sw_reset._entry_ptr, ptr @elants_i2c_validate_remark_id._entry, ptr @elants_i2c_validate_remark_id._entry_ptr, ptr @elants_i2c_driver, ptr @.str, ptr @elants_of_match, ptr @elants_i2c_pm_ops, ptr @elants_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @elants_i2c_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @elants_attribute_group, ptr @.str.46, ptr @init_completion.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @elants_attributes, ptr @dev_attr_calibrate, ptr @dev_attr_update_fw, ptr @dev_attr_iap_mode, ptr @dev_attr_calibration_count, ptr @elants_ver_attr_fw_version, ptr @elants_ver_attr_hw_version, ptr @elants_ver_attr_test_version, ptr @elants_ver_attr_solution_version, ptr @elants_ver_attr_bc_version, ptr @elants_ver_attr_iap_version, ptr @.str.123, ptr @elants_i2c_calibrate.w_flashkey, ptr @elants_i2c_calibrate.rek, ptr @elants_i2c_calibrate.rek_resp, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213], section "llvm.metadata"
@0 = internal global [218 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_power_on._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_initialize._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_fastboot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_query_hw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_execute_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_execute_command._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_execute_command._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_query_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_query_test_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_query_ts_info_ekth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_irq._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_irq._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_irq._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_irq._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_event._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_attributes to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_calibrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iap_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_calibration_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_ver_attr_fw_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_ver_attr_hw_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_ver_attr_test_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_ver_attr_solution_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_ver_attr_bc_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_ver_attr_iap_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_calibrate.w_flashkey to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_calibrate.rek to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_calibrate.rek_resp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_calibrate._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_fw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_fw_update._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_fw_update._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_fw_update._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_fw_update._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_do_update_firmware._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_validate_remark_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_fw_write_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_fw_write_page._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_fw_write_page._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elants_i2c_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @elants_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @elants_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @elants_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @elants_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elants_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  %dummy = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %dummy) #9
  %0 = call ptr @memset(ptr %dummy, i32 255, i32 34)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
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
  %call.i.i = tail call i32 %6(ptr noundef %2) #9
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 512, i32 noundef 3520) #9
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %do.body14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %if.end8
  %sysfs_mutex = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %sysfs_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @elants_i2c_probe.__key) #9
  %cmd_done = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 24
  %7 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 24, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 128
  %call19 = tail call ptr @device_get_match_data(ptr noundef %dev) #9
  %9 = ptrtoint ptr %call19 to i32
  %chip_id = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 20
  %10 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %chip_id, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call21 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %vcc33 = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %vcc33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %vcc33, align 8
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end33

if.then24:                                        ; preds = %do.body14
  %cmp.not = icmp eq ptr %call21, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then24.cleanup_crit_edge, label %do.end30

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %13) #12
  br label %cleanup

if.end33:                                         ; preds = %do.body14
  %call35 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %vccio = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %vccio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call35, ptr %vccio, align 4
  %cmp.i307 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i307, label %if.then38, label %if.end48

if.then38:                                        ; preds = %if.end33
  %cmp41.not = icmp eq ptr %call35, inttoptr (i32 -517 to ptr)
  br i1 %cmp41.not, label %if.then38.cleanup_crit_edge, label %do.end45

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %15) #12
  br label %cleanup

if.end48:                                         ; preds = %if.end33
  %call50 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef 3) #9
  %reset_gpio = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call50, ptr %reset_gpio, align 16
  %cmp.i308 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i308, label %if.then53, label %if.end48.if.end67_crit_edge

if.end48.if.end67_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then53:                                        ; preds = %if.end48
  %17 = ptrtoint ptr %call50 to i32
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end64 [
    i32 -517, label %if.then53.cleanup_crit_edge
    i32 -2, label %if.then53.if.end66_crit_edge
    i32 -38, label %if.then53.if.end66_crit_edge327
  ]

if.then53.if.end66_crit_edge327:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then53.if.end66_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end64:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %17) #12
  br label %cleanup

if.end66:                                         ; preds = %if.then53.if.end66_crit_edge, %if.then53.if.end66_crit_edge327
  %keep_power_in_suspend = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 26
  %19 = ptrtoint ptr %keep_power_in_suspend to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %keep_power_in_suspend, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end48.if.end67_crit_edge
  %call68 = tail call fastcc i32 @elants_i2c_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %call.i309 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @elants_i2c_power_off, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309)
  %tobool.not.i = icmp eq i32 %call.i309, 0
  br i1 %tobool.not.i, label %if.end80, label %if.then.i

if.then.i:                                        ; preds = %if.end71
  %20 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_gpio, align 16
  %tobool.not.i.i.i = icmp eq ptr %21, null
  %cmp.i.i.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then.i.do.end78_crit_edge, label %if.then.i.i

if.then.i.do.end78_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end78

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %21, i32 noundef 1) #9
  %22 = ptrtoint ptr %vccio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vccio, align 4
  %call2.i.i = tail call i32 @regulator_disable(ptr noundef %23) #9
  %24 = ptrtoint ptr %vcc33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vcc33, align 8
  %call3.i.i = tail call i32 @regulator_disable(ptr noundef %25) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then.i.i, %if.then.i.do.end78_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call.i309) #12
  br label %cleanup

if.end80:                                         ; preds = %if.end71
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr, align 2
  %call82 = call i32 @i2c_smbus_xfer(ptr noundef %27, i16 noundef zeroext %29, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %dummy) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end87, label %if.end89

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %cleanup

if.end89:                                         ; preds = %if.end80
  call fastcc void @elants_i2c_initialize(ptr noundef nonnull %call.i)
  %call99 = call ptr @devm_input_allocate_device(ptr noundef %dev) #9
  %input = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call99, ptr %input, align 4
  %tobool101.not = icmp eq ptr %call99, null
  br i1 %tobool101.not, label %do.end105, label %if.end107

do.end105:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end107:                                        ; preds = %if.end89
  %31 = ptrtoint ptr %call99 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.35, ptr %call99, align 8
  %32 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 24, ptr %id, align 4
  %35 = load ptr, ptr %input, align 4
  %x_max = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 14
  %36 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %x_max, align 8
  call void @input_set_abs_params(ptr noundef %35, i32 noundef 53, i32 noundef 0, i32 noundef %37, i32 noundef 0, i32 noundef 0) #9
  %38 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input, align 4
  %y_max = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 15
  %40 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %y_max, align 4
  call void @input_set_abs_params(ptr noundef %39, i32 noundef 54, i32 noundef 0, i32 noundef %41, i32 noundef 0, i32 noundef 0) #9
  %42 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %43, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %44 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %45, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %46 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %47, i32 noundef 55, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0) #9
  %48 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input, align 4
  %prop = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 18
  call void @touchscreen_parse_properties(ptr noundef %49, i1 noundef zeroext true, ptr noundef %prop) #9
  %50 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp117 = icmp eq i32 %51, 1
  br i1 %cmp117, label %land.lhs.true118, label %if.end107.if.end134_crit_edge

if.end107.if.end134_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

land.lhs.true118:                                 ; preds = %if.end107
  %phy_x = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 16
  %52 = ptrtoint ptr %phy_x to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %phy_x, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool119.not = icmp eq i32 %53, 0
  br i1 %tobool119.not, label %land.lhs.true118.if.end134_crit_edge, label %land.lhs.true120

land.lhs.true118.if.end134_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

land.lhs.true120:                                 ; preds = %land.lhs.true118
  %phy_y = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 17
  %54 = ptrtoint ptr %phy_y to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phy_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool121.not = icmp eq i32 %55, 0
  br i1 %tobool121.not, label %land.lhs.true120.if.end134_crit_edge, label %if.then122

land.lhs.true120.if.end134_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then122:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %prop, align 8
  %div305 = lshr i32 %53, 1
  %add = add i32 %57, %div305
  %div125 = udiv i32 %add, %53
  %x_res = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 12
  %58 = ptrtoint ptr %x_res to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div125, ptr %x_res, align 32
  %max_y = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 18, i32 1
  %59 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_y, align 4
  %div131306 = lshr i32 %55, 1
  %add132 = add i32 %60, %div131306
  %div133 = udiv i32 %add132, %55
  %y_res = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 13
  %61 = ptrtoint ptr %y_res to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div133, ptr %y_res, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then122, %land.lhs.true120.if.end134_crit_edge, %land.lhs.true118.if.end134_crit_edge, %if.end107.if.end134_crit_edge
  %62 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input, align 4
  %x_res136 = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 12
  %64 = ptrtoint ptr %x_res136 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %x_res136, align 32
  call void @input_alloc_absinfo(ptr noundef %63) #9
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 26
  %66 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i310 = icmp eq ptr %67, null
  br i1 %tobool.not.i310, label %if.end134.input_abs_set_res.exit_crit_edge, label %if.then.i311

if.end134.input_abs_set_res.exit_crit_edge:       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit

if.then.i311:                                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i = getelementptr %struct.input_absinfo, ptr %67, i32 53, i32 5
  %68 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i311, %if.end134.input_abs_set_res.exit_crit_edge
  %69 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %input, align 4
  %y_res138 = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 13
  %71 = ptrtoint ptr %y_res138 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %y_res138, align 4
  call void @input_alloc_absinfo(ptr noundef %70) #9
  %absinfo.i312 = getelementptr inbounds %struct.input_dev, ptr %70, i32 0, i32 26
  %73 = ptrtoint ptr %absinfo.i312 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %absinfo.i312, align 8
  %tobool.not.i313 = icmp eq ptr %74, null
  br i1 %tobool.not.i313, label %input_abs_set_res.exit.input_abs_set_res.exit316_crit_edge, label %if.then.i315

input_abs_set_res.exit.input_abs_set_res.exit316_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit316

if.then.i315:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i314 = getelementptr %struct.input_absinfo, ptr %74, i32 54, i32 5
  %75 = ptrtoint ptr %resolution.i314 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %resolution.i314, align 4
  br label %input_abs_set_res.exit316

input_abs_set_res.exit316:                        ; preds = %if.then.i315, %input_abs_set_res.exit.input_abs_set_res.exit316_crit_edge
  %76 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %input, align 4
  %major_res = getelementptr inbounds %struct.elants_data, ptr %call.i, i32 0, i32 11
  %78 = ptrtoint ptr %major_res to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %major_res, align 4
  call void @input_alloc_absinfo(ptr noundef %77) #9
  %absinfo.i317 = getelementptr inbounds %struct.input_dev, ptr %77, i32 0, i32 26
  %80 = ptrtoint ptr %absinfo.i317 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %absinfo.i317, align 8
  %tobool.not.i318 = icmp eq ptr %81, null
  br i1 %tobool.not.i318, label %input_abs_set_res.exit316.input_abs_set_res.exit321_crit_edge, label %if.then.i320

input_abs_set_res.exit316.input_abs_set_res.exit321_crit_edge: ; preds = %input_abs_set_res.exit316
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit321

if.then.i320:                                     ; preds = %input_abs_set_res.exit316
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %79 to i32
  %resolution.i319 = getelementptr %struct.input_absinfo, ptr %81, i32 48, i32 5
  %82 = ptrtoint ptr %resolution.i319 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv, ptr %resolution.i319, align 4
  br label %input_abs_set_res.exit321

input_abs_set_res.exit321:                        ; preds = %if.then.i320, %input_abs_set_res.exit316.input_abs_set_res.exit321_crit_edge
  %83 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %input, align 4
  %call141 = call i32 @input_mt_init_slots(ptr noundef %84, i32 noundef 10, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end148, label %do.end146

do.end146:                                        ; preds = %input_abs_set_res.exit321
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call141) #12
  br label %cleanup

if.end148:                                        ; preds = %input_abs_set_res.exit321
  %85 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %input, align 4
  %call150 = call i32 @input_register_device(ptr noundef %86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end157, label %do.end155

do.end155:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call150) #12
  br label %cleanup

if.end157:                                        ; preds = %if.end148
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  %call.i322 = call ptr @irq_get_irq_data(i32 noundef %88) #9
  %tobool.not.i323 = icmp eq ptr %call.i322, null
  br i1 %tobool.not.i323, label %irq_get_trigger_type.exit.thread, label %irq_get_trigger_type.exit

irq_get_trigger_type.exit.thread:                 ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq, align 4
  br label %97

irq_get_trigger_type.exit:                        ; preds = %if.end157
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i322, i32 0, i32 3
  %91 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %common.i.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %and.i.i = and i32 %94, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool159.not = icmp eq i32 %and.i.i, 0
  %95 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq, align 4
  %call158.op = or i32 %and.i.i, 8192
  br i1 %tobool159.not, label %irq_get_trigger_type.exit._crit_edge, label %irq_get_trigger_type.exit._crit_edge328

irq_get_trigger_type.exit._crit_edge328:          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %99

irq_get_trigger_type.exit._crit_edge:             ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %97

97:                                               ; preds = %irq_get_trigger_type.exit._crit_edge, %irq_get_trigger_type.exit.thread
  %98 = phi i32 [ %90, %irq_get_trigger_type.exit.thread ], [ %96, %irq_get_trigger_type.exit._crit_edge ]
  br label %99

99:                                               ; preds = %97, %irq_get_trigger_type.exit._crit_edge328
  %100 = phi i32 [ %98, %97 ], [ %96, %irq_get_trigger_type.exit._crit_edge328 ]
  %101 = phi i32 [ 8194, %97 ], [ %call158.op, %irq_get_trigger_type.exit._crit_edge328 ]
  %name164 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call165 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %100, ptr noundef null, ptr noundef nonnull @elants_i2c_irq, i32 noundef %101, ptr noundef %name164, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end172, label %do.end170

do.end170:                                        ; preds = %99
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end172:                                        ; preds = %99
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %102 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %of_node, align 8
  %tobool174.not = icmp eq ptr %103, null
  br i1 %tobool174.not, label %if.then175, label %if.end172.if.end178_crit_edge

if.end172.if.end178_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %call177 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %if.end172.if.end178_crit_edge
  %call180 = call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @elants_attribute_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end178.cleanup_crit_edge, label %do.end185

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end185:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call180) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end185, %if.end178.cleanup_crit_edge, %do.end170, %do.end155, %do.end146, %do.end105, %do.end87, %do.end78, %if.end67.cleanup_crit_edge, %do.end64, %if.then53.cleanup_crit_edge, %do.end45, %if.then38.cleanup_crit_edge, %do.end30, %if.then24.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ %17, %do.end64 ], [ %call.i309, %do.end78 ], [ -6, %do.end87 ], [ %call141, %do.end146 ], [ %call150, %do.end155 ], [ %call165, %do.end170 ], [ %call180, %do.end185 ], [ -12, %do.end105 ], [ -6, %do.end6 ], [ -12, %if.end8.cleanup_crit_edge ], [ %13, %do.end30 ], [ -517, %if.then24.cleanup_crit_edge ], [ %15, %do.end45 ], [ -517, %if.then38.cleanup_crit_edge ], [ %17, %if.then53.cleanup_crit_edge ], [ %call68, %if.end67.cleanup_crit_edge ], [ 0, %if.end178.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %dummy) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_power_on(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 4
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 16
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 1) #9
  %vcc33 = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 2
  %2 = ptrtoint ptr %vcc33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcc33, align 8
  %call2 = tail call i32 @regulator_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ts, align 128
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %call2) #12
  br label %release_reset_gpio.thread

if.end4:                                          ; preds = %if.end
  %vccio = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 3
  %6 = ptrtoint ptr %vccio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vccio, align 4
  %call5 = tail call i32 @regulator_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end19, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts, align 128
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.52, i32 noundef %call5) #12
  %10 = ptrtoint ptr %vcc33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vcc33, align 8
  %call14 = tail call i32 @regulator_disable(ptr noundef %11) #9
  br label %release_reset_gpio.thread

release_reset_gpio.thread:                        ; preds = %do.end10, %do.end
  %error.0.ph = phi i32 [ %call5, %do.end10 ], [ %call2, %do.end ]
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio, align 16
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 107374000) #9
  %15 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpio, align 16
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %release_reset_gpio.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 0, %entry.cleanup_crit_edge ], [ %error.0.ph, %release_reset_gpio.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @elants_i2c_power_off(ptr nocapture noundef readonly %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.elants_data, ptr %_data, i32 0, i32 4
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 16
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 1) #9
  %vccio = getelementptr inbounds %struct.elants_data, ptr %_data, i32 0, i32 3
  %2 = ptrtoint ptr %vccio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vccio, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %3) #9
  %vcc33 = getelementptr inbounds %struct.elants_data, ptr %_data, i32 0, i32 2
  %4 = ptrtoint ptr %vcc33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc33, align 8
  %call3 = tail call i32 @regulator_disable(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elants_i2c_initialize(ptr nocapture noundef %ts) unnamed_addr #2 align 64 {
entry:
  %cmd.i20 = alloca [4 x i8], align 4
  %resp.i21 = alloca [4 x i8], align 4
  %cmd.i15 = alloca [4 x i8], align 4
  %resp.i16 = alloca [4 x i8], align 4
  %cmd.i = alloca [4 x i8], align 4
  %resp.i = alloca [4 x i8], align 4
  %boot_cmd.i = alloca [4 x i8], align 4
  %soft_rst_cmd.i = alloca [4 x i8], align 4
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %retry_cnt.046 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soft_rst_cmd.i) #9
  %3 = ptrtoint ptr %soft_rst_cmd.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2004318071, ptr %soft_rst_cmd.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %soft_rst_cmd.i, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp.i.i, label %elants_i2c_sw_reset.exit.thread, label %elants_i2c_sw_reset.exit

elants_i2c_sw_reset.exit.thread:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 30) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soft_rst_cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retry_cnt.046)
  %cmp232 = icmp ult i32 %retry_cnt.046, 2
  br label %if.end4

elants_i2c_sw_reset.exit:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp1.i.i = icmp sgt i32 %call.i.i.i, -1
  %spec.store.select.i.i = select i1 %cmp1.i.i, i32 -5, i32 %call.i.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %soft_rst_cmd.i, i32 noundef %spec.store.select.i.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.59, i32 noundef %spec.store.select.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soft_rst_cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retry_cnt.046)
  %cmp2 = icmp ult i32 %retry_cnt.046, 2
  br i1 %cmp2, label %elants_i2c_sw_reset.exit.for.inc_crit_edge, label %elants_i2c_sw_reset.exit.if.end4_crit_edge

elants_i2c_sw_reset.exit.if.end4_crit_edge:       ; preds = %elants_i2c_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

elants_i2c_sw_reset.exit.for.inc_crit_edge:       ; preds = %elants_i2c_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end4:                                          ; preds = %elants_i2c_sw_reset.exit.if.end4_crit_edge, %elants_i2c_sw_reset.exit.thread
  %cmp234 = phi i1 [ %cmp232, %elants_i2c_sw_reset.exit.thread ], [ false, %elants_i2c_sw_reset.exit.if.end4_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boot_cmd.i) #9
  %4 = ptrtoint ptr %boot_cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1298229614, ptr %boot_cmd.i, align 4
  %call.i.i.i3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %boot_cmd.i, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i3)
  %cmp.i.i4 = icmp eq i32 %call.i.i.i3, 4
  br i1 %cmp.i.i4, label %do.body1.i, label %elants_i2c_send.exit.i8

elants_i2c_send.exit.i8:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i3)
  %cmp1.i.i5 = icmp sgt i32 %call.i.i.i3, -1
  %spec.store.select.i.i6 = select i1 %cmp1.i.i5, i32 -5, i32 %call.i.i.i3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %boot_cmd.i, i32 noundef %spec.store.select.i.i6) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.63, i32 noundef %spec.store.select.i.i6) #12
  br label %elants_i2c_fastboot.exit

do.body1.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_fastboot.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_initialize, %elants_i2c_fastboot.exit.thread)) #9
          to label %elants_i2c_fastboot.exit [label %elants_i2c_fastboot.exit.thread], !srcloc !431

elants_i2c_fastboot.exit.thread:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_fastboot.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i, ptr noundef nonnull @.str.65, i32 noundef %conv.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_cmd.i) #9
  br label %if.end11

elants_i2c_fastboot.exit:                         ; preds = %do.body1.i, %elants_i2c_send.exit.i8
  %retval.0.i9 = phi i32 [ %spec.store.select.i.i6, %elants_i2c_send.exit.i8 ], [ 0, %do.body1.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i9)
  %tobool6.not = icmp ne i32 %retval.0.i9, 0
  %or.cond2 = select i1 %tobool6.not, i1 %cmp234, i1 false
  br i1 %or.cond2, label %elants_i2c_fastboot.exit.for.inc_crit_edge, label %elants_i2c_fastboot.exit.if.end11_crit_edge

elants_i2c_fastboot.exit.if.end11_crit_edge:      ; preds = %elants_i2c_fastboot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

elants_i2c_fastboot.exit.for.inc_crit_edge:       ; preds = %elants_i2c_fastboot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %elants_i2c_fastboot.exit.if.end11_crit_edge, %elants_i2c_fastboot.exit.thread
  call void @msleep(i32 noundef 50) #9
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 4, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp.i, label %if.else, label %elants_i2c_read.exit

elants_i2c_read.exit:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp1.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i = select i1 %cmp1.i, i32 -5, i32 %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %spec.store.select.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.54, i32 noundef %spec.store.select.i) #12
  br label %for.inc

if.else:                                          ; preds = %if.end11
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %lhsv = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %lhsv)
  %.not = icmp eq i32 %lhsv, 1431655765
  br i1 %.not, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %iap_mode = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 21
  %8 = ptrtoint ptr %iap_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %iap_mode, align 4
  br label %for.end

if.else20:                                        ; preds = %if.else
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %lhsv49 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431666816, i32 %lhsv49)
  %.not50 = icmp eq i32 %lhsv49, 1431666816
  br i1 %.not50, label %if.else20.for.end_crit_edge, label %if.else26

if.else20.for.end_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else26:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.57, i32 noundef 4, ptr noundef nonnull %buf) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else26, %elants_i2c_read.exit, %elants_i2c_fastboot.exit.for.inc_crit_edge, %elants_i2c_sw_reset.exit.for.inc_crit_edge
  %error.1 = phi i32 [ %spec.store.select.i, %elants_i2c_read.exit ], [ -22, %if.else26 ], [ %spec.store.select.i.i, %elants_i2c_sw_reset.exit.for.inc_crit_edge ], [ %retval.0.i9, %elants_i2c_fastboot.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %retry_cnt.046, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else20.for.end_crit_edge, %if.then19
  %error.2 = phi i32 [ 0, %if.then19 ], [ -5, %if.else20.for.end_crit_edge ], [ %error.1, %for.inc.for.end_crit_edge ]
  %10 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ts, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #9
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1408237569, ptr %cmd.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #9
  %hw_version.i = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 10
  %13 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %resp.i, align 4
  %call.i = call fastcc i32 @elants_i2c_execute_command(ptr noundef %11, ptr noundef nonnull %cmd.i, i32 noundef 4, ptr noundef nonnull %resp.i, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end.i12, label %for.end.elants_i2c_query_hw_version.exit.thread_crit_edge

for.end.elants_i2c_query_hw_version.exit.thread_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %elants_i2c_query_hw_version.exit.thread

if.end.i12:                                       ; preds = %for.end
  %14 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp.i, align 4
  %shr.i.i = lshr i32 %15, 4
  %conv.i.i = trunc i32 %shr.i.i to i16
  %16 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %hw_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv.i.i)
  %cmp.not.i = icmp eq i16 %conv.i.i, -1
  br i1 %cmp.not.i, label %while.cond.1.i, label %if.end.i12.if.then37_crit_edge

if.end.i12.if.then37_crit_edge:                   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

while.cond.1.i:                                   ; preds = %if.end.i12
  %call.1.i = call fastcc i32 @elants_i2c_execute_command(ptr noundef %11, ptr noundef nonnull %cmd.i, i32 noundef 4, ptr noundef nonnull %resp.i, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool3.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool3.not.1.i, label %if.end.1.i, label %while.cond.1.i.elants_i2c_query_hw_version.exit.thread_crit_edge

while.cond.1.i.elants_i2c_query_hw_version.exit.thread_crit_edge: ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elants_i2c_query_hw_version.exit.thread

if.end.1.i:                                       ; preds = %while.cond.1.i
  %17 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resp.i, align 4
  %shr.i.1.i = lshr i32 %18, 4
  %conv.i.1.i = trunc i32 %shr.i.1.i to i16
  %19 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i.1.i, ptr %hw_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv.i.1.i)
  %cmp.not.1.i = icmp eq i16 %conv.i.1.i, -1
  br i1 %cmp.not.1.i, label %while.cond.2.i, label %if.end.1.i.if.then37_crit_edge

if.end.1.i.if.then37_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

while.cond.2.i:                                   ; preds = %if.end.1.i
  %call.2.i = call fastcc i32 @elants_i2c_execute_command(ptr noundef %11, ptr noundef nonnull %cmd.i, i32 noundef 4, ptr noundef nonnull %resp.i, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool3.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool3.not.2.i, label %if.end.2.i, label %while.cond.2.i.elants_i2c_query_hw_version.exit.thread_crit_edge

while.cond.2.i.elants_i2c_query_hw_version.exit.thread_crit_edge: ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elants_i2c_query_hw_version.exit.thread

if.end.2.i:                                       ; preds = %while.cond.2.i
  %20 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resp.i, align 4
  %shr.i.2.i = lshr i32 %21, 4
  %conv.i.2.i = trunc i32 %shr.i.2.i to i16
  %22 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i.2.i, ptr %hw_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv.i.2.i)
  %cmp.not.2.i = icmp eq i16 %conv.i.2.i, -1
  br i1 %cmp.not.2.i, label %do.end.i, label %if.end.2.i.if.then37_crit_edge

if.end.2.i.if.then37_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

do.end.i:                                         ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i13 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %conv11.i = and i32 %shr.i.2.i, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i13, ptr noundef nonnull @.str.69, i32 noundef %conv11.i) #12
  br label %elants_i2c_query_hw_version.exit.thread

elants_i2c_query_hw_version.exit.thread:          ; preds = %do.end.i, %while.cond.2.i.elants_i2c_query_hw_version.exit.thread_crit_edge, %while.cond.1.i.elants_i2c_query_hw_version.exit.thread_crit_edge, %for.end.elants_i2c_query_hw_version.exit.thread_crit_edge
  %retval.0.i14.ph = phi i32 [ %call.2.i, %while.cond.2.i.elants_i2c_query_hw_version.exit.thread_crit_edge ], [ %call.1.i, %while.cond.1.i.elants_i2c_query_hw_version.exit.thread_crit_edge ], [ %call.i, %for.end.elants_i2c_query_hw_version.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  br label %if.end39

if.then37:                                        ; preds = %if.end.2.i.if.then37_crit_edge, %if.end.1.i.if.then37_crit_edge, %if.end.i12.if.then37_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  %23 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ts, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i15) #9
  %25 = ptrtoint ptr %cmd.i15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1393557505, ptr %cmd.i15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i16) #9
  %26 = ptrtoint ptr %resp.i16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %resp.i16, align 4
  %call.i17 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %24, ptr noundef nonnull %cmd.i15, i32 noundef 4, ptr noundef nonnull %resp.i16, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i, label %if.end.i19, label %if.then37.elants_i2c_query_bc_version.exit_crit_edge

if.then37.elants_i2c_query_bc_version.exit_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %elants_i2c_query_bc_version.exit

if.end.i19:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %resp.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resp.i16, align 4
  %shr.i.i18 = lshr i32 %28, 4
  %29 = lshr i32 %28, 12
  %conv5.i = trunc i32 %29 to i8
  %bc_version.i = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 8
  %30 = ptrtoint ptr %bc_version.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv5.i, ptr %bc_version.i, align 8
  %conv7.i = trunc i32 %shr.i.i18 to i8
  %iap_version.i = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 9
  %31 = ptrtoint ptr %iap_version.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv7.i, ptr %iap_version.i, align 1
  br label %elants_i2c_query_bc_version.exit

elants_i2c_query_bc_version.exit:                 ; preds = %if.end.i19, %if.then37.elants_i2c_query_bc_version.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i15) #9
  br label %if.end39

if.end39:                                         ; preds = %elants_i2c_query_bc_version.exit, %elants_i2c_query_hw_version.exit.thread
  %error2.0 = phi i32 [ %call.i17, %elants_i2c_query_bc_version.exit ], [ %retval.0.i14.ph, %elants_i2c_query_hw_version.exit.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool40.not = icmp eq i32 %error.2, 0
  %spec.select = select i1 %tobool40.not, i32 %error2.0, i32 %error.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool43.not = icmp eq i32 %spec.select, 0
  br i1 %tobool43.not, label %if.end46, label %if.end39.if.end50_crit_edge

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end46:                                         ; preds = %if.end39
  %call45 = call fastcc i32 @elants_i2c_query_fw_version(ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool47.not = icmp eq i32 %call45, 0
  br i1 %tobool47.not, label %if.then48, label %if.end46.if.end50_crit_edge

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then48:                                        ; preds = %if.end46
  %32 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ts, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i20) #9
  %34 = ptrtoint ptr %cmd.i20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1407188993, ptr %cmd.i20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i21) #9
  %35 = ptrtoint ptr %resp.i21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %resp.i21, align 4
  %call.i22 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %33, ptr noundef nonnull %cmd.i20, i32 noundef 4, ptr noundef nonnull %resp.i21, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i29, label %do.end.i25

do.end.i25:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i24 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i24, ptr noundef nonnull @.str.87) #12
  br label %elants_i2c_query_test_version.exit

if.end.i29:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %resp.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resp.i21, align 4
  %shr.i.i26 = lshr i32 %37, 4
  %38 = lshr i32 %37, 12
  %conv5.i27 = trunc i32 %38 to i8
  %test_version.i = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 6
  %39 = ptrtoint ptr %test_version.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv5.i27, ptr %test_version.i, align 2
  %conv7.i28 = trunc i32 %shr.i.i26 to i8
  %solution_version.i = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 7
  %40 = ptrtoint ptr %solution_version.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv7.i28, ptr %solution_version.i, align 1
  br label %elants_i2c_query_test_version.exit

elants_i2c_query_test_version.exit:               ; preds = %if.end.i29, %do.end.i25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i21) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i20) #9
  br label %if.end50

if.end50:                                         ; preds = %elants_i2c_query_test_version.exit, %if.end46.if.end50_crit_edge, %if.end39.if.end50_crit_edge
  %error.5 = phi i32 [ %call45, %if.end46.if.end50_crit_edge ], [ %call.i22, %elants_i2c_query_test_version.exit ], [ %spec.select, %if.end39.if.end50_crit_edge ]
  %chip_id = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 20
  %41 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chip_id, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %42, label %do.body60 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb55
  ]

sw.bb:                                            ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.5)
  %tobool51.not = icmp eq i32 %error.5, 0
  br i1 %tobool51.not, label %if.then52, label %sw.bb.if.then67_crit_edge

sw.bb.if.then67_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67

if.then52:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call fastcc i32 @elants_i2c_query_ts_info_ekth(ptr noundef %ts)
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.5)
  %tobool56.not = icmp eq i32 %error.5, 0
  br i1 %tobool56.not, label %if.then57, label %sw.bb55.if.then67_crit_edge

sw.bb55.if.then67_crit_edge:                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67

if.then57:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = call fastcc i32 @elants_i2c_query_ts_info_ektf(ptr noundef %ts)
  br label %sw.epilog

do.body60:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/touchscreen/elants_i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 673, 0\0A.popsection", ""() #9, !srcloc !432
  unreachable

sw.epilog:                                        ; preds = %if.then57, %if.then52
  %error.6 = phi i32 [ %call58, %if.then57 ], [ %call53, %if.then52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.6)
  %tobool66.not = icmp eq i32 %error.6, 0
  br i1 %tobool66.not, label %sw.epilog.if.end69_crit_edge, label %sw.epilog.if.then67_crit_edge

sw.epilog.if.then67_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then67:                                        ; preds = %sw.epilog.if.then67_crit_edge, %sw.bb55.if.then67_crit_edge, %sw.bb.if.then67_crit_edge
  %iap_mode68 = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 21
  %44 = ptrtoint ptr %iap_mode68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %iap_mode68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %sw.epilog.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elants_i2c_irq(i32 noundef %irq, ptr noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_dev, align 128
  %buf = getelementptr inbounds %struct.elants_data, ptr %_dev, i32 0, i32 28
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %buf, i32 noundef 169, i16 noundef zeroext 513) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, i32 noundef %call.i) #12
  br label %out

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_irq.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_irq, %if.then6)) #9
          to label %do.end12 [label %if.then6], !srcloc !431

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_irq.__UNIQUE_ID_ddebug300, ptr noundef %dev7, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100, i32 noundef 4, ptr noundef %buf) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then6, %do.body2
  %state = getelementptr inbounds %struct.elants_data, ptr %_dev, i32 0, i32 19
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %3, label %do.end12.out_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb22
    i32 0, label %sw.bb31
  ]

do.end12.out_crit_edge:                           ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb:                                            ; preds = %do.end12
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %6)
  %cmp14 = icmp eq i8 %6, 102
  br i1 %cmp14, label %if.then16, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_resp = getelementptr inbounds %struct.elants_data, ptr %_dev, i32 0, i32 23
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf, align 128
  %9 = ptrtoint ptr %cmd_resp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cmd_resp, align 4
  %cmd_done = getelementptr inbounds %struct.elants_data, ptr %_dev, i32 0, i32 24
  tail call void @complete(ptr noundef %cmd_done) #9
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  br label %out

sw.bb22:                                          ; preds = %do.end12
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %12)
  %cmp26.not = icmp eq i8 %12, 99
  br i1 %cmp26.not, label %sw.bb31.thread, label %sw.bb22.out_crit_edge

sw.bb22.out_crit_edge:                            ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb31.thread:                                   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %state, align 4
  br label %sw.bb62

sw.bb31:                                          ; preds = %do.end12
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %buf, align 128
  %15 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.216)
  switch i8 %.pr, label %do.end130 [
    i8 85, label %sw.bb31.out_crit_edge
    i8 82, label %sw.bb31.out_crit_edge185
    i8 100, label %sw.bb36
    i8 98, label %sw.bb51
    i8 102, label %sw.bb57
    i8 99, label %sw.bb31.sw.bb62_crit_edge
  ]

sw.bb31.sw.bb62_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb62

sw.bb31.out_crit_edge185:                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb31.out_crit_edge:                            ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb36:                                          ; preds = %sw.bb31
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @__const.elants_i2c_irq.wait_packet, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool41.not = icmp eq i32 %bcmp, 0
  br i1 %tobool41.not, label %if.else, label %do.end45

do.end45:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.103, i32 noundef 4, ptr noundef %buf) #12
  br label %out

if.else:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 6442440) #9
  br label %out

sw.bb51:                                          ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx53 = getelementptr %struct.elants_data, ptr %_dev, i32 0, i32 28, i32 4
  %arrayidx55 = getelementptr %struct.elants_data, ptr %_dev, i32 0, i32 28, i32 2
  %18 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx55, align 2
  %conv56 = zext i8 %19 to i32
  tail call fastcc void @elants_i2c_event(ptr noundef %_dev, ptr noundef %arrayidx53, i32 noundef %conv56)
  br label %out

sw.bb57:                                          ; preds = %sw.bb31
  %chip_id = getelementptr inbounds %struct.elants_data, ptr %_dev, i32 0, i32 20
  %20 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp58.not = icmp eq i32 %21, 1
  br i1 %cmp58.not, label %sw.bb57.sw.bb62_crit_edge, label %sw.bb57.out_crit_edge

sw.bb57.out_crit_edge:                            ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb57.sw.bb62_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57.sw.bb62_crit_edge, %sw.bb31.sw.bb62_crit_edge, %sw.bb31.thread
  %arrayidx64 = getelementptr %struct.elants_data, ptr %_dev, i32 0, i32 28, i32 1
  %22 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %23 to i32
  %24 = add i8 %23, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %24)
  %25 = icmp ult i8 %24, -3
  br i1 %25, label %do.end73, label %if.end77

do.end73:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  %dev74 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %buf) #12
  br label %out

if.end77:                                         ; preds = %sw.bb62
  %arrayidx79 = getelementptr %struct.elants_data, ptr %_dev, i32 0, i32 28, i32 2
  %26 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx79, align 2
  %28 = udiv i8 %27, %23
  %div = zext i8 %28 to i32
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.217)
  switch i8 %28, label %if.end77.do.end116_crit_edge [
    i8 40, label %land.lhs.true
    i8 55, label %if.end77.for.body.lr.ph_crit_edge
  ]

if.end77.for.body.lr.ph_crit_edge:                ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.end77.do.end116_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end116

land.lhs.true:                                    ; preds = %if.end77
  %chip_id83 = getelementptr inbounds %struct.elants_data, ptr %_dev, i32 0, i32 20
  %30 = ptrtoint ptr %chip_id83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chip_id83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp84 = icmp eq i32 %31, 1
  br i1 %cmp84, label %do.body87, label %land.lhs.true.do.end116_crit_edge

land.lhs.true.do.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end116

do.body87:                                        ; preds = %land.lhs.true
  %.b177 = load i1, ptr @elants_i2c_irq.__print_once, align 1
  br i1 %.b177, label %do.body87.for.body.lr.ph_crit_edge, label %if.then89

do.body87.for.body.lr.ph_crit_edge:               ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.then89:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @elants_i2c_irq.__print_once, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_irq.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_irq, %if.then102)) #9
          to label %for.body.lr.ph [label %if.then102], !srcloc !431

if.then102:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %dev103 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_irq.__UNIQUE_ID_ddebug301, ptr noundef %dev103, ptr noundef nonnull @.str.108) #9
  br label %for.body.lr.ph

do.end116:                                        ; preds = %land.lhs.true.do.end116_crit_edge, %if.end77.do.end116_crit_edge
  %dev117 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117, ptr noundef nonnull @.str.110, i32 noundef 4, ptr noundef %buf) #12
  br label %out

for.body.lr.ph:                                   ; preds = %if.then102, %if.then89, %do.body87.for.body.lr.ph_crit_edge, %if.end77.for.body.lr.ph_crit_edge
  %add.ptr = getelementptr %struct.elants_data, ptr %_dev, i32 0, i32 28, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %i.0184, %div
  %add.ptr127 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call fastcc void @elants_i2c_event(ptr noundef %_dev, ptr noundef %add.ptr127, i32 noundef %div)
  %inc = add nuw nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc, %conv65
  br i1 %exitcond.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end130:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  %dev131 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %buf) #12
  br label %out

out:                                              ; preds = %do.end130, %for.body.out_crit_edge, %do.end116, %do.end73, %sw.bb57.out_crit_edge, %sw.bb51, %if.else, %do.end45, %sw.bb31.out_crit_edge, %sw.bb31.out_crit_edge185, %sw.bb22.out_crit_edge, %if.then16, %sw.bb.out_crit_edge, %do.end12.out_crit_edge, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal fastcc i32 @elants_i2c_read(ptr noundef %client, ptr noundef %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %data, i32 noundef %size, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %size)
  %cmp = icmp eq i32 %call.i, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1 = icmp sgt i32 %call.i, -1
  %spec.store.select = select i1 %cmp1, i32 -5, i32 %call.i
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %spec.store.select) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_query_fw_version(ptr nocapture noundef %ts) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [4 x i8], align 4
  %resp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1392508929, ptr %cmd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #9
  %fw_version = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %resp, align 4
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %entry
  %dec39 = phi i32 [ 2, %entry ], [ %dec, %do.end.while.body_crit_edge ]
  %call = call fastcc i32 @elants_i2c_execute_command(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef nonnull %resp, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %4 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resp, align 4
  %shr.i = lshr i32 %5, 4
  %conv.i = trunc i32 %shr.i to i16
  %6 = ptrtoint ptr %fw_version to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %fw_version, align 4
  %7 = zext i16 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.218)
  switch i16 %conv.i, label %if.end.cleanup_crit_edge [
    i16 0, label %if.end.do.body_crit_edge
    i16 -1, label %if.end.do.body_crit_edge40
  ]

if.end.do.body_crit_edge40:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_query_fw_version.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_query_fw_version, %if.then18)) #9
          to label %do.end [label %if.then18], !srcloc !431

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_query_fw_version.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef 4, ptr noundef nonnull %resp) #9
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %dec = add nsw i32 %dec39, -1
  %tobool.not = icmp eq i32 %dec39, 0
  br i1 %tobool.not, label %do.end23, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %fw_version to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fw_version, align 4
  %conv26 = zext i16 %9 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %conv26) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end23 ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_query_ts_info_ekth(ptr nocapture noundef %ts) unnamed_addr #2 align 64 {
entry:
  %resp = alloca [17 x i8], align 1
  %get_resolution_cmd = alloca [6 x i8], align 1
  %get_osr_cmd = alloca [4 x i8], align 4
  %get_physical_scan_cmd = alloca [4 x i8], align 4
  %get_physical_drive_cmd = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 128
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %resp) #9
  %2 = getelementptr inbounds [17 x i8], ptr %resp, i32 0, i32 2
  %3 = getelementptr inbounds [17 x i8], ptr %resp, i32 0, i32 3
  %4 = call ptr @memset(ptr %resp, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %get_resolution_cmd) #9
  %5 = call ptr @memcpy(ptr %get_resolution_cmd, ptr @__const.elants_i2c_query_ts_info_ekth.get_resolution_cmd, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %get_osr_cmd) #9
  %6 = ptrtoint ptr %get_osr_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1406533633, ptr %get_osr_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %get_physical_scan_cmd) #9
  %7 = ptrtoint ptr %get_physical_scan_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1406599169, ptr %get_physical_scan_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %get_physical_drive_cmd) #9
  %8 = ptrtoint ptr %get_physical_drive_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1406664705, ptr %get_physical_drive_cmd, align 4
  %call = call fastcc i32 @elants_i2c_execute_command(ptr noundef %1, ptr noundef nonnull %get_resolution_cmd, i32 noundef 6, ptr noundef nonnull %resp, i32 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds [17 x i8], ptr %resp, i32 0, i32 16
  %10 = getelementptr inbounds [17 x i8], ptr %resp, i32 0, i32 11
  %11 = getelementptr inbounds [17 x i8], ptr %resp, i32 0, i32 10
  %12 = getelementptr inbounds [17 x i8], ptr %resp, i32 0, i32 7
  %13 = getelementptr inbounds [17 x i8], ptr %resp, i32 0, i32 6
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %2, align 1
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %13, align 1
  %conv4 = zext i8 %17 to i32
  %add = add nuw nsw i32 %conv4, %conv
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %11, align 1
  %conv6 = zext i8 %19 to i32
  %add7 = add nuw nsw i32 %add, %conv6
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %conv10 = zext i8 %21 to i16
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %12, align 1
  %conv12 = zext i8 %23 to i16
  %add13 = add nuw nsw i16 %conv12, %conv10
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %10, align 1
  %conv15 = zext i8 %25 to i16
  %add16 = add nuw nsw i16 %add13, %conv15
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %9, align 1
  %major_res = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 11
  %28 = ptrtoint ptr %major_res to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %major_res, align 4
  %call21 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %1, ptr noundef nonnull %get_osr_cmd, i32 noundef 4, ptr noundef nonnull %resp, i32 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %call29 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %1, ptr noundef nonnull %get_physical_scan_cmd, i32 noundef 4, ptr noundef nonnull %resp, i32 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %2, align 1
  %call37 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %1, ptr noundef nonnull %get_physical_drive_cmd, i32 noundef 4, ptr noundef nonnull %resp, i32 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_query_ts_info_ekth.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_query_ts_info_ekth, %if.then47)) #9
          to label %do.end [label %if.then47], !srcloc !431

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv48 = zext i16 %32 to i32
  %conv49 = zext i16 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_query_ts_info_ekth.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %conv48, i32 noundef %conv49) #9
  br label %do.end

do.end:                                           ; preds = %if.then47, %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add7)
  %cmp = icmp eq i32 %add7, 0
  br i1 %cmp, label %do.end.do.end63_crit_edge, label %lor.lhs.false

do.end.do.end63_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

lor.lhs.false:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add16)
  %cmp54 = icmp eq i16 %add16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp58 = icmp eq i8 %30, 0
  %or.cond = select i1 %cmp54, i1 true, i1 %cmp58
  br i1 %or.cond, label %lor.lhs.false.do.end63_crit_edge, label %if.else

lor.lhs.false.do.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

do.end63:                                         ; preds = %lor.lhs.false.do.end63_crit_edge, %do.end.do.end63_crit_edge
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv66 = zext i16 %add16 to i32
  %conv67 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev64, ptr noundef nonnull @.str.95, i32 noundef %add7, i32 noundef %conv66, i32 noundef %conv67) #12
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv53 = zext i16 %add16 to i32
  %conv57 = zext i8 %30 to i32
  %sub = add nsw i32 %add7, -1
  %mul = mul nuw nsw i32 %sub, %conv57
  %x_max = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 14
  %35 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %x_max, align 8
  %conv72 = zext i16 %32 to i32
  %div139 = lshr i32 %conv72, 1
  %add73 = add nuw nsw i32 %div139, %mul
  %div75 = udiv i32 %add73, %conv72
  %x_res = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 12
  %36 = ptrtoint ptr %x_res to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div75, ptr %x_res, align 32
  %sub77 = add nsw i32 %conv53, -1
  %mul79 = mul nuw nsw i32 %sub77, %conv57
  %y_max = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 15
  %37 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul79, ptr %y_max, align 4
  %conv84 = zext i16 %34 to i32
  %div85140 = lshr i32 %conv84, 1
  %add86 = add nuw nsw i32 %div85140, %mul79
  %div88 = udiv i32 %add86, %conv84
  %y_res = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 13
  %38 = ptrtoint ptr %y_res to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div88, ptr %y_res, align 4
  %phy_x90 = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 16
  %39 = ptrtoint ptr %phy_x90 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv72, ptr %phy_x90, align 16
  %phy_y92 = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 17
  %40 = ptrtoint ptr %phy_y92 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv84, ptr %phy_y92, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end63, %if.end32.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call21, %if.end.cleanup_crit_edge ], [ %call29, %if.end24.cleanup_crit_edge ], [ %call37, %if.end32.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %do.end63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %get_physical_drive_cmd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %get_physical_scan_cmd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %get_osr_cmd) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %get_resolution_cmd) #9
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_query_ts_info_ektf(ptr nocapture noundef %ts) unnamed_addr #2 align 64 {
entry:
  %resp = alloca [4 x i8], align 4
  %get_xres_cmd = alloca [4 x i8], align 4
  %get_yres_cmd = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #9
  %2 = getelementptr inbounds [4 x i8], ptr %resp, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %resp, i32 0, i32 3
  %4 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %get_xres_cmd) #9
  %5 = ptrtoint ptr %get_xres_cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1398800384, ptr %get_xres_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %get_yres_cmd) #9
  %6 = ptrtoint ptr %get_yres_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1398996992, ptr %get_yres_cmd, align 4
  %call = call fastcc i32 @elants_i2c_execute_command(ptr noundef %1, ptr noundef nonnull %get_xres_cmd, i32 noundef 4, ptr noundef nonnull %resp, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %2, align 2
  %conv = zext i8 %8 to i16
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %11 = and i8 %10, -16
  %and = zext i8 %11 to i16
  %shl = shl nuw nsw i16 %and, 4
  %or = or i16 %shl, %conv
  %call8 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %1, ptr noundef nonnull %get_yres_cmd, i32 noundef 4, ptr noundef nonnull %resp, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %2, align 2
  %conv13 = zext i8 %13 to i16
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  %16 = and i8 %15, -16
  %and16 = zext i8 %16 to i16
  %shl17 = shl nuw nsw i16 %and16, 4
  %or18 = or i16 %shl17, %conv13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_query_ts_info_ektf.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_query_ts_info_ektf, %if.then24)) #9
          to label %do.end [label %if.then24], !srcloc !431

if.then24:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv25 = zext i16 %or to i32
  %conv26 = zext i16 %or18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_query_ts_info_ektf.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %conv25, i32 noundef %conv26) #9
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.end11
  %conv28 = zext i16 %or to i32
  %phy_x29 = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 16
  %17 = ptrtoint ptr %phy_x29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv28, ptr %phy_x29, align 16
  %conv30 = zext i16 %or18 to i32
  %phy_y31 = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 17
  %18 = ptrtoint ptr %phy_y31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv30, ptr %phy_y31, align 4
  %x_max = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 14
  %19 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2239, ptr %x_max, align 8
  %y_max = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 15
  %20 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1407, ptr %y_max, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %get_yres_cmd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %get_xres_cmd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_send(ptr noundef %client, ptr noundef %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %data, i32 noundef %size, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %size)
  %cmp = icmp eq i32 %call.i, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1 = icmp sgt i32 %call.i, -1
  %spec.store.select = select i1 %cmp1, i32 -5, i32 %call.i
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %size, ptr noundef %data, i32 noundef %spec.store.select) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_execute_command(ptr noundef %client, ptr noundef %cmd, i32 noundef %cmd_size, ptr noundef %resp, i32 noundef %resp_size, i32 noundef %retries, ptr noundef %cmd_name) unnamed_addr #2 align 64 {
entry:
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #9
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.219)
  switch i8 %3, label %do.end [
    i8 83, label %entry.sw.epilog_crit_edge
    i8 91, label %sw.bb1
    i8 -106, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef %cmd_name, i32 noundef %cmd_size, ptr noundef %cmd) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %expected_response.0 = phi i32 [ 149, %sw.bb2 ], [ 155, %sw.bb1 ], [ 82, %entry.sw.epilog_crit_edge ]
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %flags8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %conv9 = trunc i32 %cmd_size to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %flags20 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %conv26 = trunc i32 %resp_size to i16
  %len28 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %buf30 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %dev76 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then75, %do.body63, %if.then39, %do.body35, %sw.epilog
  %retries.addr.0 = phi i32 [ %retries, %sw.epilog ], [ %dec, %do.body35 ], [ %dec, %if.then39 ], [ %dec59, %do.body63 ], [ %dec59, %if.then75 ]
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs, align 4
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %client, align 8
  %10 = and i16 %9, 16
  %11 = ptrtoint ptr %flags8 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %flags8, align 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv9, ptr %len, align 4
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd, ptr %buf, align 4
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %6, ptr %arrayidx13, align 4
  %15 = or i16 %10, 1
  %16 = ptrtoint ptr %flags20 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %flags20, align 2
  %17 = ptrtoint ptr %len28 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv26, ptr %len28, align 4
  %18 = ptrtoint ptr %buf30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resp, ptr %buf30, align 4
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end50

if.then:                                          ; preds = %for.cond
  %dec = add i32 %retries.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp32 = icmp sgt i32 %dec, 0
  br i1 %cmp32, label %do.body35, label %do.end47

do.body35:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_execute_command.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_execute_command, %if.then39)) #9
          to label %for.cond [label %if.then39], !srcloc !431

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %21 = inttoptr i32 %call to ptr
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_execute_command.__UNIQUE_ID_ddebug288, ptr noundef %dev76, ptr noundef nonnull @.str.73, ptr noundef %cmd_name, ptr noundef nonnull %21) #9
  br label %for.cond

do.end47:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %22 = inttoptr i32 %call to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.75, ptr noundef %cmd_name, ptr noundef nonnull %22) #12
  br label %cleanup

if.end50:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp51.not = icmp eq i32 %call, 2
  br i1 %cmp51.not, label %lor.lhs.false, label %if.end50.if.then58_crit_edge

if.end50.if.then58_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

lor.lhs.false:                                    ; preds = %if.end50
  %23 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %resp, align 1
  %conv54 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_response.0, i32 %conv54)
  %cmp56.not = icmp eq i32 %expected_response.0, %conv54
  br i1 %cmp56.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then58_crit_edge

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %if.end50.if.then58_crit_edge
  %dec59 = add i32 %retries.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec59)
  %cmp60 = icmp sgt i32 %dec59, 0
  br i1 %cmp60, label %do.body63, label %do.end83

do.body63:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_execute_command.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_execute_command, %if.then75)) #9
          to label %for.cond [label %if.then75], !srcloc !431

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_execute_command.__UNIQUE_ID_ddebug289, ptr noundef %dev76, ptr noundef nonnull @.str.77, ptr noundef %cmd_name, i32 noundef %call, ptr noundef %resp) #9
  br label %for.cond

do.end83:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.79, ptr noundef %cmd_name, i32 noundef %call, ptr noundef %resp) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %lor.lhs.false.cleanup_crit_edge, %do.end47, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end47 ], [ -5, %do.end83 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elants_i2c_event(ptr noundef %ts, ptr noundef readonly %buf, i32 noundef %packet_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %arrayidx.1.i = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1.i, align 1
  %add.1.i = add i8 %3, %1
  %arrayidx.2.i = getelementptr i8, ptr %buf, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2.i, align 1
  %add.2.i = add i8 %add.1.i, %5
  %arrayidx.3.i = getelementptr i8, ptr %buf, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3.i, align 1
  %add.3.i = add i8 %add.2.i, %7
  %arrayidx.4.i = getelementptr i8, ptr %buf, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4.i, align 1
  %add.4.i = add i8 %add.3.i, %9
  %arrayidx.5.i = getelementptr i8, ptr %buf, i32 5
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5.i, align 1
  %add.5.i = add i8 %add.4.i, %11
  %arrayidx.6.i = getelementptr i8, ptr %buf, i32 6
  %12 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6.i, align 1
  %add.6.i = add i8 %add.5.i, %13
  %arrayidx.7.i = getelementptr i8, ptr %buf, i32 7
  %14 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.7.i, align 1
  %add.7.i = add i8 %add.6.i, %15
  %arrayidx.8.i = getelementptr i8, ptr %buf, i32 8
  %16 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.8.i, align 1
  %add.8.i = add i8 %add.7.i, %17
  %arrayidx.9.i = getelementptr i8, ptr %buf, i32 9
  %18 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.9.i, align 1
  %add.9.i = add i8 %add.8.i, %19
  %arrayidx.10.i = getelementptr i8, ptr %buf, i32 10
  %20 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.10.i, align 1
  %add.10.i = add i8 %add.9.i, %21
  %arrayidx.11.i = getelementptr i8, ptr %buf, i32 11
  %22 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.11.i, align 1
  %add.11.i = add i8 %add.10.i, %23
  %arrayidx.12.i = getelementptr i8, ptr %buf, i32 12
  %24 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.12.i, align 1
  %add.12.i = add i8 %add.11.i, %25
  %arrayidx.13.i = getelementptr i8, ptr %buf, i32 13
  %26 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.13.i, align 1
  %add.13.i = add i8 %add.12.i, %27
  %arrayidx.14.i = getelementptr i8, ptr %buf, i32 14
  %28 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.14.i, align 1
  %add.14.i = add i8 %add.13.i, %29
  %arrayidx.15.i = getelementptr i8, ptr %buf, i32 15
  %30 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.15.i, align 1
  %add.15.i = add i8 %add.14.i, %31
  %arrayidx.16.i = getelementptr i8, ptr %buf, i32 16
  %32 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.16.i, align 1
  %add.16.i = add i8 %add.15.i, %33
  %arrayidx.17.i = getelementptr i8, ptr %buf, i32 17
  %34 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.17.i, align 1
  %add.17.i = add i8 %add.16.i, %35
  %arrayidx.18.i = getelementptr i8, ptr %buf, i32 18
  %36 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.18.i, align 1
  %add.18.i = add i8 %add.17.i, %37
  %arrayidx.19.i = getelementptr i8, ptr %buf, i32 19
  %38 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.19.i, align 1
  %add.19.i = add i8 %add.18.i, %39
  %arrayidx.20.i = getelementptr i8, ptr %buf, i32 20
  %40 = ptrtoint ptr %arrayidx.20.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.20.i, align 1
  %add.20.i = add i8 %add.19.i, %41
  %arrayidx.21.i = getelementptr i8, ptr %buf, i32 21
  %42 = ptrtoint ptr %arrayidx.21.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.21.i, align 1
  %add.21.i = add i8 %add.20.i, %43
  %arrayidx.22.i = getelementptr i8, ptr %buf, i32 22
  %44 = ptrtoint ptr %arrayidx.22.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.22.i, align 1
  %add.22.i = add i8 %add.21.i, %45
  %arrayidx.23.i = getelementptr i8, ptr %buf, i32 23
  %46 = ptrtoint ptr %arrayidx.23.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.23.i, align 1
  %add.23.i = add i8 %add.22.i, %47
  %arrayidx.24.i = getelementptr i8, ptr %buf, i32 24
  %48 = ptrtoint ptr %arrayidx.24.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.24.i, align 1
  %add.24.i = add i8 %add.23.i, %49
  %arrayidx.25.i = getelementptr i8, ptr %buf, i32 25
  %50 = ptrtoint ptr %arrayidx.25.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.25.i, align 1
  %add.25.i = add i8 %add.24.i, %51
  %arrayidx.26.i = getelementptr i8, ptr %buf, i32 26
  %52 = ptrtoint ptr %arrayidx.26.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.26.i, align 1
  %add.26.i = add i8 %add.25.i, %53
  %arrayidx.27.i = getelementptr i8, ptr %buf, i32 27
  %54 = ptrtoint ptr %arrayidx.27.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.27.i, align 1
  %add.27.i = add i8 %add.26.i, %55
  %arrayidx.28.i = getelementptr i8, ptr %buf, i32 28
  %56 = ptrtoint ptr %arrayidx.28.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.28.i, align 1
  %add.28.i = add i8 %add.27.i, %57
  %arrayidx.29.i = getelementptr i8, ptr %buf, i32 29
  %58 = ptrtoint ptr %arrayidx.29.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.29.i, align 1
  %add.29.i = add i8 %add.28.i, %59
  %arrayidx.30.i = getelementptr i8, ptr %buf, i32 30
  %60 = ptrtoint ptr %arrayidx.30.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.30.i, align 1
  %add.30.i = add i8 %add.29.i, %61
  %arrayidx.31.i = getelementptr i8, ptr %buf, i32 31
  %62 = ptrtoint ptr %arrayidx.31.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.31.i, align 1
  %add.31.i = add i8 %add.30.i, %63
  %arrayidx.32.i = getelementptr i8, ptr %buf, i32 32
  %64 = ptrtoint ptr %arrayidx.32.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.32.i, align 1
  %add.32.i = add i8 %add.31.i, %65
  %arrayidx.33.i = getelementptr i8, ptr %buf, i32 33
  %66 = ptrtoint ptr %arrayidx.33.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.33.i, align 1
  %add.33.i = add i8 %add.32.i, %67
  %arrayidx = getelementptr i8, ptr %buf, i32 34
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %add.33.i)
  %cmp.not = icmp eq i8 %69, %add.33.i
  br i1 %cmp.not, label %if.else, label %do.end, !prof !433

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1 = zext i8 %add.33.i to i32
  %conv = zext i8 %69 to i32
  %70 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ts, align 128
  %dev = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4
  %conv5 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef %conv5, i32 noundef %conv1, i32 noundef %conv) #12
  br label %if.end28

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %1)
  %cmp11.not = icmp eq i8 %1, 98
  br i1 %cmp11.not, label %if.else27, label %do.end22, !prof !433

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv10 = zext i8 %1 to i32
  %72 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ts, align 128
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.116, i32 noundef %conv10) #12
  br label %if.end28

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @elants_i2c_mt_event(ptr noundef %ts, ptr noundef %buf, i32 noundef %packet_size)
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %do.end22, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elants_i2c_mt_event(ptr noundef %ts, ptr nocapture noundef readonly %buf, i32 noundef %packet_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 15
  %and4 = shl nuw nsw i32 %conv, 4
  %shl = and i32 %and4, 768
  %arrayidx5 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %or = or i32 %shl, %conv6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_mt_event.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_mt_event, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !431

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ts, align 128
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_mt_event.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.121, i32 noundef %and, i32 noundef %or) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx11 = getelementptr i8, ptr %buf, i32 33
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %10 = shl i8 %9, 1
  %11 = and i8 %10, 2
  %12 = xor i8 %11, 2
  %13 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not132 = icmp eq i32 %and, 0
  br i1 %tobool16.not132, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %packet_size)
  %cmp38 = icmp eq i32 %packet_size, 40
  %chip_id = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 20
  %prop = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end80.for.body_crit_edge, %for.body.lr.ph
  %n_fingers.0138 = phi i32 [ %and, %for.body.lr.ph ], [ %n_fingers.1, %if.end80.for.body_crit_edge ]
  %finger_state.0137 = phi i32 [ %or, %for.body.lr.ph ], [ %30, %if.end80.for.body_crit_edge ]
  %i.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end80.for.body_crit_edge ]
  %and18 = and i32 %finger_state.0137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.body.if.end80_crit_edge, label %if.then20

for.body.if.end80_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then20:                                        ; preds = %for.body
  %mul = mul nuw nsw i32 %i.0133, 3
  %add = add nuw nsw i32 %mul, 3
  %arrayidx21 = getelementptr i8, ptr %buf, i32 %add
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21, align 1
  %conv24 = zext i8 %15 to i32
  %and25 = shl nuw nsw i32 %conv24, 4
  %shl26 = and i32 %and25, 3840
  %arrayidx27 = getelementptr i8, ptr %arrayidx21, i32 1
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %17 to i32
  %or29 = or i32 %shl26, %conv28
  %and33 = shl nuw nsw i32 %conv24, 8
  %shl34 = and i32 %and33, 3840
  %arrayidx35 = getelementptr i8, ptr %arrayidx21, i32 2
  %18 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %19 to i32
  %or37 = or i32 %shl34, %conv36
  br i1 %cmp38, label %land.lhs.true, label %if.then20.if.else_crit_edge

if.then20.if.else_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then20
  %20 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp40 = icmp eq i32 %21, 1
  br i1 %cmp40, label %if.then42, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %div131 = lshr i32 %i.0133, 1
  %add43 = add nuw nsw i32 %div131, 35
  %arrayidx44 = getelementptr i8, ptr %buf, i32 %add43
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %23 to i32
  %neg = shl nuw nsw i32 %i.0133, 2
  %and46 = and i32 %neg, 4
  %mul47 = xor i32 %and46, 4
  %shr = lshr i32 %conv45, %mul47
  %shl48 = shl nuw nsw i32 %shr, 4
  %or49 = or i32 %shl48, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or49)
  %tobool50.not = icmp eq i32 %or49, 0
  %lnot.ext52 = zext i1 %tobool50.not to i32
  %or53 = or i32 %or49, %lnot.ext52
  br label %do.body61

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then20.if.else_crit_edge
  %add54 = add nuw nsw i32 %i.0133, 45
  %arrayidx55 = getelementptr i8, ptr %buf, i32 %add54
  %24 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %25 to i32
  %add57 = add nuw nsw i32 %i.0133, 35
  %arrayidx58 = getelementptr i8, ptr %buf, i32 %add57
  %26 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %27 to i32
  br label %do.body61

do.body61:                                        ; preds = %if.else, %if.then42
  %p.0 = phi i32 [ %or53, %if.then42 ], [ %conv56, %if.else ]
  %w.0 = phi i32 [ %or53, %if.then42 ], [ %conv59, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_mt_event.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_mt_event, %if.then73)) #9
          to label %do.end78 [label %if.then73], !srcloc !431

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ts, align 128
  %dev75 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_mt_event.__UNIQUE_ID_ddebug299, ptr noundef %dev75, ptr noundef nonnull @.str.122, i32 noundef %i.0133, i32 noundef %or29, i32 noundef %or37, i32 noundef %p.0, i32 noundef %w.0) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then73, %do.body61
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %i.0133) #9
  %call79 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef %13, i1 noundef zeroext true) #9
  tail call void @touchscreen_report_pos(ptr noundef %1, ptr noundef %prop, i32 noundef %or29, i32 noundef %or37, i1 noundef zeroext true) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 58, i32 noundef %p.0) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 48, i32 noundef %w.0) #9
  %dec = add i32 %n_fingers.0138, -1
  br label %if.end80

if.end80:                                         ; preds = %do.end78, %for.body.if.end80_crit_edge
  %n_fingers.1 = phi i32 [ %dec, %do.end78 ], [ %n_fingers.0138, %for.body.if.end80_crit_edge ]
  %conv17 = lshr i32 %finger_state.0137, 1
  %30 = and i32 %conv17, 32767
  %inc = add nuw nsw i32 %i.0133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0133)
  %cmp = icmp ugt i32 %i.0133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_fingers.1)
  %tobool16.not = icmp eq i32 %n_fingers.1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.end80.for.end_crit_edge, label %if.end80.for.body_crit_edge

if.end80.for.body_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end80.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @input_mt_sync_frame(ptr noundef %1) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfs_mutex = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 22
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @elants_i2c_calibrate(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %sysfs_mutex) #9
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
define internal fastcc i32 @elants_i2c_calibrate(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 128
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #9
  %state = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 19
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state, align 4
  %cmd_done = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 24
  %5 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cmd_done, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull @elants_i2c_calibrate.w_flashkey, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp.i, label %entry.elants_i2c_send.exit_crit_edge, label %if.end.i

entry.elants_i2c_send.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %elants_i2c_send.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp1.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i = select i1 %cmp1.i, i32 -5, i32 %call.i.i
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull @elants_i2c_calibrate.w_flashkey, i32 noundef %spec.store.select.i) #12
  br label %elants_i2c_send.exit

elants_i2c_send.exit:                             ; preds = %if.end.i, %entry.elants_i2c_send.exit_crit_edge
  %call.i.i34 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull @elants_i2c_calibrate.rek, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i34)
  %cmp.i35 = icmp eq i32 %call.i.i34, 4
  br i1 %cmp.i35, label %elants_i2c_send.exit.elants_i2c_send.exit41_crit_edge, label %if.end.i39

elants_i2c_send.exit.elants_i2c_send.exit41_crit_edge: ; preds = %elants_i2c_send.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %elants_i2c_send.exit41

if.end.i39:                                       ; preds = %elants_i2c_send.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i34)
  %cmp1.i36 = icmp sgt i32 %call.i.i34, -1
  %spec.store.select.i37 = select i1 %cmp1.i36, i32 -5, i32 %call.i.i34
  %dev.i38 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull @elants_i2c_calibrate.rek, i32 noundef %spec.store.select.i37) #12
  br label %elants_i2c_send.exit41

elants_i2c_send.exit41:                           ; preds = %if.end.i39, %elants_i2c_send.exit.elants_i2c_send.exit41_crit_edge
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %7) #9
  %call6 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %cmd_done, i32 noundef 1200) #9
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp slt i32 %call6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %elants_i2c_send.exit41
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %cmp8.not, i32 -110, i32 %call6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.124, i32 noundef %spec.select) #12
  br label %cleanup

if.end:                                           ; preds = %elants_i2c_send.exit41
  %cmd_resp = getelementptr inbounds %struct.elants_data, ptr %ts, i32 0, i32 23
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @elants_i2c_calibrate.rek_resp, ptr noundef dereferenceable(4) %cmd_resp, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.127, i32 noundef 4, ptr noundef %cmd_resp) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ -22, %do.end13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_update_fw(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfs_mutex = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 22
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #9
  %4 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !434
  %hw_version.i = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_version.i, align 2
  %conv.i = zext i16 %6 to i32
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.132, i32 noundef %conv.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.elants_i2c_fw_update.exit_crit_edge, label %do.end.i

if.end.elants_i2c_fw_update.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %elants_i2c_fw_update.exit

do.end.i:                                         ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.133, ptr noundef nonnull %call.i) #12
  %call3.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %call.i, ptr noundef %dev.i) #9
  call void @kfree(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.137, i32 noundef %call3.i) #12
  br label %elants_i2c_fw_update.exit

if.end10.i:                                       ; preds = %do.end.i
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %rem.i = urem i32 %10, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool11.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool11.not.i, label %if.end18.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.140, i32 noundef %10) #12
  br label %out.i

if.end18.i:                                       ; preds = %if.end10.i
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  call void @disable_irq(i32 noundef %12) #9
  %13 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw.i, align 4
  %iap_mode.i = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %iap_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iap_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  %call20.i = call fastcc i32 @elants_i2c_do_update_firmware(ptr noundef %3, ptr noundef %14, i1 noundef zeroext %cmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end28.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.143, i32 noundef %call20.i) #12
  %17 = ptrtoint ptr %iap_mode.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %iap_mode.i, align 4
  %state.c74.i = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %state.c74.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state.c74.i, align 4
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 4
  call void @enable_irq(i32 noundef %20) #9
  call void @msleep(i32 noundef 100) #9
  br label %out.i

if.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @elants_i2c_initialize(ptr noundef %1) #9
  %21 = ptrtoint ptr %iap_mode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %iap_mode.i, align 4
  %state.c.i = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %state.c.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %state.c.i, align 4
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i, align 4
  call void @enable_irq(i32 noundef %24) #9
  call void @msleep(i32 noundef 100) #9
  %call42.i = call fastcc i32 @elants_i2c_calibrate(ptr noundef %1) #9
  br label %out.i

out.i:                                            ; preds = %if.end28.i, %do.end25.i, %do.end15.i
  %error.1.i = phi i32 [ -22, %do.end15.i ], [ 0, %if.end28.i ], [ %call20.i, %do.end25.i ]
  %25 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %26) #9
  br label %elants_i2c_fw_update.exit

elants_i2c_fw_update.exit:                        ; preds = %out.i, %do.end8.i, %if.end.elants_i2c_fw_update.exit_crit_edge
  %retval.0.i20 = phi i32 [ %call3.i, %do.end8.i ], [ %error.1.i, %out.i ], [ -12, %if.end.elants_i2c_fw_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_update_fw.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_update_fw, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !431

if.then8:                                         ; preds = %elants_i2c_fw_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_update_fw.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %retval.0.i20) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %elants_i2c_fw_update.exit
  call void @mutex_unlock(ptr noundef %sysfs_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i20)
  %tobool11.not = icmp eq i32 %retval.0.i20, 0
  %spec.select = select i1 %tobool11.not, i32 %count, i32 %retval.0.i20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_do_update_firmware(ptr noundef %client, ptr nocapture noundef readonly %fw, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %cmd.i241 = alloca [6 x i8], align 1
  %resp.i242 = alloca [6 x i8], align 1
  %soft_rst_cmd.i = alloca [4 x i8], align 4
  %cmd.i = alloca [6 x i8], align 1
  %resp.i = alloca [6 x i8], align 1
  %enter_iap = alloca [4 x i8], align 4
  %enter_iap2 = alloca [4 x i8], align 4
  %iap_ack = alloca [4 x i8], align 4
  %close_idle = alloca [4 x i8], align 4
  %buf = alloca [4 x i8], align 4
  %send_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enter_iap) #9
  %2 = ptrtoint ptr %enter_iap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1162428752, ptr %enter_iap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enter_iap2) #9
  %3 = ptrtoint ptr %enter_iap2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1409290804, ptr %enter_iap2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iap_ack) #9
  %4 = ptrtoint ptr %iap_ack to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1437217740, ptr %iap_ack, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %close_idle) #9
  %5 = ptrtoint ptr %close_idle to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1412169985, ptr %close_idle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %send_id) #9
  %7 = ptrtoint ptr %send_id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %send_id, align 2, !annotation !434
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %iap_version.i = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %iap_version.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iap_version.i, align 1
  %conv.i = zext i8 %11 to i32
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.220)
  switch i8 %11, label %if.else.i [
    i8 114, label %entry.do.body.i_crit_edge
    i8 -126, label %entry.do.body.i_crit_edge325
    i8 -110, label %entry.do.body.i_crit_edge326
    i8 109, label %entry.do.body.i_crit_edge327
    i8 110, label %entry.do.body.i_crit_edge328
    i8 119, label %entry.do.body.i_crit_edge329
    i8 120, label %entry.do.body.i_crit_edge330
    i8 103, label %entry.do.body.i_crit_edge331
    i8 104, label %entry.do.body.i_crit_edge332
    i8 116, label %entry.do.body.i_crit_edge333
    i8 117, label %entry.do.body.i_crit_edge334
  ]

entry.do.body.i_crit_edge334:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge333:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge332:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge331:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge330:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge329:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge328:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge327:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge326:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge325:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %entry.do.body.i_crit_edge, %entry.do.body.i_crit_edge325, %entry.do.body.i_crit_edge326, %entry.do.body.i_crit_edge327, %entry.do.body.i_crit_edge328, %entry.do.body.i_crit_edge329, %entry.do.body.i_crit_edge330, %entry.do.body.i_crit_edge331, %entry.do.body.i_crit_edge332, %entry.do.body.i_crit_edge333, %entry.do.body.i_crit_edge334
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_should_check_remark_id.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_do_update_firmware, %if.then44.i)) #9
          to label %elants_i2c_should_check_remark_id.exit [label %if.then44.i], !srcloc !431

if.then44.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_should_check_remark_id.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.183, i32 noundef %conv.i) #9
  br label %elants_i2c_should_check_remark_id.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %11)
  %cmp47.i = icmp ugt i8 %11, 95
  br label %elants_i2c_should_check_remark_id.exit

elants_i2c_should_check_remark_id.exit:           ; preds = %if.else.i, %if.then44.i, %do.body.i
  %check.0.off0.i = phi i1 [ false, %if.then44.i ], [ %cmp47.i, %if.else.i ], [ false, %do.body.i ]
  br i1 %force, label %do.body, label %do.body24

do.body:                                          ; preds = %elants_i2c_should_check_remark_id.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_do_update_firmware, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !431

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.149) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  br i1 %check.0.off0.i, label %if.then10, label %do.end.if.end15_crit_edge

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %do.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd.i) #9
  %15 = call ptr @memcpy(ptr %cmd.i, ptr @__const.elants_i2c_validate_remark_id.cmd, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp.i) #9
  %16 = call ptr @memset(ptr %resp.i, i32 0, i32 6)
  %call.i = call fastcc i32 @elants_i2c_execute_command(ptr noundef %14, ptr noundef nonnull %cmd.i, i32 noundef 6, ptr noundef nonnull %resp.i, i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.184) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.elants_i2c_validate_remark_id.exit.thread_crit_edge

if.then10.elants_i2c_validate_remark_id.exit.thread_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %elants_i2c_validate_remark_id.exit.thread

if.end.i:                                         ; preds = %if.then10
  %arrayidx.i = getelementptr inbounds [6 x i8], ptr %resp.i, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %arrayidx.i, align 1
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw, align 4
  %sub.i = add i32 %22, -4
  %arrayidx4.i = getelementptr i8, ptr %20, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %arrayidx4.i, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %18)
  %cmp.not.i = icmp eq i16 %25, %18
  br i1 %cmp.not.i, label %elants_i2c_validate_remark_id.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i16 %18 to i32
  %conv.i225 = zext i16 %25 to i32
  %dev.i226 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i226, ptr noundef nonnull @.str.185, i32 noundef %conv6.i, i32 noundef %conv.i225) #12
  br label %elants_i2c_validate_remark_id.exit.thread

elants_i2c_validate_remark_id.exit.thread:        ; preds = %do.end.i, %if.then10.elants_i2c_validate_remark_id.exit.thread_crit_edge
  %retval.0.i227.ph = phi i32 [ %call.i, %if.then10.elants_i2c_validate_remark_id.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd.i) #9
  br label %cleanup

elants_i2c_validate_remark_id.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd.i) #9
  br label %if.end15

if.end15:                                         ; preds = %elants_i2c_validate_remark_id.exit, %do.end.if.end15_crit_edge
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %enter_iap2, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp.i, label %if.end15.if.end67_crit_edge, label %elants_i2c_send.exit

if.end15.if.end67_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

elants_i2c_send.exit:                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp1.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i = select i1 %cmp1.i, i32 -5, i32 %call.i.i
  %dev.i228 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i228, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %enter_iap2, i32 noundef %spec.store.select.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i228, ptr noundef nonnull @.str.150, i32 noundef %spec.store.select.i) #12
  br label %cleanup

do.body24:                                        ; preds = %elants_i2c_should_check_remark_id.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_do_update_firmware, %if.then36)) #9
          to label %do.end40 [label %if.then36], !srcloc !431

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug296, ptr noundef %dev37, ptr noundef nonnull @.str.151) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body24
  %call.i.i231 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %close_idle, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i231)
  %cmp.i232 = icmp eq i32 %call.i.i231, 4
  br i1 %cmp.i232, label %do.end40.if.end49_crit_edge, label %elants_i2c_send.exit238

do.end40.if.end49_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

elants_i2c_send.exit238:                          ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i231)
  %cmp1.i233 = icmp sgt i32 %call.i.i231, -1
  %spec.store.select.i234 = select i1 %cmp1.i233, i32 -5, i32 %call.i.i231
  %dev.i235 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i235, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %close_idle, i32 noundef %spec.store.select.i234) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i235, ptr noundef nonnull @.str.153, i32 noundef %spec.store.select.i234) #12
  br label %if.end49

if.end49:                                         ; preds = %elants_i2c_send.exit238, %do.end40.if.end49_crit_edge
  call void @msleep(i32 noundef 60) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soft_rst_cmd.i) #9
  %26 = ptrtoint ptr %soft_rst_cmd.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2004318071, ptr %soft_rst_cmd.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %soft_rst_cmd.i, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp.i.i, label %if.end.i239, label %elants_i2c_send.exit.i

elants_i2c_send.exit.i:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp1.i.i = icmp sgt i32 %call.i.i.i, -1
  %spec.store.select.i.i = select i1 %cmp1.i.i, i32 -5, i32 %call.i.i.i
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %soft_rst_cmd.i, i32 noundef %spec.store.select.i.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.59, i32 noundef %spec.store.select.i.i) #12
  br label %elants_i2c_sw_reset.exit

if.end.i239:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 30) #9
  br label %elants_i2c_sw_reset.exit

elants_i2c_sw_reset.exit:                         ; preds = %if.end.i239, %elants_i2c_send.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soft_rst_cmd.i) #9
  call void @msleep(i32 noundef 20) #9
  br i1 %check.0.off0.i, label %if.then52, label %elants_i2c_sw_reset.exit.if.end57_crit_edge

elants_i2c_sw_reset.exit.if.end57_crit_edge:      ; preds = %elants_i2c_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then52:                                        ; preds = %elants_i2c_sw_reset.exit
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd.i241) #9
  %29 = call ptr @memcpy(ptr %cmd.i241, ptr @__const.elants_i2c_validate_remark_id.cmd, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp.i242) #9
  %30 = call ptr @memset(ptr %resp.i242, i32 0, i32 6)
  %call.i243 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %28, ptr noundef nonnull %cmd.i241, i32 noundef 6, ptr noundef nonnull %resp.i242, i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.184) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool.not.i244 = icmp eq i32 %call.i243, 0
  br i1 %tobool.not.i244, label %if.end.i250, label %if.then52.elants_i2c_validate_remark_id.exit256.thread_crit_edge

if.then52.elants_i2c_validate_remark_id.exit256.thread_crit_edge: ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %elants_i2c_validate_remark_id.exit256.thread

if.end.i250:                                      ; preds = %if.then52
  %arrayidx.i245 = getelementptr inbounds [6 x i8], ptr %resp.i242, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx.i245 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %arrayidx.i245, align 1
  %data.i246 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %33 = ptrtoint ptr %data.i246 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i246, align 4
  %35 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw, align 4
  %sub.i247 = add i32 %36, -4
  %arrayidx4.i248 = getelementptr i8, ptr %34, i32 %sub.i247
  %37 = ptrtoint ptr %arrayidx4.i248 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx4.i248, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %32)
  %cmp.not.i249 = icmp eq i16 %39, %32
  br i1 %cmp.not.i249, label %elants_i2c_validate_remark_id.exit256, label %do.end.i254

do.end.i254:                                      ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i251 = zext i16 %32 to i32
  %conv.i252 = zext i16 %39 to i32
  %dev.i253 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i253, ptr noundef nonnull @.str.185, i32 noundef %conv6.i251, i32 noundef %conv.i252) #12
  br label %elants_i2c_validate_remark_id.exit256.thread

elants_i2c_validate_remark_id.exit256.thread:     ; preds = %do.end.i254, %if.then52.elants_i2c_validate_remark_id.exit256.thread_crit_edge
  %retval.0.i255.ph = phi i32 [ %call.i243, %if.then52.elants_i2c_validate_remark_id.exit256.thread_crit_edge ], [ -22, %do.end.i254 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp.i242) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd.i241) #9
  br label %cleanup

elants_i2c_validate_remark_id.exit256:            ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp.i242) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd.i241) #9
  br label %if.end57

if.end57:                                         ; preds = %elants_i2c_validate_remark_id.exit256, %elants_i2c_sw_reset.exit.if.end57_crit_edge
  %call.i.i257 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %enter_iap, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i257)
  %cmp.i258 = icmp eq i32 %call.i.i257, 4
  br i1 %cmp.i258, label %if.end57.if.end67_crit_edge, label %elants_i2c_send.exit264

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

elants_i2c_send.exit264:                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i257)
  %cmp1.i259 = icmp sgt i32 %call.i.i257, -1
  %spec.store.select.i260 = select i1 %cmp1.i259, i32 -5, i32 %call.i.i257
  %dev.i261 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i261, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %enter_iap, i32 noundef %spec.store.select.i260) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i261, ptr noundef nonnull @.str.150, i32 noundef %spec.store.select.i260) #12
  br label %cleanup

if.end67:                                         ; preds = %if.end57.if.end67_crit_edge, %if.end15.if.end67_crit_edge
  call void @msleep(i32 noundef 20) #9
  %call.i.i265 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf, i32 noundef 4, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i265)
  %cmp.i266 = icmp eq i32 %call.i.i265, 4
  br i1 %cmp.i266, label %if.end76, label %elants_i2c_read.exit

elants_i2c_read.exit:                             ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i265)
  %cmp1.i267 = icmp sgt i32 %call.i.i265, -1
  %spec.store.select.i268 = select i1 %cmp1.i267, i32 -5, i32 %call.i.i265
  %dev.i269 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i269, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %spec.store.select.i268) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i269, ptr noundef nonnull @.str.158, i32 noundef %spec.store.select.i268) #12
  br label %cleanup

if.end76:                                         ; preds = %if.end67
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %lhsv = load i32, ptr %buf, align 4
  %41 = ptrtoint ptr %iap_ack to i32
  call void @__asan_load4_noabort(i32 %41)
  %rhsv = load i32, ptr %iap_ack, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lhsv, i32 %rhsv)
  %.not = icmp eq i32 %lhsv, %rhsv
  %dev92 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %.not, label %do.end91, label %do.end84

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.161, i32 noundef 4, ptr noundef nonnull %buf, i32 noundef 4, ptr noundef nonnull %iap_ack) #12
  br label %cleanup

do.end91:                                         ; preds = %if.end76
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev92, ptr noundef nonnull @.str.164) #12
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr, align 2
  %44 = ptrtoint ptr %send_id to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %send_id, align 2
  %call93 = call fastcc i32 @elants_i2c_send(ptr noundef %client, ptr noundef nonnull %send_id, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end100, label %do.end98

do.end98:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.167, i32 noundef %call93) #12
  br label %cleanup

if.end100:                                        ; preds = %do.end91
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %call101 = call fastcc i32 @elants_i2c_send(ptr noundef %client, ptr noundef %46, i32 noundef 132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end108, label %do.end106

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.170, i32 noundef %call101) #12
  br label %cleanup

if.end108:                                        ; preds = %if.end100
  %call110 = call fastcc i32 @elants_i2c_read(ptr noundef %client, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end117, label %do.end115

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.173, i32 noundef %call110) #12
  br label %cleanup

if.end117:                                        ; preds = %if.end108
  %47 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fw, align 4
  %div = udiv i32 %48, 132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elants_i2c_do_update_firmware, %if.then130)) #9
          to label %do.end134 [label %if.then130], !srcloc !431

if.then130:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug297, ptr noundef %dev92, ptr noundef nonnull @.str.175, i32 noundef %div) #9
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %if.end117
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %48)
  %49 = icmp ult i32 %48, 132
  br i1 %49, label %do.end134.for.end_crit_edge, label %for.body.lr.ph

do.end134.for.end_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end134
  %50 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %smax = call i32 @llvm.smax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %page.0304 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %mul = mul nuw i32 %page.0304, 132
  %add.ptr = getelementptr i8, ptr %52, i32 %mul
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %53 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %buf.i, align 1, !annotation !434
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %50, align 1, !annotation !434
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body
  %retry.045.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i.i.i273 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %add.ptr, i32 noundef 132, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %call.i.i.i273)
  %cmp.i.i274 = icmp eq i32 %call.i.i.i273, 132
  br i1 %cmp.i.i274, label %if.end.i278, label %elants_i2c_send.exit.i277

elants_i2c_send.exit.i277:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i273)
  %cmp1.i.i275 = icmp sgt i32 %call.i.i.i273, -1
  %spec.store.select.i.i276 = select i1 %cmp1.i.i275, i32 -5, i32 %call.i.i.i273
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 132, ptr noundef %add.ptr, i32 noundef %spec.store.select.i.i276) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.187, i32 noundef %spec.store.select.i.i276) #12
  br label %for.inc.i

if.end.i278:                                      ; preds = %for.body.i
  %call.i.i34.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i34.i)
  %cmp.i35.i = icmp eq i32 %call.i.i34.i, 2
  br i1 %cmp.i35.i, label %if.end8.i, label %elants_i2c_read.exit.i

elants_i2c_read.exit.i:                           ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i34.i)
  %cmp1.i36.i = icmp sgt i32 %call.i.i34.i, -1
  %spec.store.select.i37.i = select i1 %cmp1.i36.i, i32 -5, i32 %call.i.i34.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %spec.store.select.i37.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.190, i32 noundef %spec.store.select.i37.i) #12
  br label %do.end141

if.end8.i:                                        ; preds = %if.end.i278
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %buf.i, ptr noundef nonnull dereferenceable(2) @__const.elants_i2c_fw_write_page.ack_ok, i32 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool12.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool12.not.i, label %for.inc, label %if.end14.i

if.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buf.i, align 1
  %conv.i279 = zext i8 %56 to i32
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %50, align 1
  %conv20.i = zext i8 %58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.193, i32 noundef %conv.i279, i32 noundef %conv20.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %elants_i2c_send.exit.i277
  %error.1.i = phi i32 [ %spec.store.select.i.i276, %elants_i2c_send.exit.i277 ], [ -5, %if.end14.i ]
  %inc.i = add nuw nsw i32 %retry.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.do.end141_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end141_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end141

do.end141:                                        ; preds = %for.inc.i.do.end141_crit_edge, %elants_i2c_read.exit.i
  %retval.0.i280.ph = phi i32 [ %spec.store.select.i37.i, %elants_i2c_read.exit.i ], [ %error.1.i, %for.inc.i.do.end141_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.177, i32 noundef %page.0304, i32 noundef %retval.0.i280.ph) #12
  br label %cleanup

for.inc:                                          ; preds = %if.end8.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  %inc = add nuw nsw i32 %page.0304, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end134.for.end_crit_edge
  call void @msleep(i32 noundef 300) #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev92, ptr noundef nonnull @.str.180) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end141, %do.end115, %do.end106, %do.end98, %do.end84, %elants_i2c_read.exit, %elants_i2c_send.exit264, %elants_i2c_validate_remark_id.exit256.thread, %elants_i2c_send.exit, %elants_i2c_validate_remark_id.exit.thread
  %retval.0 = phi i32 [ %spec.store.select.i, %elants_i2c_send.exit ], [ %spec.store.select.i268, %elants_i2c_read.exit ], [ -5, %do.end84 ], [ %call93, %do.end98 ], [ %call101, %do.end106 ], [ %call110, %do.end115 ], [ %retval.0.i280.ph, %do.end141 ], [ 0, %for.end ], [ %spec.store.select.i260, %elants_i2c_send.exit264 ], [ %retval.0.i227.ph, %elants_i2c_validate_remark_id.exit.thread ], [ %retval.0.i255.ph, %elants_i2c_validate_remark_id.exit256.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %send_id) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %close_idle) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iap_ack) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enter_iap2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enter_iap) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_iap_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iap_mode = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %iap_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iap_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, ptr @.str.197, ptr @.str.198
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.196, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_calibration_count(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %cmd = alloca [4 x i8], align 4
  %resp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1406140417, ptr %cmd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #9
  %1 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %resp, align 4
  %call = call fastcc i32 @elants_i2c_execute_command(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef nonnull %resp, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.200)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.201, i32 noundef %call)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = getelementptr inbounds [4 x i8], ptr %resp, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv = zext i16 %4 to i32
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.202, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elants_version_attribute_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %field_offset = getelementptr inbounds %struct.elants_version_attribute, ptr %dattr, i32 0, i32 1
  %2 = ptrtoint ptr %field_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 %3
  %field_size = getelementptr inbounds %struct.elants_version_attribute, ptr %dattr, i32 0, i32 2
  %4 = ptrtoint ptr %field_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr4, align 1
  %conv = zext i8 %7 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr4, align 2
  %conv5 = zext i16 %9 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fmt_size.0 = phi i32 [ 2, %if.then ], [ 4, %if.else ]
  %val.0 = phi i32 [ %conv, %if.then ], [ %conv5, %if.else ]
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.204, i32 noundef %fmt_size.0, i32 noundef %val.0)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elants_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %set_sleep_cmd = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_sleep_cmd) #9
  %2 = ptrtoint ptr %set_sleep_cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1414529025, ptr %set_sleep_cmd, align 4
  %iap_mode = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %iap_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iap_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr i8, ptr %dev, i32 932
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %6) #9
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %device_may_wakeup.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then2

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then2:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp eq i32 %call.i, 0
  %wake_irq_enabled = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 25
  %frombool = zext i1 %cmp5 to i8
  %12 = ptrtoint ptr %wake_irq_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %wake_irq_enabled, align 8
  br label %cleanup

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %keep_power_in_suspend = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %keep_power_in_suspend to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %keep_power_in_suspend, align 1, !range !435
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else13, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %set_sleep_cmd, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp.i, label %for.body.preheader.cleanup_crit_edge, label %elants_i2c_send.exit

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

elants_i2c_send.exit:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp1.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i = select i1 %cmp1.i, i32 -5, i32 %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %set_sleep_cmd, i32 noundef %spec.store.select.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.210, i32 noundef %spec.store.select.i) #12
  %call.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %set_sleep_cmd, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.1)
  %cmp.i.1 = icmp eq i32 %call.i.i.1, 4
  br i1 %cmp.i.1, label %elants_i2c_send.exit.cleanup_crit_edge, label %elants_i2c_send.exit.1

elants_i2c_send.exit.cleanup_crit_edge:           ; preds = %elants_i2c_send.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

elants_i2c_send.exit.1:                           ; preds = %elants_i2c_send.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.1)
  %cmp1.i.1 = icmp sgt i32 %call.i.i.1, -1
  %spec.store.select.i.1 = select i1 %cmp1.i.1, i32 -5, i32 %call.i.i.1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %set_sleep_cmd, i32 noundef %spec.store.select.i.1) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.210, i32 noundef %spec.store.select.i.1) #12
  %call.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %set_sleep_cmd, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.2)
  %cmp.i.2 = icmp eq i32 %call.i.i.2, 4
  br i1 %cmp.i.2, label %elants_i2c_send.exit.1.cleanup_crit_edge, label %elants_i2c_send.exit.2

elants_i2c_send.exit.1.cleanup_crit_edge:         ; preds = %elants_i2c_send.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

elants_i2c_send.exit.2:                           ; preds = %elants_i2c_send.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.2)
  %cmp1.i.2 = icmp sgt i32 %call.i.i.2, -1
  %spec.store.select.i.2 = select i1 %cmp1.i.2, i32 -5, i32 %call.i.i.2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %set_sleep_cmd, i32 noundef %spec.store.select.i.2) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.210, i32 noundef %spec.store.select.i.2) #12
  br label %cleanup

if.else13:                                        ; preds = %if.else
  %reset_gpio.i = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpio.i, align 16
  %tobool.not.i.i = icmp eq ptr %16, null
  %cmp.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.else13.cleanup_crit_edge, label %if.then.i

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %16, i32 noundef 1) #9
  %vccio.i = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %vccio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vccio.i, align 4
  %call2.i = tail call i32 @regulator_disable(ptr noundef %18) #9
  %vcc33.i = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %vcc33.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vcc33.i, align 8
  %call3.i = tail call i32 @regulator_disable(ptr noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.else13.cleanup_crit_edge, %elants_i2c_send.exit.2, %elants_i2c_send.exit.1.cleanup_crit_edge, %elants_i2c_send.exit.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.else13.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %elants_i2c_send.exit.2 ], [ 0, %elants_i2c_send.exit.1.cleanup_crit_edge ], [ 0, %elants_i2c_send.exit.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_sleep_cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elants_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  %soft_rst_cmd.i = alloca [4 x i8], align 4
  %set_active_cmd = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_active_cmd) #9
  %2 = ptrtoint ptr %set_active_cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1415053313, ptr %set_active_cmd, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %4 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %5, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %wake_irq_enabled = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %wake_irq_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wake_irq_enabled, align 8, !range !435
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr i8, ptr %dev, i32 932
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soft_rst_cmd.i) #9
  %10 = ptrtoint ptr %soft_rst_cmd.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2004318071, ptr %soft_rst_cmd.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %soft_rst_cmd.i, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp.i.i, label %if.end.i, label %elants_i2c_send.exit.i

elants_i2c_send.exit.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp1.i.i = icmp sgt i32 %call.i.i.i, -1
  %spec.store.select.i.i = select i1 %cmp1.i.i, i32 -5, i32 %call.i.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %soft_rst_cmd.i, i32 noundef %spec.store.select.i.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %spec.store.select.i.i) #12
  br label %elants_i2c_sw_reset.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 30) #9
  br label %elants_i2c_sw_reset.exit

elants_i2c_sw_reset.exit:                         ; preds = %if.end.i, %elants_i2c_send.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soft_rst_cmd.i) #9
  br label %if.end16

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %keep_power_in_suspend = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %keep_power_in_suspend to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %keep_power_in_suspend, align 1, !range !435
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %if.else12, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %set_active_cmd, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp.i, label %for.body.preheader.if.end16_crit_edge, label %elants_i2c_send.exit

for.body.preheader.if.end16_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

elants_i2c_send.exit:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp1.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i = select i1 %cmp1.i, i32 -5, i32 %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %set_active_cmd, i32 noundef %spec.store.select.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.212, i32 noundef %spec.store.select.i) #12
  %call.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %set_active_cmd, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.1)
  %cmp.i.1 = icmp eq i32 %call.i.i.1, 4
  br i1 %cmp.i.1, label %elants_i2c_send.exit.if.end16_crit_edge, label %elants_i2c_send.exit.1

elants_i2c_send.exit.if.end16_crit_edge:          ; preds = %elants_i2c_send.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

elants_i2c_send.exit.1:                           ; preds = %elants_i2c_send.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.1)
  %cmp1.i.1 = icmp sgt i32 %call.i.i.1, -1
  %spec.store.select.i.1 = select i1 %cmp1.i.1, i32 -5, i32 %call.i.i.1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %set_active_cmd, i32 noundef %spec.store.select.i.1) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.212, i32 noundef %spec.store.select.i.1) #12
  %call.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %set_active_cmd, i32 noundef 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.2)
  %cmp.i.2 = icmp eq i32 %call.i.i.2, 4
  br i1 %cmp.i.2, label %elants_i2c_send.exit.1.if.end16_crit_edge, label %elants_i2c_send.exit.2

elants_i2c_send.exit.1.if.end16_crit_edge:        ; preds = %elants_i2c_send.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

elants_i2c_send.exit.2:                           ; preds = %elants_i2c_send.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.2)
  %cmp1.i.2 = icmp sgt i32 %call.i.i.2, -1
  %spec.store.select.i.2 = select i1 %cmp1.i.2, i32 -5, i32 %call.i.i.2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef nonnull %set_active_cmd, i32 noundef %spec.store.select.i.2) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.212, i32 noundef %spec.store.select.i.2) #12
  br label %if.end16

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call fastcc i32 @elants_i2c_power_on(ptr noundef %1)
  tail call fastcc void @elants_i2c_initialize(ptr noundef %1)
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %elants_i2c_send.exit.2, %elants_i2c_send.exit.1.if.end16_crit_edge, %elants_i2c_send.exit.if.end16_crit_edge, %for.body.preheader.if.end16_crit_edge, %elants_i2c_sw_reset.exit
  %state = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %state, align 4
  %irq17 = getelementptr i8, ptr %dev, i32 932
  %14 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq17, align 4
  call void @enable_irq(i32 noundef %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_active_cmd) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
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
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !156, !158, !159, !160, !162, !163, !164, !166, !168, !169, !170, !171, !173, !175, !177, !179, !181, !182, !183, !185, !186, !187, !189, !191, !193, !194, !196, !197, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !240, !242, !244, !245, !247, !249, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !265, !266, !267, !269, !271, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !304, !305, !306, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !352, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !373, !375, !377, !379, !380, !382, !384, !386, !388, !389, !391, !393, !394, !396, !397, !399, !400, !402, !403, !405, !406, !408, !410, !412, !413, !414, !415, !417, !418, !419, !420}
!llvm.module.flags = !{!422, !423, !424, !425, !426, !427, !428, !429}
!llvm.ident = !{!430}

!0 = !{ptr @__initcall__kmod_elants_i2c__303_1700_elants_i2c_driver_init6, !1, !"__initcall__kmod_elants_i2c__303_1700_elants_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1700, i32 1}
!2 = !{ptr @__exitcall_elants_i2c_driver_exit, !1, !"__exitcall_elants_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1702, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1703, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1704, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1693, i32 11}
!12 = !{ptr @elants_i2c_driver, !13, !"elants_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1689, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1425, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @elants_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @elants_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1430, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @elants_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @elants_i2c_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @elants_i2c_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1438, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1445, i32 47}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1449, i32 4}
!34 = !{ptr @elants_i2c_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @elants_i2c_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1455, i32 47}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1459, i32 4}
!40 = !{ptr @elants_i2c_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @elants_i2c_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1465, i32 48}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1473, i32 4}
!46 = !{ptr @elants_i2c_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @elants_i2c_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1489, i32 3}
!50 = !{ptr @elants_i2c_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @elants_i2c_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1497, i32 3}
!54 = !{ptr @elants_i2c_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @elants_i2c_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1503, i32 3}
!58 = !{ptr @elants_i2c_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @elants_i2c_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1509, i32 3}
!62 = !{ptr @elants_i2c_probe._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @elants_i2c_probe._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1513, i32 20}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1540, i32 3}
!68 = !{ptr @elants_i2c_probe._entry.36, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @elants_i2c_probe._entry_ptr.38, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1547, i32 3}
!72 = !{ptr @elants_i2c_probe._entry.39, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @elants_i2c_probe._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1566, i32 3}
!76 = !{ptr @elants_i2c_probe._entry.42, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @elants_i2c_probe._entry_ptr.44, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1579, i32 3}
!80 = !{ptr @elants_i2c_probe._entry.45, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @elants_i2c_probe._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @init_completion.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../include/linux/completion.h", i32 87, i32 2}
!84 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1336, i32 3}
!87 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @elants_i2c_power_on._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @elants_i2c_power_on._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1344, i32 3}
!92 = !{ptr @elants_i2c_power_on._entry.51, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @elants_i2c_power_on._entry_ptr.53, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 631, i32 4}
!96 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @elants_i2c_initialize._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @elants_i2c_initialize._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 645, i32 4}
!101 = !{ptr @elants_i2c_initialize._entry.56, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @elants_i2c_initialize._entry_ptr.58, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 347, i32 3}
!105 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @elants_i2c_sw_reset._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @elants_i2c_sw_reset._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 202, i32 2}
!110 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @elants_i2c_send._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @elants_i2c_send._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 595, i32 3}
!115 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @elants_i2c_fastboot._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @elants_i2c_fastboot._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 599, i32 2}
!120 = !{ptr @elants_i2c_fastboot.__UNIQUE_ID_ddebug293, !119, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!121 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 219, i32 2}
!123 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @elants_i2c_read._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @elants_i2c_read._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 376, i32 10}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 385, i32 2}
!130 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @elants_i2c_query_hw_version._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @elants_i2c_query_hw_version._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 247, i32 3}
!135 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @elants_i2c_execute_command._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @elants_i2c_execute_command._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 267, i32 5}
!140 = !{ptr @elants_i2c_execute_command.__UNIQUE_ID_ddebug288, !139, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 273, i32 4}
!143 = !{ptr @elants_i2c_execute_command._entry.74, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @elants_i2c_execute_command._entry_ptr.76, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 282, i32 5}
!147 = !{ptr @elants_i2c_execute_command.__UNIQUE_ID_ddebug289, !146, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 288, i32 4}
!150 = !{ptr @elants_i2c_execute_command._entry.78, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @elants_i2c_execute_command._entry_ptr.80, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 451, i32 9}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 401, i32 10}
!156 = !{ptr @.str.83, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 409, i32 3}
!158 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @elants_i2c_query_fw_version.__UNIQUE_ID_ddebug290, !157, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 413, i32 2}
!162 = !{ptr @elants_i2c_query_fw_version._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @elants_i2c_query_fw_version._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.86, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 428, i32 9}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 430, i32 3}
!168 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @elants_i2c_query_test_version._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @elants_i2c_query_test_version._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 530, i32 9}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 543, i32 32}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 553, i32 9}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 563, i32 9}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 569, i32 2}
!181 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @elants_i2c_query_ts_info_ekth.__UNIQUE_ID_ddebug292, !180, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 572, i32 3}
!185 = !{ptr @elants_i2c_query_ts_info_ekth._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @elants_i2c_query_ts_info_ekth._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.96, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 479, i32 9}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 488, i32 9}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 494, i32 2}
!193 = !{ptr @elants_i2c_query_ts_info_ektf.__UNIQUE_ID_ddebug291, !192, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1076, i32 3}
!196 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @elants_i2c_irq._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @elants_i2c_irq._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1081, i32 2}
!201 = !{ptr @elants_i2c_irq.__UNIQUE_ID_ddebug300, !200, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!202 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1109, i32 5}
!204 = !{ptr @elants_i2c_irq._entry.102, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @elants_i2c_irq._entry_ptr.104, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1140, i32 5}
!208 = !{ptr @elants_i2c_irq._entry.105, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @elants_i2c_irq._entry_ptr.107, !207, !"_entry_ptr", i1 false, i1 false}
!210 = distinct !{null, !211, !"__print_once", i1 false, i1 false}
!211 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1150, i32 5}
!212 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @elants_i2c_irq.__UNIQUE_ID_ddebug301, !211, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1153, i32 5}
!216 = !{ptr @elants_i2c_irq._entry.109, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @elants_i2c_irq._entry_ptr.111, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1167, i32 4}
!220 = !{ptr @elants_i2c_irq._entry.112, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @elants_i2c_irq._entry_ptr.114, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.115, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1053, i32 3}
!224 = !{ptr @.str.116, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @elants_i2c_event._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @elants_i2c_event._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1058, i32 3}
!229 = !{ptr @elants_i2c_event._entry.117, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @elants_i2c_event._entry_ptr.119, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.120, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 983, i32 2}
!233 = !{ptr @.str.121, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @elants_i2c_mt_event.__UNIQUE_ID_ddebug298, !232, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!235 = !{ptr @.str.122, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1017, i32 4}
!237 = !{ptr @elants_i2c_mt_event.__UNIQUE_ID_ddebug299, !236, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!238 = !{ptr @elants_attribute_group, !239, !"elants_attribute_group", i1 false, i1 false}
!239 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1317, i32 37}
!240 = !{ptr @elants_attributes, !241, !"elants_attributes", i1 false, i1 false}
!241 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1302, i32 26}
!242 = !{ptr @.str.123, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1248, i32 8}
!244 = !{ptr @dev_attr_calibrate, !243, !"dev_attr_calibrate", i1 false, i1 false}
!245 = !{ptr @elants_i2c_calibrate.w_flashkey, !246, !"w_flashkey", i1 false, i1 false}
!246 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 302, i32 18}
!247 = !{ptr @elants_i2c_calibrate.rek, !248, !"rek", i1 false, i1 false}
!248 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 303, i32 18}
!249 = !{ptr @elants_i2c_calibrate.rek_resp, !250, !"rek_resp", i1 false, i1 false}
!250 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 304, i32 18}
!251 = !{ptr @.str.124, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 323, i32 3}
!253 = !{ptr @.str.125, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @elants_i2c_calibrate._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @elants_i2c_calibrate._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 330, i32 3}
!258 = !{ptr @elants_i2c_calibrate._entry.126, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @elants_i2c_calibrate._entry_ptr.128, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1251, i32 8}
!262 = !{ptr @dev_attr_update_fw, !261, !"dev_attr_update_fw", i1 false, i1 false}
!263 = !{ptr @.str.130, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1212, i32 2}
!265 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @write_update_fw.__UNIQUE_ID_ddebug302, !264, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 913, i32 34}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 917, i32 2}
!271 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @elants_i2c_fw_update._entry, !270, !"_entry", i1 false, i1 false}
!274 = !{ptr @elants_i2c_fw_update._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.137, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 921, i32 3}
!277 = !{ptr @elants_i2c_fw_update._entry.136, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @elants_i2c_fw_update._entry_ptr.138, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.140, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 927, i32 3}
!281 = !{ptr @elants_i2c_fw_update._entry.139, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @elants_i2c_fw_update._entry_ptr.141, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.143, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 938, i32 3}
!285 = !{ptr @elants_i2c_fw_update._entry.142, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @elants_i2c_fw_update._entry_ptr.144, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.146, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 945, i32 3}
!289 = !{ptr @elants_i2c_fw_update._entry.145, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @elants_i2c_fw_update._entry_ptr.147, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.148, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 800, i32 3}
!293 = !{ptr @.str.149, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug295, !292, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!295 = !{ptr @.str.150, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 810, i32 4}
!297 = !{ptr @elants_i2c_do_update_firmware._entry, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @elants_i2c_do_update_firmware._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.151, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 816, i32 3}
!301 = !{ptr @elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug296, !300, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!302 = !{ptr @.str.153, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 821, i32 4}
!304 = !{ptr @elants_i2c_do_update_firmware._entry.152, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.154, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @elants_i2c_do_update_firmware._entry.155, !307, !"_entry", i1 false, i1 false}
!307 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 835, i32 4}
!308 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.156, !307, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.158, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 846, i32 3}
!311 = !{ptr @elants_i2c_do_update_firmware._entry.157, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.159, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.161, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 853, i32 3}
!315 = !{ptr @elants_i2c_do_update_firmware._entry.160, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.162, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.164, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 859, i32 2}
!319 = !{ptr @elants_i2c_do_update_firmware._entry.163, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.165, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.167, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 864, i32 3}
!323 = !{ptr @elants_i2c_do_update_firmware._entry.166, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.168, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.170, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 872, i32 3}
!327 = !{ptr @elants_i2c_do_update_firmware._entry.169, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.171, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.173, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 879, i32 3}
!331 = !{ptr @elants_i2c_do_update_firmware._entry.172, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.174, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.175, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 886, i32 2}
!335 = !{ptr @elants_i2c_do_update_firmware.__UNIQUE_ID_ddebug297, !334, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!336 = !{ptr @.str.177, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 892, i32 4}
!338 = !{ptr @elants_i2c_do_update_firmware._entry.176, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.178, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.180, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 902, i32 2}
!342 = !{ptr @elants_i2c_do_update_firmware._entry.179, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @elants_i2c_do_update_firmware._entry_ptr.181, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.182, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 770, i32 3}
!346 = !{ptr @.str.183, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @elants_i2c_should_check_remark_id.__UNIQUE_ID_ddebug294, !345, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!348 = !{ptr @.str.184, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 734, i32 12}
!350 = !{ptr @.str.185, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 743, i32 3}
!352 = !{ptr @.str.186, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @elants_i2c_validate_remark_id._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @elants_i2c_validate_remark_id._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.187, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 697, i32 4}
!357 = !{ptr @.str.188, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @elants_i2c_fw_write_page._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @elants_i2c_fw_write_page._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.190, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 704, i32 4}
!362 = !{ptr @elants_i2c_fw_write_page._entry.189, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @elants_i2c_fw_write_page._entry_ptr.191, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.193, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 713, i32 3}
!366 = !{ptr @elants_i2c_fw_write_page._entry.192, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @elants_i2c_fw_write_page._entry_ptr.194, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.195, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1249, i32 8}
!370 = !{ptr @dev_attr_iap_mode, !369, !"dev_attr_iap_mode", i1 false, i1 false}
!371 = !{ptr @.str.196, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1224, i32 22}
!373 = !{ptr @.str.197, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1226, i32 5}
!375 = !{ptr @.str.198, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1226, i32 16}
!377 = !{ptr @.str.199, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1250, i32 8}
!379 = !{ptr @dev_attr_calibration_count, !378, !"dev_attr_calibration_count", i1 false, i1 false}
!380 = !{ptr @.str.200, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1240, i32 9}
!382 = !{ptr @.str.201, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1242, i32 23}
!384 = !{ptr @.str.202, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1245, i32 22}
!386 = !{ptr @.str.203, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1295, i32 8}
!388 = !{ptr @elants_ver_attr_fw_version, !387, !"elants_ver_attr_fw_version", i1 false, i1 false}
!389 = !{ptr @.str.204, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1292, i32 22}
!391 = !{ptr @.str.205, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1296, i32 8}
!393 = !{ptr @elants_ver_attr_hw_version, !392, !"elants_ver_attr_hw_version", i1 false, i1 false}
!394 = !{ptr @.str.206, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1297, i32 8}
!396 = !{ptr @elants_ver_attr_test_version, !395, !"elants_ver_attr_test_version", i1 false, i1 false}
!397 = !{ptr @.str.207, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1298, i32 8}
!399 = !{ptr @elants_ver_attr_solution_version, !398, !"elants_ver_attr_solution_version", i1 false, i1 false}
!400 = !{ptr @.str.208, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1299, i32 8}
!402 = !{ptr @elants_ver_attr_bc_version, !401, !"elants_ver_attr_bc_version", i1 false, i1 false}
!403 = !{ptr @.str.209, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1300, i32 8}
!405 = !{ptr @elants_ver_attr_iap_version, !404, !"elants_ver_attr_iap_version", i1 false, i1 false}
!406 = !{ptr @elants_of_match, !407, !"elants_of_match", i1 false, i1 false}
!407 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1681, i32 34}
!408 = !{ptr @elants_i2c_pm_ops, !409, !"elants_i2c_pm_ops", i1 false, i1 false}
!409 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1661, i32 8}
!410 = !{ptr @.str.210, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1616, i32 4}
!412 = !{ptr @.str.211, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @elants_i2c_suspend._entry, !411, !"_entry", i1 false, i1 false}
!414 = !{ptr @elants_i2c_suspend._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.212, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1647, i32 4}
!417 = !{ptr @.str.213, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @elants_i2c_resume._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @elants_i2c_resume._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @elants_i2c_id, !421, !"elants_i2c_id", i1 false, i1 false}
!421 = !{!"../drivers/input/touchscreen/elants_i2c.c", i32 1664, i32 35}
!422 = !{i32 1, !"wchar_size", i32 2}
!423 = !{i32 1, !"min_enum_size", i32 4}
!424 = !{i32 8, !"branch-target-enforcement", i32 0}
!425 = !{i32 8, !"sign-return-address", i32 0}
!426 = !{i32 8, !"sign-return-address-all", i32 0}
!427 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!428 = !{i32 7, !"uwtable", i32 1}
!429 = !{i32 7, !"frame-pointer", i32 2}
!430 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!431 = !{i64 2148994101, i64 2148994106, i64 2148994119, i64 2148994163, i64 2148994197, i64 2148994218}
!432 = !{i64 2155775371, i64 2155775874, i64 2155775408, i64 2155775464, i64 2155775498, i64 2155775522, i64 2155775563, i64 2155775584, i64 2155775612, i64 2155775646}
!433 = !{!"branch_weights", i32 2000, i32 1}
!434 = !{!"auto-init"}
!435 = !{i8 0, i8 2}
