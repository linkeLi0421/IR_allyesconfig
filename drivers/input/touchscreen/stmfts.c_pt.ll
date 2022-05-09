; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/stmfts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/stmfts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.stmfts_data = type { ptr, ptr, %struct.led_classdev, %struct.mutex, %struct.touchscreen_properties, [2 x %struct.regulator_bulk_data], ptr, i16, i8, i16, i8, i8, [256 x i8], %struct.completion, i8, i8, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_stmfts__290_817_stmfts_driver_init6 = internal global ptr @stmfts_driver_init, section ".initcall6.init", align 4
@stmfts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @stmfts_probe, ptr @stmfts_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @stmfts_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfts_pm_ops, ptr null, ptr null }, ptr @stmfts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stmfts_driver_exit = internal global ptr @stmfts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [50 x i8] c"stmfts.author=Andi Shyti <andi.shyti@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [55 x i8] c"stmfts.description=STMicroelectronics FTS Touch Screen\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [45 x i8] c"stmfts.file=drivers/input/touchscreen/stmfts\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"stmfts.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stmfts\00", [25 x i8] zeroinitializer }, align 32
@stmfts_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stmfts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stmfts_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stmfts_suspend, ptr @stmfts_resume, ptr @stmfts_suspend, ptr @stmfts_resume, ptr @stmfts_suspend, ptr @stmfts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfts_runtime_suspend, ptr @stmfts_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@stmfts_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"stmfts\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stmfts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sdata->mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"touch-key-connected\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stmfts_irq\00", [21 x i8] zeroinitializer }, align 32
@stmfts_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stmfts_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/stmfts.c\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"initializing ST-Microelectronics FTS...\0A\00", [55 x i8] zeroinitializer }, align 32
@stmfts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 724, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to use touchkey leds\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmfts_probe._entry_ptr = internal global ptr @stmfts_probe._entry, section ".printk_index", align 4
@stmfts_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @stmfts_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@stmfts_input_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 356, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable hover\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stmfts_input_open\00", [46 x i8] zeroinitializer }, align 32
@stmfts_input_open._entry_ptr = internal global ptr @stmfts_input_open._entry, section ".printk_index", align 4
@stmfts_input_open._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.7, i32 366, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable touchkey\0A\00", [37 x i8] zeroinitializer }, align 32
@stmfts_input_open._entry_ptr.17 = internal global ptr @stmfts_input_open._entry.15, section ".printk_index", align 4
@stmfts_input_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 380, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to disable touchscreen: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stmfts_input_close\00", [45 x i8] zeroinitializer }, align 32
@stmfts_input_close._entry_ptr = internal global ptr @stmfts_input_close._entry, section ".printk_index", align 4
@stmfts_input_close._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.7, i32 391, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable hover: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@stmfts_input_close._entry_ptr.22 = internal global ptr @stmfts_input_close._entry.20, section ".printk_index", align 4
@stmfts_input_close._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.7, i32 400, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to disable touchkey: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@stmfts_input_close._entry_ptr.25 = internal global ptr @stmfts_input_close._entry.23, section ".printk_index", align 4
@stmfts_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 310, ptr @.str.28, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read events: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stmfts_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@stmfts_irq_handler._entry_ptr = internal global ptr @stmfts_irq_handler._entry, section ".printk_index", align 4
@stmfts_parse_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 290, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error code: 0x%x%x%x%x%x%x\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stmfts_parse_events\00", [44 x i8] zeroinitializer }, align 32
@stmfts_parse_events._entry_ptr = internal global ptr @stmfts_parse_events._entry, section ".printk_index", align 4
@stmfts_parse_events._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.7, i32 295, ptr @.str.28, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown event %#02x\0A\00", [43 x i8] zeroinitializer }, align 32
@stmfts_parse_events._entry_ptr.33 = internal global ptr @stmfts_parse_events._entry.31, section ".printk_index", align 4
@stmfts_report_key_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 238, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown key event: %#02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stmfts_report_key_event\00", [40 x i8] zeroinitializer }, align 32
@stmfts_report_key_event._entry_ptr = internal global ptr @stmfts_report_key_event._entry, section ".printk_index", align 4
@stmfts_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 568, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to perform mutual auto tune: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stmfts_power_on\00", [16 x i8] zeroinitializer }, align 32
@stmfts_power_on._entry_ptr = internal global ptr @stmfts_power_on._entry, section ".printk_index", align 4
@stmfts_power_on._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.7, i32 574, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to perform self auto tune: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@stmfts_power_on._entry_ptr.40 = internal global ptr @stmfts_power_on._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ledvdd\00", [25 x i8] zeroinitializer }, align 32
@stmfts_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 124, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to disable ledvdd regulator: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stmfts_brightness_set\00", [42 x i8] zeroinitializer }, align 32
@stmfts_brightness_set._entry_ptr = internal global ptr @stmfts_brightness_set._entry, section ".printk_index", align 4
@stmfts_sysfs_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_chip_id, ptr @dev_attr_chip_version, ptr @dev_attr_fw_ver, ptr @dev_attr_config_id, ptr @dev_attr_config_version, ptr @dev_attr_status, ptr @dev_attr_hover_enable, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_chip_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stmfts_sysfs_chip_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chip_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stmfts_sysfs_chip_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stmfts_sysfs_fw_ver, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stmfts_sysfs_config_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stmfts_sysfs_config_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stmfts_sysfs_read_status, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hover_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stmfts_sysfs_hover_enable_read, ptr @stmfts_sysfs_hover_enable_write }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chip_id\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chip_version\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fw_ver\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"config_id\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config_version\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#02x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hover_enable\00", [19 x i8] zeroinitializer }, align 32
@stmfts_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.7, i32 753, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to suspend device: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stmfts_runtime_suspend\00", [41 x i8] zeroinitializer }, align 32
@stmfts_runtime_suspend._entry_ptr = internal global ptr @stmfts_runtime_suspend._entry, section ".printk_index", align 4
@stmfts_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.7, i32 765, ptr @.str.28, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to resume device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stmfts_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@stmfts_runtime_resume._entry_ptr = internal global ptr @stmfts_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 16, i64 17, i64 22, i64 219]
@__sancov_gen_cov_switch_values.58 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 14, i64 15]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"stmfts_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 805, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 807, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"stmfts_of_match\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 792, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"stmfts_pm_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 786, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"stmfts_id\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 799, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 643, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 646, i32 51 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 647, i32 52 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 674, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 697, i32 6 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 701, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 724, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"stmfts_attribute_group\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 519, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 87, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 355, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 365, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 379, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 390, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 399, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 309, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 287, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 294, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 237, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 567, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 573, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 606, i32 58 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 122, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"stmfts_sysfs_attrs\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 508, i32 26 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"dev_attr_chip_id\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [22 x i8] c"dev_attr_chip_version\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"dev_attr_fw_ver\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [19 x i8] c"dev_attr_config_id\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [24 x i8] c"dev_attr_config_version\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"dev_attr_status\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [22 x i8] c"dev_attr_hover_enable\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 499, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 411, i32 22 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 500, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 419, i32 22 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 501, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 502, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 503, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 504, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 458, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 505, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 753, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [38 x i8] c"../drivers/input/touchscreen/stmfts.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 765, i32 3 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_stmfts_driver_exit, ptr @__initcall__kmod_stmfts__290_817_stmfts_driver_init6, ptr @stmfts_brightness_set._entry, ptr @stmfts_brightness_set._entry_ptr, ptr @stmfts_driver_exit, ptr @stmfts_input_close._entry, ptr @stmfts_input_close._entry.20, ptr @stmfts_input_close._entry.23, ptr @stmfts_input_close._entry_ptr, ptr @stmfts_input_close._entry_ptr.22, ptr @stmfts_input_close._entry_ptr.25, ptr @stmfts_input_open._entry, ptr @stmfts_input_open._entry.15, ptr @stmfts_input_open._entry_ptr, ptr @stmfts_input_open._entry_ptr.17, ptr @stmfts_irq_handler._entry, ptr @stmfts_irq_handler._entry_ptr, ptr @stmfts_parse_events._entry, ptr @stmfts_parse_events._entry.31, ptr @stmfts_parse_events._entry_ptr, ptr @stmfts_parse_events._entry_ptr.33, ptr @stmfts_power_on._entry, ptr @stmfts_power_on._entry.38, ptr @stmfts_power_on._entry_ptr, ptr @stmfts_power_on._entry_ptr.40, ptr @stmfts_probe._entry, ptr @stmfts_probe._entry_ptr, ptr @stmfts_report_key_event._entry, ptr @stmfts_report_key_event._entry_ptr, ptr @stmfts_runtime_resume._entry, ptr @stmfts_runtime_resume._entry_ptr, ptr @stmfts_runtime_suspend._entry, ptr @stmfts_runtime_suspend._entry_ptr, ptr @stmfts_driver, ptr @.str, ptr @stmfts_of_match, ptr @stmfts_pm_ops, ptr @stmfts_id, ptr @stmfts_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @stmfts_attribute_group, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @stmfts_sysfs_attrs, ptr @dev_attr_chip_id, ptr @dev_attr_chip_version, ptr @dev_attr_fw_ver, ptr @dev_attr_config_id, ptr @dev_attr_config_version, ptr @dev_attr_status, ptr @dev_attr_hover_enable, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_input_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_input_open._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_input_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_input_close._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_input_close._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_parse_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_parse_events._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_report_key_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_power_on._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_sysfs_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hover_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfts_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stmfts_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stmfts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @stmfts_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 202899457
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899457, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899457
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 864, i32 noundef 3520) #8
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %mutex = getelementptr inbounds %struct.stmfts_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @stmfts_probe.__key) #8
  %cmd_done = getelementptr inbounds %struct.stmfts_data, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.stmfts_data, ptr %call.i, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #8
  %regulators = getelementptr inbounds %struct.stmfts_data, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.2, ptr %regulators, align 4
  %arrayidx7 = getelementptr %struct.stmfts_data, ptr %call.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.3, ptr %arrayidx7, align 4
  %call11 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %call16 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #8
  %input = getelementptr inbounds %struct.stmfts_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %input, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str, ptr %call16, align 8
  %13 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input, align 4
  %id23 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id23 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 24, ptr %id23, align 4
  %16 = load ptr, ptr %input, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 31
  %17 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @stmfts_input_open, ptr %open, align 8
  %18 = load ptr, ptr %input, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 32
  %19 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @stmfts_input_close, ptr %close, align 4
  %20 = load ptr, ptr %input, align 4
  tail call void @input_set_capability(ptr noundef %20, i32 noundef 3, i32 noundef 53) #8
  %21 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input, align 4
  tail call void @input_set_capability(ptr noundef %22, i32 noundef 3, i32 noundef 54) #8
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input, align 4
  %prop = getelementptr inbounds %struct.stmfts_data, ptr %call.i, i32 0, i32 4
  tail call void @touchscreen_parse_properties(ptr noundef %24, i1 noundef zeroext true, ptr noundef %prop) #8
  %25 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %26, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %27 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %28, i32 noundef 49, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %29 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %30, i32 noundef 52, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %32, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %33 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %34, i32 noundef 25, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %call.i162 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  %use_key = getelementptr inbounds %struct.stmfts_data, ptr %call.i, i32 0, i32 14
  %frombool = zext i1 %call.i162 to i8
  %35 = ptrtoint ptr %use_key to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool, ptr %use_key, align 4
  br i1 %call.i162, label %if.then38, label %if.end20.if.end41_crit_edge

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then38:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input, align 4
  tail call void @input_set_capability(ptr noundef %37, i32 noundef 1, i32 noundef 139) #8
  %38 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input, align 4
  tail call void @input_set_capability(ptr noundef %39, i32 noundef 1, i32 noundef 158) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end20.if.end41_crit_edge
  %40 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input, align 4
  %call43 = tail call i32 @input_mt_init_slots(ptr noundef %41, i32 noundef 10, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %42 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input, align 4
  %driver_data.i.i163 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 40, i32 8
  %44 = ptrtoint ptr %driver_data.i.i163 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i163, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  %call49 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %46, ptr noundef null, ptr noundef nonnull @stmfts_irq_handler, i32 noundef 532480, ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.body53, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body53:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stmfts_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stmfts_probe, %if.then59)) #8
          to label %do.end63 [label %if.then59], !srcloc !153

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stmfts_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body53
  %call64 = tail call fastcc i32 @stmfts_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %do.end63.cleanup_crit_edge

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %do.end63
  %call69 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  %47 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input, align 4
  %call74 = tail call i32 @input_register_device(ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %49 = ptrtoint ptr %use_key to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %use_key, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool79.not = icmp eq i8 %50, 0
  br i1 %tobool79.not, label %if.end77.if.end89_crit_edge, label %if.then80

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then80:                                        ; preds = %if.end77
  %call81 = tail call fastcc i32 @stmfts_enable_led(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then80.if.end89_crit_edge, label %do.end86

if.then80.if.end89_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

do.end86:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  %ledvdd = getelementptr inbounds %struct.stmfts_data, ptr %call.i, i32 0, i32 6
  %51 = ptrtoint ptr %ledvdd to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %ledvdd, align 4
  br label %if.end89

if.end89:                                         ; preds = %do.end86, %if.then80.if.end89_crit_edge, %if.end77.if.end89_crit_edge
  %call91 = tail call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @stmfts_attribute_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end94:                                         ; preds = %if.end89
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %is_prepared.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 1
  %52 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %53 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %bf.cast.not.i = icmp eq i16 %53, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i16 %bf.load.i, 16384
  %54 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end94.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %do.end63.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end4.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ %call43, %if.end41.cleanup_crit_edge ], [ %call49, %if.end46.cleanup_crit_edge ], [ %call64, %do.end63.cleanup_crit_edge ], [ %call69, %if.end67.cleanup_crit_edge ], [ %call74, %if.end72.cleanup_crit_edge ], [ %call91, %if.end89.cleanup_crit_edge ], [ 0, %if.end94.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @i2c_smbus_write_byte(ptr noundef %5, i8 noundef zeroext -109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %running = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %running, align 1
  %hover_enabled = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %hover_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hover_enabled, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.end6.if.end16_crit_edge, label %if.then8

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then8:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call10 = tail call i32 @i2c_smbus_write_byte(ptr noundef %10, i8 noundef zeroext -107) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end16_crit_edge, label %do.end

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14, ptr noundef nonnull @.str.13) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.then8.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %use_key = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %use_key to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_key, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call21 = tail call i32 @i2c_smbus_write_byte(ptr noundef %16, i8 noundef zeroext -101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.cleanup_crit_edge, label %do.end26

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28, ptr noundef nonnull @.str.16) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %do.end26 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfts_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext -110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.18, i32 noundef %call1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %running = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %running, align 1
  %hover_enabled = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %hover_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hover_enabled, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end16_crit_edge, label %if.then5

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call7 = tail call i32 @i2c_smbus_write_byte(ptr noundef %10, i8 noundef zeroext -108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end16_crit_edge, label %do.end12

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14, ptr noundef nonnull @.str.21, i32 noundef %call7) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end12, %if.then5.if.end16_crit_edge, %if.end.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %use_key = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %use_key to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_key, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %if.end16.if.end30_crit_edge, label %if.then19

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then19:                                        ; preds = %if.end16
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call21 = tail call i32 @i2c_smbus_write_byte(ptr noundef %16, i8 noundef zeroext -102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.if.end30_crit_edge, label %do.end26

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28, ptr noundef nonnull @.str.24, i32 noundef %call21) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %if.then19.if.end30_crit_edge, %if.end16.if.end30_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev32, i32 noundef 4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_irq_handler(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  %cmd.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.stmfts_data, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #8
  %0 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -122, ptr %cmd.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %1 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1.i, align 2
  %7 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %1, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cmd.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %11 = load i16, ptr %addr1.i, align 2
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 256, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %data.i = getelementptr inbounds %struct.stmfts_data, ptr %dev, i32 0, i32 12
  %15 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data.i, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp10.i = icmp eq i32 %call.i, 2
  %cond.i = select i1 %cmp10.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %cond.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.else, label %do.end, !prof !155

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %input5.i.i = getelementptr inbounds %struct.stmfts_data, ptr %dev, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else
  %i.066.i = phi i32 [ 0, %if.else ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.066.i, 3
  %arrayidx.i = getelementptr %struct.stmfts_data, ptr %dev, i32 0, i32 12, i32 %mul.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %21 to i32
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %sw.epilog.i [
    i8 16, label %for.body.i.sw.bb.i_crit_edge
    i8 17, label %for.body.i.sw.bb.i_crit_edge10
    i8 22, label %for.body.i.sw.bb.i_crit_edge11
    i8 0, label %for.body.i.if.end_crit_edge
    i8 -37, label %for.body.i.if.end_crit_edge12
  ]

for.body.i.if.end_crit_edge12:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i.sw.bb.i_crit_edge11:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge10:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %for.body.i.sw.bb.i_crit_edge, %for.body.i.sw.bb.i_crit_edge10, %for.body.i.sw.bb.i_crit_edge11
  %cmd_done.i = getelementptr inbounds %struct.stmfts_data, ptr %dev, i32 0, i32 13
  call void @complete(ptr noundef %cmd_done.i) #8
  br label %if.end

sw.epilog.i:                                      ; preds = %for.body.i
  %and.i = and i32 %conv.i, 15
  %23 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %and.i, label %do.end24.i [
    i32 3, label %sw.epilog.i.sw.bb5.i_crit_edge
    i32 5, label %sw.epilog.i.sw.bb5.i_crit_edge13
    i32 4, label %sw.bb6.i
    i32 7, label %sw.epilog.i.sw.bb7.i_crit_edge
    i32 8, label %sw.epilog.i.sw.bb7.i_crit_edge14
    i32 9, label %sw.epilog.i.sw.bb7.i_crit_edge15
    i32 14, label %sw.bb8.i
    i32 15, label %do.end.i
  ]

sw.epilog.i.sw.bb7.i_crit_edge15:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge14:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

sw.epilog.i.sw.bb5.i_crit_edge13:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

sw.epilog.i.sw.bb5.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.epilog.i.sw.bb5.i_crit_edge, %sw.epilog.i.sw.bb5.i_crit_edge13
  %24 = lshr i8 %21, 4
  %arrayidx2.i.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %25 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx2.i.i, align 1
  %conv3.i.i = zext i8 %26 to i32
  %arrayidx4.i.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %27 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %28 to i32
  %and6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %shl.i.i = and i32 %and6.i.i, 3840
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  %29 = lshr i32 %conv5.i.i, 4
  %arrayidx11.i.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %30 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %31 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 4
  %or14.i.i = or i32 %shl13.i.i, %29
  %arrayidx16.i.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %32 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx16.i.i, align 1
  %arrayidx17.i.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %34 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx17.i.i, align 1
  %arrayidx18.i.i = getelementptr i8, ptr %arrayidx.i, i32 6
  %36 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx18.i.i, align 1
  %arrayidx19.i.i = getelementptr i8, ptr %arrayidx.i, i32 7
  %38 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx19.i.i, align 1
  %40 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input5.i.i, align 4
  %conv20.i.i = zext i8 %24 to i32
  call void @input_event(ptr noundef %41, i32 noundef 3, i32 noundef 47, i32 noundef %conv20.i.i) #8
  %42 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input5.i.i, align 4
  %call.i.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %43, i32 noundef 0, i1 noundef zeroext true) #8
  %44 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %45, i32 noundef 3, i32 noundef 53, i32 noundef %or.i.i) #8
  %46 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %47, i32 noundef 3, i32 noundef 54, i32 noundef %or14.i.i) #8
  %48 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input5.i.i, align 4
  %conv27.i.i = zext i8 %33 to i32
  call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 48, i32 noundef %conv27.i.i) #8
  %50 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input5.i.i, align 4
  %conv29.i.i = zext i8 %35 to i32
  call void @input_event(ptr noundef %51, i32 noundef 3, i32 noundef 49, i32 noundef %conv29.i.i) #8
  %52 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %input5.i.i, align 4
  %conv31.i.i = zext i8 %39 to i32
  call void @input_event(ptr noundef %53, i32 noundef 3, i32 noundef 58, i32 noundef %conv31.i.i) #8
  %54 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input5.i.i, align 4
  %conv33.i.i = zext i8 %37 to i32
  call void @input_event(ptr noundef %55, i32 noundef 3, i32 noundef 52, i32 noundef %conv33.i.i) #8
  %56 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i

sw.bb6.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = lshr i8 %21, 4
  %59 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input5.i.i, align 4
  %conv2.i.i = zext i8 %58 to i32
  call void @input_event(ptr noundef %60, i32 noundef 3, i32 noundef 47, i32 noundef %conv2.i.i) #8
  %61 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %input5.i.i, align 4
  %call.i.i.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %62, i32 noundef 0, i1 noundef zeroext false) #8
  %63 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %64, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i

sw.bb7.i:                                         ; preds = %sw.epilog.i.sw.bb7.i_crit_edge, %sw.epilog.i.sw.bb7.i_crit_edge14, %sw.epilog.i.sw.bb7.i_crit_edge15
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %66 to i32
  %shl.i56.i = shl nuw nsw i32 %conv.i.i, 4
  %arrayidx1.i.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %67 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i57.i = zext i8 %68 to i32
  %69 = lshr i32 %conv2.i57.i, 4
  %or.i58.i = or i32 %69, %shl.i56.i
  %arrayidx4.i59.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %70 = ptrtoint ptr %arrayidx4.i59.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx4.i59.i, align 1
  %conv5.i60.i = zext i8 %71 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i60.i, 4
  %and.i.i = and i32 %conv2.i57.i, 240
  %or9.i.i = or i32 %shl6.i.i, %and.i.i
  %arrayidx11.i61.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %72 = ptrtoint ptr %arrayidx11.i61.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx11.i61.i, align 1
  %74 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %75, i32 noundef 3, i32 noundef 0, i32 noundef %or.i58.i) #8
  %76 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %77, i32 noundef 3, i32 noundef 1, i32 noundef %or9.i.i) #8
  %78 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %input5.i.i, align 4
  %conv16.i.i = zext i8 %73 to i32
  call void @input_event(ptr noundef %79, i32 noundef 3, i32 noundef 25, i32 noundef %conv16.i.i) #8
  %80 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %81, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i

sw.bb8.i:                                         ; preds = %sw.epilog.i
  %arrayidx.i63.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %82 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i63.i, align 1
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %83, label %do.end.i.i [
    i8 0, label %sw.bb.i.i
    i8 2, label %sw.bb2.i.i
    i8 1, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %86, i32 noundef 1, i32 noundef 158, i32 noundef 0) #8
  %87 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %88, i32 noundef 1, i32 noundef 139, i32 noundef 0) #8
  br label %stmfts_report_key_event.exit.i

sw.bb2.i.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %90, i32 noundef 1, i32 noundef 158, i32 noundef 1) #8
  br label %stmfts_report_key_event.exit.i

sw.bb4.i.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %92, i32 noundef 1, i32 noundef 139, i32 noundef 1) #8
  br label %stmfts_report_key_event.exit.i

do.end.i.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i65.i = zext i8 %83 to i32
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %94, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.34, i32 noundef %conv.i65.i) #11
  br label %stmfts_report_key_event.exit.i

stmfts_report_key_event.exit.i:                   ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %95 = ptrtoint ptr %input5.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %input5.i.i, align 4
  call void @input_event(ptr noundef %96, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 4
  %arrayidx10.i = getelementptr i8, ptr %arrayidx.i, i32 6
  %99 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %100 to i32
  %arrayidx12.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %101 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %102 to i32
  %arrayidx14.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %103 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %104 to i32
  %arrayidx16.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %105 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %106 to i32
  %arrayidx18.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %107 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %108 to i32
  %arrayidx20.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %109 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %110 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %conv11.i, i32 noundef %conv13.i, i32 noundef %conv15.i, i32 noundef %conv17.i, i32 noundef %conv19.i, i32 noundef %conv21.i) #11
  br label %for.inc.i

do.end24.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 4
  %dev26.i = getelementptr inbounds %struct.i2c_client, ptr %112, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.32, i32 noundef %conv.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end24.i, %do.end.i, %stmfts_report_key_event.exit.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i
  %inc.i = add nuw nsw i32 %i.066.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %sw.bb.i, %for.body.i.if.end_crit_edge, %for.body.i.if.end_crit_edge12, %do.end
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stmfts_power_on(ptr noundef %sdata) unnamed_addr #2 align 64 {
entry:
  %reg = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #8
  %0 = getelementptr inbounds [8 x i8], ptr %reg, i32 0, i32 2
  %1 = getelementptr inbounds [8 x i8], ptr %reg, i32 0, i32 4
  %2 = getelementptr inbounds [8 x i8], ptr %reg, i32 0, i32 5
  %3 = getelementptr inbounds [8 x i8], ptr %reg, i32 0, i32 6
  %regulators = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 5
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %reg, align 8
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #8
  %5 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdata, align 4
  %call2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %6, i8 noundef zeroext -128, i8 noundef zeroext 8, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call2)
  %cmp5.not = icmp eq i32 %call2, 8
  br i1 %cmp5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %3, align 2
  %chip_id = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 7
  %9 = ptrtoint ptr %chip_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %chip_id, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg, align 8
  %chip_ver = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 8
  %12 = ptrtoint ptr %chip_ver to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %chip_ver, align 2
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %0, align 2
  %fw_ver = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 9
  %15 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %fw_ver, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 4
  %config_id = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 10
  %18 = ptrtoint ptr %config_id to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %config_id, align 2
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 1
  %config_ver = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 11
  %21 = ptrtoint ptr %config_ver to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %config_ver, align 1
  %22 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdata, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %25) #8
  call void @msleep(i32 noundef 50) #8
  %cmd_done.i = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 13
  %26 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cmd_done.i, align 4
  %27 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdata, align 4
  %call.i = call i32 @i2c_smbus_write_byte(ptr noundef %28, i8 noundef zeroext -96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call3.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end18

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end.i
  %29 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cmd_done.i, align 4
  %30 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdata, align 4
  %call.i74 = call i32 @i2c_smbus_write_byte(ptr noundef %31, i8 noundef zeroext -111) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.end.i79, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i79:                                       ; preds = %if.end18
  %call3.i76 = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i76)
  %tobool4.not.i77 = icmp eq i32 %call3.i76, 0
  br i1 %tobool4.not.i77, label %if.end.i79.cleanup_crit_edge, label %if.end22

if.end.i79.cleanup_crit_edge:                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end.i79
  %call23 = call fastcc i32 @stmfts_command(ptr noundef %sdata, i8 noundef zeroext -93)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %do.end

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdata, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call23) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.end22.if.end27_crit_edge
  %call28 = call fastcc i32 @stmfts_command(ptr noundef %sdata, i8 noundef zeroext -92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.if.end36_crit_edge, label %do.end33

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdata, align 4
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev35, ptr noundef nonnull @.str.39, i32 noundef %call28) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.end27.if.end36_crit_edge
  %call37 = call fastcc i32 @stmfts_command(ptr noundef %sdata, i8 noundef zeroext -94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdata, align 4
  %call42 = call i32 @i2c_smbus_write_byte(ptr noundef %37, i8 noundef zeroext -112) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end36.cleanup_crit_edge, %if.end.i79.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ], [ %call.i74, %if.end18.cleanup_crit_edge ], [ -110, %if.end.i79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @stmfts_power_off, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %regulators.i = getelementptr inbounds %struct.stmfts_data, ptr %data, i32 0, i32 5
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfts_power_off(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %regulators = getelementptr inbounds %struct.stmfts_data, ptr %data, i32 0, i32 5
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stmfts_enable_led(ptr noundef %sdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.41) #8
  %ledvdd = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 6
  %2 = ptrtoint ptr %ledvdd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ledvdd, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %led_cdev = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 2
  %4 = ptrtoint ptr %led_cdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %led_cdev, align 4
  %max_brightness = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %max_brightness, align 4
  %brightness = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @stmfts_brightness_set, ptr %brightness_set_blocking, align 4
  %brightness_get = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @stmfts_brightness_get, ptr %brightness_get, align 4
  %9 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdata, align 4
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %call.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev10, ptr noundef %led_cdev, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %ledvdd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ledvdd, align 4
  tail call void @devm_regulator_put(ptr noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call.i, %if.then13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stmfts_command(ptr noundef %sdata, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_done = getelementptr inbounds %struct.stmfts_data, ptr %sdata, i32 0, i32 13
  %0 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_done, align 4
  %1 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdata, align 4
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %2, i8 noundef zeroext %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_brightness_set(ptr nocapture noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -8
  %led_status = getelementptr i8, ptr %led_cdev, i32 853
  %0 = ptrtoint ptr %led_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %led_status, align 1, !range !154
  %2 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %value)
  %cmp.not = icmp eq i32 %2, %value
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %ledvdd = getelementptr i8, ptr %led_cdev, i32 528
  %3 = ptrtoint ptr %ledvdd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ledvdd, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool3 = icmp ne i32 %value, 0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %4) #8
  br label %if.end10

if.else:                                          ; preds = %if.then
  %call7 = tail call i32 @regulator_enable(ptr noundef nonnull %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else.if.end10_crit_edge, label %do.end

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call7) #11
  br label %cleanup

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then4
  %frombool = zext i1 %tobool3 to i8
  %7 = ptrtoint ptr %led_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %led_status, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end10 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_brightness_get(ptr nocapture noundef readonly %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ledvdd = getelementptr i8, ptr %led_cdev, i32 528
  %0 = ptrtoint ptr %ledvdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ledvdd, align 4
  %call = tail call i32 @regulator_is_enabled(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_sysfs_chip_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chip_id = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chip_id, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_sysfs_chip_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chip_ver = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_ver, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_sysfs_fw_ver(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_ver = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fw_ver, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_sysfs_config_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config_id = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %config_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config_id, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_sysfs_config_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config_ver = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %config_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config_ver, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_sysfs_read_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %status = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %4, i8 noundef zeroext -124, i8 noundef zeroext 4, ptr noundef nonnull %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status, align 4
  %conv = zext i8 %6 to i32
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_sysfs_hover_enable_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hover_enabled = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %hover_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hover_enabled, align 2, !range !154
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_sysfs_hover_enable_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !156
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %hover_enabled = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %hover_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hover_enabled, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %running = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %running, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.end5.if.then12_crit_edge, label %if.then7

if.end5.if.then12_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then7:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv = select i1 %tobool2.not, i8 -108, i8 -107
  %call9 = call i32 @i2c_smbus_write_byte(ptr noundef %10, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %phi.cmp = icmp eq i32 %call9, 0
  br i1 %phi.cmp, label %if.then7.if.then12_crit_edge, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then7.if.then12_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %if.then7.if.then12_crit_edge, %if.end5.if.then12_crit_edge
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13 = icmp ne i32 %12, 0
  %hover_enabled15 = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 16
  %frombool = zext i1 %tobool13 to i8
  %13 = ptrtoint ptr %hover_enabled15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %hover_enabled15, align 2
  br label %out

out:                                              ; preds = %if.then12, %if.then7.out_crit_edge, %land.lhs.true.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  %regulators.i = getelementptr inbounds %struct.stmfts_data, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @stmfts_power_on(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext -112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfts_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext -111) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %call1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !101, !103, !104, !106, !108, !109, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !127, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_stmfts__290_817_stmfts_driver_init6, !1, !"__initcall__kmod_stmfts__290_817_stmfts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/stmfts.c", i32 817, i32 1}
!2 = !{ptr @__exitcall_stmfts_driver_exit, !1, !"__exitcall_stmfts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/stmfts.c", i32 819, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/stmfts.c", i32 820, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/stmfts.c", i32 821, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/stmfts.c", i32 807, i32 11}
!12 = !{ptr @stmfts_driver, !13, !"stmfts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/stmfts.c", i32 805, i32 26}
!14 = !{ptr @stmfts_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/stmfts.c", i32 643, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/stmfts.c", i32 646, i32 51}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/stmfts.c", i32 647, i32 52}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/stmfts.c", i32 674, i32 10}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/stmfts.c", i32 697, i32 6}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/stmfts.c", i32 701, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @stmfts_probe.__UNIQUE_ID_ddebug289, !26, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/stmfts.c", i32 724, i32 4}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @stmfts_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @stmfts_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @init_completion.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../include/linux/completion.h", i32 87, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/stmfts.c", i32 355, i32 4}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @stmfts_input_open._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @stmfts_input_open._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/stmfts.c", i32 365, i32 4}
!46 = !{ptr @stmfts_input_open._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @stmfts_input_open._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/stmfts.c", i32 379, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @stmfts_input_close._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @stmfts_input_close._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/stmfts.c", i32 390, i32 4}
!55 = !{ptr @stmfts_input_close._entry.20, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @stmfts_input_close._entry_ptr.22, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/stmfts.c", i32 399, i32 4}
!59 = !{ptr @stmfts_input_close._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @stmfts_input_close._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/stmfts.c", i32 309, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @stmfts_irq_handler._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @stmfts_irq_handler._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/stmfts.c", i32 287, i32 4}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @stmfts_parse_events._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @stmfts_parse_events._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/stmfts.c", i32 294, i32 4}
!74 = !{ptr @stmfts_parse_events._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @stmfts_parse_events._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/stmfts.c", i32 237, i32 3}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @stmfts_report_key_event._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @stmfts_report_key_event._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/touchscreen/stmfts.c", i32 567, i32 3}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stmfts_power_on._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @stmfts_power_on._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/stmfts.c", i32 573, i32 3}
!88 = !{ptr @stmfts_power_on._entry.38, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @stmfts_power_on._entry_ptr.40, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/stmfts.c", i32 606, i32 58}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/touchscreen/stmfts.c", i32 122, i32 5}
!94 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @stmfts_brightness_set._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @stmfts_brightness_set._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @stmfts_attribute_group, !98, !"stmfts_attribute_group", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/stmfts.c", i32 519, i32 31}
!99 = !{ptr @stmfts_sysfs_attrs, !100, !"stmfts_sysfs_attrs", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/stmfts.c", i32 508, i32 26}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/touchscreen/stmfts.c", i32 499, i32 8}
!103 = !{ptr @dev_attr_chip_id, !102, !"dev_attr_chip_id", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/touchscreen/stmfts.c", i32 411, i32 22}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/touchscreen/stmfts.c", i32 500, i32 8}
!108 = !{ptr @dev_attr_chip_version, !107, !"dev_attr_chip_version", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/touchscreen/stmfts.c", i32 419, i32 22}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/touchscreen/stmfts.c", i32 501, i32 8}
!113 = !{ptr @dev_attr_fw_ver, !112, !"dev_attr_fw_ver", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/touchscreen/stmfts.c", i32 502, i32 8}
!116 = !{ptr @dev_attr_config_id, !115, !"dev_attr_config_id", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/touchscreen/stmfts.c", i32 503, i32 8}
!119 = !{ptr @dev_attr_config_version, !118, !"dev_attr_config_version", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/touchscreen/stmfts.c", i32 504, i32 8}
!122 = !{ptr @dev_attr_status, !121, !"dev_attr_status", i1 false, i1 false}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/stmfts.c", i32 458, i32 22}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/stmfts.c", i32 505, i32 8}
!127 = !{ptr @dev_attr_hover_enable, !126, !"dev_attr_hover_enable", i1 false, i1 false}
!128 = !{ptr @stmfts_of_match, !129, !"stmfts_of_match", i1 false, i1 false}
!129 = !{!"../drivers/input/touchscreen/stmfts.c", i32 792, i32 34}
!130 = !{ptr @stmfts_pm_ops, !131, !"stmfts_pm_ops", i1 false, i1 false}
!131 = !{!"../drivers/input/touchscreen/stmfts.c", i32 786, i32 32}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/touchscreen/stmfts.c", i32 753, i32 3}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @stmfts_runtime_suspend._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @stmfts_runtime_suspend._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/touchscreen/stmfts.c", i32 765, i32 3}
!139 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @stmfts_runtime_resume._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @stmfts_runtime_resume._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @stmfts_id, !143, !"stmfts_id", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/stmfts.c", i32 799, i32 35}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2148775092, i64 2148775097, i64 2148775110, i64 2148775154, i64 2148775188, i64 2148775209}
!154 = !{i8 0, i8 2}
!155 = !{!"branch_weights", i32 2000, i32 1}
!156 = !{!"auto-init"}
