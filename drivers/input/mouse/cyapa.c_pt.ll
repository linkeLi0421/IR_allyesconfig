; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/cyapa.c_pt.bc'
source_filename = "../drivers/input/mouse/cyapa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cyapa_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.cyapa = type { i32, [3 x i8], i8, ptr, ptr, ptr, [32 x i8], i8, i8, i8, i16, i8, i16, i8, i16, %struct.gen6_interval_setting, [16 x i8], i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, %struct.mutex, ptr, %union.cyapa_cmd_states }
%struct.gen6_interval_setting = type { i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.cyapa_cmd_states = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { %struct.mutex, %struct.completion, %struct.atomic_t, i8, i8, ptr, ptr, ptr, i32, %struct.mutex, [256 x i8], [256 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@product_id = dso_local constant { [6 x i8], [26 x i8] } { [6 x i8] c"CYTRA\00", [26 x i8] zeroinitializer }, align 32
@__initcall__kmod_cyapatp__298_1497_cyapa_driver_init6 = internal global ptr @cyapa_driver_init, section ".initcall6.init", align 4
@cyapa_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cyapa_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cyapa_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyapa_pm_ops, ptr null, ptr null }, ptr @cyapa_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cyapa_driver_exit = internal global ptr @cyapa_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [52 x i8] c"cyapatp.description=Cypress APA I2C Trackpad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [44 x i8] c"cyapatp.author=Dudley Du <dudl@cypress.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [41 x i8] c"cyapatp.file=drivers/input/mouse/cyapatp\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [20 x i8] c"cyapatp.license=GPL\00", section ".modinfo", align 1
@cyapa_gen3_ops = external dso_local constant %struct.cyapa_dev_ops, align 4
@cyapa_gen5_ops = external dso_local constant %struct.cyapa_dev_ops, align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cyapa\00", [26 x i8] zeroinitializer }, align 32
@cyapa_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cypress,cyapa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cyapa_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cyapa_suspend, ptr @cyapa_resume, ptr @cyapa_suspend, ptr @cyapa_resume, ptr @cyapa_suspend, ptr @cyapa_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyapa_runtime_suspend, ptr @cyapa_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cyapa_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cyapa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cyapa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"not a supported I2C/SMBus adapter\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cyapa_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/input/mouse/cyapa.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr = internal global ptr @cyapa_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c-%d-%04x/input0\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@cyapa_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get vcc regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr.10 = internal global ptr @cyapa_probe._entry.8, section ".printk_index", align 4
@cyapa_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr.13 = internal global ptr @cyapa_probe._entry.11, section ".printk_index", align 4
@cyapa_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to add disable regulator action: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr.16 = internal global ptr @cyapa_probe._entry.14, section ".printk_index", align 4
@cyapa_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to detect and initialize tp device.\0A\00", [52 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr.19 = internal global ptr @cyapa_probe._entry.17, section ".printk_index", align 4
@cyapa_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cyapa_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@cyapa_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create sysfs entries: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr.22 = internal global ptr @cyapa_probe._entry.20, section ".printk_index", align 4
@cyapa_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to prepare wakeup controls: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr.25 = internal global ptr @cyapa_probe._entry.23, section ".printk_index", align 4
@cyapa_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to start pm_runtime: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr.28 = internal global ptr @cyapa_probe._entry.26, section ".printk_index", align 4
@cyapa_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request threaded irq: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr.31 = internal global ptr @cyapa_probe._entry.29, section ".printk_index", align 4
@cyapa_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"create input_dev instance failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cyapa_probe._entry_ptr.34 = internal global ptr @cyapa_probe._entry.32, section ".printk_index", align 4
@cyapa_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cyapa->state_sync_lock\00", [40 x i8] zeroinitializer }, align 32
@cyapa_gen6_ops = external dso_local constant %struct.cyapa_dev_ops, align 4
@cyapa_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 357, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"device detected but not operational\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cyapa_detect\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cyapa_detect._entry_ptr = internal global ptr @cyapa_detect._entry, section ".printk_index", align 4
@cyapa_detect._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.3, i32 361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no device detected: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cyapa_detect._entry_ptr.41 = internal global ptr @cyapa_detect._entry.39, section ".printk_index", align 4
@cyapa_sysfs_entries = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_product_id, ptr @dev_attr_update_fw, ptr @dev_attr_baseline, ptr @dev_attr_calibrate, ptr @dev_attr_mode, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cyapa_show_fm_ver, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cyapa_show_product_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @cyapa_update_fw_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_baseline = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cyapa_show_baseline, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_calibrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @cyapa_calibrate_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cyapa_show_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@cyapa_update_fw_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1084, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"File name too long\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cyapa_update_fw_store\00", [42 x i8] zeroinitializer }, align 32
@cyapa_update_fw_store._entry_ptr = internal global ptr @cyapa_update_fw_store._entry, section ".printk_index", align 4
@cyapa_update_fw_store._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware update failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cyapa_update_fw_store._entry_ptr.51 = internal global ptr @cyapa_update_fw_store._entry.49, section ".printk_index", align 4
@cyapa_update_fw_store.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.48, ptr @.str.3, ptr @.str.53, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cyapatp\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware update successfully done.\0A\00", [60 x i8] zeroinitializer }, align 32
@cyapa_update_fw_store._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.48, ptr @.str.3, i32 1126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to re-detect after updated: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cyapa_update_fw_store._entry_ptr.56 = internal global ptr @cyapa_update_fw_store._entry.54, section ".printk_index", align 4
@cyapa_reinitialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.57, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cyapa_reinitialize\00", [45 x i8] zeroinitializer }, align 32
@cyapa_reinitialize._entry_ptr = internal global ptr @cyapa_reinitialize._entry, section ".printk_index", align 4
@cyapa_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1021, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not load firmware from %s: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cyapa_firmware\00", [17 x i8] zeroinitializer }, align 32
@cyapa_firmware._entry_ptr = internal global ptr @cyapa_firmware._entry, section ".printk_index", align 4
@cyapa_firmware._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 1028, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid CYAPA firmware image: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@cyapa_firmware._entry_ptr.62 = internal global ptr @cyapa_firmware._entry.60, section ".printk_index", align 4
@cyapa_firmware._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.3, i32 1044, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bl_enter failed, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cyapa_firmware._entry_ptr.65 = internal global ptr @cyapa_firmware._entry.63, section ".printk_index", align 4
@cyapa_firmware._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.3, i32 1050, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bl_activate failed, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cyapa_firmware._entry_ptr.68 = internal global ptr @cyapa_firmware._entry.66, section ".printk_index", align 4
@cyapa_firmware._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.3, i32 1056, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bl_initiate failed, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cyapa_firmware._entry_ptr.71 = internal global ptr @cyapa_firmware._entry.69, section ".printk_index", align 4
@cyapa_firmware._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.59, ptr @.str.3, i32 1062, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"update_fw failed, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cyapa_firmware._entry_ptr.74 = internal global ptr @cyapa_firmware._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"baseline\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"calibrate\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gen%d %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bootloader busy\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bootloader idle\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bootloader active\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bootloader\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"operational\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"invalid mode\00", [19 x i8] zeroinitializer }, align 32
@cyapa_power_wakeup_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @cyapa_power_wakeup_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@cyapa_prepare_wakeup_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 839, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to add power wakeup group: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cyapa_prepare_wakeup_controls\00", [34 x i8] zeroinitializer }, align 32
@cyapa_prepare_wakeup_controls._entry_ptr = internal global ptr @cyapa_prepare_wakeup_controls._entry, section ".printk_index", align 4
@cyapa_prepare_wakeup_controls._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 847, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to add power cleanup action: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cyapa_prepare_wakeup_controls._entry_ptr.89 = internal global ptr @cyapa_prepare_wakeup_controls._entry.87, section ".printk_index", align 4
@power_group_name = external dso_local constant [0 x i8], align 1
@cyapa_power_wakeup_entries = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_suspend_scanrate_ms, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_suspend_scanrate_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cyapa_show_suspend_scanrate, ptr @cyapa_update_suspend_scanrate }, [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"suspend_scanrate_ms\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"buttononly\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@cyapa_power_runtime_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @cyapa_power_runtime_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@cyapa_start_runtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 955, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to create power runtime group: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cyapa_start_runtime\00", [44 x i8] zeroinitializer }, align 32
@cyapa_start_runtime._entry_ptr = internal global ptr @cyapa_start_runtime._entry, section ".printk_index", align 4
@cyapa_start_runtime._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 964, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to add power runtime cleanup action: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@cyapa_start_runtime._entry_ptr.98 = internal global ptr @cyapa_start_runtime._entry.96, section ".printk_index", align 4
@cyapa_power_runtime_entries = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_runtime_suspend_scanrate_ms, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_runtime_suspend_scanrate_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cyapa_show_rt_suspend_scanrate, ptr @cyapa_update_rt_suspend_scanrate }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"runtime_suspend_scanrate_ms\00", [36 x i8] zeroinitializer }, align 32
@cyapa_update_rt_suspend_scanrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 895, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"invalid runtime suspend scanrate ms parameter\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cyapa_update_rt_suspend_scanrate\00", [63 x i8] zeroinitializer }, align 32
@cyapa_update_rt_suspend_scanrate._entry_ptr = internal global ptr @cyapa_update_rt_suspend_scanrate._entry, section ".printk_index", align 4
@cyapa_create_input_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to allocate memory for input device.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cyapa_create_input_dev\00", [41 x i8] zeroinitializer }, align 32
@cyapa_create_input_dev._entry_ptr = internal global ptr @cyapa_create_input_dev._entry, section ".printk_index", align 4
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cypress APA Trackpad (cyapa)\00", [35 x i8] zeroinitializer }, align 32
@cyapa_create_input_dev._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.103, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize MT slots: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cyapa_create_input_dev._entry_ptr.107 = internal global ptr @cyapa_create_input_dev._entry.105, section ".printk_index", align 4
@cyapa_create_input_dev._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.103, ptr @.str.3, i32 517, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cyapa_create_input_dev._entry_ptr.110 = internal global ptr @cyapa_create_input_dev._entry.108, section ".printk_index", align 4
@cyapa_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 388, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set active power failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cyapa_open\00", [21 x i8] zeroinitializer }, align 32
@cyapa_open._entry_ptr = internal global ptr @cyapa_open._entry, section ".printk_index", align 4
@cyapa_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 1384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"suspend set power mode failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cyapa_suspend\00", [18 x i8] zeroinitializer }, align 32
@cyapa_suspend._entry_ptr = internal global ptr @cyapa_suspend._entry, section ".printk_index", align 4
@cyapa_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 1420, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to reinitialize TP device: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cyapa_resume\00", [19 x i8] zeroinitializer }, align 32
@cyapa_resume._entry_ptr = internal global ptr @cyapa_resume._entry, section ".printk_index", align 4
@cyapa_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 1438, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"runtime suspend failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cyapa_runtime_suspend\00", [42 x i8] zeroinitializer }, align 32
@cyapa_runtime_suspend._entry_ptr = internal global ptr @cyapa_runtime_suspend._entry, section ".printk_index", align 4
@cyapa_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 1451, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"runtime resume failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cyapa_runtime_resume\00", [43 x i8] zeroinitializer }, align 32
@cyapa_runtime_resume._entry_ptr = internal global ptr @cyapa_runtime_resume._entry, section ".printk_index", align 4
@switch.table.cyapa_show_mode = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.82, ptr @.str.83, ptr @.str.82, ptr @.str.83], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967290]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967186, i64 4294967277]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@___asan_gen_.135 = private unnamed_addr constant [11 x i8] c"product_id\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 40, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"cyapa_driver\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1485, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1487, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"cyapa_of_match\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1478, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant [13 x i8] c"cyapa_pm_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1456, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"cyapa_id_table\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1461, i32 35 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1258, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1277, i32 23 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1280, i32 39 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1283, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1289, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1295, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1302, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"cyapa_sysfs_group\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1236, i32 37 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1308, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1314, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1320, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1329, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1344, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 596, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 357, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 361, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"cyapa_sysfs_entries\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1226, i32 26 }
@___asan_gen_.261 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c"dev_attr_product_id\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [18 x i8] c"dev_attr_baseline\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [19 x i8] c"dev_attr_calibrate\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1219, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 991, i32 36 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1220, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1007, i32 35 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1221, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1084, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1116, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1118, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1126, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 648, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1020, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1027, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1044, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1050, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1056, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1062, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1222, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1223, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1224, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1212, i32 35 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1184, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1186, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1188, i32 10 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1191, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1195, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1197, i32 10 }
@___asan_gen_.396 = private unnamed_addr constant [25 x i8] c"cyapa_power_wakeup_group\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 815, i32 37 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 838, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 846, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant [27 x i8] c"cyapa_power_wakeup_entries\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 810, i32 26 }
@___asan_gen_.417 = private unnamed_addr constant [29 x i8] c"dev_attr_suspend_scanrate_ms\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 806, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 759, i32 43 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 763, i32 43 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 767, i32 35 }
@___asan_gen_.432 = private unnamed_addr constant [26 x i8] c"cyapa_power_runtime_group\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 930, i32 37 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 954, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 962, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant [28 x i8] c"cyapa_power_runtime_entries\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 925, i32 26 }
@___asan_gen_.453 = private unnamed_addr constant [37 x i8] c"dev_attr_runtime_suspend_scanrate_ms\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 921, i32 8 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 895, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 444, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 448, i32 16 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 510, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 517, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 388, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1383, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1420, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1438, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.535 = private constant [31 x i8] c"../drivers/input/mouse/cyapa.c\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1451, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant [29 x i8] c"switch.table.cyapa_show_mode\00", align 1
@llvm.compiler.used = appending global [177 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_cyapa_driver_exit, ptr @__initcall__kmod_cyapatp__298_1497_cyapa_driver_init6, ptr @cyapa_create_input_dev._entry, ptr @cyapa_create_input_dev._entry.105, ptr @cyapa_create_input_dev._entry.108, ptr @cyapa_create_input_dev._entry_ptr, ptr @cyapa_create_input_dev._entry_ptr.107, ptr @cyapa_create_input_dev._entry_ptr.110, ptr @cyapa_detect._entry, ptr @cyapa_detect._entry.39, ptr @cyapa_detect._entry_ptr, ptr @cyapa_detect._entry_ptr.41, ptr @cyapa_driver_exit, ptr @cyapa_firmware._entry, ptr @cyapa_firmware._entry.60, ptr @cyapa_firmware._entry.63, ptr @cyapa_firmware._entry.66, ptr @cyapa_firmware._entry.69, ptr @cyapa_firmware._entry.72, ptr @cyapa_firmware._entry_ptr, ptr @cyapa_firmware._entry_ptr.62, ptr @cyapa_firmware._entry_ptr.65, ptr @cyapa_firmware._entry_ptr.68, ptr @cyapa_firmware._entry_ptr.71, ptr @cyapa_firmware._entry_ptr.74, ptr @cyapa_open._entry, ptr @cyapa_open._entry_ptr, ptr @cyapa_prepare_wakeup_controls._entry, ptr @cyapa_prepare_wakeup_controls._entry.87, ptr @cyapa_prepare_wakeup_controls._entry_ptr, ptr @cyapa_prepare_wakeup_controls._entry_ptr.89, ptr @cyapa_probe._entry, ptr @cyapa_probe._entry.11, ptr @cyapa_probe._entry.14, ptr @cyapa_probe._entry.17, ptr @cyapa_probe._entry.20, ptr @cyapa_probe._entry.23, ptr @cyapa_probe._entry.26, ptr @cyapa_probe._entry.29, ptr @cyapa_probe._entry.32, ptr @cyapa_probe._entry.8, ptr @cyapa_probe._entry_ptr, ptr @cyapa_probe._entry_ptr.10, ptr @cyapa_probe._entry_ptr.13, ptr @cyapa_probe._entry_ptr.16, ptr @cyapa_probe._entry_ptr.19, ptr @cyapa_probe._entry_ptr.22, ptr @cyapa_probe._entry_ptr.25, ptr @cyapa_probe._entry_ptr.28, ptr @cyapa_probe._entry_ptr.31, ptr @cyapa_probe._entry_ptr.34, ptr @cyapa_reinitialize._entry, ptr @cyapa_reinitialize._entry_ptr, ptr @cyapa_resume._entry, ptr @cyapa_resume._entry_ptr, ptr @cyapa_runtime_resume._entry, ptr @cyapa_runtime_resume._entry_ptr, ptr @cyapa_runtime_suspend._entry, ptr @cyapa_runtime_suspend._entry_ptr, ptr @cyapa_start_runtime._entry, ptr @cyapa_start_runtime._entry.96, ptr @cyapa_start_runtime._entry_ptr, ptr @cyapa_start_runtime._entry_ptr.98, ptr @cyapa_suspend._entry, ptr @cyapa_suspend._entry_ptr, ptr @cyapa_update_fw_store._entry, ptr @cyapa_update_fw_store._entry.49, ptr @cyapa_update_fw_store._entry.54, ptr @cyapa_update_fw_store._entry_ptr, ptr @cyapa_update_fw_store._entry_ptr.51, ptr @cyapa_update_fw_store._entry_ptr.56, ptr @cyapa_update_rt_suspend_scanrate._entry, ptr @cyapa_update_rt_suspend_scanrate._entry_ptr, ptr @product_id, ptr @cyapa_driver, ptr @.str, ptr @cyapa_of_match, ptr @cyapa_pm_ops, ptr @cyapa_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @cyapa_sysfs_group, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @cyapa_initialize.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @cyapa_sysfs_entries, ptr @dev_attr_firmware_version, ptr @dev_attr_product_id, ptr @dev_attr_update_fw, ptr @dev_attr_baseline, ptr @dev_attr_calibrate, ptr @dev_attr_mode, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @cyapa_power_wakeup_group, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @cyapa_power_wakeup_entries, ptr @dev_attr_suspend_scanrate_ms, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @cyapa_power_runtime_group, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @cyapa_power_runtime_entries, ptr @dev_attr_runtime_suspend_scanrate_ms, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @switch.table.cyapa_show_mode], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @product_id to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_detect._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_sysfs_entries to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_baseline to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_calibrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_update_fw_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_update_fw_store._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_update_fw_store._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_reinitialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_firmware._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_firmware._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_firmware._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_firmware._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_firmware._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_power_wakeup_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_prepare_wakeup_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_prepare_wakeup_controls._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_power_wakeup_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_suspend_scanrate_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_power_runtime_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_start_runtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_start_runtime._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_power_runtime_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_runtime_suspend_scanrate_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_update_rt_suspend_scanrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_create_input_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_create_input_dev._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_create_input_dev._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cyapa_show_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_is_pip_bl_mode(ptr nocapture noundef readonly %cyapa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %0 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gen, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end13_crit_edge [
    i8 6, label %land.lhs.true
    i8 5, label %land.lhs.true8
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp2 = icmp eq i32 %4, 7
  br i1 %cmp2, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true8:                                   ; preds = %entry
  %5 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp10 = icmp eq i32 %6, 5
  br i1 %cmp10, label %land.lhs.true8.return_crit_edge, label %land.lhs.true8.if.end13_crit_edge

land.lhs.true8.if.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true8.return_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end13:                                         ; preds = %land.lhs.true8.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  br label %return

return:                                           ; preds = %if.end13, %land.lhs.true8.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end13 ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true8.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_is_pip_app_mode(ptr nocapture noundef readonly %cyapa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %0 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gen, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %1, label %entry.if.end13_crit_edge [
    i8 6, label %land.lhs.true
    i8 5, label %land.lhs.true8
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp2 = icmp eq i32 %4, 8
  br i1 %cmp2, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true8:                                   ; preds = %entry
  %5 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp10 = icmp eq i32 %6, 6
  br i1 %cmp10, label %land.lhs.true8.return_crit_edge, label %land.lhs.true8.if.end13_crit_edge

land.lhs.true8.if.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true8.return_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end13:                                         ; preds = %land.lhs.true8.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  br label %return

return:                                           ; preds = %if.end13, %land.lhs.true8.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end13 ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true8.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_poll_state(ptr noundef %cyapa, i32 noundef %timeout) local_unnamed_addr #1 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [32 x i8], align 1
  %status.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %timeout, 100
  %0 = getelementptr inbounds [3 x i8], ptr %status.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %status.i, i32 0, i32 2
  %client.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %smbus2.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 8
  %status17.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 1
  %arrayidx21.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 1, i32 1
  %arrayidx24.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 1, i32 2
  %gen.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %2 = getelementptr inbounds [32 x i8], ptr %buf.i.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %buf.i.i, i32 3
  %4 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %buf.i147.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %tries.0 = phi i32 [ %div, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %status.i) #10
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %status.i, align 1, !annotation !261
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %0, align 1, !annotation !261
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %1, align 1, !annotation !261
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr.i, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i = icmp eq i16 %12, 0
  %13 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cyapa, align 4
  %call.i = call i32 @cyapa_i2c_reg_read_block(ptr noundef %cyapa, i8 noundef zeroext 0, i32 noundef 3, ptr noundef nonnull %status.i) #10
  %14 = ptrtoint ptr %smbus2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %smbus2.i, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %do.body.if.end12.i_crit_edge, label %land.lhs.true.i

do.body.if.end12.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %do.body
  %16 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %call.i, label %land.lhs.true.i.if.end12.i_crit_edge [
    i32 -110, label %land.lhs.true.i.if.then.i_crit_edge
    i32 -6, label %land.lhs.true.i.if.then.i_crit_edge16
  ]

land.lhs.true.i.if.then.i_crit_edge16:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge16
  br i1 %cmp.i, label %if.then.i.error105.thread.i_crit_edge, label %if.then9.i

if.then.i.error105.thread.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error105.thread.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = call i32 @cyapa_read_block(ptr noundef %cyapa, i8 noundef zeroext 6, ptr noundef nonnull %status.i) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end12.i_crit_edge, %do.body.if.end12.i_crit_edge
  %smbus.0.off0.i = phi i1 [ false, %do.body.if.end12.i_crit_edge ], [ false, %land.lhs.true.i.if.end12.i_crit_edge ], [ true, %if.then9.i ]
  %error.1.i = phi i32 [ %call.i, %do.body.if.end12.i_crit_edge ], [ %call.i, %land.lhs.true.i.if.end12.i_crit_edge ], [ %call11.i, %if.then9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %error.1.i)
  %cmp13.not.i = icmp eq i32 %error.1.i, 3
  br i1 %cmp13.not.i, label %do.body.preheader.i, label %if.end12.i.error105.i_crit_edge

if.end12.i.error105.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error105.i

do.body.preheader.i:                              ; preds = %if.end12.i
  %cmp.not.i = xor i1 %cmp.i, true
  %brmerge.i = select i1 %smbus.0.off0.i, i1 true, i1 %cmp.not.i
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %status.i, align 1
  %19 = ptrtoint ptr %status17.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %status17.i, align 4
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 1
  %22 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx21.i, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx24.i, align 2
  %26 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %gen.i, align 4
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %27, label %do.body.preheader.i.if.end39.i_crit_edge [
    i8 0, label %do.body.preheader.i.if.then33.i_crit_edge
    i8 3, label %do.body.preheader.i.if.then33.i_crit_edge17
  ]

do.body.preheader.i.if.then33.i_crit_edge17:      ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33.i

do.body.preheader.i.if.then33.i_crit_edge:        ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33.i

do.body.preheader.i.if.end39.i_crit_edge:         ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then33.i:                                      ; preds = %do.body.preheader.i.if.then33.i_crit_edge, %do.body.preheader.i.if.then33.i_crit_edge17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen3_ops, i32 0, i32 9) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen3_ops, i32 0, i32 9), align 4
  %call35.i = call i32 %29(ptr noundef %cyapa, ptr noundef nonnull %status.i, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.then33.i.out_detected.i_crit_edge, label %if.end39thread-pre-split.i

if.then33.i.out_detected.i_crit_edge:             ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_detected.i

if.end39thread-pre-split.i:                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr.i = load i8, ptr %gen.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end39thread-pre-split.i, %do.body.preheader.i.if.end39.i_crit_edge
  %31 = phi i8 [ %.pr.i, %if.end39thread-pre-split.i ], [ %27, %do.body.preheader.i.if.end39.i_crit_edge ]
  %error.3.i = phi i32 [ %call35.i, %if.end39thread-pre-split.i ], [ 3, %do.body.preheader.i.if.end39.i_crit_edge ]
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %31, label %if.end39.i.if.end60.i_crit_edge [
    i8 0, label %if.end39.i.if.then54.i_crit_edge
    i8 6, label %if.end39.i.if.then54.i_crit_edge18
    i8 5, label %if.end39.i.if.then54.i_crit_edge19
  ]

if.end39.i.if.then54.i_crit_edge19:               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i

if.end39.i.if.then54.i_crit_edge18:               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i

if.end39.i.if.then54.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i

if.end39.i.if.end60.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then54.i:                                      ; preds = %if.end39.i.if.then54.i_crit_edge, %if.end39.i.if.then54.i_crit_edge18, %if.end39.i.if.then54.i_crit_edge19
  %call56.i = call i32 @cyapa_pip_state_parse(ptr noundef %cyapa, ptr noundef nonnull %status.i, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.then54.i.out_detected.i_crit_edge, label %if.then54.i.if.end60.i_crit_edge

if.then54.i.if.end60.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then54.i.out_detected.i_crit_edge:             ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_detected.i

if.end60.i:                                       ; preds = %if.then54.i.if.end60.i_crit_edge, %if.end39.i.if.end60.i_crit_edge
  %error.4.i = phi i32 [ %call56.i, %if.then54.i.if.end60.i_crit_edge ], [ %error.3.i, %if.end39.i.if.end60.i_crit_edge ]
  %33 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %gen.i, align 4
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %34, label %if.end60.i.if.end81.i_crit_edge [
    i8 0, label %if.end60.i.land.lhs.true70.i_crit_edge
    i8 5, label %if.end60.i.land.lhs.true70.i_crit_edge20
  ]

if.end60.i.land.lhs.true70.i_crit_edge20:         ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true70.i

if.end60.i.land.lhs.true70.i_crit_edge:           ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true70.i

if.end60.i.if.end81.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

land.lhs.true70.i:                                ; preds = %if.end60.i.land.lhs.true70.i_crit_edge, %if.end60.i.land.lhs.true70.i_crit_edge20
  br i1 %brmerge.i, label %land.lhs.true70.i.if.end81.i_crit_edge, label %if.then75.i

land.lhs.true70.i.if.end81.i_crit_edge:           ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.then75.i:                                      ; preds = %land.lhs.true70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen5_ops, i32 0, i32 9) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen5_ops, i32 0, i32 9), align 4
  %call77.i = call i32 %36(ptr noundef %cyapa, ptr noundef nonnull %status.i, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.then75.i.out_detected.i_crit_edge, label %if.then75.i.if.end81.i_crit_edge

if.then75.i.if.end81.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.then75.i.out_detected.i_crit_edge:             ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_detected.i

if.end81.i:                                       ; preds = %if.then75.i.if.end81.i_crit_edge, %land.lhs.true70.i.if.end81.i_crit_edge, %if.end60.i.if.end81.i_crit_edge
  %error.5.i = phi i32 [ %error.4.i, %land.lhs.true70.i.if.end81.i_crit_edge ], [ %call77.i, %if.then75.i.if.end81.i_crit_edge ], [ %error.4.i, %if.end60.i.if.end81.i_crit_edge ]
  br i1 %smbus.0.off0.i, label %if.end81.i.error105.i_crit_edge, label %if.then83.i

if.end81.i.error105.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error105.i

if.then83.i:                                      ; preds = %if.end81.i
  %37 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i.i) #10
  %39 = call ptr @memset(ptr %3, i32 255, i32 29)
  %40 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %buf.i.i, align 1
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 0, ptr %2, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %38, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i.i) #10
  br i1 %cmp4.not.i.i, label %if.end90.i, label %if.then83.i.error105.thread.loopexit.i_crit_edge

if.then83.i.error105.thread.loopexit.i_crit_edge: ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error105.thread.loopexit.i

if.end90.i:                                       ; preds = %if.then83.i
  call void @msleep(i32 noundef 50) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #10
  %42 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %reg.addr.i.i, align 1
  %43 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #10
  %45 = call ptr @memset(ptr %4, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr2.i.i, align 2
  %48 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %msgs.i.i, align 4
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i.i, align 2
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %4, align 4
  %51 = ptrtoint ptr %buf.i147.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %reg.addr.i.i, ptr %buf.i147.i, align 4
  %52 = load i16, ptr %addr2.i.i, align 2
  %53 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayinit.element.i.i, align 4
  %54 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %flags6.i.i, align 2
  %55 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 3, ptr %len7.i.i, align 4
  %56 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %status.i, ptr %buf8.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 3
  %57 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #10
  br i1 %cmp.not.i.i, label %do.cond.i, label %if.end90.i.error105.thread.loopexit.i_crit_edge

if.end90.i.error105.thread.loopexit.i_crit_edge:  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error105.thread.loopexit.i

do.cond.i:                                        ; preds = %if.end90.i
  %59 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %status.i, align 1
  %61 = ptrtoint ptr %status17.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %status17.i, align 4
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %0, align 1
  %64 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx21.i, align 1
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %1, align 1
  %67 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx24.i, align 2
  %68 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %gen.i, align 4
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %69, label %do.cond.i.if.end39.i.1_crit_edge [
    i8 0, label %do.cond.i.if.then33.i.1_crit_edge
    i8 3, label %do.cond.i.if.then33.i.1_crit_edge21
  ]

do.cond.i.if.then33.i.1_crit_edge21:              ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33.i.1

do.cond.i.if.then33.i.1_crit_edge:                ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33.i.1

do.cond.i.if.end39.i.1_crit_edge:                 ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.1

if.then33.i.1:                                    ; preds = %do.cond.i.if.then33.i.1_crit_edge, %do.cond.i.if.then33.i.1_crit_edge21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen3_ops, i32 0, i32 9) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen3_ops, i32 0, i32 9), align 4
  %call35.i.1 = call i32 %71(ptr noundef %cyapa, ptr noundef nonnull %status.i, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.1)
  %tobool36.not.i.1 = icmp eq i32 %call35.i.1, 0
  br i1 %tobool36.not.i.1, label %if.then33.i.1.out_detected.i_crit_edge, label %if.end39thread-pre-split.i.1

if.then33.i.1.out_detected.i_crit_edge:           ; preds = %if.then33.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_detected.i

if.end39thread-pre-split.i.1:                     ; preds = %if.then33.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %.pr.i.1 = load i8, ptr %gen.i, align 4
  br label %if.end39.i.1

if.end39.i.1:                                     ; preds = %if.end39thread-pre-split.i.1, %do.cond.i.if.end39.i.1_crit_edge
  %73 = phi i8 [ %.pr.i.1, %if.end39thread-pre-split.i.1 ], [ %69, %do.cond.i.if.end39.i.1_crit_edge ]
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %73, label %if.end39.i.1.if.end60.i.1_crit_edge [
    i8 0, label %if.end39.i.1.if.then54.i.1_crit_edge
    i8 6, label %if.end39.i.1.if.then54.i.1_crit_edge22
    i8 5, label %if.end39.i.1.if.then54.i.1_crit_edge23
  ]

if.end39.i.1.if.then54.i.1_crit_edge23:           ; preds = %if.end39.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i.1

if.end39.i.1.if.then54.i.1_crit_edge22:           ; preds = %if.end39.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i.1

if.end39.i.1.if.then54.i.1_crit_edge:             ; preds = %if.end39.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i.1

if.end39.i.1.if.end60.i.1_crit_edge:              ; preds = %if.end39.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i.1

if.then54.i.1:                                    ; preds = %if.end39.i.1.if.then54.i.1_crit_edge, %if.end39.i.1.if.then54.i.1_crit_edge22, %if.end39.i.1.if.then54.i.1_crit_edge23
  %call56.i.1 = call i32 @cyapa_pip_state_parse(ptr noundef %cyapa, ptr noundef nonnull %status.i, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i.1)
  %tobool57.not.i.1 = icmp eq i32 %call56.i.1, 0
  br i1 %tobool57.not.i.1, label %if.then54.i.1.out_detected.i_crit_edge, label %if.then54.i.1.if.end60.i.1_crit_edge

if.then54.i.1.if.end60.i.1_crit_edge:             ; preds = %if.then54.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i.1

if.then54.i.1.out_detected.i_crit_edge:           ; preds = %if.then54.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_detected.i

if.end60.i.1:                                     ; preds = %if.then54.i.1.if.end60.i.1_crit_edge, %if.end39.i.1.if.end60.i.1_crit_edge
  %75 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %gen.i, align 4
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %76, label %if.end60.i.1.if.then83.i.1_crit_edge [
    i8 0, label %if.end60.i.1.land.lhs.true70.i.1_crit_edge
    i8 5, label %if.end60.i.1.land.lhs.true70.i.1_crit_edge24
  ]

if.end60.i.1.land.lhs.true70.i.1_crit_edge24:     ; preds = %if.end60.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true70.i.1

if.end60.i.1.land.lhs.true70.i.1_crit_edge:       ; preds = %if.end60.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true70.i.1

if.end60.i.1.if.then83.i.1_crit_edge:             ; preds = %if.end60.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83.i.1

land.lhs.true70.i.1:                              ; preds = %if.end60.i.1.land.lhs.true70.i.1_crit_edge, %if.end60.i.1.land.lhs.true70.i.1_crit_edge24
  br i1 %brmerge.i, label %land.lhs.true70.i.1.if.then83.i.1_crit_edge, label %if.then75.i.1

land.lhs.true70.i.1.if.then83.i.1_crit_edge:      ; preds = %land.lhs.true70.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83.i.1

if.then75.i.1:                                    ; preds = %land.lhs.true70.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen5_ops, i32 0, i32 9) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen5_ops, i32 0, i32 9), align 4
  %call77.i.1 = call i32 %78(ptr noundef %cyapa, ptr noundef nonnull %status.i, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.1)
  %tobool78.not.i.1 = icmp eq i32 %call77.i.1, 0
  br i1 %tobool78.not.i.1, label %if.then75.i.1.out_detected.i_crit_edge, label %if.then75.i.1.if.then83.i.1_crit_edge

if.then75.i.1.if.then83.i.1_crit_edge:            ; preds = %if.then75.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83.i.1

if.then75.i.1.out_detected.i_crit_edge:           ; preds = %if.then75.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_detected.i

if.then83.i.1:                                    ; preds = %if.then75.i.1.if.then83.i.1_crit_edge, %land.lhs.true70.i.1.if.then83.i.1_crit_edge, %if.end60.i.1.if.then83.i.1_crit_edge
  %79 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %client.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i.i) #10
  %81 = call ptr @memset(ptr %3, i32 255, i32 29)
  %82 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %buf.i.i, align 1
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 0, ptr %2, align 1
  %call.i.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %80, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.1)
  %cmp4.not.i.i.1 = icmp eq i32 %call.i.i.i.1, 3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i.i) #10
  br i1 %cmp4.not.i.i.1, label %if.end90.i.1, label %if.then83.i.1.error105.thread.loopexit.i_crit_edge

if.then83.i.1.error105.thread.loopexit.i_crit_edge: ; preds = %if.then83.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %error105.thread.loopexit.i

if.end90.i.1:                                     ; preds = %if.then83.i.1
  call void @msleep(i32 noundef 50) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #10
  %84 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %reg.addr.i.i, align 1
  %85 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %client.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #10
  %87 = call ptr @memset(ptr %4, i32 255, i32 16)
  %addr2.i.i.1 = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 1
  %88 = ptrtoint ptr %addr2.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %addr2.i.i.1, align 2
  %90 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %msgs.i.i, align 4
  %91 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i.i, align 2
  %92 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %4, align 4
  %93 = ptrtoint ptr %buf.i147.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %reg.addr.i.i, ptr %buf.i147.i, align 4
  %94 = load i16, ptr %addr2.i.i.1, align 2
  %95 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %arrayinit.element.i.i, align 4
  %96 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 1, ptr %flags6.i.i, align 2
  %97 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 3, ptr %len7.i.i, align 4
  %98 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %status.i, ptr %buf8.i.i, align 4
  %adapter.i.i.1 = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 3
  %99 = ptrtoint ptr %adapter.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %adapter.i.i.1, align 8
  %call.i.i.1 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.1)
  %cmp.not.i.i.1 = icmp eq i32 %call.i.i.1, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #10
  br i1 %cmp.not.i.i.1, label %if.end90.i.1.cyapa_get_state.exit.thread_crit_edge, label %if.end90.i.1.error105.thread.loopexit.i_crit_edge

if.end90.i.1.error105.thread.loopexit.i_crit_edge: ; preds = %if.end90.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %error105.thread.loopexit.i

if.end90.i.1.cyapa_get_state.exit.thread_crit_edge: ; preds = %if.end90.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_get_state.exit.thread

out_detected.i:                                   ; preds = %if.then75.i.1.out_detected.i_crit_edge, %if.then54.i.1.out_detected.i_crit_edge, %if.then33.i.1.out_detected.i_crit_edge, %if.then75.i.out_detected.i_crit_edge, %if.then54.i.out_detected.i_crit_edge, %if.then33.i.out_detected.i_crit_edge
  %101 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp101.i = icmp ult i32 %102, 2
  br i1 %cmp101.i, label %out_detected.i.cyapa_get_state.exit.thread_crit_edge, label %land.lhs.true

out_detected.i.cyapa_get_state.exit.thread_crit_edge: ; preds = %out_detected.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_get_state.exit.thread

error105.i:                                       ; preds = %if.end81.i.error105.i_crit_edge, %if.end12.i.error105.i_crit_edge
  %error.7.i = phi i32 [ %error.1.i, %if.end12.i.error105.i_crit_edge ], [ %error.5.i, %if.end81.i.error105.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.7.i)
  %cmp106.i = icmp slt i32 %error.7.i, 0
  br i1 %cmp106.i, label %error105.i.error105.thread.i_crit_edge, label %error105.i.cyapa_get_state.exit.thread_crit_edge

error105.i.cyapa_get_state.exit.thread_crit_edge: ; preds = %error105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_get_state.exit.thread

error105.i.error105.thread.i_crit_edge:           ; preds = %error105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error105.thread.i

error105.thread.loopexit.i:                       ; preds = %if.end90.i.1.error105.thread.loopexit.i_crit_edge, %if.then83.i.1.error105.thread.loopexit.i_crit_edge, %if.end90.i.error105.thread.loopexit.i_crit_edge, %if.then83.i.error105.thread.loopexit.i_crit_edge
  %call.i.lcssa169.sink171.i = phi i32 [ %call.i.i.i, %if.then83.i.error105.thread.loopexit.i_crit_edge ], [ %call.i.i, %if.end90.i.error105.thread.loopexit.i_crit_edge ], [ %call.i.i.i.1, %if.then83.i.1.error105.thread.loopexit.i_crit_edge ], [ %call.i.i.1, %if.end90.i.1.error105.thread.loopexit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa169.sink171.i)
  %cmp10.i.le.i = icmp slt i32 %call.i.lcssa169.sink171.i, 0
  %spec.select.i148.le.i = select i1 %cmp10.i.le.i, i32 %call.i.lcssa169.sink171.i, i32 -5
  br label %error105.thread.i

error105.thread.i:                                ; preds = %error105.thread.loopexit.i, %error105.i.error105.thread.i_crit_edge, %if.then.i.error105.thread.i_crit_edge
  %error.7161.i = phi i32 [ %error.7.i, %error105.i.error105.thread.i_crit_edge ], [ %call.i, %if.then.i.error105.thread.i_crit_edge ], [ %spec.select.i148.le.i, %error105.thread.loopexit.i ]
  br label %cyapa_get_state.exit.thread

cyapa_get_state.exit.thread:                      ; preds = %error105.thread.i, %error105.i.cyapa_get_state.exit.thread_crit_edge, %out_detected.i.cyapa_get_state.exit.thread_crit_edge, %if.end90.i.1.cyapa_get_state.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -11, %error105.i.cyapa_get_state.exit.thread_crit_edge ], [ %error.7161.i, %error105.thread.i ], [ -11, %out_detected.i.cyapa_get_state.exit.thread_crit_edge ], [ -11, %if.end90.i.1.cyapa_get_state.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status.i) #10
  br label %if.end

land.lhs.true:                                    ; preds = %out_detected.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status.i) #10
  %103 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp = icmp ugt i32 %104, 1
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %cyapa_get_state.exit.thread
  %retval.0.i11 = phi i32 [ %retval.0.i.ph, %cyapa_get_state.exit.thread ], [ 0, %land.lhs.true.if.end_crit_edge ]
  call void @msleep(i32 noundef 100) #10
  %dec = add nsw i32 %tries.0, -1
  %tobool1.not = icmp eq i32 %tries.0, 0
  br i1 %tobool1.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %if.end
  %105 = zext i32 %retval.0.i11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %retval.0.i11, label %cond.false [
    i32 -11, label %do.end.cleanup_crit_edge
    i32 -110, label %do.end.cleanup_crit_edge25
  ]

do.end.cleanup_crit_edge25:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge25, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i11, %cond.false ], [ -110, %do.end.cleanup_crit_edge ], [ -110, %do.end.cleanup_crit_edge25 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext %sleep_time) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.umax.i16(i16 %sleep_time, i16 20)
  %1 = tail call i16 @llvm.umin.i16(i16 %0, i16 1000)
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %1)
  %cmp19 = icmp ult i16 %1, 100
  %div38 = udiv i16 %1, 10
  %div2539 = udiv i16 %1, 20
  %narrow = add nuw nsw i16 %div2539, 5
  %cond27.v = select i1 %cmp19, i16 %div38, i16 %narrow
  %cond27.tr = trunc i16 %cond27.v to i8
  %conv30 = shl i8 %cond27.tr, 2
  ret i8 %conv30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @cyapa_pwr_cmd_to_sleep_time(i8 noundef zeroext %pwr_mode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i8 %pwr_mode, 2
  %conv2 = zext i8 %0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %pwr_mode)
  %cmp = icmp ult i8 %pwr_mode, 40
  %mul = mul nuw nsw i32 %conv2, 10
  %1 = mul nuw nsw i32 %conv2, 20
  %mul6 = add nuw nsw i32 %1, 65436
  %cond = select i1 %cmp, i32 %mul, i32 %mul6
  %conv7 = trunc i32 %cond to i16
  ret i16 %conv7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cyapa_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cyapa_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @cyapa_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_i2c_reg_read_block(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_read_block(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_state_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_probe(ptr noundef %client, ptr nocapture noundef readnone %dev_id) #1 align 64 {
entry:
  %dummy = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %dummy) #10
  %0 = call ptr @memset(ptr %dummy, i32 255, i32 34)
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i, align 8
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i.i = tail call i32 %6(ptr noundef %2) #10
  %7 = trunc i32 %call.i.i.i to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i, align 8
  %algo.i.i13.i = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %algo.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %algo.i.i13.i, align 8
  %functionality.i.i14.i = getelementptr inbounds %struct.i2c_algorithm, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %functionality.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %functionality.i.i14.i, align 4
  %call.i.i15.i = tail call i32 %14(ptr noundef %10) #10
  %and.i16.i = and i32 %call.i.i15.i, 253231104
  call void @__sanitizer_cov_trace_const_cmp4(i32 253231104, i32 %and.i16.i)
  %cmp.i17.not.i = icmp eq i32 %and.i16.i, 253231104
  %15 = or i8 %8, 2
  %ret.1.i = select i1 %cmp.i17.not.i, i8 %15, i8 %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.1.i)
  %cmp = icmp eq i8 %ret.1.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr, align 2
  %call3 = call i32 @i2c_smbus_xfer(ptr noundef %17, i16 noundef zeroext %19, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %dummy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1008, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ret.1.i)
  %cmp12 = icmp eq i8 %ret.1.i, 2
  br i1 %cmp12, label %if.then14, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %smbus = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %smbus to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %smbus, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10.if.end15_crit_edge
  %client16 = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %client16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %client, ptr %client16, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %phys = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr, align 4
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr, align 2
  %conv19 = zext i16 %28 to i32
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %phys, ptr noundef nonnull @.str.6, i32 noundef %26, i32 noundef %conv19)
  %call21 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  %vcc = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call21, ptr %vcc, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %call21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %30) #13
  br label %cleanup

if.end30:                                         ; preds = %if.end15
  %call32 = call i32 @regulator_enable(ptr noundef %call21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end38, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call32) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %call.i159 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @cyapa_disable_regulator, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool.not.i = icmp eq i32 %call.i159, 0
  br i1 %tobool.not.i, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vcc, align 4
  %call.i175 = call i32 @regulator_disable(ptr noundef %32) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call.i159) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %call.i, align 4
  %gen.i = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 21
  %34 = ptrtoint ptr %gen.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %gen.i, align 4
  %state_sync_lock.i = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 33
  call void @__mutex_init(ptr noundef %state_sync_lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @cyapa_initialize.__key) #10
  %suspend_power_mode.i = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %suspend_power_mode.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 20, ptr %suspend_power_mode.i, align 2
  %suspend_sleep_time.i = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 10
  %36 = ptrtoint ptr %suspend_sleep_time.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 50, ptr %suspend_sleep_time.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen3_ops, i32 0, i32 8) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen3_ops, i32 0, i32 8), align 4
  %call2.i = call i32 %37(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i160 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i160, label %if.end.i, label %if.end45.do.end51_crit_edge

if.end45.do.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.end.i:                                         ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen5_ops, i32 0, i32 8) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen5_ops, i32 0, i32 8), align 4
  %call3.i = call i32 %38(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %if.end.i.do.end51_crit_edge

if.end.i.do.end51_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.end7.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen6_ops, i32 0, i32 8) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen6_ops, i32 0, i32 8), align 4
  %call6.i = call i32 %39(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end7.i.do.end51_crit_edge

if.end7.i.do.end51_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.end10.i:                                       ; preds = %if.end7.i
  %call11.i = call fastcc i32 @cyapa_detect(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.do.end51_crit_edge

if.end10.i.do.end51_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.end14.i:                                       ; preds = %if.end10.i
  %operational.i = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %operational.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %operational.i, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool15.not.i = icmp eq i8 %41, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end52_crit_edge, label %if.then16.i

if.end14.i.if.end52_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 34
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %set_power_mode.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %set_power_mode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_power_mode.i, align 4
  %call17.i = call i32 %45(ptr noundef nonnull %call.i, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1) #10
  br label %if.end52

do.end51:                                         ; preds = %if.end10.i.do.end51_crit_edge, %if.end7.i.do.end51_crit_edge, %if.end.i.do.end51_crit_edge, %if.end45.do.end51_crit_edge
  %retval.0.i.ph = phi i32 [ %call2.i, %if.end45.do.end51_crit_edge ], [ %call3.i, %if.end.i.do.end51_crit_edge ], [ %call11.i, %if.end10.i.do.end51_crit_edge ], [ %call6.i, %if.end7.i.do.end51_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end52:                                         ; preds = %if.then16.i, %if.end14.i.if.end52_crit_edge
  %call53 = call i32 @devm_device_add_group(ptr noundef %dev1, ptr noundef nonnull @cyapa_sysfs_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call53) #13
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %46 = ptrtoint ptr %client16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client16, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %can_wakeup.i.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4, i32 12, i32 1
  %48 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.i)
  %tobool.i.i = icmp slt i16 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %if.then.i163, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then.i163:                                     ; preds = %if.end59
  %call3.i161 = call i32 @sysfs_merge_group(ptr noundef %dev2.i, ptr noundef nonnull @cyapa_power_wakeup_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i161)
  %tobool.not.i162 = icmp eq i32 %call3.i161, 0
  br i1 %tobool.not.i162, label %if.end.i164, label %do.end.i

do.end.i:                                         ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.85, i32 noundef %call3.i161) #13
  br label %do.end65

if.end.i164:                                      ; preds = %if.then.i163
  %call.i.i = call i32 @devm_add_action(ptr noundef %dev2.i, ptr noundef nonnull @cyapa_remove_power_wakeup_group, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i164.if.end66_crit_edge, label %do.end10.i

if.end.i164.if.end66_crit_edge:                   ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

do.end10.i:                                       ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %client16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client16, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  call void @sysfs_unmerge_group(ptr noundef %dev.i.i, ptr noundef nonnull @cyapa_power_wakeup_group) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.88, i32 noundef %call.i.i) #13
  br label %do.end65

do.end65:                                         ; preds = %do.end10.i, %do.end.i
  %retval.0.i165 = phi i32 [ %call3.i161, %do.end.i ], [ %call.i.i, %do.end10.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i165) #13
  br label %cleanup

if.end66:                                         ; preds = %if.end.i164.if.end66_crit_edge, %if.end59.if.end66_crit_edge
  %51 = ptrtoint ptr %client16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %client16, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  %runtime_suspend_power_mode.i = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 11
  %53 = ptrtoint ptr %runtime_suspend_power_mode.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 12, ptr %runtime_suspend_power_mode.i, align 2
  %runtime_suspend_sleep_time.i = getelementptr inbounds %struct.cyapa, ptr %call.i, i32 0, i32 12
  %54 = ptrtoint ptr %runtime_suspend_sleep_time.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 30, ptr %runtime_suspend_sleep_time.i, align 4
  %call3.i166 = call i32 @sysfs_merge_group(ptr noundef %dev1.i, ptr noundef nonnull @cyapa_power_runtime_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i166)
  %tobool.not.i167 = icmp eq i32 %call3.i166, 0
  br i1 %tobool.not.i167, label %if.end.i171, label %do.end.i168

do.end.i168:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.94, i32 noundef %call3.i166) #13
  br label %do.end72

if.end.i171:                                      ; preds = %if.end66
  %call.i.i169 = call i32 @devm_add_action(ptr noundef %dev1.i, ptr noundef nonnull @cyapa_remove_power_runtime_group, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169)
  %tobool.not.i.i170 = icmp eq i32 %call.i.i169, 0
  br i1 %tobool.not.i.i170, label %if.end73, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %client16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client16, align 4
  %dev.i.i172 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  call void @sysfs_unmerge_group(ptr noundef %dev.i.i172, ptr noundef nonnull @cyapa_power_runtime_group) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.97, i32 noundef %call.i.i169) #13
  br label %do.end72

do.end72:                                         ; preds = %do.end9.i, %do.end.i168
  %retval.0.i174.ph = phi i32 [ %call.i.i169, %do.end9.i ], [ %call3.i166, %do.end.i168 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i174.ph) #13
  br label %cleanup

if.end73:                                         ; preds = %if.end.i171
  %call.i28.i = call i32 @__pm_runtime_set_status(ptr noundef %dev1.i, i32 noundef 2) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1.i, i1 noundef zeroext true) #10
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1.i, i32 noundef 2000) #10
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  %call74 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %58, ptr noundef null, ptr noundef nonnull @cyapa_irq, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end80, label %do.end79

do.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call74) #13
  br label %cleanup

if.end80:                                         ; preds = %if.end73
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %60) #10
  %61 = ptrtoint ptr %operational.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %operational.i, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool82.not = icmp eq i8 %62, 0
  br i1 %tobool82.not, label %if.end80.cleanup_crit_edge, label %if.then83

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then83:                                        ; preds = %if.end80
  %call84 = call fastcc i32 @cyapa_create_input_dev(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then83.cleanup_crit_edge, label %do.end89

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end89:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %call84) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %if.then83.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %do.end79, %do.end72, %do.end65, %do.end58, %do.end51, %do.end44, %do.end37, %if.then24, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %30, %if.then24 ], [ %call32, %do.end37 ], [ %call.i159, %do.end44 ], [ %retval.0.i.ph, %do.end51 ], [ %call53, %do.end58 ], [ %retval.0.i165, %do.end65 ], [ %retval.0.i174.ph, %do.end72 ], [ %call74, %do.end79 ], [ %call84, %do.end89 ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.then83.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %dummy) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyapa_disable_regulator(ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vcc = getelementptr inbounds %struct.cyapa, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcc, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_irq(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %can_wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pm_wakeup_dev_event(ptr noundef %dev1, i32 noundef 0, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ops = getelementptr inbounds %struct.cyapa, ptr %dev_id, i32 0, i32 34
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %irq_cmd_handler = getelementptr inbounds %struct.cyapa_dev_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %irq_cmd_handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_cmd_handler, align 4
  %call2 = tail call zeroext i1 %8(ptr noundef %dev_id) #10
  br i1 %call2, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then3:                                         ; preds = %if.end
  %input = getelementptr inbounds %struct.cyapa, ptr %dev_id, i32 0, i32 5
  %9 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %sort_empty_output_data = getelementptr inbounds %struct.cyapa_dev_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %sort_empty_output_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sort_empty_output_data, align 4
  %call6 = tail call i32 %14(ptr noundef %dev_id, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br label %out

if.end7:                                          ; preds = %if.then3
  %operational = getelementptr inbounds %struct.cyapa, ptr %dev_id, i32 0, i32 2
  %15 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  br i1 %tobool8.not, label %if.end7.if.then18_crit_edge, label %if.end14

if.end7.if.then18_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.end14:                                         ; preds = %if.end7
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %irq_handler = getelementptr inbounds %struct.cyapa_dev_ops, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_handler, align 4
  %call11 = tail call i32 %20(ptr noundef %dev_id) #10
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #10
  %call.i48 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i48, ptr %last_busy.i, align 8
  %call.i49 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 12) #10
  %22 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool16.not = icmp ne i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool17.not = icmp eq i32 %call11, 0
  %or.cond = select i1 %tobool16.not, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %if.end14.out_crit_edge, label %if.end14.if.then18_crit_edge

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then18:                                        ; preds = %if.end14.if.then18_crit_edge, %if.end7.if.then18_crit_edge
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %dev_id, i32 0, i32 33
  %call19 = tail call i32 @mutex_trylock(ptr noundef %state_sync_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %sort_empty_output_data23 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %sort_empty_output_data23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sort_empty_output_data23, align 4
  %call24 = tail call i32 %27(ptr noundef %dev_id, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br label %out

if.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call fastcc i32 @cyapa_reinitialize(ptr noundef %dev_id)
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  br label %out

out:                                              ; preds = %if.end25, %if.then21, %if.end14.out_crit_edge, %if.then4, %if.end.out_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_create_input_dev(ptr noundef %cyapa) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %physical_size_x = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 24
  %2 = ptrtoint ptr %physical_size_x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %physical_size_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %physical_size_y = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 25
  %4 = ptrtoint ptr %physical_size_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %physical_size_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #10
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.102) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.104, ptr %call, align 8
  %phys = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 6
  %phys6 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %phys6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %phys, ptr %phys6, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 24, ptr %id, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %version, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %product, align 4
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev10, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 31
  %14 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cyapa_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 32
  %15 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cyapa_close, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cyapa, ptr %driver_data.i.i, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %17 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %evbit, align 4
  %or.i = or i32 %18, 8
  store i32 %or.i, ptr %evbit, align 4
  %max_abs_x = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 22
  %19 = ptrtoint ptr %max_abs_x to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_abs_x, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 53, i32 noundef 0, i32 noundef %20, i32 noundef 0, i32 noundef 0) #10
  %max_abs_y = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 23
  %21 = ptrtoint ptr %max_abs_y to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_abs_y, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 54, i32 noundef 0, i32 noundef %22, i32 noundef 0, i32 noundef 0) #10
  %max_z = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 32
  %23 = ptrtoint ptr %max_z to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_z, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 58, i32 noundef 0, i32 noundef %24, i32 noundef 0, i32 noundef 0) #10
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %25 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp = icmp ugt i8 %26, 3
  br i1 %cmp, label %if.end15, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end15:                                         ; preds = %if.end5
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #10
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 49, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #10
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 52, i32 noundef -127, i32 noundef 127, i32 noundef 0, i32 noundef 0) #10
  %27 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr = load i8, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr)
  %cmp18 = icmp ugt i8 %.pr, 4
  br i1 %cmp18, label %if.then20, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 50, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #10
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 51, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #10
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 25, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end15.if.end21_crit_edge, %if.end5.if.end21_crit_edge
  %28 = ptrtoint ptr %max_abs_x to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_abs_x, align 4
  %30 = ptrtoint ptr %physical_size_x to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %physical_size_x, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call) #10
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 26
  %32 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end21.input_abs_set_res.exit_crit_edge, label %if.then.i

if.end21.input_abs_set_res.exit_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %div = sdiv i32 %29, %31
  %resolution.i = getelementptr %struct.input_absinfo, ptr %33, i32 53, i32 5
  %34 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.end21.input_abs_set_res.exit_crit_edge
  %35 = ptrtoint ptr %max_abs_y to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_abs_y, align 4
  %37 = ptrtoint ptr %physical_size_y to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %physical_size_y, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call) #10
  %39 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i134 = icmp eq ptr %40, null
  br i1 %tobool.not.i134, label %input_abs_set_res.exit.input_abs_set_res.exit137_crit_edge, label %if.then.i136

input_abs_set_res.exit.input_abs_set_res.exit137_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_set_res.exit137

if.then.i136:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  %div26 = sdiv i32 %36, %38
  %resolution.i135 = getelementptr %struct.input_absinfo, ptr %40, i32 54, i32 5
  %41 = ptrtoint ptr %resolution.i135 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div26, ptr %resolution.i135, align 4
  br label %input_abs_set_res.exit137

input_abs_set_res.exit137:                        ; preds = %if.then.i136, %input_abs_set_res.exit.input_abs_set_res.exit137_crit_edge
  %btn_capability = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 20
  %42 = ptrtoint ptr %btn_capability to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %btn_capability, align 1
  %44 = and i8 %43, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool28.not = icmp eq i8 %44, 0
  br i1 %tobool28.not, label %input_abs_set_res.exit137.if.end31_crit_edge, label %if.then29

input_abs_set_res.exit137.if.end31_crit_edge:     ; preds = %input_abs_set_res.exit137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %input_abs_set_res.exit137
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 8
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i, align 4
  %or.i127 = or i32 %46, 65536
  store i32 %or.i127, ptr %add.ptr.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %input_abs_set_res.exit137.if.end31_crit_edge
  %47 = ptrtoint ptr %btn_capability to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %btn_capability, align 1
  %49 = and i8 %48, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool35.not = icmp eq i8 %49, 0
  br i1 %tobool35.not, label %if.end31.if.end39_crit_edge, label %if.then36

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i128 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 8
  %50 = ptrtoint ptr %add.ptr.i128 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i128, align 4
  %or.i129 = or i32 %51, 262144
  store i32 %or.i129, ptr %add.ptr.i128, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end31.if.end39_crit_edge
  %52 = ptrtoint ptr %btn_capability to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %btn_capability, align 1
  %54 = and i8 %53, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool43.not = icmp eq i8 %54, 0
  br i1 %tobool43.not, label %if.end39.if.end47_crit_edge, label %if.then44

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i130 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 8
  %55 = ptrtoint ptr %add.ptr.i130 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i130, align 4
  %or.i131 = or i32 %56, 131072
  store i32 %or.i131, ptr %add.ptr.i130, align 4
  %57 = ptrtoint ptr %btn_capability to i32
  call void @__asan_load1_noabort(i32 %57)
  %.pr139 = load i8, ptr %btn_capability, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end39.if.end47_crit_edge
  %58 = phi i8 [ %.pr139, %if.then44 ], [ %53, %if.end39.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %58)
  %cmp50 = icmp eq i8 %58, 8
  br i1 %cmp50, label %if.then52, label %if.end47.if.end54_crit_edge

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 4
  %59 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %propbit, align 4
  %or.i132 = or i32 %60, 4
  store i32 %or.i132, ptr %propbit, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end47.if.end54_crit_edge
  %call55 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call, i32 noundef 15, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end61, label %do.end60

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, i32 noundef %call55) #13
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %call62 = tail call i32 @input_register_device(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end68, label %do.end67

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.109, i32 noundef %call62) #13
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %input69 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 5
  %61 = ptrtoint ptr %input69 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call, ptr %input69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end67, %do.end60, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %do.end60 ], [ %call62, %do.end67 ], [ 0, %if.end68 ], [ -12, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_detect(ptr noundef %cyapa) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @cyapa_poll_state(ptr noundef %cyapa, i32 noundef 4000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cyapa_check_is_operational.exit_crit_edge

entry.cyapa_check_is_operational.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_check_is_operational.exit

if.end.i:                                         ; preds = %entry
  %gen.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %2 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gen.i, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %3, label %if.end.i.do.end8_crit_edge [
    i8 6, label %if.end.i.sw.epilog.i_crit_edge
    i8 5, label %sw.bb1.i
    i8 3, label %sw.bb3.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.i.do.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %cyapa_gen3_ops.sink.i = phi ptr [ @cyapa_gen3_ops, %sw.bb3.i ], [ @cyapa_gen5_ops, %sw.bb1.i ], [ @cyapa_gen6_ops, %if.end.i.sw.epilog.i_crit_edge ]
  %ops4.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 34
  %5 = ptrtoint ptr %ops4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cyapa_gen3_ops.sink.i, ptr %ops4.i, align 4
  %operational_check.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %cyapa_gen3_ops.sink.i, i32 0, i32 10
  %6 = ptrtoint ptr %operational_check.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %operational_check.i, align 4
  %call6.i = tail call i32 %7(ptr noundef %cyapa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %sw.epilog.i.if.else.i_crit_edge

sw.epilog.i.if.else.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %8 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gen.i, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %9, label %land.lhs.true.i.if.else.i_crit_edge [
    i8 6, label %land.lhs.true.i.i.i
    i8 5, label %land.lhs.true8.i.i.i
    i8 3, label %land.lhs.true.i.i
  ]

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp2.i.i.i = icmp eq i32 %12, 8
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true.i.i.i.if.else.i_crit_edge

land.lhs.true.i.i.i.if.else.i_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i.i.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

land.lhs.true8.i.i.i:                             ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp10.i.i.i = icmp eq i32 %14, 6
  br i1 %cmp10.i.i.i, label %land.lhs.true8.i.i.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true8.i.i.i.if.else.i_crit_edge

land.lhs.true8.i.i.i.if.else.i_crit_edge:         ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true8.i.i.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i
  %15 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp2.i.i = icmp eq i32 %16, 4
  br i1 %cmp2.i.i, label %land.lhs.true.i.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true.i.i.if.else.i_crit_edge

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.i.if.else.i_crit_edge, %land.lhs.true8.i.i.i.if.else.i_crit_edge, %land.lhs.true.i.i.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %sw.epilog.i.if.else.i_crit_edge
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %land.lhs.true.i.i.cleanup.sink.split.i_crit_edge, %land.lhs.true8.i.i.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.i.cleanup.sink.split.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.cleanup.sink.split.i_crit_edge ], [ 1, %land.lhs.true8.i.i.i.cleanup.sink.split.i_crit_edge ]
  %operational.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 2
  %17 = ptrtoint ptr %operational.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink.i, ptr %operational.i, align 1
  br label %cyapa_check_is_operational.exit

cyapa_check_is_operational.exit:                  ; preds = %cleanup.sink.split.i, %entry.cyapa_check_is_operational.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.cyapa_check_is_operational.exit_crit_edge ], [ %call6.i, %cleanup.sink.split.i ]
  %18 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %retval.0.i, label %land.lhs.true3 [
    i32 0, label %cyapa_check_is_operational.exit.cleanup_crit_edge
    i32 -110, label %cyapa_check_is_operational.exit.do.end8_crit_edge
    i32 -19, label %cyapa_check_is_operational.exit.do.end8_crit_edge25
  ]

cyapa_check_is_operational.exit.do.end8_crit_edge25: ; preds = %cyapa_check_is_operational.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

cyapa_check_is_operational.exit.do.end8_crit_edge: ; preds = %cyapa_check_is_operational.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

cyapa_check_is_operational.exit.cleanup_crit_edge: ; preds = %cyapa_check_is_operational.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true3:                                   ; preds = %cyapa_check_is_operational.exit
  %gen.i.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %19 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %gen.i.i, align 4
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %20, label %land.lhs.true3.do.end8_crit_edge [
    i8 6, label %land.lhs.true.i.i19
    i8 5, label %land.lhs.true8.i.i
    i8 3, label %land.lhs.true.i20
  ]

land.lhs.true3.do.end8_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true.i.i19:                              ; preds = %land.lhs.true3
  %22 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %23)
  %cmp2.i.i18 = icmp eq i32 %23, 7
  br i1 %cmp2.i.i18, label %land.lhs.true.i.i19.do.end_crit_edge, label %land.lhs.true.i.i19.do.end8_crit_edge

land.lhs.true.i.i19.do.end8_crit_edge:            ; preds = %land.lhs.true.i.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true.i.i19.do.end_crit_edge:             ; preds = %land.lhs.true.i.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true8.i.i:                               ; preds = %land.lhs.true3
  %24 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp10.i.i = icmp eq i32 %25, 5
  br i1 %cmp10.i.i, label %land.lhs.true8.i.i.do.end_crit_edge, label %land.lhs.true8.i.i.do.end8_crit_edge

land.lhs.true8.i.i.do.end8_crit_edge:             ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true8.i.i.do.end_crit_edge:              ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true.i20:                                ; preds = %land.lhs.true3
  %26 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cyapa, align 4
  %28 = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %land.lhs.true.i20.do.end_crit_edge, label %land.lhs.true.i20.do.end8_crit_edge

land.lhs.true.i20.do.end8_crit_edge:              ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true.i20.do.end_crit_edge:               ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.i20.do.end_crit_edge, %land.lhs.true8.i.i.do.end_crit_edge, %land.lhs.true.i.i19.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.36) #13
  br label %cleanup

do.end8:                                          ; preds = %land.lhs.true.i20.do.end8_crit_edge, %land.lhs.true8.i.i.do.end8_crit_edge, %land.lhs.true.i.i19.do.end8_crit_edge, %land.lhs.true3.do.end8_crit_edge, %cyapa_check_is_operational.exit.do.end8_crit_edge, %cyapa_check_is_operational.exit.do.end8_crit_edge25, %if.end.i.do.end8_crit_edge
  %retval.0.i23 = phi i32 [ %retval.0.i, %cyapa_check_is_operational.exit.do.end8_crit_edge ], [ %retval.0.i, %cyapa_check_is_operational.exit.do.end8_crit_edge25 ], [ %retval.0.i, %land.lhs.true3.do.end8_crit_edge ], [ %retval.0.i, %land.lhs.true.i.i19.do.end8_crit_edge ], [ %retval.0.i, %land.lhs.true8.i.i.do.end8_crit_edge ], [ %retval.0.i, %land.lhs.true.i20.do.end8_crit_edge ], [ -19, %if.end.i.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i23) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %do.end, %cyapa_check_is_operational.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %retval.0.i23, %do.end8 ], [ %retval.0.i, %cyapa_check_is_operational.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_show_fm_ver(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw_maj_ver = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %fw_maj_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_maj_ver, align 1
  %conv = zext i8 %3 to i32
  %fw_min_ver = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %fw_min_ver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_min_ver, align 2
  %conv2 = zext i8 %5 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %conv2) #10
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_show_product_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %product_id = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 16
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.45, ptr noundef %product_id) #10
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_update_fw_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #1 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  %fw_name = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %fw_name) #10
  %2 = call ptr @memset(ptr %fw_name, i32 255, i32 255)
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %count)
  %cmp = icmp ugt i32 %count, 254
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memcpy(ptr %fw_name, ptr %buf, i32 %count)
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr [255 x i8], ptr %fw_name, i32 0, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp1 = icmp eq i8 %5, 10
  %arrayidx6 = getelementptr [255 x i8], ptr %fw_name, i32 0, i32 %count
  %arrayidx6.sink = select i1 %cmp1, ptr %arrayidx, ptr %arrayidx6
  %6 = ptrtoint ptr %arrayidx6.sink to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx6.sink, align 1
  %input = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_unregister_device(ptr noundef nonnull %8) #10
  %9 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %input, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call12 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call fastcc i32 @cyapa_reinitialize(ptr noundef %1)
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %client.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #10
  %12 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !261
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %fw_name, ptr noundef %dev1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cyapa_firmware.exit.thread

cyapa_firmware.exit.thread:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.58, ptr noundef nonnull %fw_name, i32 noundef %call.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  br label %do.end23

if.end.i:                                         ; preds = %if.end16
  %ops.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw.i, align 4
  %call2.i = call i32 %16(ptr noundef %1, ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end8.i, label %cyapa_firmware.exit.thread84

cyapa_firmware.exit.thread84:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.61, ptr noundef nonnull %fw_name) #13
  %19 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  br label %do.end23

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end8.i.if.then5.i.i_crit_edge, label %lor.lhs.false.i.i

if.end8.i.if.then5.i.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i.i

lor.lhs.false.i.i:                                ; preds = %if.end8.i
  %call.i78.i = call zeroext i1 @input_device_enabled(ptr noundef nonnull %22) #10
  br i1 %call.i78.i, label %lor.lhs.false.i.i.cyapa_enable_irq_for_cmd.exit.i_crit_edge, label %lor.lhs.false3.critedge.i.i

lor.lhs.false.i.i.cyapa_enable_irq_for_cmd.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_enable_irq_for_cmd.exit.i

lor.lhs.false3.critedge.i.i:                      ; preds = %lor.lhs.false.i.i
  %operational.i.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %operational.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %operational.i.i, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false3.critedge.i.i.if.end.i.i_crit_edge, label %lor.lhs.false3.critedge.i.i.if.then5.i.i_crit_edge

lor.lhs.false3.critedge.i.i.if.then5.i.i_crit_edge: ; preds = %lor.lhs.false3.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i.i

lor.lhs.false3.critedge.i.i.if.end.i.i_crit_edge: ; preds = %lor.lhs.false3.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then5.i.i:                                     ; preds = %lor.lhs.false3.critedge.i.i.if.then5.i.i_crit_edge, %if.end8.i.if.then5.i.i_crit_edge
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %set_power_mode.i.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %set_power_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_power_mode.i.i, align 4
  %call6.i.i = call i32 %28(ptr noundef %1, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then5.i.i, %lor.lhs.false3.critedge.i.i.if.end.i.i_crit_edge
  %gen.i.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 21
  %29 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %gen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp.i.i = icmp ugt i8 %30, 4
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.end.i.i.cyapa_enable_irq_for_cmd.exit.i_crit_edge

if.end.i.i.cyapa_enable_irq_for_cmd.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_enable_irq_for_cmd.exit.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i, align 4
  %irq.i.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i.i, align 4
  call void @enable_irq(i32 noundef %34) #10
  br label %cyapa_enable_irq_for_cmd.exit.i

cyapa_enable_irq_for_cmd.exit.i:                  ; preds = %if.then8.i.i, %if.end.i.i.cyapa_enable_irq_for_cmd.exit.i_crit_edge, %lor.lhs.false.i.i.cyapa_enable_irq_for_cmd.exit.i_crit_edge
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %bl_enter.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %bl_enter.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bl_enter.i, align 4
  %call11.i = call i32 %38(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end17.i, label %do.end16.i

do.end16.i:                                       ; preds = %cyapa_enable_irq_for_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.64, i32 noundef %call11.i) #13
  br label %err_detect.i

if.end17.i:                                       ; preds = %cyapa_enable_irq_for_cmd.exit.i
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %bl_activate.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %bl_activate.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bl_activate.i, align 4
  %call19.i = call i32 %42(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end25.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.67, i32 noundef %call19.i) #13
  br label %err_detect.i

if.end25.i:                                       ; preds = %if.end17.i
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %bl_initiate.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %bl_initiate.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bl_initiate.i, align 4
  %47 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw.i, align 4
  %call27.i = call i32 %46(ptr noundef %1, ptr noundef %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end33.i, label %do.end32.i

do.end32.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.70, i32 noundef %call27.i) #13
  br label %err_detect.i

if.end33.i:                                       ; preds = %if.end25.i
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %update_fw.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %update_fw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %update_fw.i, align 4
  %53 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i, align 4
  %call35.i = call i32 %52(ptr noundef %1, ptr noundef %54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.err_detect.i_crit_edge, label %do.end40.i

if.end33.i.err_detect.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_detect.i

do.end40.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.73, i32 noundef %call35.i) #13
  br label %err_detect.i

err_detect.i:                                     ; preds = %do.end40.i, %if.end33.i.err_detect.i_crit_edge, %do.end32.i, %do.end24.i, %do.end16.i
  %error.0.i = phi i32 [ %call11.i, %do.end16.i ], [ %call19.i, %do.end24.i ], [ %call27.i, %do.end32.i ], [ %call35.i, %do.end40.i ], [ 0, %if.end33.i.err_detect.i_crit_edge ]
  %55 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input, align 4
  %tobool.not.i80.i = icmp eq ptr %56, null
  br i1 %tobool.not.i80.i, label %err_detect.i.if.then.i.i_crit_edge, label %lor.lhs.false.i82.i

err_detect.i.if.then.i.i_crit_edge:               ; preds = %err_detect.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i82.i:                              ; preds = %err_detect.i
  %call.i81.i = call zeroext i1 @input_device_enabled(ptr noundef nonnull %56) #10
  br i1 %call.i81.i, label %lor.lhs.false.i82.i.cyapa_disable_irq_for_cmd.exit.i_crit_edge, label %lor.lhs.false.i82.i.if.then.i.i_crit_edge

lor.lhs.false.i82.i.if.then.i.i_crit_edge:        ; preds = %lor.lhs.false.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i82.i.cyapa_disable_irq_for_cmd.exit.i_crit_edge: ; preds = %lor.lhs.false.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_disable_irq_for_cmd.exit.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i82.i.if.then.i.i_crit_edge, %err_detect.i.if.then.i.i_crit_edge
  %gen.i83.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 21
  %57 = ptrtoint ptr %gen.i83.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %gen.i83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %58)
  %cmp.i84.i = icmp ugt i8 %58, 4
  br i1 %cmp.i84.i, label %if.then3.i.i, label %if.then.i.i.if.end.i87.i_crit_edge

if.then.i.i.if.end.i87.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i87.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client.i, align 4
  %irq.i86.i = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %irq.i86.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq.i86.i, align 4
  call void @disable_irq(i32 noundef %62) #10
  br label %if.end.i87.i

if.end.i87.i:                                     ; preds = %if.then3.i.i, %if.then.i.i.if.end.i87.i_crit_edge
  br i1 %tobool.not.i80.i, label %if.end.i87.i.if.then8.i91.i_crit_edge, label %lor.lhs.false5.i.i

if.end.i87.i.if.then8.i91.i_crit_edge:            ; preds = %if.end.i87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i91.i

lor.lhs.false5.i.i:                               ; preds = %if.end.i87.i
  %operational.i88.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %operational.i88.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %operational.i88.i, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool6.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false5.i.i.cyapa_disable_irq_for_cmd.exit.i_crit_edge, label %lor.lhs.false5.i.i.if.then8.i91.i_crit_edge

lor.lhs.false5.i.i.if.then8.i91.i_crit_edge:      ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i91.i

lor.lhs.false5.i.i.cyapa_disable_irq_for_cmd.exit.i_crit_edge: ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_disable_irq_for_cmd.exit.i

if.then8.i91.i:                                   ; preds = %lor.lhs.false5.i.i.if.then8.i91.i_crit_edge, %if.end.i87.i.if.then8.i91.i_crit_edge
  %65 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i, align 4
  %set_power_mode.i90.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %set_power_mode.i90.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_power_mode.i90.i, align 4
  %call9.i.i = call i32 %68(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1) #10
  br label %cyapa_disable_irq_for_cmd.exit.i

cyapa_disable_irq_for_cmd.exit.i:                 ; preds = %if.then8.i91.i, %lor.lhs.false5.i.i.cyapa_disable_irq_for_cmd.exit.i_crit_edge, %lor.lhs.false.i82.i.cyapa_disable_irq_for_cmd.exit.i_crit_edge
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !263
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !264
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %cyapa_disable_irq_for_cmd.exit.i.cyapa_firmware.exit_crit_edge, label %do.end11.i.i.i.i.i

cyapa_disable_irq_for_cmd.exit.i.cyapa_firmware.exit_crit_edge: ; preds = %cyapa_disable_irq_for_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_firmware.exit

do.end11.i.i.i.i.i:                               ; preds = %cyapa_disable_irq_for_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !265
  br label %cyapa_firmware.exit

cyapa_firmware.exit:                              ; preds = %do.end11.i.i.i.i.i, %cyapa_disable_irq_for_cmd.exit.i.cyapa_firmware.exit_crit_edge
  %70 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %71) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool19.not = icmp eq i32 %error.0.i, 0
  br i1 %tobool19.not, label %do.body25, label %cyapa_firmware.exit.do.end23_crit_edge

cyapa_firmware.exit.do.end23_crit_edge:           ; preds = %cyapa_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

do.end23:                                         ; preds = %cyapa_firmware.exit.do.end23_crit_edge, %cyapa_firmware.exit.thread84, %cyapa_firmware.exit.thread
  %retval.0.i7781 = phi i32 [ %call.i, %cyapa_firmware.exit.thread ], [ %error.0.i, %cyapa_firmware.exit.do.end23_crit_edge ], [ %call2.i, %cyapa_firmware.exit.thread84 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i7781) #13
  br label %if.end34

do.body25:                                        ; preds = %cyapa_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyapa_update_fw_store.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyapa_update_fw_store, %if.then30)) #10
          to label %if.end34 [label %if.then30], !srcloc !266

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyapa_update_fw_store.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.53) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %do.body25, %do.end23
  %tobool19.not82 = phi i1 [ true, %if.then30 ], [ false, %do.end23 ], [ true, %do.body25 ]
  %retval.0.i7780 = phi i32 [ 0, %if.then30 ], [ %retval.0.i7781, %do.end23 ], [ 0, %do.body25 ]
  %call35 = call fastcc i32 @cyapa_reinitialize(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %do.end40

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call35) #13
  %call35.call18 = select i1 %tobool19.not82, i32 %call35, i32 %retval.0.i7780
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.end34.if.end42_crit_edge
  %error.0 = phi i32 [ %call35.call18, %do.end40 ], [ %retval.0.i7780, %if.end34.if.end42_crit_edge ]
  call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool44.not = icmp eq i32 %error.0, 0
  %count.error.0 = select i1 %tobool44.not, i32 %count, i32 %error.0
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.then14 ], [ %count.error.0, %if.end42 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %fw_name) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_reinitialize(ptr noundef %cyapa) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %input2 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 5
  %2 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input2, align 4
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %operational = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 2
  %5 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 34
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %set_power_mode = getelementptr inbounds %struct.cyapa_dev_ops, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %set_power_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_power_mode, align 4
  %call4 = tail call i32 %10(ptr noundef %cyapa, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call6 = tail call fastcc i32 @cyapa_detect(ptr noundef %cyapa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end9, label %out

if.end9:                                          ; preds = %if.end5
  br i1 %tobool10.not, label %land.lhs.true, label %lor.lhs.false.thread

land.lhs.true:                                    ; preds = %if.end9
  %11 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end38_crit_edge, label %if.then13

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then13:                                        ; preds = %land.lhs.true
  %call14 = tail call fastcc i32 @cyapa_create_input_dev(ptr noundef %cyapa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.then21_crit_edge, label %do.end

if.then13.if.then21_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %call14) #13
  br label %if.then21

out:                                              ; preds = %if.end5
  br i1 %tobool10.not, label %out.if.then21_crit_edge, label %lor.lhs.false

out.if.then21_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false:                                    ; preds = %out
  %call20 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %3) #10
  br i1 %call20, label %lor.lhs.false.if.end38_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

lor.lhs.false.thread:                             ; preds = %if.end9
  %call2075 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %3) #10
  br i1 %call2075, label %land.lhs.true30, label %lor.lhs.false.thread.if.then21_crit_edge

lor.lhs.false.thread.if.then21_crit_edge:         ; preds = %lor.lhs.false.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.thread.if.then21_crit_edge, %lor.lhs.false.if.then21_crit_edge, %out.if.then21_crit_edge, %do.end, %if.then13.if.then21_crit_edge
  %error.069.ph = phi i32 [ %call14, %do.end ], [ 0, %if.then13.if.then21_crit_edge ], [ 0, %lor.lhs.false.thread.if.then21_crit_edge ], [ %call6, %out.if.then21_crit_edge ], [ %call6, %lor.lhs.false.if.then21_crit_edge ]
  %13 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr = load i8, ptr %operational, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool23.not = icmp eq i8 %.pr, 0
  br i1 %tobool23.not, label %if.then21.if.end38_crit_edge, label %if.then24

if.then21.if.end38_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %ops25 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 34
  %14 = ptrtoint ptr %ops25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops25, align 4
  %set_power_mode26 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %set_power_mode26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_power_mode26, align 4
  %call27 = tail call i32 %17(ptr noundef %cyapa, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0) #10
  br label %if.end38

land.lhs.true30:                                  ; preds = %lor.lhs.false.thread
  %18 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool32.not = icmp eq i8 %19, 0
  br i1 %tobool32.not, label %land.lhs.true30.if.end38_crit_edge, label %if.then33

land.lhs.true30.if.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  %call.i63 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #10
  %call.i64 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i64, ptr %last_busy.i, align 8
  %call.i65 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 12) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %land.lhs.true30.if.end38_crit_edge, %if.then24, %if.then21.if.end38_crit_edge, %lor.lhs.false.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge
  %error.068 = phi i32 [ 0, %land.lhs.true30.if.end38_crit_edge ], [ 0, %if.then33 ], [ %error.069.ph, %if.then21.if.end38_crit_edge ], [ %error.069.ph, %if.then24 ], [ %call6, %lor.lhs.false.if.end38_crit_edge ], [ 0, %land.lhs.true.if.end38_crit_edge ]
  ret i32 %error.068
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_show_baseline(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %operational = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %input1.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then3.if.then5.i_crit_edge, label %lor.lhs.false.i

if.then3.if.then5.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.then3
  %call.i = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %5) #10
  br i1 %call.i, label %lor.lhs.false.i.cyapa_enable_irq_for_cmd.exit_crit_edge, label %lor.lhs.false3.critedge.i

lor.lhs.false.i.cyapa_enable_irq_for_cmd.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_enable_irq_for_cmd.exit

lor.lhs.false3.critedge.i:                        ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %lor.lhs.false3.critedge.i.if.end.i_crit_edge, label %lor.lhs.false3.critedge.i.if.then5.i_crit_edge

lor.lhs.false3.critedge.i.if.then5.i_crit_edge:   ; preds = %lor.lhs.false3.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

lor.lhs.false3.critedge.i.if.end.i_crit_edge:     ; preds = %lor.lhs.false3.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then5.i:                                       ; preds = %lor.lhs.false3.critedge.i.if.then5.i_crit_edge, %if.then3.if.then5.i_crit_edge
  %ops.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %set_power_mode.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %set_power_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_power_mode.i, align 4
  %call6.i = tail call i32 %11(ptr noundef %1, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %lor.lhs.false3.critedge.i.if.end.i_crit_edge
  %gen.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp.i = icmp ugt i8 %13, 4
  br i1 %cmp.i, label %if.then8.i, label %if.end.i.cyapa_enable_irq_for_cmd.exit_crit_edge

if.end.i.cyapa_enable_irq_for_cmd.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_enable_irq_for_cmd.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %client.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %17) #10
  br label %cyapa_enable_irq_for_cmd.exit

cyapa_enable_irq_for_cmd.exit:                    ; preds = %if.then8.i, %if.end.i.cyapa_enable_irq_for_cmd.exit_crit_edge, %lor.lhs.false.i.cyapa_enable_irq_for_cmd.exit_crit_edge
  %ops = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %show_baseline = getelementptr inbounds %struct.cyapa_dev_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %show_baseline to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %show_baseline, align 4
  %call4 = tail call i32 %21(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #10
  %22 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input1.i, align 4
  %tobool.not.i17 = icmp eq ptr %23, null
  br i1 %tobool.not.i17, label %cyapa_enable_irq_for_cmd.exit.if.then.i_crit_edge, label %lor.lhs.false.i19

cyapa_enable_irq_for_cmd.exit.if.then.i_crit_edge: ; preds = %cyapa_enable_irq_for_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i19:                                ; preds = %cyapa_enable_irq_for_cmd.exit
  %call.i18 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %23) #10
  br i1 %call.i18, label %lor.lhs.false.i19.if.end5_crit_edge, label %lor.lhs.false.i19.if.then.i_crit_edge

lor.lhs.false.i19.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i19.if.end5_crit_edge:              ; preds = %lor.lhs.false.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.i:                                        ; preds = %lor.lhs.false.i19.if.then.i_crit_edge, %cyapa_enable_irq_for_cmd.exit.if.then.i_crit_edge
  %gen.i20 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 21
  %24 = ptrtoint ptr %gen.i20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %gen.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %cmp.i21 = icmp ugt i8 %25, 4
  br i1 %cmp.i21, label %if.then3.i, label %if.then.i.if.end.i24_crit_edge

if.then.i.if.end.i24_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i24

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %client.i22 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %client.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i22, align 4
  %irq.i23 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %irq.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i23, align 4
  tail call void @disable_irq(i32 noundef %29) #10
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then3.i, %if.then.i.if.end.i24_crit_edge
  br i1 %tobool.not.i17, label %if.end.i24.if.then8.i28_crit_edge, label %lor.lhs.false5.i

if.end.i24.if.then8.i28_crit_edge:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i28

lor.lhs.false5.i:                                 ; preds = %if.end.i24
  %30 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool6.not.i = icmp eq i8 %31, 0
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.if.end5_crit_edge, label %lor.lhs.false5.i.if.then8.i28_crit_edge

lor.lhs.false5.i.if.then8.i28_crit_edge:          ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i28

lor.lhs.false5.i.if.end5_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then8.i28:                                     ; preds = %lor.lhs.false5.i.if.then8.i28_crit_edge, %if.end.i24.if.then8.i28_crit_edge
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %set_power_mode.i27 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %set_power_mode.i27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_power_mode.i27, align 4
  %call9.i = tail call i32 %35(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then8.i28, %lor.lhs.false5.i.if.end5_crit_edge, %lor.lhs.false.i19.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %error.0 = phi i32 [ -16, %if.end.if.end5_crit_edge ], [ %call4, %lor.lhs.false.i19.if.end5_crit_edge ], [ %call4, %lor.lhs.false5.i.if.end5_crit_edge ], [ %call4, %if.then8.i28 ]
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_calibrate_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %operational = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end5.thread, label %if.then3

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  br label %36

if.then3:                                         ; preds = %if.end
  %input1.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then3.if.then5.i_crit_edge, label %lor.lhs.false.i

if.then3.if.then5.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.then3
  %call.i = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %5) #10
  br i1 %call.i, label %lor.lhs.false.i.cyapa_enable_irq_for_cmd.exit_crit_edge, label %lor.lhs.false3.critedge.i

lor.lhs.false.i.cyapa_enable_irq_for_cmd.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_enable_irq_for_cmd.exit

lor.lhs.false3.critedge.i:                        ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %lor.lhs.false3.critedge.i.if.end.i_crit_edge, label %lor.lhs.false3.critedge.i.if.then5.i_crit_edge

lor.lhs.false3.critedge.i.if.then5.i_crit_edge:   ; preds = %lor.lhs.false3.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

lor.lhs.false3.critedge.i.if.end.i_crit_edge:     ; preds = %lor.lhs.false3.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then5.i:                                       ; preds = %lor.lhs.false3.critedge.i.if.then5.i_crit_edge, %if.then3.if.then5.i_crit_edge
  %ops.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %set_power_mode.i = getelementptr inbounds %struct.cyapa_dev_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %set_power_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_power_mode.i, align 4
  %call6.i = tail call i32 %11(ptr noundef %1, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %lor.lhs.false3.critedge.i.if.end.i_crit_edge
  %gen.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp.i = icmp ugt i8 %13, 4
  br i1 %cmp.i, label %if.then8.i, label %if.end.i.cyapa_enable_irq_for_cmd.exit_crit_edge

if.end.i.cyapa_enable_irq_for_cmd.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_enable_irq_for_cmd.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %client.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %17) #10
  br label %cyapa_enable_irq_for_cmd.exit

cyapa_enable_irq_for_cmd.exit:                    ; preds = %if.then8.i, %if.end.i.cyapa_enable_irq_for_cmd.exit_crit_edge, %lor.lhs.false.i.cyapa_enable_irq_for_cmd.exit_crit_edge
  %ops = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %calibrate_store = getelementptr inbounds %struct.cyapa_dev_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %calibrate_store to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %calibrate_store, align 4
  %call4 = tail call i32 %21(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #10
  %22 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input1.i, align 4
  %tobool.not.i19 = icmp eq ptr %23, null
  br i1 %tobool.not.i19, label %cyapa_enable_irq_for_cmd.exit.if.then.i_crit_edge, label %lor.lhs.false.i21

cyapa_enable_irq_for_cmd.exit.if.then.i_crit_edge: ; preds = %cyapa_enable_irq_for_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i21:                                ; preds = %cyapa_enable_irq_for_cmd.exit
  %call.i20 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %23) #10
  br i1 %call.i20, label %lor.lhs.false.i21.if.end5_crit_edge, label %lor.lhs.false.i21.if.then.i_crit_edge

lor.lhs.false.i21.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i21.if.end5_crit_edge:              ; preds = %lor.lhs.false.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.i:                                        ; preds = %lor.lhs.false.i21.if.then.i_crit_edge, %cyapa_enable_irq_for_cmd.exit.if.then.i_crit_edge
  %gen.i22 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 21
  %24 = ptrtoint ptr %gen.i22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %gen.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %cmp.i23 = icmp ugt i8 %25, 4
  br i1 %cmp.i23, label %if.then3.i, label %if.then.i.if.end.i26_crit_edge

if.then.i.if.end.i26_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i26

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %client.i24 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %client.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i24, align 4
  %irq.i25 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %irq.i25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i25, align 4
  tail call void @disable_irq(i32 noundef %29) #10
  br label %if.end.i26

if.end.i26:                                       ; preds = %if.then3.i, %if.then.i.if.end.i26_crit_edge
  br i1 %tobool.not.i19, label %if.end.i26.if.then8.i30_crit_edge, label %lor.lhs.false5.i

if.end.i26.if.then8.i30_crit_edge:                ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i30

lor.lhs.false5.i:                                 ; preds = %if.end.i26
  %30 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool6.not.i = icmp eq i8 %31, 0
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.if.end5_crit_edge, label %lor.lhs.false5.i.if.then8.i30_crit_edge

lor.lhs.false5.i.if.then8.i30_crit_edge:          ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i30

lor.lhs.false5.i.if.end5_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then8.i30:                                     ; preds = %lor.lhs.false5.i.if.then8.i30_crit_edge, %if.end.i26.if.then8.i30_crit_edge
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %set_power_mode.i29 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %set_power_mode.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_power_mode.i29, align 4
  %call9.i = tail call i32 %35(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then8.i30, %lor.lhs.false5.i.if.end5_crit_edge, %lor.lhs.false.i21.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end5._crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5._crit_edge:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %36

36:                                               ; preds = %if.end5._crit_edge, %if.end5.thread
  %error.033 = phi i32 [ -16, %if.end5.thread ], [ %call4, %if.end5._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %36, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %error.033, %36 ], [ %count, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_show_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %gen = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gen, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 8
  br i1 %6, label %switch.lookup, label %if.end.cyapa_state_to_string.exit_crit_edge

if.end.cyapa_state_to_string.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_state_to_string.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.cyapa_show_mode, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cyapa_state_to_string.exit

cyapa_state_to_string.exit:                       ; preds = %switch.lookup, %if.end.cyapa_state_to_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.84, %if.end.cyapa_state_to_string.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.78, i32 noundef %conv, ptr noundef nonnull %retval.0.i) #10
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cyapa_state_to_string.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %cyapa_state_to_string.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_merge_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyapa_remove_power_wakeup_group(ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @cyapa_power_wakeup_group) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_show_suspend_scanrate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspend_power_mode = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %suspend_power_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspend_power_mode, align 2
  %suspend_sleep_time = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %suspend_sleep_time to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %suspend_sleep_time, align 4
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  %6 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %3, label %sw.default [
    i8 4, label %sw.bb
    i8 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.91) #10
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.92) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %gen = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp eq i8 %8, 3
  br i1 %cmp, label %cond.true, label %sw.default.cond.end_crit_edge

sw.default.cond.end_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %9 = lshr i8 %3, 2
  %conv2.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %3)
  %cmp.i = icmp ult i8 %3, 40
  %mul.i = mul nuw nsw i32 %conv2.i, 10
  %10 = mul nuw nsw i32 %conv2.i, 20
  %mul6.i = add nuw nsw i32 %10, 65436
  %cond.i = select i1 %cmp.i, i32 %mul.i, i32 %mul6.i
  %conv7.i = trunc i32 %cond.i to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.default.cond.end_crit_edge
  %cond.in = phi i16 [ %conv7.i, %cond.true ], [ %5, %sw.default.cond.end_crit_edge ]
  %cond = zext i16 %cond.in to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.93, i32 noundef %cond) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call11, %cond.end ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_update_suspend_scanrate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %sleep_time = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sleep_time) #10
  %2 = ptrtoint ptr %sleep_time to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %sleep_time, align 2, !annotation !261
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.91) #10
  br i1 %call2, label %if.end.if.end22.sink.split_crit_edge, label %if.else

if.end.if.end22.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.sink.split

if.else:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.92) #10
  br i1 %call4, label %if.else.if.end22.sink.split_crit_edge, label %if.else7

if.else.if.end22.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.sink.split

if.else7:                                         ; preds = %if.else
  %call8 = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %sleep_time) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else7.if.end22_crit_edge

if.else7.if.end22_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %sleep_time to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sleep_time, align 2
  %5 = call i16 @llvm.umin.i16(i16 %4, i16 1000)
  %suspend_sleep_time = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %suspend_sleep_time to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %suspend_sleep_time, align 4
  %7 = call i16 @llvm.umax.i16(i16 %5, i16 20) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %7)
  %cmp19.i = icmp ult i16 %7, 100
  %div38.i = udiv i16 %7, 10
  %div2539.i = udiv i16 %7, 20
  %narrow.i = add nuw nsw i16 %div2539.i, 5
  %cond27.v.i = select i1 %cmp19.i, i16 %div38.i, i16 %narrow.i
  %cond27.tr.i = trunc i16 %cond27.v.i to i8
  %conv30.i = shl i8 %cond27.tr.i, 2
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.then10, %if.else.if.end22.sink.split_crit_edge, %if.end.if.end22.sink.split_crit_edge
  %.sink = phi i8 [ %conv30.i, %if.then10 ], [ 4, %if.end.if.end22.sink.split_crit_edge ], [ 0, %if.else.if.end22.sink.split_crit_edge ]
  %suspend_power_mode6 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %suspend_power_mode6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %suspend_power_mode6, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.else7.if.end22_crit_edge
  %count.addr.0 = phi i32 [ -22, %if.else7.if.end22_crit_edge ], [ %count, %if.end22.sink.split ]
  call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end22 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sleep_time) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_unmerge_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyapa_remove_power_runtime_group(ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @cyapa_power_runtime_group) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_show_rt_suspend_scanrate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_suspend_power_mode = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime_suspend_power_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %runtime_suspend_power_mode, align 2
  %runtime_suspend_sleep_time = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %runtime_suspend_sleep_time to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %runtime_suspend_sleep_time, align 4
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  %gen = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp eq i8 %7, 3
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = lshr i8 %3, 2
  %conv2.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %3)
  %cmp.i = icmp ult i8 %3, 40
  %mul.i = mul nuw nsw i32 %conv2.i, 10
  %9 = mul nuw nsw i32 %conv2.i, 20
  %mul6.i = add nuw nsw i32 %9, 65436
  %cond.i = select i1 %cmp.i, i32 %mul.i, i32 %mul6.i
  %conv7.i = trunc i32 %cond.i to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond.in = phi i16 [ %conv7.i, %cond.true ], [ %5, %if.end.cond.end_crit_edge ]
  %cond = zext i16 %cond.in to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.93, i32 noundef %cond) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %cond.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_update_rt_suspend_scanrate(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %time = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %time) #10
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %time, align 2, !annotation !261
  %cmp = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1 = icmp eq i32 %count, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.do.end_crit_edge, label %lor.lhs.false2

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false2:                                   ; preds = %entry
  %call3 = call i32 @kstrtou16(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull %time) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false2.do.end_crit_edge

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %entry.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.100) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call5 = call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %time to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %time, align 2
  %5 = call i16 @llvm.umin.i16(i16 %4, i16 1000)
  %runtime_suspend_sleep_time = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %runtime_suspend_sleep_time to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %runtime_suspend_sleep_time, align 4
  %7 = call i16 @llvm.umax.i16(i16 %5, i16 20) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %7)
  %cmp19.i = icmp ult i16 %7, 100
  %div38.i = udiv i16 %7, 10
  %div2539.i = udiv i16 %7, 20
  %narrow.i = add nuw nsw i16 %div2539.i, 5
  %cond27.v.i = select i1 %cmp19.i, i16 %div38.i, i16 %narrow.i
  %cond27.tr.i = trunc i16 %cond27.v.i to i8
  %conv30.i = shl i8 %cond27.tr.i, 2
  %runtime_suspend_power_mode = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %runtime_suspend_power_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv30.i, ptr %runtime_suspend_power_mode, align 2
  call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  %call.i33 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 12) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end8 ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %time) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_open(ptr nocapture noundef readonly %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %operational = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %set_power_mode = getelementptr inbounds %struct.cyapa_dev_ops, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %set_power_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_power_mode, align 4
  %call6 = tail call i32 %9(ptr noundef %1, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end17_crit_edge, label %do.end

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.111, i32 noundef %call6) #13
  br label %out

if.else:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @cyapa_reinitialize(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.else
  %10 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end17:                                         ; preds = %lor.lhs.false.if.end17_crit_edge, %if.then5.if.end17_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %13) #10
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 15
  %14 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev2, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %dev2) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %call.i49 = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #10
  %call.i50 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i50, ptr %last_busy.i, align 8
  %call.i51 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2, i32 noundef 12) #10
  br label %out

out:                                              ; preds = %if.end21, %lor.lhs.false.out_crit_edge, %if.else.out_crit_edge, %do.end
  %error.1 = phi i32 [ %call6, %do.end ], [ 0, %if.end21 ], [ -11, %lor.lhs.false.out_crit_edge ], [ %call10, %if.else.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyapa_close(ptr nocapture noundef readonly %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  tail call void @mutex_lock_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #10
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__pm_runtime_disable(ptr noundef %dev3, i1 noundef zeroext true) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev3, i32 noundef 2) #10
  %operational = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %set_power_mode = getelementptr inbounds %struct.cyapa_dev_ops, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %set_power_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_power_mode, align 4
  %call7 = tail call i32 %12(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_suspend(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %irq = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %4) #10
  %operational = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %operational, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.end4.if.end13_crit_edge, label %if.then6

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i51 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i51)
  %tobool.not.i52 = icmp sgt i16 %bf.load.i51, -1
  br i1 %tobool.not.i52, label %if.then6.cond.end_crit_edge, label %device_may_wakeup.exit

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

device_may_wakeup.exit:                           ; preds = %if.then6
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cond.end_crit_edge, label %cond.true

device_may_wakeup.exit.cond.end_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %suspend_power_mode = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %suspend_power_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %suspend_power_mode, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %device_may_wakeup.exit.cond.end_crit_edge, %if.then6.cond.end_crit_edge
  %cond = phi i8 [ %11, %cond.true ], [ 0, %device_may_wakeup.exit.cond.end_crit_edge ], [ 0, %if.then6.cond.end_crit_edge ]
  %ops = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %set_power_mode = getelementptr inbounds %struct.cyapa_dev_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %set_power_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_power_mode, align 4
  %suspend_sleep_time = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %suspend_sleep_time to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %suspend_sleep_time, align 4
  %call9 = tail call i32 %15(ptr noundef %1, i8 noundef zeroext %cond, i16 noundef zeroext %17, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cond.end.if.end13_crit_edge, label %do.end

cond.end.if.end13_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.113, i32 noundef %call9) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %cond.end.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %dev_pwr_mode = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dev_pwr_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not = icmp eq i8 %19, 0
  br i1 %cmp.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %ops17 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %20 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops17, align 4
  %set_proximity = getelementptr inbounds %struct.cyapa_dev_ops, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %set_proximity to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_proximity, align 4
  %call18 = tail call i32 %23(ptr noundef %1, i1 noundef zeroext false) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %can_wakeup.i53 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %24 = ptrtoint ptr %can_wakeup.i53 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i54 = load i16, ptr %can_wakeup.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i54)
  %tobool.not.i55 = icmp sgt i16 %bf.load.i54, -1
  br i1 %tobool.not.i55, label %if.end19.if.end26_crit_edge, label %device_may_wakeup.exit59

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

device_may_wakeup.exit59:                         ; preds = %if.end19
  %wakeup.i56 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %25 = ptrtoint ptr %wakeup.i56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wakeup.i56, align 8
  %tobool2.i57.not = icmp eq ptr %26, null
  br i1 %tobool2.i57.not, label %device_may_wakeup.exit59.if.end26_crit_edge, label %if.then21

device_may_wakeup.exit59.if.end26_crit_edge:      ; preds = %device_may_wakeup.exit59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then21:                                        ; preds = %device_may_wakeup.exit59
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %28, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24 = icmp eq i32 %call.i, 0
  %irq_wake = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 7
  %frombool = zext i1 %cmp24 to i8
  %29 = ptrtoint ptr %irq_wake to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %irq_wake, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %device_may_wakeup.exit59.if.end26_crit_edge, %if.end19.if.end26_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_resume(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state_sync_lock = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  tail call void @mutex_lock_nested(ptr noundef %state_sync_lock, i32 noundef 0) #10
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %irq_wake = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %irq_wake, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %irq = getelementptr i8, ptr %dev, i32 932
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #10
  %9 = ptrtoint ptr %irq_wake to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %irq_wake, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call fastcc i32 @cyapa_reinitialize(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %do.end

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.115, i32 noundef %call4) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %irq8 = getelementptr i8, ptr %dev, i32 932
  %10 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq8, align 4
  tail call void @enable_irq(i32 noundef %11) #10
  tail call void @mutex_unlock(ptr noundef %state_sync_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_runtime_suspend(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %set_power_mode = getelementptr inbounds %struct.cyapa_dev_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %set_power_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power_mode, align 4
  %runtime_suspend_power_mode = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %runtime_suspend_power_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %runtime_suspend_power_mode, align 2
  %runtime_suspend_sleep_time = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %runtime_suspend_sleep_time to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %runtime_suspend_sleep_time, align 4
  %call1 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext %7, i16 noundef zeroext %9, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.117, i32 noundef %call1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_runtime_resume(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %set_power_mode = getelementptr inbounds %struct.cyapa_dev_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %set_power_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power_mode, align 4
  %call1 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.119, i32 noundef %call1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !79, !81, !83, !84, !86, !88, !89, !91, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !176, !178, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !198, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !230, !232, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !250}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @product_id, !1, !"product_id", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/cyapa.c", i32 40, i32 12}
!2 = !{ptr @__initcall__kmod_cyapatp__298_1497_cyapa_driver_init6, !3, !"__initcall__kmod_cyapatp__298_1497_cyapa_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/cyapa.c", i32 1497, i32 1}
!4 = !{ptr @__exitcall_cyapa_driver_exit, !3, !"__exitcall_cyapa_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/input/mouse/cyapa.c", i32 1499, i32 1}
!7 = !{ptr @__UNIQUE_ID_author300, !8, !"__UNIQUE_ID_author300", i1 false, i1 false}
!8 = !{!"../drivers/input/mouse/cyapa.c", i32 1500, i32 1}
!9 = !{ptr @__UNIQUE_ID_file301, !10, !"__UNIQUE_ID_file301", i1 false, i1 false}
!10 = !{!"../drivers/input/mouse/cyapa.c", i32 1501, i32 1}
!11 = !{ptr @__UNIQUE_ID_license302, !10, !"__UNIQUE_ID_license302", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/cyapa.c", i32 1487, i32 11}
!14 = !{ptr @cyapa_driver, !15, !"cyapa_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/mouse/cyapa.c", i32 1485, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/mouse/cyapa.c", i32 1258, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cyapa_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cyapa_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/mouse/cyapa.c", i32 1277, i32 23}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/mouse/cyapa.c", i32 1280, i32 39}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/cyapa.c", i32 1283, i32 3}
!30 = !{ptr @cyapa_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cyapa_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/cyapa.c", i32 1289, i32 3}
!34 = !{ptr @cyapa_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cyapa_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/mouse/cyapa.c", i32 1295, i32 3}
!38 = !{ptr @cyapa_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cyapa_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/mouse/cyapa.c", i32 1302, i32 3}
!42 = !{ptr @cyapa_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cyapa_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/mouse/cyapa.c", i32 1308, i32 3}
!46 = !{ptr @cyapa_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cyapa_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/mouse/cyapa.c", i32 1314, i32 3}
!50 = !{ptr @cyapa_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cyapa_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/mouse/cyapa.c", i32 1320, i32 3}
!54 = !{ptr @cyapa_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cyapa_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/mouse/cyapa.c", i32 1329, i32 3}
!58 = !{ptr @cyapa_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cyapa_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/mouse/cyapa.c", i32 1344, i32 4}
!62 = !{ptr @cyapa_probe._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cyapa_probe._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @cyapa_initialize.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/input/mouse/cyapa.c", i32 596, i32 2}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/mouse/cyapa.c", i32 357, i32 4}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cyapa_detect._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @cyapa_detect._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/mouse/cyapa.c", i32 361, i32 3}
!75 = !{ptr @cyapa_detect._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cyapa_detect._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @cyapa_sysfs_group, !78, !"cyapa_sysfs_group", i1 false, i1 false}
!78 = !{!"../drivers/input/mouse/cyapa.c", i32 1236, i32 37}
!79 = !{ptr @cyapa_sysfs_entries, !80, !"cyapa_sysfs_entries", i1 false, i1 false}
!80 = !{!"../drivers/input/mouse/cyapa.c", i32 1226, i32 26}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/mouse/cyapa.c", i32 1219, i32 8}
!83 = !{ptr @dev_attr_firmware_version, !82, !"dev_attr_firmware_version", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/mouse/cyapa.c", i32 991, i32 36}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/mouse/cyapa.c", i32 1220, i32 8}
!88 = !{ptr @dev_attr_product_id, !87, !"dev_attr_product_id", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/mouse/cyapa.c", i32 1007, i32 35}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/mouse/cyapa.c", i32 1221, i32 8}
!93 = !{ptr @dev_attr_update_fw, !92, !"dev_attr_update_fw", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/mouse/cyapa.c", i32 1084, i32 3}
!96 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cyapa_update_fw_store._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @cyapa_update_fw_store._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/mouse/cyapa.c", i32 1116, i32 3}
!101 = !{ptr @cyapa_update_fw_store._entry.49, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cyapa_update_fw_store._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/mouse/cyapa.c", i32 1118, i32 3}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cyapa_update_fw_store.__UNIQUE_ID_ddebug297, !104, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/mouse/cyapa.c", i32 1126, i32 3}
!109 = !{ptr @cyapa_update_fw_store._entry.54, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cyapa_update_fw_store._entry_ptr.56, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/mouse/cyapa.c", i32 648, i32 4}
!113 = !{ptr @cyapa_reinitialize._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cyapa_reinitialize._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/mouse/cyapa.c", i32 1020, i32 3}
!117 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @cyapa_firmware._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @cyapa_firmware._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/mouse/cyapa.c", i32 1027, i32 3}
!122 = !{ptr @cyapa_firmware._entry.60, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @cyapa_firmware._entry_ptr.62, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/input/mouse/cyapa.c", i32 1044, i32 3}
!126 = !{ptr @cyapa_firmware._entry.63, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @cyapa_firmware._entry_ptr.65, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/mouse/cyapa.c", i32 1050, i32 3}
!130 = !{ptr @cyapa_firmware._entry.66, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cyapa_firmware._entry_ptr.68, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/mouse/cyapa.c", i32 1056, i32 3}
!134 = !{ptr @cyapa_firmware._entry.69, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @cyapa_firmware._entry_ptr.71, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/mouse/cyapa.c", i32 1062, i32 3}
!138 = !{ptr @cyapa_firmware._entry.72, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @cyapa_firmware._entry_ptr.74, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/mouse/cyapa.c", i32 1222, i32 8}
!142 = !{ptr @dev_attr_baseline, !141, !"dev_attr_baseline", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/mouse/cyapa.c", i32 1223, i32 8}
!145 = !{ptr @dev_attr_calibrate, !144, !"dev_attr_calibrate", i1 false, i1 false}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/mouse/cyapa.c", i32 1224, i32 8}
!148 = !{ptr @dev_attr_mode, !147, !"dev_attr_mode", i1 false, i1 false}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/mouse/cyapa.c", i32 1212, i32 35}
!151 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/input/mouse/cyapa.c", i32 1184, i32 10}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/mouse/cyapa.c", i32 1186, i32 10}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/input/mouse/cyapa.c", i32 1188, i32 10}
!157 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/input/mouse/cyapa.c", i32 1191, i32 10}
!159 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/mouse/cyapa.c", i32 1195, i32 10}
!161 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/input/mouse/cyapa.c", i32 1197, i32 10}
!163 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/mouse/cyapa.c", i32 838, i32 4}
!165 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @cyapa_prepare_wakeup_controls._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @cyapa_prepare_wakeup_controls._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/mouse/cyapa.c", i32 846, i32 4}
!170 = !{ptr @cyapa_prepare_wakeup_controls._entry.87, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @cyapa_prepare_wakeup_controls._entry_ptr.89, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @cyapa_power_wakeup_group, !173, !"cyapa_power_wakeup_group", i1 false, i1 false}
!173 = !{!"../drivers/input/mouse/cyapa.c", i32 815, i32 37}
!174 = !{ptr @cyapa_power_wakeup_entries, !175, !"cyapa_power_wakeup_entries", i1 false, i1 false}
!175 = !{!"../drivers/input/mouse/cyapa.c", i32 810, i32 26}
!176 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/mouse/cyapa.c", i32 806, i32 8}
!178 = !{ptr @dev_attr_suspend_scanrate_ms, !177, !"dev_attr_suspend_scanrate_ms", i1 false, i1 false}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/input/mouse/cyapa.c", i32 759, i32 43}
!181 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/mouse/cyapa.c", i32 763, i32 43}
!183 = !{ptr @.str.93, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/input/mouse/cyapa.c", i32 767, i32 35}
!185 = !{ptr @.str.94, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/input/mouse/cyapa.c", i32 954, i32 3}
!187 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @cyapa_start_runtime._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @cyapa_start_runtime._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/input/mouse/cyapa.c", i32 962, i32 3}
!192 = !{ptr @cyapa_start_runtime._entry.96, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @cyapa_start_runtime._entry_ptr.98, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @cyapa_power_runtime_group, !195, !"cyapa_power_runtime_group", i1 false, i1 false}
!195 = !{!"../drivers/input/mouse/cyapa.c", i32 930, i32 37}
!196 = !{ptr @cyapa_power_runtime_entries, !197, !"cyapa_power_runtime_entries", i1 false, i1 false}
!197 = !{!"../drivers/input/mouse/cyapa.c", i32 925, i32 26}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/input/mouse/cyapa.c", i32 921, i32 8}
!200 = !{ptr @dev_attr_runtime_suspend_scanrate_ms, !199, !"dev_attr_runtime_suspend_scanrate_ms", i1 false, i1 false}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/input/mouse/cyapa.c", i32 895, i32 3}
!203 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @cyapa_update_rt_suspend_scanrate._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @cyapa_update_rt_suspend_scanrate._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/input/mouse/cyapa.c", i32 444, i32 3}
!208 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @cyapa_create_input_dev._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @cyapa_create_input_dev._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/input/mouse/cyapa.c", i32 448, i32 16}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/mouse/cyapa.c", i32 510, i32 3}
!215 = !{ptr @cyapa_create_input_dev._entry.105, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @cyapa_create_input_dev._entry_ptr.107, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/input/mouse/cyapa.c", i32 517, i32 3}
!219 = !{ptr @cyapa_create_input_dev._entry.108, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @cyapa_create_input_dev._entry_ptr.110, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/input/mouse/cyapa.c", i32 388, i32 4}
!223 = !{ptr @.str.112, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @cyapa_open._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @cyapa_open._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @cyapa_of_match, !227, !"cyapa_of_match", i1 false, i1 false}
!227 = !{!"../drivers/input/mouse/cyapa.c", i32 1478, i32 34}
!228 = !{ptr @cyapa_pm_ops, !229, !"cyapa_pm_ops", i1 false, i1 false}
!229 = !{!"../drivers/input/mouse/cyapa.c", i32 1456, i32 32}
!230 = !{ptr @.str.113, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/input/mouse/cyapa.c", i32 1383, i32 4}
!232 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @cyapa_suspend._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @cyapa_suspend._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/input/mouse/cyapa.c", i32 1420, i32 3}
!237 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @cyapa_resume._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @cyapa_resume._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.117, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/input/mouse/cyapa.c", i32 1438, i32 3}
!242 = !{ptr @.str.118, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @cyapa_runtime_suspend._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @cyapa_runtime_suspend._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/input/mouse/cyapa.c", i32 1451, i32 3}
!247 = !{ptr @.str.120, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @cyapa_runtime_resume._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @cyapa_runtime_resume._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @cyapa_id_table, !251, !"cyapa_id_table", i1 false, i1 false}
!251 = !{!"../drivers/input/mouse/cyapa.c", i32 1461, i32 35}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{!"auto-init"}
!262 = !{i8 0, i8 2}
!263 = !{i64 2148224467}
!264 = !{i64 709290, i64 709315, i64 709337, i64 709353, i64 709365, i64 709385, i64 709409, i64 709425, i64 709437}
!265 = !{i64 2148224655}
!266 = !{i64 2148792713, i64 2148792718, i64 2148792731, i64 2148792775, i64 2148792809, i64 2148792830}
