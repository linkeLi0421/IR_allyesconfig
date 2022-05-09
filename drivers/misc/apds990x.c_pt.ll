; ModuleID = '/llk/IR_all_yes/drivers/misc/apds990x.c_pt.bc'
source_filename = "../drivers/misc/apds990x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.apds990x_chip = type { ptr, ptr, %struct.mutex, [2 x %struct.regulator_bulk_data], %struct.wait_queue_head, i32, i8, i8, %struct.apds990x_chip_factors, %struct.reverse_factors, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i16, i16, i16, i32, i32, i32, i16, i16, [10 x i8], i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.apds990x_chip_factors = type { i32, i32, i32, i32, i32, i32 }
%struct.reverse_factors = type { i32, i32, i32, i32, i32 }
%struct.apds990x_platform_data = type { %struct.apds990x_chip_factors, i8, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_apds990x__293_1281_apds990x_driver_init6 = internal global ptr @apds990x_driver_init, section ".initcall6.init", align 4
@apds990x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @apds990x_probe, ptr @apds990x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apds990x_pm_ops, ptr null, ptr null }, ptr @apds990x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_apds990x_driver_exit = internal global ptr @apds990x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [64 x i8] c"apds990x.description=APDS990X combined ALS and proximity sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [47 x i8] c"apds990x.author=Samu Onkalo, Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [36 x i8] c"apds990x.file=drivers/misc/apds990x\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [24 x i8] c"apds990x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apds990x\00", [23 x i8] zeroinitializer }, align 32
@apds990x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @apds990x_suspend, ptr @apds990x_resume, ptr @apds990x_suspend, ptr @apds990x_resume, ptr @apds990x_suspend, ptr @apds990x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apds990x_runtime_suspend, ptr @apds990x_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@apds990x_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"apds990x\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@apds990x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->wait\00", [20 x i8] zeroinitializer }, align 32
@apds990x_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@apds990x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1072, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"platform data is mandatory\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apds990x_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/misc/apds990x.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@apds990x_probe._entry_ptr = internal global ptr @apds990x_probe._entry, section ".printk_index", align 4
@reg_vcc = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Vdd\00", [28 x i8] zeroinitializer }, align 32
@reg_vled = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Vled\00", [27 x i8] zeroinitializer }, align 32
@apds990x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1121, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get regulators\0A\00", [41 x i8] zeroinitializer }, align 32
@apds990x_probe._entry_ptr.11 = internal global ptr @apds990x_probe._entry.9, section ".printk_index", align 4
@apds990x_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1127, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@apds990x_probe._entry_ptr.14 = internal global ptr @apds990x_probe._entry.12, section ".printk_index", align 4
@apds990x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 1135, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"APDS990X not found\0A\00", [44 x i8] zeroinitializer }, align 32
@apds990x_probe._entry_ptr.17 = internal global ptr @apds990x_probe._entry.15, section ".printk_index", align 4
@apds990x_attribute_group = internal constant { [1 x %struct.attribute_group], [44 x i8] } { [1 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @sysfs_attrs_ctrl, ptr null }], [44 x i8] zeroinitializer }, align 32
@apds990x_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1158, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sysfs registration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@apds990x_probe._entry_ptr.20 = internal global ptr @apds990x_probe._entry.18, section ".printk_index", align 4
@apds990x_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 1169, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not get IRQ %d\0A\00", [42 x i8] zeroinitializer }, align 32
@apds990x_probe._entry_ptr.23 = internal global ptr @apds990x_probe._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@apds990x_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 574, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ID read failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apds990x_detect\00", [16 x i8] zeroinitializer }, align 32
@apds990x_detect._entry_ptr = internal global ptr @apds990x_detect._entry, section ".printk_index", align 4
@apds990x_detect._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 580, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REV read failed\0A\00", [47 x i8] zeroinitializer }, align 32
@apds990x_detect._entry_ptr.28 = internal global ptr @apds990x_detect._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APDS-990x\00", [22 x i8] zeroinitializer }, align 32
@arates_hz = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 10, i16 5, i16 2, i16 1], [24 x i8] zeroinitializer }, align 32
@apersis = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\02\04\05", [28 x i8] zeroinitializer }, align 32
@sysfs_attrs_ctrl = internal global { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @dev_attr_lux0_calibscale, ptr @dev_attr_lux0_calibscale_default, ptr @dev_attr_lux0_input, ptr @dev_attr_lux0_sensor_range, ptr @dev_attr_lux0_rate, ptr @dev_attr_lux0_rate_avail, ptr @dev_attr_lux0_thresh_above_value, ptr @dev_attr_lux0_thresh_below_value, ptr @dev_attr_prox0_raw_en, ptr @dev_attr_prox0_raw, ptr @dev_attr_prox0_sensor_range, ptr @dev_attr_prox0_thresh_above_value, ptr @dev_attr_prox0_reporting_mode, ptr @dev_attr_prox0_reporting_mode_avail, ptr @dev_attr_chip_id, ptr @dev_attr_power_state, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_lux0_calibscale = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_lux_calib_show, ptr @apds990x_lux_calib_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_calibscale_default = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_lux_calib_format_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_lux_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_sensor_range = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_lux_range_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_rate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_rate_show, ptr @apds990x_rate_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_rate_avail = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_rate_avail, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_thresh_above_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_lux_thresh_above_show, ptr @apds990x_lux_thresh_above_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_thresh_below_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_lux_thresh_below_show, ptr @apds990x_lux_thresh_below_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_raw_en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_prox_enable_show, ptr @apds990x_prox_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_raw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_prox_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_sensor_range = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_prox_range_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_thresh_above_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_prox_threshold_show, ptr @apds990x_prox_threshold_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_reporting_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_prox_reporting_mode_show, ptr @apds990x_prox_reporting_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_reporting_mode_avail = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_prox_reporting_avail_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chip_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_chip_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apds990x_power_state_show, ptr @apds990x_power_state_store }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lux0_calibscale\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lux0_calibscale_default\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lux0_input\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lux0_sensor_range\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lux0_rate\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lux0_rate_avail\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lux0_thresh_above_value\00", [40 x i8] zeroinitializer }, align 32
@again = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\08\10x", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lux0_thresh_below_value\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prox0_raw_en\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prox0_raw\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"prox0_sensor_range\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"prox0_thresh_above_value\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prox0_reporting_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@reporting_modes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.49, ptr @.str.50], [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"periodic\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"prox0_reporting_mode_avail\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chip_id\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power_state\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 41]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"apds990x_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1271, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1273, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"apds990x_pm_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1264, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"apds990x_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1257, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1067, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1068, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1072, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [8 x i8] c"reg_vcc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 183, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant [9 x i8] c"reg_vled\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 184, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1121, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1127, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1135, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"apds990x_attribute_group\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1050, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1158, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1168, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 574, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 580, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 588, i32 52 }
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"arates_hz\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 179, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant [8 x i8] c"apersis\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 180, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"sysfs_attrs_ctrl\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1030, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant [25 x i8] c"dev_attr_lux0_calibscale\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [33 x i8] c"dev_attr_lux0_calibscale_default\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"dev_attr_lux0_input\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"dev_attr_lux0_sensor_range\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"dev_attr_lux0_rate\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [25 x i8] c"dev_attr_lux0_rate_avail\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [33 x i8] c"dev_attr_lux0_thresh_above_value\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [33 x i8] c"dev_attr_lux0_thresh_below_value\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [22 x i8] c"dev_attr_prox0_raw_en\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"dev_attr_prox0_raw\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [28 x i8] c"dev_attr_prox0_sensor_range\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [34 x i8] c"dev_attr_prox0_thresh_above_value\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [30 x i8] c"dev_attr_prox0_reporting_mode\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [36 x i8] c"dev_attr_prox0_reporting_mode_avail\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"dev_attr_chip_id\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"dev_attr_power_state\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 695, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 675, i32 22 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 667, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 651, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 644, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 659, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 766, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 715, i32 22 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 764, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 705, i32 29 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 939, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant [6 x i8] c"again\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 176, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 943, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 830, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 784, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 792, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 979, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 859, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 840, i32 22 }
@___asan_gen_.271 = private unnamed_addr constant [16 x i8] c"reporting_modes\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 833, i32 20 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 833, i32 41 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 833, i32 52 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 869, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 866, i32 22 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1028, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1025, i32 22 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private constant [27 x i8] c"../drivers/misc/apds990x.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1016, i32 8 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_apds990x_driver_exit, ptr @__initcall__kmod_apds990x__293_1281_apds990x_driver_init6, ptr @apds990x_detect._entry, ptr @apds990x_detect._entry.26, ptr @apds990x_detect._entry_ptr, ptr @apds990x_detect._entry_ptr.28, ptr @apds990x_driver_exit, ptr @apds990x_probe._entry, ptr @apds990x_probe._entry.12, ptr @apds990x_probe._entry.15, ptr @apds990x_probe._entry.18, ptr @apds990x_probe._entry.21, ptr @apds990x_probe._entry.9, ptr @apds990x_probe._entry_ptr, ptr @apds990x_probe._entry_ptr.11, ptr @apds990x_probe._entry_ptr.14, ptr @apds990x_probe._entry_ptr.17, ptr @apds990x_probe._entry_ptr.20, ptr @apds990x_probe._entry_ptr.23, ptr @apds990x_driver, ptr @.str, ptr @apds990x_pm_ops, ptr @apds990x_id, ptr @apds990x_probe.__key, ptr @.str.1, ptr @apds990x_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @reg_vcc, ptr @reg_vled, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @apds990x_attribute_group, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @arates_hz, ptr @apersis, ptr @sysfs_attrs_ctrl, ptr @dev_attr_lux0_calibscale, ptr @dev_attr_lux0_calibscale_default, ptr @dev_attr_lux0_input, ptr @dev_attr_lux0_sensor_range, ptr @dev_attr_lux0_rate, ptr @dev_attr_lux0_rate_avail, ptr @dev_attr_lux0_thresh_above_value, ptr @dev_attr_lux0_thresh_below_value, ptr @dev_attr_prox0_raw_en, ptr @dev_attr_prox0_raw, ptr @dev_attr_prox0_sensor_range, ptr @dev_attr_prox0_thresh_above_value, ptr @dev_attr_prox0_reporting_mode, ptr @dev_attr_prox0_reporting_mode_avail, ptr @dev_attr_chip_id, ptr @dev_attr_power_state, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @again, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @reporting_modes, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_vcc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_vled to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds990x_detect._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arates_hz to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apersis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_attrs_ctrl to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_calibscale to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_calibscale_default to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_sensor_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_rate_avail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_thresh_above_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_thresh_below_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_raw_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_raw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_sensor_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_thresh_above_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_reporting_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_reporting_mode_avail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @again to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reporting_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @apds990x_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apds990x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @apds990x_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 288) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client1, align 4
  %wait = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.1, ptr noundef nonnull @apds990x_probe.__key) #9
  %mutex = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @apds990x_probe.__key.2) #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data, align 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i.i, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %fail1

if.end11:                                         ; preds = %if.end
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13 = icmp eq i32 %7, 0
  %cf15 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %cf15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1966, ptr %cf15, align 8
  %cf1 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %cf1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %cf1, align 4
  %irf1 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %irf1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9134, ptr %irf1, align 8
  %cf2 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8, i32 3
  %11 = ptrtoint ptr %cf2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2867, ptr %cf2, align 4
  %irf2 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %irf2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5816, ptr %irf2, align 8
  %df = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8, i32 5
  %13 = ptrtoint ptr %df to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 52, ptr %df, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %14 = call ptr @memcpy(ptr %cf15, ptr %4, i32 24)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then14
  %irf127 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %irf127 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irf127, align 8
  %irf229 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %irf229 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irf229, align 8
  %sub = sub i32 %16, %18
  %mul = shl i32 %sub, 12
  %cf131 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %cf131 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cf131, align 4
  %cf233 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %cf233 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cf233, align 4
  %sub34 = sub i32 %20, %22
  %div = sdiv i32 %mul, %sub34
  %rcf = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %rcf to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %rcf, align 8
  %div37 = sdiv i32 16777216, %20
  %cf139 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %cf139 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div37, ptr %cf139, align 4
  %mul42 = shl i32 %16, 12
  %div45 = sdiv i32 %mul42, %20
  %irf147 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 9, i32 2
  %25 = ptrtoint ptr %irf147 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div45, ptr %irf147, align 8
  %div50 = sdiv i32 16777216, %22
  %cf252 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 9, i32 3
  %26 = ptrtoint ptr %cf252 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div50, ptr %cf252, align 4
  %mul55 = shl i32 %18, 12
  %div58 = sdiv i32 %mul55, %22
  %irf260 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 9, i32 4
  %27 = ptrtoint ptr %irf260 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div58, ptr %irf260, align 8
  %lux_thres_hi = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 25
  %28 = ptrtoint ptr %lux_thres_hi to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 101, ptr %lux_thres_hi, align 4
  %lux_thres_lo = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 26
  %29 = ptrtoint ptr %lux_thres_lo to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100, ptr %lux_thres_lo, align 8
  %lux_calib = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 24
  %30 = ptrtoint ptr %lux_calib to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 8192, ptr %lux_calib, align 8
  %prox_thres = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 27
  %31 = ptrtoint ptr %prox_thres to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 600, ptr %prox_thres, align 4
  %pdrive = getelementptr inbounds %struct.apds990x_platform_data, ptr %4, i32 0, i32 1
  %32 = ptrtoint ptr %pdrive to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pdrive, align 4
  %pdrive62 = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 17
  %34 = ptrtoint ptr %pdrive62 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %pdrive62, align 2
  %pdiode = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %pdiode to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %pdiode, align 1
  %pgain = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 15
  %36 = ptrtoint ptr %pgain to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %pgain, align 4
  %prox_calib = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 29
  %37 = ptrtoint ptr %prox_calib to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 8192, ptr %prox_calib, align 2
  %prox_persistence = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 19
  %38 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %prox_persistence, align 8
  %prox_continuous_mode = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %prox_continuous_mode to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %prox_continuous_mode, align 4
  %regs = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @reg_vcc, ptr %regs, align 4
  %arrayidx64 = getelementptr %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @reg_vled, ptr %arrayidx64, align 8
  %call68 = tail call i32 @regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end73, label %if.end75

do.end73:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #13
  br label %fail1

if.end75:                                         ; preds = %if.end25
  %call78 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end83, label %if.end85

do.end83:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %fail2

if.end85:                                         ; preds = %if.end75
  tail call void @usleep_range_state(i32 noundef 25000, i32 noundef 50000, i32 noundef 2) #9
  %42 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext -110) #9
  %conv5.i.i = trunc i32 %call.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end85.do.end91.sink.split_crit_edge, label %if.end.i

if.end85.do.end91.sink.split_crit_edge:           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91.sink.split

if.end.i:                                         ; preds = %if.end85
  %revision.i = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 31
  %44 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client1, align 4
  %call.i23.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext -111) #9
  %conv5.i24.i = trunc i32 %call.i23.i to i8
  %46 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv5.i24.i, ptr %revision.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp3.i = icmp slt i32 %call.i23.i, 0
  br i1 %cmp3.i, label %if.end.i.do.end91.sink.split_crit_edge, label %if.end9.i

if.end.i.do.end91.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91.sink.split

if.end9.i:                                        ; preds = %if.end.i
  %47 = zext i8 %conv5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv5.i.i, label %if.end9.i.do.end91_crit_edge [
    i8 0, label %if.end9.i.if.end93_crit_edge
    i8 4, label %if.end9.i.if.end93_crit_edge237
    i8 41, label %if.end9.i.if.end93_crit_edge238
  ]

if.end9.i.if.end93_crit_edge238:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.end9.i.if.end93_crit_edge237:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.end9.i.if.end93_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.end9.i.do.end91_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

do.end91.sink.split:                              ; preds = %if.end.i.do.end91.sink.split_crit_edge, %if.end85.do.end91.sink.split_crit_edge
  %.str.24.sink = phi ptr [ @.str.24, %if.end85.do.end91.sink.split_crit_edge ], [ @.str.27, %if.end.i.do.end91.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ %call.i.i, %if.end85.do.end91.sink.split_crit_edge ], [ %call.i23.i, %if.end.i.do.end91.sink.split_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.24.sink) #13
  br label %do.end91

do.end91:                                         ; preds = %do.end91.sink.split, %if.end9.i.do.end91_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end9.i.do.end91_crit_edge ], [ %retval.0.i.ph.ph, %do.end91.sink.split ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  br label %fail3

if.end93:                                         ; preds = %if.end9.i.if.end93_crit_edge, %if.end9.i.if.end93_crit_edge237, %if.end9.i.if.end93_crit_edge238
  %chipname.i = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 30
  %48 = call ptr @memcpy(ptr %chipname.i, ptr @.str.29, i32 10)
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  tail call fastcc void @apds990x_configure(ptr noundef nonnull %call7.i.i)
  %lux_persistence.i = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 18
  %49 = ptrtoint ptr %lux_persistence.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %lux_persistence.i, align 1
  %arate.i = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 11
  %50 = ptrtoint ptr %arate.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 10, ptr %arate.i, align 2
  %51 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %client1, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4, i32 12, i32 18
  %53 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp.i.i = icmp eq i32 %54, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %if.end93.if.end10.i_crit_edge

if.end93.if.end10.i_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

pm_runtime_suspended.exit.i:                      ; preds = %if.end93
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4, i32 12, i32 15
  %55 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %pm_runtime_suspended.exit.i.apds990x_set_arate.exit_crit_edge, label %pm_runtime_suspended.exit.i.if.end10.i_crit_edge

pm_runtime_suspended.exit.i.if.end10.i_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

pm_runtime_suspended.exit.i.apds990x_set_arate.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_set_arate.exit

if.end10.i:                                       ; preds = %pm_runtime_suspended.exit.i.if.end10.i_crit_edge, %if.end93.if.end10.i_crit_edge
  %56 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %prox_persistence, align 8
  %shl14.i = shl i8 %57, 4
  %or.i = or i8 %shl14.i, 1
  %call.i.i231 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext -116, i8 noundef zeroext %or.i) #9
  br label %apds990x_set_arate.exit

apds990x_set_arate.exit:                          ; preds = %if.end10.i, %pm_runtime_suspended.exit.i.apds990x_set_arate.exit_crit_edge
  %prox_en.i = getelementptr inbounds %struct.apds990x_chip, ptr %call7.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %prox_en.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %prox_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  %spec.select.i = select i1 %tobool.not.i, i8 27, i8 63
  %60 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client1, align 4
  %call.i.i233 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %61, i8 noundef zeroext -128, i8 noundef zeroext %spec.select.i) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i, align 8
  %setup_resources = getelementptr inbounds %struct.apds990x_platform_data, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %setup_resources to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %setup_resources, align 4
  %tobool101.not = icmp eq ptr %65, null
  br i1 %tobool101.not, label %apds990x_set_arate.exit.if.end109_crit_edge, label %if.then102

apds990x_set_arate.exit.if.end109_crit_edge:      ; preds = %apds990x_set_arate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then102:                                       ; preds = %apds990x_set_arate.exit
  %call105 = tail call i32 %65() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then102.if.end109_crit_edge, label %if.then102.fail3_crit_edge

if.then102.fail3_crit_edge:                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.then102.if.end109_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.end109:                                        ; preds = %if.then102.if.end109_crit_edge, %apds990x_set_arate.exit.if.end109_crit_edge
  %66 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %client1, align 4
  %dev111 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  %call112 = tail call i32 @sysfs_create_group(ptr noundef %dev111, ptr noundef nonnull @apds990x_attribute_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %do.end117, label %if.end120

do.end117:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client1, align 4
  %dev119 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev119, ptr noundef nonnull @.str.19) #13
  br label %fail4

if.end120:                                        ; preds = %if.end109
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  %call121 = tail call i32 @request_threaded_irq(i32 noundef %71, ptr noundef null, ptr noundef nonnull @apds990x_irq, i32 noundef 8202, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end120.cleanup_crit_edge, label %do.end126

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end126:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %73) #13
  %74 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client1, align 4
  %dev131 = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev131, ptr noundef nonnull @apds990x_attribute_group) #9
  br label %fail4

fail4:                                            ; preds = %do.end126, %do.end117
  %err.0 = phi i32 [ %call112, %do.end117 ], [ %call121, %do.end126 ]
  %76 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call7.i.i, align 8
  %tobool134.not = icmp eq ptr %77, null
  br i1 %tobool134.not, label %fail4.fail3_crit_edge, label %land.lhs.true

fail4.fail3_crit_edge:                            ; preds = %fail4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

land.lhs.true:                                    ; preds = %fail4
  %release_resources = getelementptr inbounds %struct.apds990x_platform_data, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %release_resources to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %release_resources, align 4
  %tobool136.not = icmp eq ptr %79, null
  br i1 %tobool136.not, label %land.lhs.true.fail3_crit_edge, label %if.then137

land.lhs.true.fail3_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.then137:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call140 = tail call i32 %79() #9
  br label %fail3

fail3:                                            ; preds = %if.then137, %land.lhs.true.fail3_crit_edge, %fail4.fail3_crit_edge, %if.then102.fail3_crit_edge, %do.end91
  %err.1 = phi i32 [ %retval.0.i.ph, %do.end91 ], [ %err.0, %if.then137 ], [ %err.0, %land.lhs.true.fail3_crit_edge ], [ %err.0, %fail4.fail3_crit_edge ], [ -22, %if.then102.fail3_crit_edge ]
  %call144 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #9
  br label %fail2

fail2:                                            ; preds = %fail3, %do.end83
  %err.2 = phi i32 [ %call78, %do.end83 ], [ %err.1, %fail3 ]
  tail call void @regulator_bulk_free(i32 noundef 2, ptr noundef %regs) #9
  br label %fail1

fail1:                                            ; preds = %fail2, %do.end73, %do.end9
  %err.3 = phi i32 [ -22, %do.end9 ], [ %call68, %do.end73 ], [ %err.2, %fail2 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end120.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #9
  %client2 = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client2, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @apds990x_attribute_group) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %release_resources = getelementptr inbounds %struct.apds990x_platform_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %release_resources to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release_resources, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 %9() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %10 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 15
  %12 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end12_crit_edge, label %pm_runtime_suspended.exit.if.then10_crit_edge

pm_runtime_suspended.exit.if.then10_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

pm_runtime_suspended.exit.if.end12_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %pm_runtime_suspended.exit.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %13 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client2, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext -128, i8 noundef zeroext 0) #9
  %regs.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 3
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs.i) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %pm_runtime_suspended.exit.if.end12_crit_edge
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev8, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev8, i32 noundef 2) #9
  %regs = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 3
  tail call void @regulator_bulk_free(i32 noundef 2, ptr noundef %regs) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apds990x_configure(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client1.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -128, i8 noundef zeroext 0) #9
  %2 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i, align 4
  %call.i2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -126, i8 noundef zeroext -1) #9
  %4 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1.i, align 4
  %call.i4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -125, i8 noundef zeroext -18) #9
  %atime.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 10
  %6 = ptrtoint ptr %atime.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 50, ptr %atime.i, align 4
  %a_max_result.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 12
  %7 = ptrtoint ptr %a_max_result.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 18432, ptr %a_max_result.i, align 4
  %8 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client1.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -127, i8 noundef zeroext -18) #9
  %10 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1.i, align 4
  %call.i6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -115, i8 noundef zeroext 0) #9
  %lux_persistence = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 18
  %12 = ptrtoint ptr %lux_persistence to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lux_persistence, align 1
  %prox_persistence = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 19
  %14 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prox_persistence, align 4
  %shl6 = shl i8 %15, 4
  %or = or i8 %shl6, %13
  %16 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client1.i, align 4
  %call.i8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -116, i8 noundef zeroext %or) #9
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %ppcount = getelementptr inbounds %struct.apds990x_platform_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ppcount to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ppcount, align 1
  %22 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client1.i, align 4
  %call.i10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -114, i8 noundef zeroext %21) #9
  %again_meas = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 13
  %24 = ptrtoint ptr %again_meas to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %again_meas, align 2
  %again_next = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 14
  %25 = ptrtoint ptr %again_next to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %again_next, align 1
  %pdrive = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 17
  %26 = ptrtoint ptr %pdrive to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pdrive, align 2
  %shl11 = shl i8 %27, 6
  %pdiode = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 16
  %28 = ptrtoint ptr %pdiode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pdiode, align 1
  %shl13 = shl i8 %29, 4
  %pgain = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 15
  %30 = ptrtoint ptr %pgain to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pgain, align 4
  %shl16 = shl i8 %31, 2
  %or14 = or i8 %shl11, %shl13
  %or17 = or i8 %or14, %shl16
  %or21 = or i8 %or17, 1
  %32 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client1.i, align 4
  %call.i12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext -113, i8 noundef zeroext %or21) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client1.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -109) #9
  %conv5.i = trunc i32 %call.i to i8
  %2 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i, align 4
  %4 = and i8 %conv5.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %4)
  %switch.selectcmp.i = icmp eq i8 %4, 32
  %switch.select.i = select i1 %switch.selectcmp.i, i8 -27, i8 -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %switch.selectcmp1.i = icmp eq i8 %4, 16
  %switch.select2.i = select i1 %switch.selectcmp1.i, i8 -26, i8 %switch.select.i
  %call.i94 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %switch.select2.i) #9
  %mutex = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %5 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 12, i32 18
  %7 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp eq i32 %8, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 12, i32 15
  %9 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end56_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

pm_runtime_suspended.exit.if.end56_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = and i8 %conv5.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then.if.end17_crit_edge, label %if.then3

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then3:                                         ; preds = %if.then
  %lux_clear = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 22
  %call.i96 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext -76) #9
  %conv5.i97 = trunc i32 %call.i96 to i16
  %11 = ptrtoint ptr %lux_clear to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5.i97, ptr %lux_clear, align 2
  %lux_ir = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 23
  %12 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client1.i, align 4
  %call.i99 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %13, i8 noundef zeroext -74) #9
  %conv5.i100 = trunc i32 %call.i99 to i16
  %14 = ptrtoint ptr %lux_ir to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i100, ptr %lux_ir, align 2
  %again_next = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 14
  %15 = ptrtoint ptr %again_next to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %again_next, align 1
  %again_meas = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 13
  %17 = ptrtoint ptr %again_meas to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %again_meas, align 2
  %18 = ptrtoint ptr %lux_clear to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %lux_clear, align 4
  %conv7 = zext i16 %19 to i32
  %conv9 = and i32 %call.i99, 65535
  %cf1.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %cf1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cf1.i, align 4
  %mul.i = mul i32 %21, %conv7
  %irf1.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %irf1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irf1.i, align 4
  %mul3.i = mul i32 %23, %conv9
  %sub.i = sub i32 %mul.i, %mul3.i
  %div.i = sdiv i32 %sub.i, 4096
  %cf25.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 8, i32 3
  %24 = ptrtoint ptr %cf25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cf25.i, align 4
  %mul6.i = mul i32 %25, %conv7
  %irf2.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 8, i32 4
  %26 = ptrtoint ptr %irf2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irf2.i, align 4
  %mul8.i = mul i32 %27, %conv9
  %sub9.i = sub i32 %mul6.i, %mul8.i
  %div10.i = sdiv i32 %sub9.i, 4096
  %28 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 %div10.i) #9
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0) #9
  %cf.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 8
  %df.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 8, i32 5
  %30 = ptrtoint ptr %df.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %df.i, align 4
  %32 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cf.i, align 4
  %mul19.i = mul i32 %31, 10
  %mul20.i = mul i32 %mul19.i, %33
  %idxprom.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @again, i32 0, i32 %idxprom.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %35 to i32
  %atime.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 10
  %36 = ptrtoint ptr %atime.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %atime.i, align 4
  %conv21.i = zext i16 %37 to i32
  %mul22.i = mul nuw nsw i32 %conv21.i, %conv.i
  %div23.i = udiv i32 %mul20.i, %mul22.i
  %mul24.i = mul i32 %div23.i, %29
  %div2540.i = lshr i32 %mul24.i, 12
  %lux_raw = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 20
  %38 = ptrtoint ptr %lux_raw to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div2540.i, ptr %lux_raw, align 4
  %a_max_result.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 12
  %39 = ptrtoint ptr %a_max_result.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %a_max_result.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %40)
  %cmp.i103 = icmp eq i16 %19, %40
  br i1 %cmp.i103, label %if.end27.i, label %if.else.i

if.else.i:                                        ; preds = %if.then3
  %41 = lshr i16 %40, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %41)
  %cmp10.i = icmp ugt i16 %19, %41
  br i1 %cmp10.i, label %if.else.i.if.else44.i_crit_edge, label %if.else13.i

if.else.i.if.else44.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44.i

if.else13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %19)
  %cmp16.i = icmp ult i16 %19, 25
  br i1 %cmp16.i, label %if.else13.i.if.else44.i_crit_edge, label %if.else19.i

if.else13.i.if.else44.i_crit_edge:                ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44.i

if.else19.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %19)
  %cmp22.i = icmp ult i16 %19, 100
  %inc.i = zext i1 %cmp22.i to i32
  br label %if.else44.i

if.end27.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %42 = tail call i32 @llvm.smin.i32(i32 %idxprom.i, i32 5) #9
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 2) #9
  %44 = add nsw i32 %43, -2
  br label %if.end53.i

if.else44.i:                                      ; preds = %if.else19.i, %if.else13.i.if.else44.i_crit_edge, %if.else.i.if.else44.i_crit_edge
  %inc.pn.i = phi i32 [ %inc.i, %if.else19.i ], [ -1, %if.else.i.if.else44.i_crit_edge ], [ 2, %if.else13.i.if.else44.i_crit_edge ]
  %next_again.0.ph.i = add nsw i32 %inc.pn.i, %idxprom.i
  %45 = tail call i32 @llvm.smin.i32(i32 %next_again.0.ph.i, i32 3) #9
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %idxprom.i)
  %cmp45.not.i = icmp ne i32 %46, %idxprom.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %19)
  %cmp49.i = icmp ult i16 %19, 25
  %or.cond.i = select i1 %cmp45.not.i, i1 %cmp49.i, i1 false
  %spec.select99.i = select i1 %or.cond.i, i32 -34, i32 0
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else44.i, %if.end27.i
  %next_again.1104.i = phi i32 [ %44, %if.end27.i ], [ %46, %if.else44.i ]
  %cmp66.i = phi i1 [ true, %if.end27.i ], [ %or.cond.i, %if.else44.i ]
  %ret.0.i = phi i32 [ -34, %if.end27.i ], [ %spec.select99.i, %if.else44.i ]
  %conv54.i = trunc i32 %next_again.1104.i to i8
  %47 = ptrtoint ptr %again_next to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv54.i, ptr %again_next, align 1
  %pdrive.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 17
  %48 = ptrtoint ptr %pdrive.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pdrive.i, align 2
  %conv55.i = zext i8 %49 to i32
  %shl.i = shl nuw nsw i32 %conv55.i, 6
  %pdiode.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 16
  %50 = ptrtoint ptr %pdiode.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pdiode.i, align 1
  %conv56.i = zext i8 %51 to i32
  %shl57.i = shl nuw nsw i32 %conv56.i, 4
  %pgain.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 15
  %52 = ptrtoint ptr %pgain.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pgain.i, align 4
  %conv58.i = zext i8 %53 to i32
  %shl59.i = shl nuw nsw i32 %conv58.i, 2
  %or.i = or i32 %shl.i, %next_again.1104.i
  %or60.i = or i32 %or.i, %shl57.i
  %or64.i = or i32 %or60.i, %shl59.i
  %conv65.i = trunc i32 %or64.i to i8
  %54 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client1.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext -113, i8 noundef zeroext %conv65.i) #9
  br i1 %cmp66.i, label %if.then68.i, label %if.else69.i

if.then68.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client1.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %57, i8 noundef zeroext -92, i16 noundef zeroext 100) #9
  %58 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client1.i, align 4
  %call.i4.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %59, i8 noundef zeroext -90, i16 noundef zeroext 101) #9
  br label %apds990x_calc_again.exit

if.else69.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @apds990x_refresh_athres(ptr noundef %data) #9
  br label %apds990x_calc_again.exit

apds990x_calc_again.exit:                         ; preds = %if.else69.i, %if.then68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp eq i32 %ret.0.i, 0
  br i1 %cmp, label %if.then13, label %apds990x_calc_again.exit.if.end17_crit_edge

apds990x_calc_again.exit.if.end17_crit_edge:      ; preds = %apds990x_calc_again.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %apds990x_calc_again.exit
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %lux_raw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lux_raw, align 4
  %lux = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 21
  %62 = ptrtoint ptr %lux to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %lux, align 4
  %lux_wait_fresh_res = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 7
  %63 = ptrtoint ptr %lux_wait_fresh_res to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %lux_wait_fresh_res, align 1
  %wait = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %64 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %client1.i, align 4
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  tail call void @sysfs_notify(ptr noundef %dev16, ptr noundef null, ptr noundef nonnull @.str.33) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %apds990x_calc_again.exit.if.end17_crit_edge, %if.then.if.end17_crit_edge
  %66 = and i8 %conv5.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool20.not = icmp eq i8 %66, 0
  br i1 %tobool20.not, label %if.end17.if.end56_crit_edge, label %land.lhs.true

if.end17.if.end56_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end17
  %prox_en = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 5
  %67 = ptrtoint ptr %prox_en to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %prox_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool21.not = icmp eq i32 %68, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end56_crit_edge, label %if.then22

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then22:                                        ; preds = %land.lhs.true
  %69 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %client1.i, align 4
  %call.i105 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %70, i8 noundef zeroext -76) #9
  %again_meas24 = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 13
  %71 = ptrtoint ptr %again_meas24 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %again_meas24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp26 = icmp eq i8 %72, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.then22.if.else_crit_edge

if.then22.if.else_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true28:                                  ; preds = %if.then22
  %conv5.i106 = trunc i32 %call.i105 to i16
  %a_max_result = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 12
  %73 = ptrtoint ptr %a_max_result to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %a_max_result, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %conv5.i106)
  %cmp31 = icmp eq i16 %74, %conv5.i106
  br i1 %cmp31, label %if.then33, label %land.lhs.true28.if.else_crit_edge

land.lhs.true28.if.else_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  %prox_data = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 28
  %75 = ptrtoint ptr %prox_data to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %prox_data, align 4
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true28.if.else_crit_edge, %if.then22.if.else_crit_edge
  %prox_data34 = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 28
  %76 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %client1.i, align 4
  %call.i108 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %77, i8 noundef zeroext -72) #9
  %conv5.i109 = trunc i32 %call.i108 to i16
  %78 = ptrtoint ptr %prox_data34 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv5.i109, ptr %prox_data34, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  %prox_data37 = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 28
  %79 = ptrtoint ptr %prox_data37 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %prox_data37, align 4
  %conv38 = zext i16 %80 to i32
  %81 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client1.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4, i32 12, i32 18
  %83 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp.i.i = icmp eq i32 %84, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %if.end36.if.end.i_crit_edge

if.end36.if.end.i_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

pm_runtime_suspended.exit.i:                      ; preds = %if.end36
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4, i32 12, i32 15
  %85 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %pm_runtime_suspended.exit.i.apds990x_refresh_pthres.exit_crit_edge, label %pm_runtime_suspended.exit.i.if.end.i_crit_edge

pm_runtime_suspended.exit.i.if.end.i_crit_edge:   ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

pm_runtime_suspended.exit.i.apds990x_refresh_pthres.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_refresh_pthres.exit

if.end.i:                                         ; preds = %pm_runtime_suspended.exit.i.if.end.i_crit_edge, %if.end36.if.end.i_crit_edge
  %prox_thres.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 27
  %86 = ptrtoint ptr %prox_thres.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %prox_thres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %conv38)
  %cmp.i110 = icmp ugt i32 %87, %conv38
  br i1 %cmp.i110, label %if.end.i.if.end8.i_crit_edge, label %if.else.i112

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else.i112:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prox_continuous_mode.i = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 6
  %88 = ptrtoint ptr %prox_continuous_mode.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %prox_continuous_mode.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i111 = icmp eq i8 %89, 0
  %..i = select i1 %tobool.not.i111, i32 65535, i32 %87
  %90 = trunc i32 %87 to i16
  %phi.cast.i = add i16 %90, -50
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i112, %if.end.i.if.end8.i_crit_edge
  %lo.0.i = phi i16 [ 0, %if.end.i.if.end8.i_crit_edge ], [ %phi.cast.i, %if.else.i112 ]
  %hi.0.i = phi i32 [ %87, %if.end.i.if.end8.i_crit_edge ], [ %..i, %if.else.i112 ]
  %call.i.i113 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %82, i8 noundef zeroext -88, i16 noundef zeroext %lo.0.i) #9
  %conv10.i = trunc i32 %hi.0.i to i16
  %91 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %client1.i, align 4
  %call.i2.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %92, i8 noundef zeroext -86, i16 noundef zeroext %conv10.i) #9
  br label %apds990x_refresh_pthres.exit

apds990x_refresh_pthres.exit:                     ; preds = %if.end8.i, %pm_runtime_suspended.exit.i.apds990x_refresh_pthres.exit_crit_edge
  %93 = ptrtoint ptr %prox_data37 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %prox_data37, align 4
  %conv41 = zext i16 %94 to i32
  %prox_thres = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 27
  %95 = ptrtoint ptr %prox_thres to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %prox_thres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %conv41)
  %cmp42 = icmp ugt i32 %96, %conv41
  br i1 %cmp42, label %apds990x_refresh_pthres.exit.if.end51.sink.split_crit_edge, label %if.else46

apds990x_refresh_pthres.exit.if.end51.sink.split_crit_edge: ; preds = %apds990x_refresh_pthres.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.sink.split

if.else46:                                        ; preds = %apds990x_refresh_pthres.exit
  %prox_continuous_mode = getelementptr inbounds %struct.apds990x_chip, ptr %data, i32 0, i32 6
  %97 = ptrtoint ptr %prox_continuous_mode to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %prox_continuous_mode, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool47.not = icmp eq i8 %98, 0
  br i1 %tobool47.not, label %if.else46.if.end51.sink.split_crit_edge, label %if.else46.if.end51_crit_edge

if.else46.if.end51_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.else46.if.end51.sink.split_crit_edge:          ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.else46.if.end51.sink.split_crit_edge, %apds990x_refresh_pthres.exit.if.end51.sink.split_crit_edge
  %.sink = phi i16 [ 0, %apds990x_refresh_pthres.exit.if.end51.sink.split_crit_edge ], [ 1023, %if.else46.if.end51.sink.split_crit_edge ]
  %99 = ptrtoint ptr %prox_data37 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %.sink, ptr %prox_data37, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.else46.if.end51_crit_edge
  %100 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %client1.i, align 4
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %101, i32 0, i32 4
  tail call void @sysfs_notify(ptr noundef %dev53, ptr noundef null, ptr noundef nonnull @.str.44) #9
  br label %if.end56

if.end56:                                         ; preds = %if.end51, %land.lhs.true.if.end56_crit_edge, %if.end17.if.end56_crit_edge, %pm_runtime_suspended.exit.if.end56_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_free(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_lux_calib_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_calib = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %lux_calib to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lux_calib, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_lux_calib_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !157
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %conv = trunc i32 %4 to i16
  %lux_calib = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %lux_calib to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %lux_calib, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_lux_calib_format_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef 8192)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_lux_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup55_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

pm_runtime_suspended.exit.cleanup55_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 635) #9
  %lux_wait_fresh_res = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %lux_wait_fresh_res to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lux_wait_fresh_res, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end48_crit_edge, label %if.then14

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 4
  %call1794 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %8 = ptrtoint ptr %lux_wait_fresh_res to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lux_wait_fresh_res, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not95 = icmp eq i8 %9, 0
  br i1 %tobool20.not95, label %if.end44.thread, label %if.then14.if.end37_crit_edge

if.then14.if.end37_crit_edge:                     ; preds = %if.then14
  br label %if.end37

if.end44.thread:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end48

if.end37:                                         ; preds = %cleanup.if.end37_crit_edge, %if.then14.if.end37_crit_edge
  %__ret15.197 = phi i32 [ %__ret15.1, %cleanup.if.end37_crit_edge ], [ 200, %if.then14.if.end37_crit_edge ]
  %call1796 = phi i32 [ %call17, %cleanup.if.end37_crit_edge ], [ %call1794, %if.then14.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1796)
  %tobool38.not = icmp eq i32 %call1796, 0
  br i1 %tobool38.not, label %cleanup, label %if.end44.thread89

if.end44.thread89:                                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end48

cleanup:                                          ; preds = %if.end37
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret15.197) #9
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %10 = ptrtoint ptr %lux_wait_fresh_res to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lux_wait_fresh_res, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool25.not = icmp eq i32 %call41, 0
  %12 = select i1 %tobool20.not, i1 %tobool25.not, i1 false
  %__ret15.1 = select i1 %12, i32 1, i32 %call41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1)
  %tobool31.not = icmp eq i32 %__ret15.1, 0
  %13 = select i1 %tobool20.not, i1 true, i1 %tobool31.not
  br i1 %13, label %if.end44, label %cleanup.if.end37_crit_edge

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end44:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1)
  %phi.cmp = icmp eq i32 %__ret15.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br i1 %phi.cmp, label %if.end44.cleanup55_crit_edge, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end44.cleanup55_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.end48:                                         ; preds = %if.end44.if.end48_crit_edge, %if.end44.thread89, %if.end44.thread, %if.end.if.end48_crit_edge
  %mutex = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %lux = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %lux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lux, align 4
  %lux_calib = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %lux_calib to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %lux_calib, align 4
  %conv = zext i16 %17 to i32
  %mul = mul i32 %15, %conv
  %div79 = lshr i32 %mul, 13
  %div52 = udiv i32 %mul, 81920
  %rem = urem i32 %div79, 10
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %div52, i32 noundef %rem)
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup55

cleanup55:                                        ; preds = %if.end48, %if.end44.cleanup55_crit_edge, %pm_runtime_suspended.exit.cleanup55_crit_edge
  %retval.0 = phi i32 [ %call53, %if.end48 ], [ -5, %pm_runtime_suspended.exit.cleanup55_crit_edge ], [ -5, %if.end44.cleanup55_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_lux_range_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef 65535)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_rate_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arate = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %arate to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arate, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_rate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !157
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp1.not.i = icmp slt i32 %4, 10
  br i1 %cmp1.not.i, label %for.inc.i, label %if.end.if.end6.i_crit_edge

if.end.if.end6.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

for.inc.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp1.not.1.i = icmp slt i32 %4, 5
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end6.i_crit_edge

for.inc.i.if.end6.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1.not.2.i = icmp slt i32 %4, 2
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end6.i_crit_edge

for.inc.1.i.if.end6.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.not.3.not.i = icmp eq i32 %4, 1
  br i1 %cmp1.not.3.not.i, label %for.inc.2.i.if.end6.i_crit_edge, label %apds990x_set_arate.exit.thread

for.inc.2.i.if.end6.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

apds990x_set_arate.exit.thread:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %18

if.end6.i:                                        ; preds = %for.inc.2.i.if.end6.i_crit_edge, %for.inc.1.i.if.end6.i_crit_edge, %for.inc.i.if.end6.i_crit_edge, %if.end.if.end6.i_crit_edge
  %i.030.lcssa.i = phi i32 [ 0, %if.end.if.end6.i_crit_edge ], [ 1, %for.inc.i.if.end6.i_crit_edge ], [ 2, %for.inc.1.i.if.end6.i_crit_edge ], [ 3, %for.inc.2.i.if.end6.i_crit_edge ]
  %arrayidx7.i = getelementptr [4 x i8], ptr @apersis, i32 0, i32 %i.030.lcssa.i
  %5 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7.i, align 1
  %lux_persistence.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %lux_persistence.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %lux_persistence.i, align 1
  %arrayidx8.i = getelementptr [4 x i16], ptr @arates_hz, i32 0, i32 %i.030.lcssa.i
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx8.i, align 2
  %arate.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %arate.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arate.i, align 2
  %client.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4, i32 12, i32 18
  %13 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %if.end6.i.apds990x_set_arate.exit_crit_edge

if.end6.i.apds990x_set_arate.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_set_arate.exit

pm_runtime_suspended.exit.i:                      ; preds = %if.end6.i
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4, i32 12, i32 15
  %15 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %apds990x_set_arate.exit.thread16, label %pm_runtime_suspended.exit.i.apds990x_set_arate.exit_crit_edge

pm_runtime_suspended.exit.i.apds990x_set_arate.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_set_arate.exit

apds990x_set_arate.exit.thread16:                 ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

apds990x_set_arate.exit:                          ; preds = %pm_runtime_suspended.exit.i.apds990x_set_arate.exit_crit_edge, %if.end6.i.apds990x_set_arate.exit_crit_edge
  %prox_persistence.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %prox_persistence.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prox_persistence.i, align 4
  %shl14.i = shl i8 %17, 4
  %or.i = or i8 %shl14.i, %6
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext -116, i8 noundef zeroext %or.i) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %apds990x_set_arate.exit._crit_edge, label %apds990x_set_arate.exit.cleanup_crit_edge

apds990x_set_arate.exit.cleanup_crit_edge:        ; preds = %apds990x_set_arate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

apds990x_set_arate.exit._crit_edge:               ; preds = %apds990x_set_arate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %18

18:                                               ; preds = %apds990x_set_arate.exit._crit_edge, %apds990x_set_arate.exit.thread
  %retval.0.i15 = phi i32 [ -22, %apds990x_set_arate.exit.thread ], [ %call.i.i, %apds990x_set_arate.exit._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %18, %apds990x_set_arate.exit.cleanup_crit_edge, %apds990x_set_arate.exit.thread16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.i15, %18 ], [ %len, %apds990x_set_arate.exit.cleanup_crit_edge ], [ %len, %apds990x_set_arate.exit.thread16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_rate_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef 10)
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.39, i32 noundef 5)
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.39, i32 noundef 2)
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.39, i32 noundef 1)
  %add.3 = add i32 %call.3, %add.2
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %add.3
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 -1
  %0 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 2560, ptr %add.ptr2, align 1
  ret i32 %add.3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_lux_thresh_above_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_thres_hi = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %lux_thres_hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lux_thres_hi, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_lux_thresh_above_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %thresh.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_thres_hi = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thresh.i) #9
  %2 = ptrtoint ptr %thresh.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %thresh.i, align 4, !annotation !157
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %thresh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %apds990x_set_lux_thresh.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %thresh.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thresh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp.i = icmp ugt i32 %4, 65535
  br i1 %cmp.i, label %apds990x_set_lux_thresh.exit.thread, label %if.end2.i

apds990x_set_lux_thresh.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thresh.i) #9
  br label %10

if.end2.i:                                        ; preds = %if.end.i
  %mutex.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %5 = ptrtoint ptr %thresh.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %thresh.i, align 4
  %7 = ptrtoint ptr %lux_thres_hi to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %lux_thres_hi, align 4
  %lux_wait_fresh_res.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %lux_wait_fresh_res.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lux_wait_fresh_res.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end2.i.apds990x_set_lux_thresh.exit.thread8_crit_edge

if.end2.i.apds990x_set_lux_thresh.exit.thread8_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_set_lux_thresh.exit.thread8

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @apds990x_refresh_athres(ptr noundef %1) #9
  br label %apds990x_set_lux_thresh.exit.thread8

apds990x_set_lux_thresh.exit.thread8:             ; preds = %if.then4.i, %if.end2.i.apds990x_set_lux_thresh.exit.thread8_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thresh.i) #9
  br label %11

apds990x_set_lux_thresh.exit:                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thresh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %apds990x_set_lux_thresh.exit._crit_edge, label %apds990x_set_lux_thresh.exit._crit_edge11

apds990x_set_lux_thresh.exit._crit_edge11:        ; preds = %apds990x_set_lux_thresh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %11

apds990x_set_lux_thresh.exit._crit_edge:          ; preds = %apds990x_set_lux_thresh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %10

10:                                               ; preds = %apds990x_set_lux_thresh.exit._crit_edge, %apds990x_set_lux_thresh.exit.thread
  %retval.0.i7 = phi i32 [ -22, %apds990x_set_lux_thresh.exit.thread ], [ %call.i.i, %apds990x_set_lux_thresh.exit._crit_edge ]
  br label %11

11:                                               ; preds = %10, %apds990x_set_lux_thresh.exit._crit_edge11, %apds990x_set_lux_thresh.exit.thread8
  %12 = phi i32 [ %retval.0.i7, %10 ], [ %len, %apds990x_set_lux_thresh.exit._crit_edge11 ], [ %len, %apds990x_set_lux_thresh.exit.thread8 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apds990x_refresh_athres(ptr noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %lux_thres_lo = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 26
  %5 = ptrtoint ptr %lux_thres_lo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lux_thres_lo, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %6, label %if.end3.i [
    i32 0, label %if.end.apds990x_lux_to_threshold.exit_crit_edge
    i32 65535, label %if.then2.i
  ]

if.end.apds990x_lux_to_threshold.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_lux_to_threshold.exit

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_lux_to_threshold.exit

if.end3.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl i32 %6, 11
  %lux_calib.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 24
  %8 = ptrtoint ptr %lux_calib.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lux_calib.i, align 4
  %10 = lshr i16 %9, 2
  %div.i = zext i16 %10 to i32
  %div4.i = udiv i32 %mul.i, %div.i
  %atime.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 10
  %11 = ptrtoint ptr %atime.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %atime.i, align 4
  %conv5.i = zext i16 %12 to i32
  %again_next.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 14
  %13 = ptrtoint ptr %again_next.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %again_next.i, align 1
  %idxprom.i = zext i8 %14 to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @again, i32 0, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %conv6.i = zext i8 %16 to i32
  %mul7.i = shl i32 %conv5.i, 18
  %mul9.i = mul i32 %mul7.i, %conv6.i
  %cf.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 8
  %17 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cf.i, align 4
  %df.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 8, i32 5
  %19 = ptrtoint ptr %df.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %df.i, align 4
  %mul11.i = mul i32 %20, %18
  %div12.i = udiv i32 %mul9.i, %mul11.i
  %mul13.i = mul i32 %div12.i, %div4.i
  %div1479.i = lshr i32 %mul13.i, 6
  %lux_ir.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 23
  %21 = ptrtoint ptr %lux_ir.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %lux_ir.i, align 2
  %conv15.i = zext i16 %22 to i32
  %mul20.i = mul nuw nsw i32 %conv15.i, %conv6.i
  %again_meas.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 13
  %23 = ptrtoint ptr %again_meas.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %again_meas.i, align 2
  %idxprom21.i = zext i8 %24 to i32
  %arrayidx22.i = getelementptr [4 x i8], ptr @again, i32 0, i32 %idxprom21.i
  %25 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %26 to i32
  %div24.i = udiv i32 %mul20.i, %conv23.i
  %lux_clear.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 22
  %27 = ptrtoint ptr %lux_clear.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %lux_clear.i, align 4
  %conv25.i = zext i16 %28 to i32
  %mul26.i = shl nuw nsw i32 %conv25.i, 12
  %rcf.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9
  %29 = ptrtoint ptr %rcf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rcf.i, align 4
  %mul29.i = mul i32 %30, %conv15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26.i, i32 %mul29.i)
  %cmp30.not.i = icmp ult i32 %mul26.i, %mul29.i
  %cf2.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9, i32 3
  %irf2.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9, i32 4
  %cf1.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9, i32 1
  %irf1.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9, i32 2
  %irf2.sink.i = select i1 %cmp30.not.i, ptr %irf2.i, ptr %irf1.i
  %.pn.in.i = select i1 %cmp30.not.i, ptr %cf2.i, ptr %cf1.i
  %31 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %mul40.sink.i = mul i32 %.pn.i, %div1479.i
  %32 = ptrtoint ptr %irf2.sink.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irf2.sink.i, align 4
  %mul42.i = mul i32 %33, %div24.i
  %add43.i = add i32 %mul42.i, %mul40.sink.i
  %thres.0.i = lshr i32 %add43.i, 12
  %a_max_result.i = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 12
  %34 = ptrtoint ptr %a_max_result.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %a_max_result.i, align 4
  %conv46.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %thres.0.i, i32 %conv46.i)
  %cmp47.not.i = icmp ult i32 %thres.0.i, %conv46.i
  %sub.i = add nuw nsw i32 %conv46.i, 65535
  %spec.select.i = select i1 %cmp47.not.i, i32 %thres.0.i, i32 %sub.i
  %conv53.i = trunc i32 %spec.select.i to i16
  br label %apds990x_lux_to_threshold.exit

apds990x_lux_to_threshold.exit:                   ; preds = %if.end3.i, %if.then2.i, %if.end.apds990x_lux_to_threshold.exit_crit_edge
  %retval.0.i = phi i16 [ -1, %if.then2.i ], [ %conv53.i, %if.end3.i ], [ 0, %if.end.apds990x_lux_to_threshold.exit_crit_edge ]
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -92, i16 noundef zeroext %retval.0.i) #9
  %lux_thres_hi = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 25
  %36 = ptrtoint ptr %lux_thres_hi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lux_thres_hi, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %37, label %if.end3.i34 [
    i32 0, label %apds990x_lux_to_threshold.exit.apds990x_lux_to_threshold.exit56_crit_edge
    i32 65535, label %if.then2.i1
  ]

apds990x_lux_to_threshold.exit.apds990x_lux_to_threshold.exit56_crit_edge: ; preds = %apds990x_lux_to_threshold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_lux_to_threshold.exit56

if.then2.i1:                                      ; preds = %apds990x_lux_to_threshold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_lux_to_threshold.exit56

if.end3.i34:                                      ; preds = %apds990x_lux_to_threshold.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i2 = shl i32 %37, 11
  %lux_calib.i3 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 24
  %39 = ptrtoint ptr %lux_calib.i3 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %lux_calib.i3, align 4
  %41 = lshr i16 %40, 2
  %div.i4 = zext i16 %41 to i32
  %div4.i5 = udiv i32 %mul.i2, %div.i4
  %atime.i6 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 10
  %42 = ptrtoint ptr %atime.i6 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %atime.i6, align 4
  %conv5.i7 = zext i16 %43 to i32
  %again_next.i8 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 14
  %44 = ptrtoint ptr %again_next.i8 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %again_next.i8, align 1
  %idxprom.i9 = zext i8 %45 to i32
  %arrayidx.i10 = getelementptr [4 x i8], ptr @again, i32 0, i32 %idxprom.i9
  %46 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i10, align 1
  %conv6.i11 = zext i8 %47 to i32
  %mul7.i12 = shl i32 %conv5.i7, 18
  %mul9.i13 = mul i32 %mul7.i12, %conv6.i11
  %cf.i14 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 8
  %48 = ptrtoint ptr %cf.i14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cf.i14, align 4
  %df.i15 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 8, i32 5
  %50 = ptrtoint ptr %df.i15 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %df.i15, align 4
  %mul11.i16 = mul i32 %51, %49
  %div12.i17 = udiv i32 %mul9.i13, %mul11.i16
  %mul13.i18 = mul i32 %div12.i17, %div4.i5
  %div1479.i19 = lshr i32 %mul13.i18, 6
  %lux_ir.i20 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 23
  %52 = ptrtoint ptr %lux_ir.i20 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %lux_ir.i20, align 2
  %conv15.i21 = zext i16 %53 to i32
  %mul20.i22 = mul nuw nsw i32 %conv15.i21, %conv6.i11
  %again_meas.i23 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 13
  %54 = ptrtoint ptr %again_meas.i23 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %again_meas.i23, align 2
  %idxprom21.i24 = zext i8 %55 to i32
  %arrayidx22.i25 = getelementptr [4 x i8], ptr @again, i32 0, i32 %idxprom21.i24
  %56 = ptrtoint ptr %arrayidx22.i25 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx22.i25, align 1
  %conv23.i26 = zext i8 %57 to i32
  %div24.i27 = udiv i32 %mul20.i22, %conv23.i26
  %lux_clear.i28 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 22
  %58 = ptrtoint ptr %lux_clear.i28 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %lux_clear.i28, align 4
  %conv25.i29 = zext i16 %59 to i32
  %mul26.i30 = shl nuw nsw i32 %conv25.i29, 12
  %rcf.i31 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9
  %60 = ptrtoint ptr %rcf.i31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rcf.i31, align 4
  %mul29.i32 = mul i32 %61, %conv15.i21
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26.i30, i32 %mul29.i32)
  %cmp30.not.i33 = icmp ult i32 %mul26.i30, %mul29.i32
  %cf2.i38 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9, i32 3
  %irf2.i39 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9, i32 4
  %cf1.i35 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9, i32 1
  %irf1.i36 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 9, i32 2
  %irf2.sink.i41 = select i1 %cmp30.not.i33, ptr %irf2.i39, ptr %irf1.i36
  %.pn.in.i42 = select i1 %cmp30.not.i33, ptr %cf2.i38, ptr %cf1.i35
  %62 = ptrtoint ptr %.pn.in.i42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn.i43 = load i32, ptr %.pn.in.i42, align 4
  %mul40.sink.i44 = mul i32 %.pn.i43, %div1479.i19
  %63 = ptrtoint ptr %irf2.sink.i41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irf2.sink.i41, align 4
  %mul42.i45 = mul i32 %64, %div24.i27
  %add43.i46 = add i32 %mul42.i45, %mul40.sink.i44
  %thres.0.i47 = lshr i32 %add43.i46, 12
  %a_max_result.i48 = getelementptr inbounds %struct.apds990x_chip, ptr %chip, i32 0, i32 12
  %65 = ptrtoint ptr %a_max_result.i48 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %a_max_result.i48, align 4
  %conv46.i49 = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %thres.0.i47, i32 %conv46.i49)
  %cmp47.not.i50 = icmp ult i32 %thres.0.i47, %conv46.i49
  %sub.i51 = add nuw nsw i32 %conv46.i49, 65535
  %spec.select.i52 = select i1 %cmp47.not.i50, i32 %thres.0.i47, i32 %sub.i51
  %conv53.i53 = trunc i32 %spec.select.i52 to i16
  br label %apds990x_lux_to_threshold.exit56

apds990x_lux_to_threshold.exit56:                 ; preds = %if.end3.i34, %if.then2.i1, %apds990x_lux_to_threshold.exit.apds990x_lux_to_threshold.exit56_crit_edge
  %retval.0.i55 = phi i16 [ -1, %if.then2.i1 ], [ %conv53.i53, %if.end3.i34 ], [ 0, %apds990x_lux_to_threshold.exit.apds990x_lux_to_threshold.exit56_crit_edge ]
  %67 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %client, align 4
  %call.i58 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %68, i8 noundef zeroext -90, i16 noundef zeroext %retval.0.i55) #9
  br label %cleanup

cleanup:                                          ; preds = %apds990x_lux_to_threshold.exit56, %pm_runtime_suspended.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_lux_thresh_below_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_thres_lo = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %lux_thres_lo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lux_thres_lo, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_lux_thresh_below_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %thresh.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_thres_lo = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thresh.i) #9
  %2 = ptrtoint ptr %thresh.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %thresh.i, align 4, !annotation !157
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %thresh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %apds990x_set_lux_thresh.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %thresh.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thresh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp.i = icmp ugt i32 %4, 65535
  br i1 %cmp.i, label %apds990x_set_lux_thresh.exit.thread, label %if.end2.i

apds990x_set_lux_thresh.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thresh.i) #9
  br label %10

if.end2.i:                                        ; preds = %if.end.i
  %mutex.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %5 = ptrtoint ptr %thresh.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %thresh.i, align 4
  %7 = ptrtoint ptr %lux_thres_lo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %lux_thres_lo, align 4
  %lux_wait_fresh_res.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %lux_wait_fresh_res.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lux_wait_fresh_res.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end2.i.apds990x_set_lux_thresh.exit.thread8_crit_edge

if.end2.i.apds990x_set_lux_thresh.exit.thread8_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_set_lux_thresh.exit.thread8

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @apds990x_refresh_athres(ptr noundef %1) #9
  br label %apds990x_set_lux_thresh.exit.thread8

apds990x_set_lux_thresh.exit.thread8:             ; preds = %if.then4.i, %if.end2.i.apds990x_set_lux_thresh.exit.thread8_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thresh.i) #9
  br label %11

apds990x_set_lux_thresh.exit:                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thresh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %apds990x_set_lux_thresh.exit._crit_edge, label %apds990x_set_lux_thresh.exit._crit_edge11

apds990x_set_lux_thresh.exit._crit_edge11:        ; preds = %apds990x_set_lux_thresh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %11

apds990x_set_lux_thresh.exit._crit_edge:          ; preds = %apds990x_set_lux_thresh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %10

10:                                               ; preds = %apds990x_set_lux_thresh.exit._crit_edge, %apds990x_set_lux_thresh.exit.thread
  %retval.0.i7 = phi i32 [ -22, %apds990x_set_lux_thresh.exit.thread ], [ %call.i.i, %apds990x_set_lux_thresh.exit._crit_edge ]
  br label %11

11:                                               ; preds = %10, %apds990x_set_lux_thresh.exit._crit_edge11, %apds990x_set_lux_thresh.exit.thread8
  %12 = phi i32 [ %retval.0.i7, %10 ], [ %len, %apds990x_set_lux_thresh.exit._crit_edge11 ], [ %len, %apds990x_set_lux_thresh.exit.thread8 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_prox_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %prox_en = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %prox_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prox_en, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_prox_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !157
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %prox_en = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %prox_en to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prox_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prox_data = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %prox_data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %prox_data, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %prox_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prox_en, align 4
  br i1 %tobool5.not, label %if.else, label %if.end4.if.end12.sink.split_crit_edge

if.end4.if.end12.sink.split_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.else.if.end12.sink.split_crit_edge, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else.if.end12.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.else.if.end12.sink.split_crit_edge, %if.end4.if.end12.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end4.if.end12.sink.split_crit_edge ], [ -1, %if.else.if.end12.sink.split_crit_edge ]
  %dec = add i32 %9, %.sink
  %10 = ptrtoint ptr %prox_en to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %prox_en, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %11 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

pm_runtime_suspended.exit:                        ; preds = %if.end12
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %13 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end16_crit_edge, label %pm_runtime_suspended.exit.if.then14_crit_edge

pm_runtime_suspended.exit.if.then14_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

pm_runtime_suspended.exit.if.end16_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %pm_runtime_suspended.exit.if.then14_crit_edge, %if.end12.if.then14_crit_edge
  %14 = ptrtoint ptr %prox_en to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prox_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i29 = icmp eq i32 %15, 0
  %spec.select.i = select i1 %tobool.not.i29, i8 27, i8 63
  %client1.i.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client1.i.i, align 4
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -128, i8 noundef zeroext %spec.select.i) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %pm_runtime_suspended.exit.if.end16_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end16 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_prox_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.lor.lhs.false_crit_edge

pm_runtime_suspended.exit.lor.lhs.false_crit_edge: ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %pm_runtime_suspended.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %prox_en = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %prox_en to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prox_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %prox_data = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %prox_data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %prox_data, align 4
  %conv = zext i16 %8 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %pm_runtime_suspended.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_prox_range_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef 1023)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_prox_threshold_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %prox_thres = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %prox_thres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prox_thres, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_prox_threshold_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !157
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65486, i32 %5)
  %6 = icmp ult i32 %5, -65486
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %prox_thres = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %prox_thres to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %prox_thres, align 4
  %client1.i.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1.i.i, align 4
  %call.i.i = call i32 @i2c_smbus_write_word_data(ptr noundef %11, i8 noundef zeroext -88, i16 noundef zeroext 599) #9
  %12 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client1.i.i, align 4
  %call.i4.i = call i32 @i2c_smbus_write_word_data(ptr noundef %13, i8 noundef zeroext -86, i16 noundef zeroext 600) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_prox_reporting_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %prox_continuous_mode = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %prox_continuous_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prox_continuous_mode, align 4, !range !156
  %4 = zext i8 %3 to i32
  %arrayidx = getelementptr [2 x ptr], ptr @reporting_modes, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.48, ptr noundef %6)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_prox_reporting_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @reporting_modes, i32 noundef 2, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool = icmp ne i32 %call1, 0
  %prox_continuous_mode = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 6
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %prox_continuous_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %prox_continuous_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_prox_reporting_avail_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reporting_modes, align 4
  %1 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @reporting_modes, i32 0, i32 1), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_chip_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chipname = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 30
  %revision = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, ptr noundef %chipname, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_power_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %land.rhs.i, label %entry.pm_runtime_suspended.exit_crit_edge

entry.pm_runtime_suspended.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_suspended.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.not.i = icmp ugt i16 %bf.load.i, 8191
  %phi.cast = zext i1 %tobool.not.i to i32
  br label %pm_runtime_suspended.exit

pm_runtime_suspended.exit:                        ; preds = %land.rhs.i, %entry.pm_runtime_suspended.exit_crit_edge
  %3 = phi i32 [ 1, %entry.pm_runtime_suspended.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_power_state_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !157
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i21 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %mutex = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %lux_wait_fresh_res = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %lux_wait_fresh_res to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %lux_wait_fresh_res, align 1
  %client1.i.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client1.i.i, align 4
  %call.i.i = call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext -92, i16 noundef zeroext 100) #9
  %8 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client1.i.i, align 4
  %call.i4.i = call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext -90, i16 noundef zeroext 101) #9
  %10 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1.i.i, align 4
  %call.i.i23 = call i32 @i2c_smbus_write_word_data(ptr noundef %11, i8 noundef zeroext -88, i16 noundef zeroext 599) #9
  %12 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client1.i.i, align 4
  %call.i4.i24 = call i32 @i2c_smbus_write_word_data(ptr noundef %13, i8 noundef zeroext -86, i16 noundef zeroext 600) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %14 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp eq i32 %15, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.else.if.then7_crit_edge

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

pm_runtime_suspended.exit:                        ; preds = %if.else
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %16 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.then7_crit_edge

pm_runtime_suspended.exit.if.then7_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %pm_runtime_suspended.exit.if.then7_crit_edge, %if.else.if.then7_crit_edge
  %call.i25 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %pm_runtime_suspended.exit.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %len, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ %len, %if.then7 ], [ %len, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client1.i.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -128, i8 noundef zeroext 0) #9
  %regs.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 3
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.apds990x_chip_on.exit_crit_edge, label %if.end.i

entry.apds990x_chip_on.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_chip_on.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 25000, i32 noundef 50000, i32 noundef 2) #9
  %prox_data.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %prox_data.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %prox_data.i, align 4
  tail call fastcc void @apds990x_configure(ptr noundef %1) #9
  %prox_en.i.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %prox_en.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prox_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i8 27, i8 63
  %client1.i.i.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1.i.i.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -128, i8 noundef zeroext %spec.select.i.i) #9
  br label %apds990x_chip_on.exit

apds990x_chip_on.exit:                            ; preds = %if.end.i, %entry.apds990x_chip_on.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client1.i.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -128, i8 noundef zeroext 0) #9
  %regs.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 3
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds990x_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.apds990x_chip_on.exit_crit_edge, label %if.end.i

entry.apds990x_chip_on.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %apds990x_chip_on.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 25000, i32 noundef 50000, i32 noundef 2) #9
  %prox_data.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %prox_data.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %prox_data.i, align 4
  tail call fastcc void @apds990x_configure(ptr noundef %1) #9
  %prox_en.i.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %prox_en.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prox_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i8 27, i8 63
  %client1.i.i.i = getelementptr inbounds %struct.apds990x_chip, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1.i.i.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -128, i8 noundef zeroext %spec.select.i.i) #9
  br label %apds990x_chip_on.exit

apds990x_chip_on.exit:                            ; preds = %if.end.i, %entry.apds990x_chip_on.exit_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !74, !76, !78, !79, !81, !82, !84, !86, !87, !89, !90, !92, !94, !95, !97, !99, !101, !102, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !128, !130, !132, !133, !135, !137, !138, !140, !142, !143, !145}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__initcall__kmod_apds990x__293_1281_apds990x_driver_init6, !1, !"__initcall__kmod_apds990x__293_1281_apds990x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/apds990x.c", i32 1281, i32 1}
!2 = !{ptr @__exitcall_apds990x_driver_exit, !1, !"__exitcall_apds990x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/misc/apds990x.c", i32 1283, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/misc/apds990x.c", i32 1284, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/misc/apds990x.c", i32 1285, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/apds990x.c", i32 1273, i32 11}
!12 = !{ptr @apds990x_driver, !13, !"apds990x_driver", i1 false, i1 false}
!13 = !{!"../drivers/misc/apds990x.c", i32 1271, i32 26}
!14 = !{ptr @apds990x_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/misc/apds990x.c", i32 1067, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @apds990x_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/misc/apds990x.c", i32 1068, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/apds990x.c", i32 1072, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @apds990x_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @apds990x_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/apds990x.c", i32 1121, i32 3}
!30 = !{ptr @apds990x_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @apds990x_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/apds990x.c", i32 1127, i32 3}
!34 = !{ptr @apds990x_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @apds990x_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/apds990x.c", i32 1135, i32 3}
!38 = !{ptr @apds990x_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @apds990x_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/apds990x.c", i32 1158, i32 3}
!42 = !{ptr @apds990x_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @apds990x_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/apds990x.c", i32 1168, i32 3}
!46 = !{ptr @apds990x_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @apds990x_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @reg_vcc, !49, !"reg_vcc", i1 false, i1 false}
!49 = !{!"../drivers/misc/apds990x.c", i32 183, i32 19}
!50 = !{ptr @reg_vled, !51, !"reg_vled", i1 false, i1 false}
!51 = !{!"../drivers/misc/apds990x.c", i32 184, i32 19}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/misc/apds990x.c", i32 574, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @apds990x_detect._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @apds990x_detect._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/apds990x.c", i32 580, i32 3}
!59 = !{ptr @apds990x_detect._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @apds990x_detect._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/apds990x.c", i32 588, i32 52}
!63 = !{ptr @arates_hz, !64, !"arates_hz", i1 false, i1 false}
!64 = !{!"../drivers/misc/apds990x.c", i32 179, i32 18}
!65 = !{ptr @apersis, !66, !"apersis", i1 false, i1 false}
!66 = !{!"../drivers/misc/apds990x.c", i32 180, i32 17}
!67 = !{ptr @apds990x_attribute_group, !68, !"apds990x_attribute_group", i1 false, i1 false}
!68 = !{!"../drivers/misc/apds990x.c", i32 1050, i32 37}
!69 = !{ptr @sysfs_attrs_ctrl, !70, !"sysfs_attrs_ctrl", i1 false, i1 false}
!70 = !{!"../drivers/misc/apds990x.c", i32 1030, i32 26}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/misc/apds990x.c", i32 695, i32 8}
!73 = !{ptr @dev_attr_lux0_calibscale, !72, !"dev_attr_lux0_calibscale", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/apds990x.c", i32 675, i32 22}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/misc/apds990x.c", i32 667, i32 8}
!78 = !{ptr @dev_attr_lux0_calibscale_default, !77, !"dev_attr_lux0_calibscale_default", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/apds990x.c", i32 651, i32 8}
!81 = !{ptr @dev_attr_lux0_input, !80, !"dev_attr_lux0_input", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/misc/apds990x.c", i32 644, i32 21}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/apds990x.c", i32 659, i32 8}
!86 = !{ptr @dev_attr_lux0_sensor_range, !85, !"dev_attr_lux0_sensor_range", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/misc/apds990x.c", i32 766, i32 8}
!89 = !{ptr @dev_attr_lux0_rate, !88, !"dev_attr_lux0_rate", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/misc/apds990x.c", i32 715, i32 22}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/apds990x.c", i32 764, i32 8}
!94 = !{ptr @dev_attr_lux0_rate_avail, !93, !"dev_attr_lux0_rate_avail", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/misc/apds990x.c", i32 705, i32 29}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/apds990x.c", i32 706, i32 25}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/misc/apds990x.c", i32 939, i32 8}
!101 = !{ptr @dev_attr_lux0_thresh_above_value, !100, !"dev_attr_lux0_thresh_above_value", i1 false, i1 false}
!102 = !{ptr @again, !103, !"again", i1 false, i1 false}
!103 = !{!"../drivers/misc/apds990x.c", i32 176, i32 17}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/apds990x.c", i32 943, i32 8}
!106 = !{ptr @dev_attr_lux0_thresh_below_value, !105, !"dev_attr_lux0_thresh_below_value", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/misc/apds990x.c", i32 830, i32 8}
!109 = !{ptr @dev_attr_prox0_raw_en, !108, !"dev_attr_prox0_raw_en", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/misc/apds990x.c", i32 784, i32 8}
!112 = !{ptr @dev_attr_prox0_raw, !111, !"dev_attr_prox0_raw", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/misc/apds990x.c", i32 792, i32 8}
!115 = !{ptr @dev_attr_prox0_sensor_range, !114, !"dev_attr_prox0_sensor_range", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/apds990x.c", i32 979, i32 8}
!118 = !{ptr @dev_attr_prox0_thresh_above_value, !117, !"dev_attr_prox0_thresh_above_value", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/misc/apds990x.c", i32 859, i32 8}
!121 = !{ptr @dev_attr_prox0_reporting_mode, !120, !"dev_attr_prox0_reporting_mode", i1 false, i1 false}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/misc/apds990x.c", i32 840, i32 22}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/misc/apds990x.c", i32 833, i32 41}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/misc/apds990x.c", i32 833, i32 52}
!128 = !{ptr @reporting_modes, !129, !"reporting_modes", i1 false, i1 false}
!129 = !{!"../drivers/misc/apds990x.c", i32 833, i32 20}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/misc/apds990x.c", i32 869, i32 8}
!132 = !{ptr @dev_attr_prox0_reporting_mode_avail, !131, !"dev_attr_prox0_reporting_mode_avail", i1 false, i1 false}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/misc/apds990x.c", i32 866, i32 22}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/misc/apds990x.c", i32 1028, i32 8}
!137 = !{ptr @dev_attr_chip_id, !136, !"dev_attr_chip_id", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/misc/apds990x.c", i32 1025, i32 22}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/misc/apds990x.c", i32 1016, i32 8}
!142 = !{ptr @dev_attr_power_state, !141, !"dev_attr_power_state", i1 false, i1 false}
!143 = !{ptr @apds990x_pm_ops, !144, !"apds990x_pm_ops", i1 false, i1 false}
!144 = !{!"../drivers/misc/apds990x.c", i32 1264, i32 32}
!145 = !{ptr @apds990x_id, !146, !"apds990x_id", i1 false, i1 false}
!146 = !{!"../drivers/misc/apds990x.c", i32 1257, i32 35}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{i8 0, i8 2}
!157 = !{!"auto-init"}
