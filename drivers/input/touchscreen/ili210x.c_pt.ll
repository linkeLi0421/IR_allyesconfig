; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/ili210x.c_pt.bc'
source_filename = "../drivers/input/touchscreen/ili210x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ili2xxx_chip = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
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
%struct.ili210x = type { ptr, ptr, ptr, %struct.touchscreen_properties, ptr, [8 x i8], [5 x i8], [2 x i8], [2 x i8], i8 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_ili210x__295_1053_ili210x_ts_driver_init6 = internal global ptr @ili210x_ts_driver_init, section ".initcall6.init", align 4
@ili210x_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ili210x_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ili210x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ili210x_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ili210x_ts_driver_exit = internal global ptr @ili210x_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [50 x i8] c"ili210x.author=Olivier Sobrie <olivier@sobrie.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [51 x i8] c"ili210x.description=ILI210X I2C Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [47 x i8] c"ili210x.file=drivers/input/touchscreen/ili210x\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [20 x i8] c"ili210x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ili210x_i2c\00", [20 x i8] zeroinitializer }, align 32
@ili210x_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili210x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ili210x_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2117\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ili211x_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2120\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ili212x_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili251x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ili251x_chip }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ili210x_i2c_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ili210x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ili210x_chip to i32) }, %struct.i2c_device_id { [20 x i8] c"ili2117\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ili211x_chip to i32) }, %struct.i2c_device_id { [20 x i8] c"ili2120\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ili212x_chip to i32) }, %struct.i2c_device_id { [20 x i8] c"ili251x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ili251x_chip to i32) }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ili210x\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ili210x_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/touchscreen/ili210x.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Probing for ILI210X I2C Touschreen driver\00", [54 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 935, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown device model\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry_ptr = internal global ptr @ili210x_i2c_probe._entry, section ".printk_index", align 4
@ili210x_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 940, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No IRQ!\0A\00", [23 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry_ptr.10 = internal global ptr @ili210x_i2c_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ILI210x Touchscreen\00", [44 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 986, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unable to cache firmware information, err: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry_ptr.15 = internal global ptr @ili210x_i2c_probe._entry.13, section ".printk_index", align 4
@ili210x_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 994, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to set up slots, err: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry_ptr.18 = internal global ptr @ili210x_i2c_probe._entry.16, section ".printk_index", align 4
@ili210x_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1002, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to request touchscreen IRQ, err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry_ptr.21 = internal global ptr @ili210x_i2c_probe._entry.19, section ".printk_index", align 4
@ili210x_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @ili210x_attributes_visible, ptr null, ptr @ili210x_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1013, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to create sysfs attributes, err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry_ptr.24 = internal global ptr @ili210x_i2c_probe._entry.22, section ".printk_index", align 4
@ili210x_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1019, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot register input device, err: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ili210x_i2c_probe._entry_ptr.27 = internal global ptr @ili210x_i2c_probe._entry.25, section ".printk_index", align 4
@ili210x_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 347, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get touch data: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ili210x_irq\00", [20 x i8] zeroinitializer }, align 32
@ili210x_irq._entry_ptr = internal global ptr @ili210x_irq._entry, section ".printk_index", align 4
@ili210x_attributes = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_calibrate, ptr @dev_attr_firmware_update, ptr @dev_attr_firmware_version, ptr @dev_attr_kernel_version, ptr @dev_attr_protocol_version, ptr @dev_attr_mode, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_calibrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ili210x_calibrate }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"calibrate\00", [22 x i8] zeroinitializer }, align 32
@dev_attr_firmware_update = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ili210x_firmware_update_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ili251x_firmware_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_kernel_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ili251x_kernel_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_protocol_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ili251x_protocol_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ili251x_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"firmware_update\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ilitek/ili251x.bin\00", [45 x i8] zeroinitializer }, align 32
@ili210x_firmware_update_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 786, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to request firmware %s, error=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ili210x_firmware_update_store\00", [34 x i8] zeroinitializer }, align 32
@ili210x_firmware_update_store._entry_ptr = internal global ptr @ili210x_firmware_update_store._entry, section ".printk_index", align 4
@ili210x_firmware_update_store.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware update started, firmware=%s\0A\00", [58 x i8] zeroinitializer }, align 32
@ili210x_firmware_update_store.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.36, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IC is now in BootLoader mode\0A\00", [34 x i8] zeroinitializer }, align 32
@ili210x_firmware_update_store._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.3, i32 828, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DF firmware update failed, error=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@ili210x_firmware_update_store._entry_ptr.39 = internal global ptr @ili210x_firmware_update_store._entry.37, section ".printk_index", align 4
@ili210x_firmware_update_store.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.40, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DataFlash firmware written\0A\00", [36 x i8] zeroinitializer }, align 32
@ili210x_firmware_update_store._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.3, i32 836, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AC firmware update failed, error=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@ili210x_firmware_update_store._entry_ptr.43 = internal global ptr @ili210x_firmware_update_store._entry.41, section ".printk_index", align 4
@ili210x_firmware_update_store.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.44, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Application firmware written\0A\00", [34 x i8] zeroinitializer }, align 32
@ili210x_firmware_update_store.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.45, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IC is now in Application mode\0A\00", [33 x i8] zeroinitializer }, align 32
@ili210x_firmware_update_store.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.46, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Firmware update ended, error=%i\0A\00", [63 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.49, i32 77, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@__const.ili251x_switch_ic_mode.cmd_wren = private unnamed_addr constant [3 x i8] c"\C4Z\A5", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%02x%02x.%02x%02x.%02x%02x.%02x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel_version\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%02x.%02x.%02x.%02x.%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"protocol_version\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%02x.%02x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AP\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BL\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%02x.%02x:%s\0A\00", [18 x i8] zeroinitializer }, align 32
@ili210x_chip = internal constant { %struct.ili2xxx_chip, [36 x i8] } { %struct.ili2xxx_chip { ptr @ili210x_read_reg, ptr @ili210x_read_touch_data, ptr @ili210x_touchdata_to_coords, ptr @ili210x_check_continue_polling, i32 2, i32 0, i8 1, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@ili211x_chip = internal constant { %struct.ili2xxx_chip, [36 x i8] } { %struct.ili2xxx_chip { ptr @ili210x_read_reg, ptr @ili211x_read_touch_data, ptr @ili211x_touchdata_to_coords, ptr @ili211x_decline_polling, i32 10, i32 2048, i8 0, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@ili212x_chip = internal constant { %struct.ili2xxx_chip, [36 x i8] } { %struct.ili2xxx_chip { ptr @ili210x_read_reg, ptr @ili210x_read_touch_data, ptr @ili212x_touchdata_to_coords, ptr @ili212x_check_continue_polling, i32 10, i32 0, i8 1, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@ili251x_chip = internal constant { %struct.ili2xxx_chip, [36 x i8] } { %struct.ili2xxx_chip { ptr @ili251x_read_reg, ptr @ili251x_read_touch_data, ptr @ili251x_touchdata_to_coords, ptr @ili251x_check_continue_polling, i32 10, i32 0, i8 1, i8 1, i8 1 }, [36 x i8] zeroinitializer }, align 32
@ili210x_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 94, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ili210x_read_reg\00", [47 x i8] zeroinitializer }, align 32
@ili210x_read_reg._entry_ptr = internal global ptr @ili210x_read_reg._entry, section ".printk_index", align 4
@ili211x_read_touch_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.63, ptr @.str.3, i32 145, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ili211x_read_touch_data\00", [40 x i8] zeroinitializer }, align 32
@ili211x_read_touch_data._entry_ptr = internal global ptr @ili211x_read_touch_data._entry, section ".printk_index", align 4
@ili211x_read_touch_data._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 156, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CRC error (crc=0x%02x expected=0x%02x)\0A\00", [56 x i8] zeroinitializer }, align 32
@ili211x_read_touch_data._entry_ptr.66 = internal global ptr @ili211x_read_touch_data._entry.64, section ".printk_index", align 4
@ili251x_read_reg_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.67, ptr @.str.3, i32 245, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ili251x_read_reg_common\00", [40 x i8] zeroinitializer }, align 32
@ili251x_read_reg_common._entry_ptr = internal global ptr @ili251x_read_reg_common._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 193, i64 194]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 193, i64 194]
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"ili210x_ts_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1044, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1046, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"ili210x_dt_ids\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1035, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"ili210x_i2c_id\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1026, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 929, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 935, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 940, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 944, i32 44 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 974, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 985, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 994, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1001, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [19 x i8] c"ili210x_attr_group\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 898, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1012, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1019, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 346, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"ili210x_attributes\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 870, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant [19 x i8] c"dev_attr_calibrate\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 572, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant [25 x i8] c"dev_attr_firmware_update\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [24 x i8] c"dev_attr_kernel_version\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [26 x i8] c"dev_attr_protocol_version\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 868, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 776, i32 23 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 785, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 804, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 822, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 828, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 832, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 836, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 840, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 852, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 862, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 76, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 502, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 498, i32 25 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 515, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 512, i32 25 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 527, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 525, i32 25 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 546, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 535, i32 15 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 540, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 542, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 544, i32 25 }
@___asan_gen_.273 = private unnamed_addr constant [13 x i8] c"ili210x_chip\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 126, i32 34 }
@___asan_gen_.276 = private unnamed_addr constant [13 x i8] c"ili211x_chip\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 187, i32 34 }
@___asan_gen_.279 = private unnamed_addr constant [13 x i8] c"ili212x_chip\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 218, i32 34 }
@___asan_gen_.282 = private unnamed_addr constant [13 x i8] c"ili251x_chip\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 294, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 94, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 145, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 154, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private constant [39 x i8] c"../drivers/input/touchscreen/ili210x.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 245, i32 2 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_ili210x_ts_driver_exit, ptr @__initcall__kmod_ili210x__295_1053_ili210x_ts_driver_init6, ptr @ili210x_firmware_update_store._entry, ptr @ili210x_firmware_update_store._entry.37, ptr @ili210x_firmware_update_store._entry.41, ptr @ili210x_firmware_update_store._entry_ptr, ptr @ili210x_firmware_update_store._entry_ptr.39, ptr @ili210x_firmware_update_store._entry_ptr.43, ptr @ili210x_i2c_probe._entry, ptr @ili210x_i2c_probe._entry.13, ptr @ili210x_i2c_probe._entry.16, ptr @ili210x_i2c_probe._entry.19, ptr @ili210x_i2c_probe._entry.22, ptr @ili210x_i2c_probe._entry.25, ptr @ili210x_i2c_probe._entry.8, ptr @ili210x_i2c_probe._entry_ptr, ptr @ili210x_i2c_probe._entry_ptr.10, ptr @ili210x_i2c_probe._entry_ptr.15, ptr @ili210x_i2c_probe._entry_ptr.18, ptr @ili210x_i2c_probe._entry_ptr.21, ptr @ili210x_i2c_probe._entry_ptr.24, ptr @ili210x_i2c_probe._entry_ptr.27, ptr @ili210x_irq._entry, ptr @ili210x_irq._entry_ptr, ptr @ili210x_read_reg._entry, ptr @ili210x_read_reg._entry_ptr, ptr @ili210x_ts_driver_exit, ptr @ili211x_read_touch_data._entry, ptr @ili211x_read_touch_data._entry.64, ptr @ili211x_read_touch_data._entry_ptr, ptr @ili211x_read_touch_data._entry_ptr.66, ptr @ili251x_read_reg_common._entry, ptr @ili251x_read_reg_common._entry_ptr, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @ili210x_ts_driver, ptr @.str, ptr @ili210x_dt_ids, ptr @ili210x_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @ili210x_attr_group, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @ili210x_attributes, ptr @dev_attr_calibrate, ptr @.str.30, ptr @dev_attr_firmware_update, ptr @dev_attr_firmware_version, ptr @dev_attr_kernel_version, ptr @dev_attr_protocol_version, ptr @dev_attr_mode, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @ili210x_chip, ptr @ili211x_chip, ptr @ili212x_chip, ptr @ili251x_chip, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_i2c_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_attributes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_calibrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_update to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_kernel_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_protocol_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_firmware_update_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_firmware_update_store._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_firmware_update_store._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_chip to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili211x_chip to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili212x_chip to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili251x_chip to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili210x_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili211x_read_touch_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili211x_read_touch_data._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili251x_read_reg_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ili210x_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ili210x_ts_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ili210x_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @i2c_del_driver(ptr noundef nonnull @ili210x_ts_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili210x_i2c_probe(ptr noundef %client, ptr noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili210x_i2c_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili210x_i2c_probe, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili210x_i2c_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev1, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @device_get_match_data(ptr noundef %dev1) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %land.lhs.true, label %do.end.if.end15_crit_edge

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %do.end
  %tobool6.not = icmp eq ptr %id, null
  br i1 %tobool6.not, label %land.lhs.true.do.end13_crit_edge, label %if.end8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

if.end8:                                          ; preds = %land.lhs.true
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool9.not = icmp eq i32 %1, 0
  br i1 %tobool9.not, label %if.end8.do.end13_crit_edge, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end8.do.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

do.end13:                                         ; preds = %if.end8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end8.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %chip.0179 = phi ptr [ %2, %if.end8.if.end15_crit_edge ], [ %call4, %do.end.if.end15_crit_edge ]
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 7) #12
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %tobool26.not = icmp eq ptr %call21, null
  br i1 %tobool26.not, label %if.end25.if.end32_crit_edge, label %if.then27

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then27:                                        ; preds = %if.end25
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @ili210x_power_down, ptr noundef nonnull %call21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end31, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call21, i32 noundef 1) #12
  br label %cleanup

if.end31:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call21, i32 noundef 0) #12
  tail call void @msleep(i32 noundef 100) #12
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end25.if.end32_crit_edge
  %call.i168 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #12
  %tobool34.not = icmp eq ptr %call.i168, null
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %call37 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #12
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %6 = ptrtoint ptr %call.i168 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i168, align 4
  %input42 = getelementptr inbounds %struct.ili210x, ptr %call.i168, i32 0, i32 1
  %7 = ptrtoint ptr %input42 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call37, ptr %input42, align 4
  %reset_gpio43 = getelementptr inbounds %struct.ili210x, ptr %call.i168, i32 0, i32 2
  %8 = ptrtoint ptr %reset_gpio43 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call21, ptr %reset_gpio43, align 4
  %chip44 = getelementptr inbounds %struct.ili210x, ptr %call.i168, i32 0, i32 4
  %9 = ptrtoint ptr %chip44 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %chip.0179, ptr %chip44, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i168, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %call37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.12, ptr %call37, align 8
  %id45 = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 3
  %12 = ptrtoint ptr %id45 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 24, ptr %id45, align 4
  %resolution = getelementptr inbounds %struct.ili2xxx_chip, ptr %chip.0179, i32 0, i32 5
  %13 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resolution, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool46.not = icmp eq i32 %14, 0
  %.op = add i32 %14, -1
  %sub = select i1 %tobool46.not, i32 65535, i32 %.op
  tail call void @input_set_abs_params(ptr noundef nonnull %call37, i32 noundef 53, i32 noundef 0, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_set_abs_params(ptr noundef nonnull %call37, i32 noundef 54, i32 noundef 0, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #12
  %15 = ptrtoint ptr %chip44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip44, align 4
  %has_pressure_reg = getelementptr inbounds %struct.ili2xxx_chip, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %has_pressure_reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_pressure_reg, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool48.not = icmp eq i8 %18, 0
  br i1 %tobool48.not, label %if.end40.if.end50_crit_edge, label %if.then49

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @input_set_abs_params(ptr noundef nonnull %call37, i32 noundef 58, i32 noundef 0, i32 noundef 10, i32 noundef 0, i32 noundef 0) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end40.if.end50_crit_edge
  %call51 = tail call fastcc i32 @ili251x_firmware_update_cached_state(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end57, label %do.end56

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call51) #15
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  %prop = getelementptr inbounds %struct.ili210x, ptr %call.i168, i32 0, i32 3
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call37, i1 noundef zeroext true, ptr noundef %prop) #12
  %19 = ptrtoint ptr %chip44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip44, align 4
  %max_touches = getelementptr inbounds %struct.ili2xxx_chip, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %max_touches to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_touches, align 4
  %call59 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call37, i32 noundef %22, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end65, label %do.end64

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call59) #15
  br label %cleanup

if.end65:                                         ; preds = %if.end57
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %name67 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call68 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %24, ptr noundef null, ptr noundef nonnull @ili210x_irq, i32 noundef 8192, ptr noundef %name67, ptr noundef nonnull %call.i168) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end74, label %do.end73

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call68) #15
  br label %cleanup

if.end74:                                         ; preds = %if.end65
  %call.i169 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @ili210x_stop, ptr noundef nonnull %call.i168) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool.not.i170 = icmp eq i32 %call.i169, 0
  br i1 %tobool.not.i170, label %if.end78, label %devm_add_action_or_reset.exit172

devm_add_action_or_reset.exit172:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %stop.i = getelementptr inbounds %struct.ili210x, ptr %call.i168, i32 0, i32 9
  %25 = ptrtoint ptr %stop.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %stop.i, align 1
  br label %cleanup

if.end78:                                         ; preds = %if.end74
  %call79 = tail call i32 @devm_device_add_group(ptr noundef %dev1, ptr noundef nonnull @ili210x_attr_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end85, label %do.end84

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call79) #15
  br label %cleanup

if.end85:                                         ; preds = %if.end78
  %26 = ptrtoint ptr %input42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input42, align 4
  %call87 = tail call i32 @input_register_device(ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end85.cleanup_crit_edge, label %do.end92

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call87) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %if.end85.cleanup_crit_edge, %do.end84, %devm_add_action_or_reset.exit172, %do.end73, %do.end64, %do.end56, %if.end36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then23, %do.end19, %do.end13
  %retval.0 = phi i32 [ -22, %do.end19 ], [ %5, %if.then23 ], [ %call51, %do.end56 ], [ %call59, %do.end64 ], [ %call68, %do.end73 ], [ %call79, %do.end84 ], [ %call87, %do.end92 ], [ -19, %do.end13 ], [ %call.i, %devm_add_action_or_reset.exit ], [ -12, %if.end32.cleanup_crit_edge ], [ -12, %if.end36.cleanup_crit_edge ], [ %call.i169, %devm_add_action_or_reset.exit172 ], [ 0, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ili210x_power_down(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gpiod_set_value_cansleep(ptr noundef %data, i32 noundef 1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ili251x_firmware_update_cached_state(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %md.i = alloca [2 x i8], align 2
  %pv.i = alloca [2 x i8], align 2
  %kv.i = alloca [5 x i8], align 1
  %fw.i = alloca [8 x i8], align 8
  %rs.i = alloca [10 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.ili210x, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %has_firmware_proto = getelementptr inbounds %struct.ili2xxx_chip, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %has_firmware_proto to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_firmware_proto, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 200) #12
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rs.i) #12
  %chip.i = getelementptr inbounds %struct.ili210x, ptr %7, i32 0, i32 4
  %8 = call ptr @memset(ptr %rs.i, i32 255, i32 10)
  %9 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call1.i = call i32 %12(ptr noundef %add.ptr, i8 noundef zeroext 32, ptr noundef nonnull %rs.i, i32 noundef 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ili251x_firmware_update_resolution.exit.thread_crit_edge

if.end.ili251x_firmware_update_resolution.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_update_resolution.exit.thread

if.end.i:                                         ; preds = %if.end
  %13 = getelementptr inbounds [10 x i8], ptr %rs.i, i32 0, i32 2
  %14 = ptrtoint ptr %rs.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rs.i, align 2
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %13, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not.i = icmp eq i16 %15, 0
  br i1 %tobool6.not.i, label %if.end.i.ili251x_firmware_update_resolution.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.ili251x_firmware_update_resolution.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_update_resolution.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp.i = icmp eq i16 %15, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool9.not.i = icmp eq i16 %17, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool9.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp12.i = icmp eq i16 %17, -1
  %or.cond43.i = select i1 %or.cond.i, i1 true, i1 %cmp12.i
  br i1 %or.cond43.i, label %lor.lhs.false.i.ili251x_firmware_update_resolution.exit.thread_crit_edge, label %if.end15.i

lor.lhs.false.i.ili251x_firmware_update_resolution.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_update_resolution.exit.thread

if.end15.i:                                       ; preds = %lor.lhs.false.i
  %19 = call i16 @llvm.bswap.i16(i16 %15) #12
  %conv.i = zext i16 %19 to i32
  %conv11.i = zext i16 %18 to i32
  %input.i = getelementptr inbounds %struct.ili210x, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input.i, align 4
  %sub.i = add nsw i32 %conv.i, -1
  call void @input_alloc_absinfo(ptr noundef %21) #12
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end15.i.input_abs_set_max.exit.i_crit_edge, label %if.then.i.i

if.end15.i.input_abs_set_max.exit.i_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %input_abs_set_max.exit.i

if.then.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %maximum.i.i = getelementptr %struct.input_absinfo, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %maximum.i.i, align 4
  br label %input_abs_set_max.exit.i

input_abs_set_max.exit.i:                         ; preds = %if.then.i.i, %if.end15.i.input_abs_set_max.exit.i_crit_edge
  %25 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input.i, align 4
  %sub19.i = add nsw i32 %conv11.i, -1
  call void @input_alloc_absinfo(ptr noundef %26) #12
  %absinfo.i44.i = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 26
  %27 = ptrtoint ptr %absinfo.i44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %absinfo.i44.i, align 8
  %tobool.not.i45.i = icmp eq ptr %28, null
  br i1 %tobool.not.i45.i, label %input_abs_set_max.exit.i.input_abs_set_max.exit48.i_crit_edge, label %if.then.i47.i

input_abs_set_max.exit.i.input_abs_set_max.exit48.i_crit_edge: ; preds = %input_abs_set_max.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %input_abs_set_max.exit48.i

if.then.i47.i:                                    ; preds = %input_abs_set_max.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %maximum.i46.i = getelementptr %struct.input_absinfo, ptr %28, i32 1, i32 2
  %29 = ptrtoint ptr %maximum.i46.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub19.i, ptr %maximum.i46.i, align 4
  br label %input_abs_set_max.exit48.i

input_abs_set_max.exit48.i:                       ; preds = %if.then.i47.i, %input_abs_set_max.exit.i.input_abs_set_max.exit48.i_crit_edge
  %30 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input.i, align 4
  call void @input_alloc_absinfo(ptr noundef %31) #12
  %absinfo.i49.i = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 26
  %32 = ptrtoint ptr %absinfo.i49.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %absinfo.i49.i, align 8
  %tobool.not.i50.i = icmp eq ptr %33, null
  br i1 %tobool.not.i50.i, label %input_abs_set_max.exit48.i.input_abs_set_max.exit53.i_crit_edge, label %if.then.i52.i

input_abs_set_max.exit48.i.input_abs_set_max.exit53.i_crit_edge: ; preds = %input_abs_set_max.exit48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %input_abs_set_max.exit53.i

if.then.i52.i:                                    ; preds = %input_abs_set_max.exit48.i
  call void @__sanitizer_cov_trace_pc() #14
  %maximum.i51.i = getelementptr %struct.input_absinfo, ptr %33, i32 53, i32 2
  %34 = ptrtoint ptr %maximum.i51.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i, ptr %maximum.i51.i, align 4
  br label %input_abs_set_max.exit53.i

input_abs_set_max.exit53.i:                       ; preds = %if.then.i52.i, %input_abs_set_max.exit48.i.input_abs_set_max.exit53.i_crit_edge
  %35 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input.i, align 4
  call void @input_alloc_absinfo(ptr noundef %36) #12
  %absinfo.i54.i = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %absinfo.i54.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %absinfo.i54.i, align 8
  %tobool.not.i55.i = icmp eq ptr %38, null
  br i1 %tobool.not.i55.i, label %input_abs_set_max.exit53.i.if.end4_crit_edge, label %if.then.i57.i

input_abs_set_max.exit53.i.if.end4_crit_edge:     ; preds = %input_abs_set_max.exit53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.i57.i:                                    ; preds = %input_abs_set_max.exit53.i
  call void @__sanitizer_cov_trace_pc() #14
  %maximum.i56.i = getelementptr %struct.input_absinfo, ptr %38, i32 54, i32 2
  %39 = ptrtoint ptr %maximum.i56.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub19.i, ptr %maximum.i56.i, align 4
  br label %if.end4

ili251x_firmware_update_resolution.exit.thread:   ; preds = %lor.lhs.false.i.ili251x_firmware_update_resolution.exit.thread_crit_edge, %if.end.i.ili251x_firmware_update_resolution.exit.thread_crit_edge, %if.end.ili251x_firmware_update_resolution.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.ili251x_firmware_update_resolution.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.ili251x_firmware_update_resolution.exit.thread_crit_edge ], [ %call1.i, %if.end.ili251x_firmware_update_resolution.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rs.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.then.i57.i, %input_abs_set_max.exit53.i.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rs.i) #12
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fw.i) #12
  %chip.i39 = getelementptr inbounds %struct.ili210x, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %fw.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %fw.i, align 8
  %43 = ptrtoint ptr %chip.i39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip.i39, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call1.i40 = call i32 %46(ptr noundef %add.ptr, i8 noundef zeroext 64, ptr noundef nonnull %fw.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %if.end8, label %ili251x_firmware_update_firmware_version.exit

ili251x_firmware_update_firmware_version.exit:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %version_firmware.i = getelementptr inbounds %struct.ili210x, ptr %41, i32 0, i32 5
  %47 = ptrtoint ptr %fw.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %fw.i, align 8
  %49 = ptrtoint ptr %version_firmware.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %version_firmware.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw.i) #12
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %kv.i) #12
  %chip.i45 = getelementptr inbounds %struct.ili210x, ptr %51, i32 0, i32 4
  %52 = call ptr @memset(ptr %kv.i, i32 255, i32 5)
  %53 = ptrtoint ptr %chip.i45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip.i45, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %call1.i46 = call i32 %56(ptr noundef %add.ptr, i8 noundef zeroext 97, ptr noundef nonnull %kv.i, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %if.end12, label %ili251x_firmware_update_kernel_version.exit

ili251x_firmware_update_kernel_version.exit:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %kv.i) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %version_kernel.i = getelementptr inbounds %struct.ili210x, ptr %51, i32 0, i32 6
  %57 = call ptr @memcpy(ptr %version_kernel.i, ptr %kv.i, i32 5)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %kv.i) #12
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pv.i) #12
  %60 = ptrtoint ptr %pv.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %pv.i, align 2, !annotation !174
  %61 = getelementptr inbounds [2 x i8], ptr %pv.i, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %61, align 1, !annotation !174
  %chip.i52 = getelementptr inbounds %struct.ili210x, ptr %59, i32 0, i32 4
  %63 = ptrtoint ptr %chip.i52 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip.i52, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call1.i53 = call i32 %66(ptr noundef %add.ptr, i8 noundef zeroext 66, ptr noundef nonnull %pv.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %if.end16, label %ili251x_firmware_update_protocol_version.exit

ili251x_firmware_update_protocol_version.exit:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pv.i) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %version_proto.i = getelementptr inbounds %struct.ili210x, ptr %59, i32 0, i32 7
  %67 = ptrtoint ptr %pv.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %pv.i, align 2
  %69 = ptrtoint ptr %version_proto.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %68, ptr %version_proto.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pv.i) #12
  %70 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %md.i) #12
  %72 = ptrtoint ptr %md.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %md.i, align 2, !annotation !174
  %73 = getelementptr inbounds [2 x i8], ptr %md.i, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %73, align 1, !annotation !174
  %chip.i59 = getelementptr inbounds %struct.ili210x, ptr %71, i32 0, i32 4
  %75 = ptrtoint ptr %chip.i59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip.i59, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call1.i60 = call i32 %78(ptr noundef %add.ptr, i8 noundef zeroext -64, ptr noundef nonnull %md.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %if.then.i62, label %if.end16.ili251x_firmware_update_ic_mode.exit_crit_edge

if.end16.ili251x_firmware_update_ic_mode.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_update_ic_mode.exit

if.then.i62:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %ic_mode.i = getelementptr inbounds %struct.ili210x, ptr %71, i32 0, i32 8
  %79 = ptrtoint ptr %md.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %md.i, align 2
  %81 = ptrtoint ptr %ic_mode.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %80, ptr %ic_mode.i, align 1
  br label %ili251x_firmware_update_ic_mode.exit

ili251x_firmware_update_ic_mode.exit:             ; preds = %if.then.i62, %if.end16.ili251x_firmware_update_ic_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %md.i) #12
  br label %cleanup

cleanup:                                          ; preds = %ili251x_firmware_update_ic_mode.exit, %ili251x_firmware_update_protocol_version.exit, %ili251x_firmware_update_kernel_version.exit, %ili251x_firmware_update_firmware_version.exit, %ili251x_firmware_update_resolution.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1.i40, %ili251x_firmware_update_firmware_version.exit ], [ %call1.i46, %ili251x_firmware_update_kernel_version.exit ], [ %call1.i53, %ili251x_firmware_update_protocol_version.exit ], [ %call1.i60, %ili251x_firmware_update_ic_mode.exit ], [ %retval.0.i.ph, %ili251x_firmware_update_resolution.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili210x_irq(i32 noundef %irq, ptr noundef %irq_data) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  %y.i = alloca i32, align 4
  %z.i = alloca i32, align 4
  %touchdata = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data, align 4
  %chip2 = getelementptr inbounds %struct.ili210x, ptr %irq_data, i32 0, i32 4
  %2 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %touchdata) #12
  %4 = call ptr @memset(ptr %touchdata, i32 0, i32 64)
  %get_touch_data = getelementptr inbounds %struct.ili2xxx_chip, ptr %3, i32 0, i32 1
  %input1.i = getelementptr inbounds %struct.ili210x, ptr %irq_data, i32 0, i32 1
  %prop.i = getelementptr inbounds %struct.ili210x, ptr %irq_data, i32 0, i32 3
  %continue_polling = getelementptr inbounds %struct.ili2xxx_chip, ptr %3, i32 0, i32 3
  %stop = getelementptr inbounds %struct.ili210x, ptr %irq_data, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %do.cond20.do.body_crit_edge, %entry
  %call = call i64 @ktime_get() #12
  %add.i = add i64 %call, 15000000
  %5 = ptrtoint ptr %get_touch_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_touch_data, align 4
  %call4 = call i32 %6(ptr noundef %1, ptr noundef nonnull %touchdata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call4) #15
  br label %do.end24

if.end:                                           ; preds = %do.body
  %7 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #12
  %9 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %x.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i) #12
  %10 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %y.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %z.i) #12
  %11 = ptrtoint ptr %z.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %z.i, align 4
  %12 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip2, align 4
  %max_touches22.i = getelementptr inbounds %struct.ili2xxx_chip, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %max_touches22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_touches22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp23.not.i = icmp eq i32 %15, 0
  br i1 %cmp23.not.i, label %if.end.ili210x_report_events.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.ili210x_report_events.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili210x_report_events.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %16 = phi ptr [ %30, %for.inc.i.for.body.i_crit_edge ], [ %13, %if.end.for.body.i_crit_edge ]
  %contact.0.off025.i = phi i1 [ %contact.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.end.for.body.i_crit_edge ]
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %parse_touch_data.i = getelementptr inbounds %struct.ili2xxx_chip, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %parse_touch_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parse_touch_data.i, align 4
  %call.i = call zeroext i1 %18(ptr noundef nonnull %touchdata, i32 noundef %i.024.i, ptr noundef nonnull %x.i, ptr noundef nonnull %y.i, ptr noundef nonnull %z.i) #12
  call void @input_event(ptr noundef %8, i32 noundef 3, i32 noundef 47, i32 noundef %i.024.i) #12
  %call3.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %8, i32 noundef 0, i1 noundef zeroext %call.i) #12
  br i1 %call3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %19 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %x.i, align 4
  %21 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %y.i, align 4
  call void @touchscreen_report_pos(ptr noundef %8, ptr noundef %prop.i, i32 noundef %20, i32 noundef %22, i1 noundef zeroext true) #12
  %23 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip2, align 4
  %has_pressure_reg.i = getelementptr inbounds %struct.ili2xxx_chip, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %has_pressure_reg.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_pressure_reg.i, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not.i = icmp eq i8 %26, 0
  br i1 %tobool5.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then6.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %z.i, align 4
  call void @input_event(ptr noundef %8, i32 noundef 3, i32 noundef 58, i32 noundef %28) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %contact.1.off0.i = phi i1 [ %contact.0.off025.i, %for.body.i.for.inc.i_crit_edge ], [ true, %if.then6.i ], [ true, %if.then.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.024.i, 1
  %29 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip2, align 4
  %max_touches.i = getelementptr inbounds %struct.ili2xxx_chip, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %max_touches.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_touches.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ili210x_report_events.exit_crit_edge

for.inc.i.ili210x_report_events.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili210x_report_events.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

ili210x_report_events.exit:                       ; preds = %for.inc.i.ili210x_report_events.exit_crit_edge, %if.end.ili210x_report_events.exit_crit_edge
  %contact.0.off0.lcssa.i = phi i1 [ false, %if.end.ili210x_report_events.exit_crit_edge ], [ %contact.1.off0.i, %for.inc.i.ili210x_report_events.exit_crit_edge ]
  call void @input_mt_report_pointer_emulation(ptr noundef %8, i1 noundef zeroext false) #12
  call void @input_event(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %z.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #12
  %33 = ptrtoint ptr %continue_polling to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %continue_polling, align 4
  %call10 = call zeroext i1 %34(ptr noundef nonnull %touchdata, i1 noundef zeroext %contact.0.off0.lcssa.i) #12
  br i1 %call10, label %if.then13, label %ili210x_report_events.exit.do.end24_crit_edge

ili210x_report_events.exit.do.end24_crit_edge:    ; preds = %ili210x_report_events.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

if.then13:                                        ; preds = %ili210x_report_events.exit
  %call14 = call i64 @ktime_get() #12
  %sub.i = sub i64 %add.i, %call14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %35 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #12
  %36 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %35, i32 0) #16, !srcloc !175
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %36, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %36, 1
  %37 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %35, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #16, !srcloc !176
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %37, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond213.i.i.i)
  %cmp = icmp sgt i64 %cond213.i.i.i, 0
  br i1 %cmp, label %if.then16, label %if.then13.do.cond20_crit_edge

if.then13.do.cond20_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond20

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %cond213.i.i.i to i32
  %conv17 = add i32 %conv, 1000
  call void @usleep_range_state(i32 noundef %conv, i32 noundef %conv17, i32 noundef 2) #12
  br label %do.cond20

do.cond20:                                        ; preds = %if.then16, %if.then13.do.cond20_crit_edge
  %38 = ptrtoint ptr %stop to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %stop, align 1, !range !173
  %tobool21.not.not = icmp eq i8 %39, 0
  br i1 %tobool21.not.not, label %do.cond20.do.body_crit_edge, label %do.cond20.do.end24_crit_edge

do.cond20.do.end24_crit_edge:                     ; preds = %do.cond20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

do.cond20.do.body_crit_edge:                      ; preds = %do.cond20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %do.cond20.do.end24_crit_edge, %ili210x_report_events.exit.do.end24_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %touchdata) #12
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ili210x_stop(ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stop = getelementptr inbounds %struct.ili210x, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %stop to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %stop, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ili210x_attributes_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %kobj, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_calibrate
  %chip = getelementptr inbounds %struct.ili210x, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %has_calibrate_reg = getelementptr inbounds %struct.ili2xxx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %has_calibrate_reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_calibrate_reg, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_firmware_proto = getelementptr inbounds %struct.ili2xxx_chip, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %has_firmware_proto to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_firmware_proto, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mode7 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %mode7, %if.end6 ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_calibrate, i32 0, i32 0, i32 1), %if.then.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %.sink to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %9, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili210x_calibrate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %calibrate = alloca i32, align 4
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %calibrate) #12
  %2 = ptrtoint ptr %calibrate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %calibrate, align 4, !annotation !174
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #12
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -52, ptr %cmd, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %calibrate) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %calibrate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %calibrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end3.if.end11_crit_edge, label %if.then5

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i16 = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %cmd, i32 noundef 1, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i16)
  %cmp8.not = icmp eq i32 %call.i16, 1
  br i1 %cmp8.not, label %if.then5.if.end11_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calibrate) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili210x_firmware_update_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %data.i.i211 = alloca i8, align 1
  %cmd_reset.i = alloca [2 x i8], align 2
  %lfw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i) #12
  %0 = ptrtoint ptr %lfw.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i, align 4, !annotation !174
  %call.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i, ptr noundef nonnull @.str.32, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lfw.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %sub.i.i = add i32 %6, -6
  %arrayidx.i.i = getelementptr i8, ptr %4, i32 %sub.i.i
  %cmp.not10.i.i = icmp ugt ptr %4, %arrayidx.i.i
  br i1 %cmp.not10.i.i, label %if.end.i.do.end.i_crit_edge, label %for.body.preheader.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rec.011.i.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %4, %for.body.preheader.i.i ]
  %cmp2.i.i = icmp eq ptr %rec.011.i.i, %arrayidx.i.i
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i, label %if.end, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i.i = add i16 %10, 6
  %conv.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.011.i.i, i32 %and.i.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.32) #15
  %11 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lfw.i, align 4
  call void @release_firmware(ptr noundef %12) #12
  br label %do.end

do.end:                                           ; preds = %do.end.i, %entry.do.end_crit_edge
  %retval.0.i200.ph = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i200.ph) #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #12
  %call1.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3520, i32 noundef 4) #17
  %tobool.not.i201 = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i201, label %if.end.ili251x_firmware_to_buffer.exit_crit_edge, label %if.end.i202

if.end.ili251x_firmware_to_buffer.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_to_buffer.exit

if.end.i202:                                      ; preds = %if.end
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %tobool1.not42.i = icmp eq ptr %14, null
  br i1 %tobool1.not42.i, label %if.end.i202.if.end4_crit_edge, label %if.end.i202.while.body.i_crit_edge

if.end.i202.while.body.i_crit_edge:               ; preds = %if.end.i202
  br label %while.body.i

if.end.i202.if.end4_crit_edge:                    ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end.i202.while.body.i_crit_edge
  %ac_end.0 = phi i16 [ %spec.select250, %if.end6.i.while.body.i_crit_edge ], [ -1, %if.end.i202.while.body.i_crit_edge ]
  %fw_last_addr.044.i = phi i32 [ %add.i, %if.end6.i.while.body.i_crit_edge ], [ 0, %if.end.i202.while.body.i_crit_edge ]
  %rec.043.i = phi ptr [ %add.ptr.i.i.i207, %if.end6.i.while.body.i_crit_edge ], [ %14, %if.end.i202.while.body.i_crit_edge ]
  %15 = ptrtoint ptr %rec.043.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %rec.043.i, align 1
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.043.i, i32 0, i32 1
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %len.i, align 1
  %conv.i = zext i16 %18 to i32
  %add.i = add i32 %16, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65504, i32 %16)
  %cmp3.i = icmp ugt i32 %16, 65504
  %or.cond.i = or i1 %cmp3.i, %cmp.i
  br i1 %or.cond.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #12
  br label %ili251x_firmware_to_buffer.exit

if.end6.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %16)
  %cmp7.i = icmp eq i32 %16, 61440
  %conv10.i = trunc i32 %fw_last_addr.044.i to i16
  %spec.select250 = select i1 %cmp7.i, i16 %conv10.i, i16 %ac_end.0
  %add.ptr.i = getelementptr i8, ptr %call1.i.i.i.i, i32 %16
  %data14.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.043.i, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %add.ptr.i, ptr %data14.i, i32 %conv.i)
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %len.i, align 1
  %add.i.i.i.i203 = add i16 %21, 6
  %conv.i.i.i204 = zext i16 %add.i.i.i.i203 to i32
  %add.i.i.i205 = add nuw nsw i32 %conv.i.i.i204, 3
  %and.i.i.i206 = and i32 %add.i.i.i205, 131068
  %add.ptr.i.i.i207 = getelementptr i8, ptr %rec.043.i, i32 %and.i.i.i206
  %len.i.i208 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i.i207, i32 0, i32 1
  %22 = ptrtoint ptr %len.i.i208 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %len.i.i208, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i.i209 = icmp eq i16 %23, 0
  %tobool1.not52.i = icmp eq ptr %add.ptr.i.i.i207, null
  %tobool1.not.i = select i1 %tobool.not.i.i209, i1 true, i1 %tobool1.not52.i
  br i1 %tobool1.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = trunc i32 %16 to i16
  %phi.cast.i = add i16 %18, %24
  br label %if.end4

ili251x_firmware_to_buffer.exit:                  ; preds = %if.then5.i, %if.end.ili251x_firmware_to_buffer.exit_crit_edge
  %retval.0.i210 = phi i32 [ -27, %if.then5.i ], [ -12, %if.end.ili251x_firmware_to_buffer.exit_crit_edge ]
  call void @release_firmware(ptr noundef %2) #12
  br label %cleanup

if.end4:                                          ; preds = %while.cond.while.end_crit_edge.i, %if.end.i202.if.end4_crit_edge
  %ac_end.3.ph = phi i16 [ %spec.select250, %while.cond.while.end_crit_edge.i ], [ -1, %if.end.i202.if.end4_crit_edge ]
  %df_end.0.ph = phi i16 [ %phi.cast.i, %while.cond.while.end_crit_edge.i ], [ -2, %if.end.i202.if.end4_crit_edge ]
  call void @release_firmware(ptr noundef %2) #12
  %irq = getelementptr i8, ptr %dev, i32 932
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %26) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili210x_firmware_update_store, %if.then11)) #12
          to label %do.end14 [label %if.then11], !srcloc !172

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili210x_firmware_update_store.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.32) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %if.end4
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %27 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i, align 4
  %reset_gpio.i = getelementptr inbounds %struct.ili210x, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %30, i32 noundef 1) #12
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #12
  %31 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %32, i32 noundef 0) #12
  call void @msleep(i32 noundef 300) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_reset.i) #12
  %33 = ptrtoint ptr %cmd_reset.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -3583, ptr %cmd_reset.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %cmd_reset.i, i32 noundef 2, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %if.end.i212, label %ili251x_firmware_reset.exit.thread

ili251x_firmware_reset.exit.thread:               ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_reset.i) #12
  br label %exit

if.end.i212:                                      ; preds = %do.end14
  %34 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i211) #12
  %36 = ptrtoint ptr %data.i.i211 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %data.i.i211, align 1, !annotation !174
  %chip.i.i = getelementptr inbounds %struct.ili210x, ptr %35, i32 0, i32 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i212
  %i.0.i.i = phi i32 [ 0, %if.end.i212 ], [ %inc.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call1.i.i = call i32 %40(ptr noundef %add.ptr, i8 noundef zeroext -128, ptr noundef nonnull %data.i.i211, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i213 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i213, label %if.end.i.i, label %do.body.i.i.ili251x_firmware_reset.exit.thread238_crit_edge

do.body.i.i.ili251x_firmware_reset.exit.thread238_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_reset.exit.thread238

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %i.0.i.i)
  %cmp.i.i = icmp eq i32 %i.0.i.i, 100000
  br i1 %cmp.i.i, label %if.end.i.i.ili251x_firmware_reset.exit.thread238_crit_edge, label %do.cond.i.i

if.end.i.i.ili251x_firmware_reset.exit.thread238_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_reset.exit.thread238

do.cond.i.i:                                      ; preds = %if.end.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %41 = ptrtoint ptr %data.i.i211 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %data.i.i211, align 1
  %cmp4.not.i.i = icmp eq i8 %42, 80
  br i1 %cmp4.not.i.i, label %ili251x_firmware_reset.exit, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

ili251x_firmware_reset.exit.thread238:            ; preds = %if.end.i.i.ili251x_firmware_reset.exit.thread238_crit_edge, %do.body.i.i.ili251x_firmware_reset.exit.thread238_crit_edge
  %retval.0.i.i.ph = phi i32 [ -110, %if.end.i.i.ili251x_firmware_reset.exit.thread238_crit_edge ], [ %call1.i.i, %do.body.i.i.ili251x_firmware_reset.exit.thread238_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i211) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_reset.i) #12
  br label %exit

ili251x_firmware_reset.exit:                      ; preds = %do.cond.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i211) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_reset.i) #12
  %call19 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %ili251x_firmware_reset.exit.do.body26_crit_edge, label %for.cond

ili251x_firmware_reset.exit.do.body26_crit_edge:  ; preds = %ili251x_firmware_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

for.cond:                                         ; preds = %ili251x_firmware_reset.exit
  %call19.1 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %tobool20.not.1 = icmp eq i32 %call19.1, 0
  br i1 %tobool20.not.1, label %for.cond.do.body26_crit_edge, label %for.cond.1

for.cond.do.body26_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

for.cond.1:                                       ; preds = %for.cond
  %call19.2 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2)
  %tobool20.not.2 = icmp eq i32 %call19.2, 0
  br i1 %tobool20.not.2, label %for.cond.1.do.body26_crit_edge, label %for.cond.2

for.cond.1.do.body26_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

for.cond.2:                                       ; preds = %for.cond.1
  %call19.3 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.3)
  %tobool20.not.3 = icmp eq i32 %call19.3, 0
  br i1 %tobool20.not.3, label %for.cond.2.do.body26_crit_edge, label %for.cond.3

for.cond.2.do.body26_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

for.cond.3:                                       ; preds = %for.cond.2
  %call19.4 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.4)
  %tobool20.not.4 = icmp eq i32 %call19.4, 0
  br i1 %tobool20.not.4, label %for.cond.3.do.body26_crit_edge, label %for.cond.3.exit_crit_edge

for.cond.3.exit_crit_edge:                        ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

for.cond.3.do.body26_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

do.body26:                                        ; preds = %for.cond.3.do.body26_crit_edge, %for.cond.2.do.body26_crit_edge, %for.cond.1.do.body26_crit_edge, %for.cond.do.body26_crit_edge, %ili251x_firmware_reset.exit.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili210x_firmware_update_store, %if.then38)) #12
          to label %do.end41 [label %if.then38], !srcloc !172

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili210x_firmware_update_store.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.36) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body26
  call void @msleep(i32 noundef 200) #12
  %call42 = call fastcc i32 @ili251x_firmware_write_to_ic(ptr noundef %dev, ptr noundef nonnull %call1.i.i.i.i, i16 noundef zeroext -4096, i16 noundef zeroext %df_end.0.ph, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body49, label %do.end47

do.end47:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call42) #15
  br label %exit

do.body49:                                        ; preds = %do.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili210x_firmware_update_store, %if.then61)) #12
          to label %do.end64 [label %if.then61], !srcloc !172

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili210x_firmware_update_store.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.40) #12
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %do.body49
  %call65 = call fastcc i32 @ili251x_firmware_write_to_ic(ptr noundef %dev, ptr noundef nonnull %call1.i.i.i.i, i16 noundef zeroext 8192, i16 noundef zeroext %ac_end.3.ph, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body72, label %do.end70

do.end70:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call65) #15
  br label %exit

do.body72:                                        ; preds = %do.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili210x_firmware_update_store, %if.then84)) #12
          to label %do.end87 [label %if.then84], !srcloc !172

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili210x_firmware_update_store.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.44) #12
  br label %do.end87

do.end87:                                         ; preds = %if.then84, %do.body72
  %call91 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.end87.do.body101_crit_edge, label %for.cond88

do.end87.do.body101_crit_edge:                    ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body101

for.cond88:                                       ; preds = %do.end87
  %call91.1 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.1)
  %tobool92.not.1 = icmp eq i32 %call91.1, 0
  br i1 %tobool92.not.1, label %for.cond88.do.body101_crit_edge, label %for.cond88.1

for.cond88.do.body101_crit_edge:                  ; preds = %for.cond88
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body101

for.cond88.1:                                     ; preds = %for.cond88
  %call91.2 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.2)
  %tobool92.not.2 = icmp eq i32 %call91.2, 0
  br i1 %tobool92.not.2, label %for.cond88.1.do.body101_crit_edge, label %for.cond88.2

for.cond88.1.do.body101_crit_edge:                ; preds = %for.cond88.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body101

for.cond88.2:                                     ; preds = %for.cond88.1
  %call91.3 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.3)
  %tobool92.not.3 = icmp eq i32 %call91.3, 0
  br i1 %tobool92.not.3, label %for.cond88.2.do.body101_crit_edge, label %for.cond88.3

for.cond88.2.do.body101_crit_edge:                ; preds = %for.cond88.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body101

for.cond88.3:                                     ; preds = %for.cond88.2
  %call91.4 = call fastcc i32 @ili251x_switch_ic_mode(ptr noundef %add.ptr, i8 noundef zeroext -63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.4)
  %tobool92.not.4 = icmp eq i32 %call91.4, 0
  br i1 %tobool92.not.4, label %for.cond88.3.do.body101_crit_edge, label %for.cond88.3.exit_crit_edge

for.cond88.3.exit_crit_edge:                      ; preds = %for.cond88.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

for.cond88.3.do.body101_crit_edge:                ; preds = %for.cond88.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body101

do.body101:                                       ; preds = %for.cond88.3.do.body101_crit_edge, %for.cond88.2.do.body101_crit_edge, %for.cond88.1.do.body101_crit_edge, %for.cond88.do.body101_crit_edge, %do.end87.do.body101_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili210x_firmware_update_store, %if.then113)) #12
          to label %do.end116 [label %if.then113], !srcloc !172

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili210x_firmware_update_store.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.45) #12
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %do.body101
  %call117 = call fastcc i32 @ili251x_firmware_update_cached_state(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  %spec.select = select i1 %tobool118.not, i32 %count, i32 %call117
  br label %exit

exit:                                             ; preds = %do.end116, %for.cond88.3.exit_crit_edge, %do.end70, %do.end47, %for.cond.3.exit_crit_edge, %ili251x_firmware_reset.exit.thread238, %ili251x_firmware_reset.exit.thread
  %error.4 = phi i32 [ %call42, %do.end47 ], [ %call65, %do.end70 ], [ %spec.select, %do.end116 ], [ -22, %ili251x_firmware_reset.exit.thread ], [ %retval.0.i.i.ph, %ili251x_firmware_reset.exit.thread238 ], [ %call19.4, %for.cond.3.exit_crit_edge ], [ %call91.4, %for.cond88.3.exit_crit_edge ]
  %43 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i, align 4
  %reset_gpio.i216 = getelementptr inbounds %struct.ili210x, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %reset_gpio.i216 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset_gpio.i216, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %46, i32 noundef 1) #12
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #12
  %47 = ptrtoint ptr %reset_gpio.i216 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reset_gpio.i216, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %48, i32 noundef 0) #12
  call void @msleep(i32 noundef 300) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili210x_firmware_update_store, %if.then133)) #12
          to label %do.end136 [label %if.then133], !srcloc !172

if.then133:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili210x_firmware_update_store.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %error.4) #12
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %exit
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %50) #12
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %ili251x_firmware_to_buffer.exit, %do.end
  %retval.0 = phi i32 [ %retval.0.i200.ph, %do.end ], [ %error.4, %do.end136 ], [ %retval.0.i210, %ili251x_firmware_to_buffer.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ili251x_switch_ic_mode(ptr noundef %client, i8 noundef zeroext %cmd_mode) unnamed_addr #2 align 64 {
entry:
  %cmd_mode.addr = alloca i8, align 1
  %cmd_wren = alloca [3 x i8], align 1
  %md = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd_mode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %cmd_mode, ptr %cmd_mode.addr, align 1
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd_wren) #12
  %3 = call ptr @memcpy(ptr %cmd_wren, ptr @__const.ili251x_switch_ic_mode.cmd_wren, i32 3)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %md) #12
  %4 = ptrtoint ptr %md to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %md, align 1, !annotation !174
  %5 = getelementptr inbounds [2 x i8], ptr %md, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !174
  %chip = getelementptr inbounds %struct.ili210x, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call1 = call i32 %10(ptr noundef %client, i8 noundef zeroext -64, ptr noundef nonnull %md, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %cmd_mode.addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd_mode.addr, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %if.end.if.end15_crit_edge [
    i8 -63, label %land.lhs.true
    i8 -62, label %land.lhs.true9
  ]

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %14 = ptrtoint ptr %md to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %md, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %15)
  %cmp4 = icmp eq i8 %15, 90
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true9:                                   ; preds = %if.end
  %16 = ptrtoint ptr %md to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %md, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %17)
  %cmp12 = icmp eq i8 %17, 85
  br i1 %cmp12, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end15_crit_edge

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %cmd_wren, i32 noundef 3, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp18.not = icmp eq i32 %call.i, 3
  br i1 %cmp18.not, label %while.body.preheader, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.preheader:                             ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #12
  %call.i73 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %cmd_mode.addr, i32 noundef 1, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i73)
  %cmp24.not = icmp eq i32 %call.i73, 1
  br i1 %cmp24.not, label %while.body.preheader.while.body32_crit_edge, label %while.body.preheader.cleanup_crit_edge

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.preheader.while.body32_crit_edge:      ; preds = %while.body.preheader
  br label %while.body32

while.body32:                                     ; preds = %while.body32.while.body32_crit_edge, %while.body.preheader.while.body32_crit_edge
  %__ms28.077 = phi i32 [ %dec30, %while.body32.while.body32_crit_edge ], [ 200, %while.body.preheader.while.body32_crit_edge ]
  %dec30 = add nsw i32 %__ms28.077, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #12
  %tobool31.not = icmp eq i32 %dec30, 0
  br i1 %tobool31.not, label %while.end33, label %while.body32.while.body32_crit_edge

while.body32.while.body32_crit_edge:              ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body32

while.end33:                                      ; preds = %while.body32
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call37 = call i32 %42(ptr noundef %client, i8 noundef zeroext -64, ptr noundef nonnull %md, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %while.end33.cleanup_crit_edge

while.end33.cleanup_crit_edge:                    ; preds = %while.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %while.end33
  %43 = ptrtoint ptr %cmd_mode.addr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cmd_mode.addr, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %44, label %if.end40.if.end59_crit_edge [
    i8 -63, label %land.lhs.true44
    i8 -62, label %land.lhs.true53
  ]

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

land.lhs.true44:                                  ; preds = %if.end40
  %46 = ptrtoint ptr %md to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %md, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %47)
  %cmp47 = icmp eq i8 %47, 90
  br i1 %cmp47, label %land.lhs.true44.cleanup_crit_edge, label %land.lhs.true44.if.end59_crit_edge

land.lhs.true44.if.end59_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.end40
  %48 = ptrtoint ptr %md to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %md, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %49)
  %cmp56 = icmp eq i8 %49, 85
  br i1 %cmp56, label %land.lhs.true53.cleanup_crit_edge, label %land.lhs.true53.if.end59_crit_edge

land.lhs.true53.if.end59_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59:                                         ; preds = %land.lhs.true53.if.end59_crit_edge, %land.lhs.true44.if.end59_crit_edge, %if.end40.if.end59_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %land.lhs.true53.cleanup_crit_edge, %land.lhs.true44.cleanup_crit_edge, %while.end33.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end59 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true9.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %while.body.preheader.cleanup_crit_edge ], [ %call37, %while.end33.cleanup_crit_edge ], [ 0, %land.lhs.true53.cleanup_crit_edge ], [ 0, %land.lhs.true44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %md) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd_wren) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ili251x_firmware_write_to_ic(ptr noundef %dev, ptr noundef %fwbuf, i16 noundef zeroext %start, i16 noundef zeroext %end, i8 noundef zeroext %dataflash) unnamed_addr #2 align 64 {
entry:
  %data.i145 = alloca i8, align 1
  %data.i130 = alloca i8, align 1
  %data.i = alloca i8, align 1
  %cmd_crc = alloca i8, align 1
  %crcrb = alloca [4 x i8], align 4
  %fw_data = alloca [33 x i8], align 1
  %cmd_wr = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_crc) #12
  %2 = ptrtoint ptr %cmd_crc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -57, ptr %cmd_crc, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crcrb) #12
  %3 = ptrtoint ptr %crcrb to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %crcrb, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %fw_data) #12
  %4 = call ptr @memset(ptr %fw_data, i32 255, i32 33)
  %conv = zext i16 %start to i32
  %add.ptr1 = getelementptr i8, ptr %fwbuf, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dataflash)
  %tobool.not = icmp eq i8 %dataflash, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr1, i32 %cond
  %conv4 = zext i16 %end to i32
  %sub = sub nuw nsw i32 -2, %conv
  %sub6 = add nsw i32 %sub, %conv4
  %call7 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 0, ptr noundef %add.ptr3, i32 noundef %sub6) #12
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd_wr) #12
  %5 = getelementptr inbounds [10 x i8], ptr %cmd_wr, i32 0, i32 1
  %6 = getelementptr inbounds [10 x i8], ptr %cmd_wr, i32 0, i32 2
  %7 = getelementptr inbounds [10 x i8], ptr %cmd_wr, i32 0, i32 3
  %8 = getelementptr inbounds [10 x i8], ptr %cmd_wr, i32 0, i32 4
  %9 = getelementptr inbounds [10 x i8], ptr %cmd_wr, i32 0, i32 5
  %10 = getelementptr inbounds [10 x i8], ptr %cmd_wr, i32 0, i32 6
  %11 = getelementptr inbounds [10 x i8], ptr %cmd_wr, i32 0, i32 7
  %12 = getelementptr inbounds [10 x i8], ptr %cmd_wr, i32 0, i32 8
  %13 = getelementptr inbounds [10 x i8], ptr %cmd_wr, i32 0, i32 9
  %14 = ptrtoint ptr %cmd_wr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -60, ptr %cmd_wr, align 1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 90, ptr %5, align 1
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -91, ptr %6, align 1
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %dataflash, ptr %7, align 1
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %8, align 1
  %19 = lshr i16 %end, 8
  %conv17 = trunc i16 %19 to i8
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv17, ptr %9, align 1
  %conv21 = trunc i16 %end to i8
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv21, ptr %10, align 1
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %11, align 1
  %23 = lshr i16 %call7, 8
  %conv31 = trunc i16 %23 to i8
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv31, ptr %12, align 1
  %conv35 = trunc i16 %call7 to i8
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv35, ptr %13, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %cmd_wr, i32 noundef 10, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #12
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %data.i, align 1, !annotation !174
  %chip.i = getelementptr inbounds %struct.ili210x, ptr %27, i32 0, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  %29 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call1.i = call i32 %32(ptr noundef %add.ptr, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.ili251x_firmware_busy.exit.thread_crit_edge

do.body.i.ili251x_firmware_busy.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_busy.exit.thread

if.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %i.0.i)
  %cmp.i = icmp eq i32 %i.0.i, 100000
  br i1 %cmp.i, label %if.end.i.ili251x_firmware_busy.exit.thread_crit_edge, label %do.cond.i

if.end.i.ili251x_firmware_busy.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_busy.exit.thread

do.cond.i:                                        ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data.i, align 1
  %cmp4.not.i = icmp eq i8 %34, 80
  br i1 %cmp4.not.i, label %ili251x_firmware_busy.exit, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

ili251x_firmware_busy.exit.thread:                ; preds = %if.end.i.ili251x_firmware_busy.exit.thread_crit_edge, %do.body.i.ili251x_firmware_busy.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -110, %if.end.i.ili251x_firmware_busy.exit.thread_crit_edge ], [ %call1.i, %do.body.i.ili251x_firmware_busy.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #12
  br label %cleanup

ili251x_firmware_busy.exit:                       ; preds = %do.cond.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %start, i16 %end)
  %cmp44166 = icmp ult i16 %start, %end
  br i1 %cmp44166, label %for.body.lr.ph, label %ili251x_firmware_busy.exit.for.end_crit_edge

ili251x_firmware_busy.exit.for.end_crit_edge:     ; preds = %ili251x_firmware_busy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %ili251x_firmware_busy.exit
  %arrayidx46 = getelementptr inbounds [33 x i8], ptr %fw_data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fw_addr.0167 = phi i16 [ %start, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %conv42 = zext i16 %fw_addr.0167 to i32
  %35 = ptrtoint ptr %fw_data to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -61, ptr %fw_data, align 1
  %add.ptr48 = getelementptr i8, ptr %fwbuf, i32 %conv42
  %36 = call ptr @memcpy(ptr %arrayidx46, ptr %add.ptr48, i32 32)
  %call.i129 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %fw_data, i32 noundef 33, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %call.i129)
  %cmp51.not = icmp eq i32 %call.i129, 33
  br i1 %cmp51.not, label %if.end54, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end54:                                         ; preds = %for.body
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i130) #12
  %39 = ptrtoint ptr %data.i130 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %data.i130, align 1, !annotation !174
  %chip.i132 = getelementptr inbounds %struct.ili210x, ptr %38, i32 0, i32 4
  br label %do.body.i136

do.body.i136:                                     ; preds = %do.cond.i141.do.body.i136_crit_edge, %if.end54
  %i.0.i133 = phi i32 [ 0, %if.end54 ], [ %inc.i139, %do.cond.i141.do.body.i136_crit_edge ]
  %40 = ptrtoint ptr %chip.i132 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip.i132, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call1.i134 = call i32 %43(ptr noundef %add.ptr, i8 noundef zeroext -128, ptr noundef nonnull %data.i130, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %tobool.not.i135 = icmp eq i32 %call1.i134, 0
  br i1 %tobool.not.i135, label %if.end.i138, label %do.body.i136.ili251x_firmware_busy.exit143.thread_crit_edge

do.body.i136.ili251x_firmware_busy.exit143.thread_crit_edge: ; preds = %do.body.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_busy.exit143.thread

if.end.i138:                                      ; preds = %do.body.i136
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %i.0.i133)
  %cmp.i137 = icmp eq i32 %i.0.i133, 100000
  br i1 %cmp.i137, label %if.end.i138.ili251x_firmware_busy.exit143.thread_crit_edge, label %do.cond.i141

if.end.i138.ili251x_firmware_busy.exit143.thread_crit_edge: ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_busy.exit143.thread

do.cond.i141:                                     ; preds = %if.end.i138
  %inc.i139 = add nuw nsw i32 %i.0.i133, 1
  %44 = ptrtoint ptr %data.i130 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data.i130, align 1
  %cmp4.not.i140 = icmp eq i8 %45, 80
  br i1 %cmp4.not.i140, label %for.inc, label %do.cond.i141.do.body.i136_crit_edge

do.cond.i141.do.body.i136_crit_edge:              ; preds = %do.cond.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i136

ili251x_firmware_busy.exit143.thread:             ; preds = %if.end.i138.ili251x_firmware_busy.exit143.thread_crit_edge, %do.body.i136.ili251x_firmware_busy.exit143.thread_crit_edge
  %retval.0.i142.ph = phi i32 [ -110, %if.end.i138.ili251x_firmware_busy.exit143.thread_crit_edge ], [ %call1.i134, %do.body.i136.ili251x_firmware_busy.exit143.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i130) #12
  br label %cleanup

for.inc:                                          ; preds = %do.cond.i141
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i130) #12
  %add = add i16 %fw_addr.0167, 32
  %cmp44 = icmp ult i16 %add, %end
  br i1 %cmp44, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ili251x_firmware_busy.exit.for.end_crit_edge
  %call.i144 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %cmd_crc, i32 noundef 1, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i144)
  %cmp62.not = icmp eq i32 %call.i144, 1
  br i1 %cmp62.not, label %if.end65, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end65:                                         ; preds = %for.end
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i145) #12
  %48 = ptrtoint ptr %data.i145 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %data.i145, align 1, !annotation !174
  %chip.i147 = getelementptr inbounds %struct.ili210x, ptr %47, i32 0, i32 4
  br label %do.body.i151

do.body.i151:                                     ; preds = %do.cond.i156.do.body.i151_crit_edge, %if.end65
  %i.0.i148 = phi i32 [ 0, %if.end65 ], [ %inc.i154, %do.cond.i156.do.body.i151_crit_edge ]
  %49 = ptrtoint ptr %chip.i147 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip.i147, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call1.i149 = call i32 %52(ptr noundef %add.ptr, i8 noundef zeroext -128, ptr noundef nonnull %data.i145, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i149)
  %tobool.not.i150 = icmp eq i32 %call1.i149, 0
  br i1 %tobool.not.i150, label %if.end.i153, label %do.body.i151.ili251x_firmware_busy.exit158.thread_crit_edge

do.body.i151.ili251x_firmware_busy.exit158.thread_crit_edge: ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_busy.exit158.thread

if.end.i153:                                      ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %i.0.i148)
  %cmp.i152 = icmp eq i32 %i.0.i148, 100000
  br i1 %cmp.i152, label %if.end.i153.ili251x_firmware_busy.exit158.thread_crit_edge, label %do.cond.i156

if.end.i153.ili251x_firmware_busy.exit158.thread_crit_edge: ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_firmware_busy.exit158.thread

do.cond.i156:                                     ; preds = %if.end.i153
  %inc.i154 = add nuw nsw i32 %i.0.i148, 1
  %53 = ptrtoint ptr %data.i145 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %data.i145, align 1
  %cmp4.not.i155 = icmp eq i8 %54, 80
  br i1 %cmp4.not.i155, label %if.end69, label %do.cond.i156.do.body.i151_crit_edge

do.cond.i156.do.body.i151_crit_edge:              ; preds = %do.cond.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i151

ili251x_firmware_busy.exit158.thread:             ; preds = %if.end.i153.ili251x_firmware_busy.exit158.thread_crit_edge, %do.body.i151.ili251x_firmware_busy.exit158.thread_crit_edge
  %retval.0.i157.ph = phi i32 [ -110, %if.end.i153.ili251x_firmware_busy.exit158.thread_crit_edge ], [ %call1.i149, %do.body.i151.ili251x_firmware_busy.exit158.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i145) #12
  br label %cleanup

if.end69:                                         ; preds = %do.cond.i156
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i145) #12
  %chip = getelementptr inbounds %struct.ili210x, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call70 = call i32 %58(ptr noundef %add.ptr, i8 noundef zeroext -57, ptr noundef nonnull %crcrb, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end73:                                         ; preds = %if.end69
  %59 = ptrtoint ptr %crcrb to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %crcrb, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %conv35)
  %cmp78.not = icmp eq i8 %60, %conv35
  br i1 %cmp78.not, label %lor.lhs.false, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx80 = getelementptr inbounds [4 x i8], ptr %crcrb, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx80, align 1
  %63 = zext i8 %62 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %63)
  %cmp85.not = icmp eq i16 %23, %63
  %spec.select = select i1 %cmp85.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end73.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %ili251x_firmware_busy.exit158.thread, %for.end.cleanup_crit_edge, %ili251x_firmware_busy.exit143.thread, %for.body.cleanup_crit_edge, %ili251x_firmware_busy.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ %call70, %if.end69.cleanup_crit_edge ], [ -22, %if.end73.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ %retval.0.i.ph, %ili251x_firmware_busy.exit.thread ], [ %retval.0.i142.ph, %ili251x_firmware_busy.exit143.thread ], [ %retval.0.i157.ph, %ili251x_firmware_busy.exit158.thread ], [ %call.i129, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd_wr) #12
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %fw_data) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crcrb) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_crc) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili251x_firmware_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %version_firmware = getelementptr inbounds %struct.ili210x, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %version_firmware to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version_firmware, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %arrayidx3 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %arrayidx5 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %arrayidx7 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %arrayidx9 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  %arrayidx11 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 5, i32 6
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %15 to i32
  %arrayidx13 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 5, i32 7
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %17 to i32
  %call15 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14) #12
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili251x_kernel_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %version_kernel = getelementptr inbounds %struct.ili210x, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %version_kernel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version_kernel, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %arrayidx3 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %arrayidx5 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %arrayidx7 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 6, i32 4
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.53, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8) #12
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili251x_protocol_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %version_proto = getelementptr inbounds %struct.ili210x, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %version_proto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version_proto, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %conv, i32 noundef %conv2) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili251x_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ic_mode = getelementptr inbounds %struct.ili210x, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ic_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ic_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %3)
  %switch.selectcmp = icmp eq i8 %3, 85
  %switch.select = select i1 %switch.selectcmp, ptr @.str.58, ptr @.str.59
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %3)
  %switch.selectcmp17 = icmp eq i8 %3, 90
  %switch.select18 = select i1 %switch.selectcmp17, ptr @.str.57, ptr %switch.select
  %conv10 = zext i8 %3 to i32
  %arrayidx11 = getelementptr %struct.ili210x, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %5 to i32
  %call13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.60, i32 noundef %conv10, i32 noundef %conv12, ptr noundef nonnull %switch.select18) #12
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili210x_read_reg(ptr noundef %client, i8 noundef zeroext %reg, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #12
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %len2, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg.addr, ptr %buf3, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %10 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %conv = trunc i32 %len to i16
  %11 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %12 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf8, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp10, i32 %call, i32 -5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %spec.select) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili210x_read_touch_data(ptr noundef %client, ptr noundef %data) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 16, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #12
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1.i, align 2
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags.i, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %1, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %8 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg.addr.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %9 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %10 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %11 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 64, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %12 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.ili210x_read_reg.exit_crit_edge, label %if.then.i

entry.ili210x_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili210x_read_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp10.i, i32 %call.i, i32 -5
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %spec.select.i) #15
  br label %ili210x_read_reg.exit

ili210x_read_reg.exit:                            ; preds = %if.then.i, %entry.ili210x_read_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ 0, %entry.ili210x_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili210x_touchdata_to_coords(ptr nocapture noundef readonly %touchdata, i32 noundef %finger, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y, ptr nocapture noundef readnone %z) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %touchdata to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %touchdata, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %finger
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %touchdata, i32 1
  %mul = shl i32 %finger, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %add.ptr1, align 1
  %conv3 = zext i16 %3 to i32
  %4 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3, ptr %x, align 4
  %add.ptr7 = getelementptr i8, ptr %add.ptr1, i32 2
  %5 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr7, align 1
  %conv9 = zext i16 %6 to i32
  %7 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv9, ptr %y, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %8 = xor i1 %tobool.not, true
  ret i1 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili210x_check_continue_polling(ptr nocapture noundef readonly %data, i1 noundef zeroext %touch) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = and i8 %1, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool = icmp ne i8 %2, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili211x_read_touch_data(ptr noundef %client, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %data, i32 noundef 43, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 43
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %if.then

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp1, i32 %call.i, i32 -5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.63, i32 noundef %spec.select) #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %sum.035 = phi i32 [ %and, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.036
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %1 to i32
  %add = add nuw nsw i32 %sum.035, %conv3
  %and = and i32 %add, 255
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %sub = sub nsw i32 0, %add
  %and6 = and i32 %sub, 255
  %arrayidx7 = getelementptr i8, ptr %data, i32 42
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %conv8)
  %cmp9.not = icmp eq i32 %and6, %conv8
  br i1 %cmp9.not, label %for.end.cleanup_crit_edge, label %do.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.65, i32 noundef %and, i32 noundef %conv8) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ -5, %do.end14 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili211x_touchdata_to_coords(ptr nocapture noundef readonly %touchdata, i32 noundef %finger, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y, ptr nocapture noundef readnone %z) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %touchdata, i32 1
  %mul = shl i32 %finger, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add = or i32 %mul, 1
  %arrayidx = getelementptr i8, ptr %touchdata, i32 %add
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, -16
  %and = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %and, 4
  %add7 = or i32 %mul, 2
  %arrayidx8 = getelementptr i8, ptr %touchdata, i32 %add7
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %6 to i32
  %or = or i32 %shl, %conv9
  %7 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %x, align 4
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 15
  %and15 = zext i8 %9 to i32
  %shl16 = shl nuw nsw i32 %and15, 8
  %add19 = or i32 %mul, 3
  %arrayidx20 = getelementptr i8, ptr %touchdata, i32 %add19
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %or22 = or i32 %shl16, %conv21
  %12 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or22, ptr %y, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %13 = xor i1 %cmp, true
  ret i1 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili211x_decline_polling(ptr nocapture noundef readnone %data, i1 noundef zeroext %touch) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili212x_touchdata_to_coords(ptr nocapture noundef readonly %touchdata, i32 noundef %finger, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y, ptr nocapture noundef readnone %z) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %touchdata, i32 3
  %mul = mul i32 %finger, 5
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %add.ptr1, align 1
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and4 = and i32 %conv, 16383
  %2 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and4, ptr %x, align 4
  %add.ptr8 = getelementptr i8, ptr %add.ptr1, i32 2
  %3 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %add.ptr8, align 1
  %conv10 = zext i16 %4 to i32
  %5 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv10, ptr %y, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %6 = xor i1 %tobool.not, true
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili212x_check_continue_polling(ptr nocapture noundef readnone %data, i1 noundef returned zeroext %touch) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 %touch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili251x_read_reg(ptr noundef %client, i8 noundef zeroext %reg, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr.i, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %reg.addr.i, i32 noundef 1, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #12
  %call.i18.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %buf, i32 noundef %len, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i18.i, i32 %len)
  %cmp3.i = icmp eq i32 %call.i18.i, %len
  br i1 %cmp3.i, label %if.then.i.ili251x_read_reg_common.exit_crit_edge, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i.ili251x_read_reg_common.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_read_reg_common.exit

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %ret.0.i = phi i32 [ %call.i18.i, %if.then.i.if.end6.i_crit_edge ], [ %call.i.i, %entry.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp7.i = icmp slt i32 %ret.0.i, 0
  %spec.select.i = select i1 %cmp7.i, i32 %ret.0.i, i32 -5
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.67, i32 noundef %spec.select.i) #15
  br label %ili251x_read_reg_common.exit

ili251x_read_reg_common.exit:                     ; preds = %if.end6.i, %if.then.i.ili251x_read_reg_common.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end6.i ], [ 0, %if.then.i.ili251x_read_reg_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili251x_read_touch_data(ptr noundef %client, ptr noundef %data) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 16, ptr %reg.addr.i, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %reg.addr.i, i32 noundef 1, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.ili251x_read_reg_common.exit_crit_edge

entry.ili251x_read_reg_common.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_read_reg_common.exit

if.then.i:                                        ; preds = %entry
  %call.i18.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %data, i32 noundef 31, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call.i18.i)
  %cmp3.i = icmp eq i32 %call.i18.i, 31
  br i1 %cmp3.i, label %ili251x_read_reg_common.exit.thread, label %if.then.i.ili251x_read_reg_common.exit_crit_edge

if.then.i.ili251x_read_reg_common.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ili251x_read_reg_common.exit

ili251x_read_reg_common.exit.thread:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %land.lhs.true

ili251x_read_reg_common.exit:                     ; preds = %if.then.i.ili251x_read_reg_common.exit_crit_edge, %entry.ili251x_read_reg_common.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i18.i, %if.then.i.ili251x_read_reg_common.exit_crit_edge ], [ %call.i.i, %entry.ili251x_read_reg_common.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp7.i = icmp slt i32 %ret.0.i, 0
  %spec.select.i = select i1 %cmp7.i, i32 %ret.0.i, i32 -5
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.67, i32 noundef %spec.select.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %ili251x_read_reg_common.exit.land.lhs.true_crit_edge, label %ili251x_read_reg_common.exit.if.end9_crit_edge

ili251x_read_reg_common.exit.if.end9_crit_edge:   ; preds = %ili251x_read_reg_common.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

ili251x_read_reg_common.exit.land.lhs.true_crit_edge: ; preds = %ili251x_read_reg_common.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %ili251x_read_reg_common.exit.land.lhs.true_crit_edge, %ili251x_read_reg_common.exit.thread
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %data, i32 31
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %add.ptr, i32 noundef 20, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp3 = icmp sgt i32 %call.i, -1
  br i1 %cmp3, label %land.lhs.true5, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true5:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call.i)
  %cmp6.not = icmp eq i32 %call.i, 20
  %spec.store.select = select i1 %cmp6.not, i32 20, i32 -5
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true5, %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %ili251x_read_reg_common.exit.if.end9_crit_edge
  %error.0 = phi i32 [ %ret.0.i, %ili251x_read_reg_common.exit.if.end9_crit_edge ], [ %spec.store.select, %land.lhs.true5 ], [ %call.i, %if.then.if.end9_crit_edge ], [ 0, %land.lhs.true.if.end9_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili251x_touchdata_to_coords(ptr nocapture noundef readonly %touchdata, i32 noundef %finger, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y, ptr nocapture noundef writeonly %z) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %touchdata, i32 1
  %mul = mul i32 %finger, 5
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %add.ptr1, align 1
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and4 = and i32 %conv, 16383
  %2 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and4, ptr %x, align 4
  %add.ptr8 = getelementptr i8, ptr %add.ptr1, i32 2
  %3 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %add.ptr8, align 1
  %conv10 = zext i16 %4 to i32
  %5 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv10, ptr %y, align 4
  %add12 = add i32 %mul, 5
  %arrayidx = getelementptr i8, ptr %touchdata, i32 %add12
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %7 to i32
  %8 = ptrtoint ptr %z to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv13, ptr %z, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %9 = xor i1 %tobool.not, true
  ret i1 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili251x_check_continue_polling(ptr nocapture noundef readnone %data, i1 noundef returned zeroext %touch) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 %touch
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !63, !64, !66, !68, !69, !71, !73, !74, !75, !76, !78, !79, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !107, !108, !110, !111, !113, !115, !116, !118, !120, !121, !123, !125, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !145, !147, !148, !149, !151, !152, !153, !155, !157, !159, !160, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__initcall__kmod_ili210x__295_1053_ili210x_ts_driver_init6, !1, !"__initcall__kmod_ili210x__295_1053_ili210x_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1053, i32 1}
!2 = !{ptr @__exitcall_ili210x_ts_driver_exit, !1, !"__exitcall_ili210x_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1055, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1056, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1057, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1046, i32 11}
!12 = !{ptr @ili210x_ts_driver, !13, !"ili210x_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1044, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/ili210x.c", i32 929, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ili210x_i2c_probe.__UNIQUE_ID_ddebug294, !15, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/ili210x.c", i32 935, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ili210x_i2c_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @ili210x_i2c_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/ili210x.c", i32 940, i32 3}
!28 = !{ptr @ili210x_i2c_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ili210x_i2c_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/ili210x.c", i32 944, i32 44}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/ili210x.c", i32 974, i32 16}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/ili210x.c", i32 985, i32 3}
!36 = !{ptr @ili210x_i2c_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ili210x_i2c_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/ili210x.c", i32 994, i32 3}
!40 = !{ptr @ili210x_i2c_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ili210x_i2c_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1001, i32 3}
!44 = !{ptr @ili210x_i2c_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ili210x_i2c_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1012, i32 3}
!48 = !{ptr @ili210x_i2c_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ili210x_i2c_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1019, i32 3}
!52 = !{ptr @ili210x_i2c_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ili210x_i2c_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/ili210x.c", i32 346, i32 4}
!56 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ili210x_irq._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ili210x_irq._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @ili210x_attr_group, !60, !"ili210x_attr_group", i1 false, i1 false}
!60 = !{!"../drivers/input/touchscreen/ili210x.c", i32 898, i32 37}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/ili210x.c", i32 572, i32 8}
!63 = !{ptr @dev_attr_calibrate, !62, !"dev_attr_calibrate", i1 false, i1 false}
!64 = !{ptr @ili210x_attributes, !65, !"ili210x_attributes", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/ili210x.c", i32 870, i32 26}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/ili210x.c", i32 868, i32 8}
!68 = !{ptr @dev_attr_firmware_update, !67, !"dev_attr_firmware_update", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/ili210x.c", i32 776, i32 23}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/ili210x.c", i32 785, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ili210x_firmware_update_store._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @ili210x_firmware_update_store._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/ili210x.c", i32 804, i32 2}
!78 = !{ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug288, !77, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/touchscreen/ili210x.c", i32 822, i32 2}
!81 = !{ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug289, !80, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/ili210x.c", i32 828, i32 3}
!84 = !{ptr @ili210x_firmware_update_store._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ili210x_firmware_update_store._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/ili210x.c", i32 832, i32 2}
!88 = !{ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug290, !87, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/ili210x.c", i32 836, i32 3}
!91 = !{ptr @ili210x_firmware_update_store._entry.41, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ili210x_firmware_update_store._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/touchscreen/ili210x.c", i32 840, i32 2}
!95 = !{ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug291, !94, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/ili210x.c", i32 852, i32 2}
!98 = !{ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug292, !97, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/ili210x.c", i32 862, i32 2}
!101 = !{ptr @ili210x_firmware_update_store.__UNIQUE_ID_ddebug293, !100, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @request_ihex_firmware._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @request_ihex_firmware._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/ili210x.c", i32 502, i32 8}
!110 = !{ptr @dev_attr_firmware_version, !109, !"dev_attr_firmware_version", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/touchscreen/ili210x.c", i32 498, i32 25}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/ili210x.c", i32 515, i32 8}
!115 = !{ptr @dev_attr_kernel_version, !114, !"dev_attr_kernel_version", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/touchscreen/ili210x.c", i32 512, i32 25}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/touchscreen/ili210x.c", i32 527, i32 8}
!120 = !{ptr @dev_attr_protocol_version, !119, !"dev_attr_protocol_version", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/ili210x.c", i32 525, i32 25}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/ili210x.c", i32 546, i32 8}
!125 = !{ptr @dev_attr_mode, !124, !"dev_attr_mode", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/touchscreen/ili210x.c", i32 535, i32 15}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/touchscreen/ili210x.c", i32 540, i32 10}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/touchscreen/ili210x.c", i32 542, i32 10}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/touchscreen/ili210x.c", i32 544, i32 25}
!134 = !{ptr @ili210x_dt_ids, !135, !"ili210x_dt_ids", i1 false, i1 false}
!135 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1035, i32 34}
!136 = !{ptr @ili210x_chip, !137, !"ili210x_chip", i1 false, i1 false}
!137 = !{!"../drivers/input/touchscreen/ili210x.c", i32 126, i32 34}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/ili210x.c", i32 94, i32 3}
!140 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ili210x_read_reg._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ili210x_read_reg._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @ili211x_chip, !144, !"ili211x_chip", i1 false, i1 false}
!144 = !{!"../drivers/input/touchscreen/ili210x.c", i32 187, i32 34}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/touchscreen/ili210x.c", i32 145, i32 3}
!147 = !{ptr @ili211x_read_touch_data._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ili211x_read_touch_data._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/touchscreen/ili210x.c", i32 154, i32 3}
!151 = !{ptr @ili211x_read_touch_data._entry.64, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @ili211x_read_touch_data._entry_ptr.66, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @ili212x_chip, !154, !"ili212x_chip", i1 false, i1 false}
!154 = !{!"../drivers/input/touchscreen/ili210x.c", i32 218, i32 34}
!155 = !{ptr @ili251x_chip, !156, !"ili251x_chip", i1 false, i1 false}
!156 = !{!"../drivers/input/touchscreen/ili210x.c", i32 294, i32 34}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/input/touchscreen/ili210x.c", i32 245, i32 2}
!159 = !{ptr @ili251x_read_reg_common._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @ili251x_read_reg_common._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @ili210x_i2c_id, !162, !"ili210x_i2c_id", i1 false, i1 false}
!162 = !{!"../drivers/input/touchscreen/ili210x.c", i32 1026, i32 35}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2148782574, i64 2148782579, i64 2148782592, i64 2148782636, i64 2148782670, i64 2148782691}
!173 = !{i8 0, i8 2}
!174 = !{!"auto-init"}
!175 = !{i64 522703, i64 522730, i64 522752, i64 522780}
!176 = !{i64 523111, i64 523138, i64 523171, i64 523192, i64 523219, i64 523245}
