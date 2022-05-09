; ModuleID = '/llk/IR_all_yes/drivers/misc/bh1770glc.c_pt.bc'
source_filename = "../drivers/misc/bh1770glc.c"
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
%struct.atomic_t = type { i32 }
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
%struct.bh1770_chip = type { ptr, [10 x i8], i8, ptr, [2 x %struct.regulator_bulk_data], %struct.mutex, %struct.wait_queue_head, i8, i8, %struct.delayed_work, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.bh1770_platform_data = type { i8, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_bh1770glc__292_1389_bh1770_driver_init6 = internal global ptr @bh1770_driver_init, section ".initcall6.init", align 4
@bh1770_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bh1770_probe, ptr @bh1770_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bh1770_pm_ops, ptr null, ptr null }, ptr @bh1770_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bh1770_driver_exit = internal global ptr @bh1770_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [76 x i8] c"bh1770glc.description=BH1770GLC / SFH7770 combined ALS and proximity sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [48 x i8] c"bh1770glc.author=Samu Onkalo, Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [38 x i8] c"bh1770glc.file=drivers/misc/bh1770glc\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [25 x i8] c"bh1770glc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bh1770glc\00", [22 x i8] zeroinitializer }, align 32
@bh1770_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bh1770_suspend, ptr @bh1770_resume, ptr @bh1770_suspend, ptr @bh1770_resume, ptr @bh1770_suspend, ptr @bh1770_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bh1770_runtime_suspend, ptr @bh1770_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@bh1770_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bh1770glc\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sfh7770\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@bh1770_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@bh1770_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->wait\00", [20 x i8] zeroinitializer }, align 32
@bh1770_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&chip->prox_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@bh1770_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&chip->prox_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@bh1770_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1183, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"platform data is mandatory\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bh1770_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/misc/bh1770glc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bh1770_probe._entry_ptr = internal global ptr @bh1770_probe._entry, section ".printk_index", align 4
@reg_vcc = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Vcc\00", [28 x i8] zeroinitializer }, align 32
@reg_vleds = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Vleds\00", [26 x i8] zeroinitializer }, align 32
@bh1770_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 1212, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get regulators\0A\00", [41 x i8] zeroinitializer }, align 32
@bh1770_probe._entry_ptr.15 = internal global ptr @bh1770_probe._entry.13, section ".printk_index", align 4
@bh1770_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 1219, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@bh1770_probe._entry_ptr.18 = internal global ptr @bh1770_probe._entry.16, section ".printk_index", align 4
@bh1770_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.10, i32 1235, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Improper correction values\0A\00", [36 x i8] zeroinitializer }, align 32
@bh1770_probe._entry_ptr.21 = internal global ptr @bh1770_probe._entry.19, section ".printk_index", align 4
@bh1770_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bh1770_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.10, i32 1251, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sysfs registration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@bh1770_probe._entry_ptr.24 = internal global ptr @bh1770_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bh1770\00", [25 x i8] zeroinitializer }, align 32
@bh1770_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.9, ptr @.str.10, i32 1267, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not get IRQ %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bh1770_probe._entry_ptr.28 = internal global ptr @bh1770_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prox0_raw\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BH1770GLC\00", [22 x i8] zeroinitializer }, align 32
@bh1770_detect.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.10, ptr @.str.33, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bh1770_detect\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BH1770 or SFH7770 not found\0A\00", [35 x i8] zeroinitializer }, align 32
@sysfs_attrs = internal global { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @dev_attr_lux0_calibscale, ptr @dev_attr_lux0_calibscale_default, ptr @dev_attr_lux0_input, ptr @dev_attr_lux0_sensor_range, ptr @dev_attr_lux0_rate, ptr @dev_attr_lux0_rate_avail, ptr @dev_attr_lux0_thresh_above_value, ptr @dev_attr_lux0_thresh_below_value, ptr @dev_attr_prox0_raw, ptr @dev_attr_prox0_sensor_range, ptr @dev_attr_prox0_raw_en, ptr @dev_attr_prox0_thresh_above_count, ptr @dev_attr_prox0_rate_above, ptr @dev_attr_prox0_rate_below, ptr @dev_attr_prox0_rate_avail, ptr @dev_attr_prox0_thresh_above0_value, ptr @dev_attr_prox0_thresh_above1_value, ptr @dev_attr_chip_id, ptr @dev_attr_power_state, ptr null], [48 x i8] zeroinitializer }, align 32
@dev_attr_lux0_calibscale = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_lux_calib_show, ptr @bh1770_lux_calib_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_calibscale_default = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_lux_calib_default_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_lux_result_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_sensor_range = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_lux_range_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_rate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_get_lux_rate, ptr @bh1770_set_lux_rate }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_rate_avail = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_get_lux_rate_avail, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_thresh_above_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_get_lux_thresh_above, ptr @bh1770_set_lux_thresh_above }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux0_thresh_below_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_get_lux_thresh_below, ptr @bh1770_set_lux_thresh_below }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_raw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_prox_result_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_sensor_range = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_prox_range_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_raw_en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_prox_enable_show, ptr @bh1770_prox_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_thresh_above_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_prox_persistence_show, ptr @bh1770_prox_persistence_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_rate_above = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_get_prox_rate_above, ptr @bh1770_set_prox_rate_above }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_rate_below = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_get_prox_rate_below, ptr @bh1770_set_prox_rate_below }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_rate_avail = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_get_prox_rate_avail, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_thresh_above0_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_get_prox_thres, ptr @bh1770_set_prox_thres }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prox0_thresh_above1_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_prox_abs_thres_show, ptr @bh1770_prox_abs_thres_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chip_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_chip_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bh1770_power_state_show, ptr @bh1770_power_state_store }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lux0_calibscale\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lux0_calibscale_default\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lux0_input\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lux0_sensor_range\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lux0_rate\00", [22 x i8] zeroinitializer }, align 32
@lux_rates_hz = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 10, i16 5, i16 2, i16 1, i16 0], [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lux0_rate_avail\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lux0_thresh_above_value\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lux0_thresh_below_value\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"prox0_sensor_range\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prox0_raw_en\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"prox0_thresh_above_count\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prox0_rate_above\00", [47 x i8] zeroinitializer }, align 32
@prox_rates_hz = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 100, i16 50, i16 33, i16 25, i16 14, i16 10, i16 5, i16 2], [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prox0_rate_below\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prox0_rate_avail\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prox0_thresh_above0_value\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prox0_thresh_above1_value\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chip_id\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s rev %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power_state\00", [20 x i8] zeroinitializer }, align 32
@prox_rates_ms = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 10, i16 20, i16 30, i16 40, i16 70, i16 100, i16 200, i16 500], [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"bh1770_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1379, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1381, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"bh1770_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1374, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"bh1770_id\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1366, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1178, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1179, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1180, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1183, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [8 x i8] c"reg_vcc\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 159, i32 19 }
@___asan_gen_.119 = private unnamed_addr constant [10 x i8] c"reg_vleds\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 160, i32 19 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1212, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1219, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1235, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"bh1770_attribute_group\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1161, i32 37 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1251, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1264, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1266, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 499, i32 47 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 528, i32 52 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 543, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [12 x i8] c"sysfs_attrs\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1138, i32 26 }
@___asan_gen_.173 = private unnamed_addr constant [25 x i8] c"dev_attr_lux0_calibscale\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [33 x i8] c"dev_attr_lux0_calibscale_default\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c"dev_attr_lux0_input\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"dev_attr_lux0_sensor_range\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"dev_attr_lux0_rate\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [25 x i8] c"dev_attr_lux0_rate_avail\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [33 x i8] c"dev_attr_lux0_thresh_above_value\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [33 x i8] c"dev_attr_lux0_thresh_below_value\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [19 x i8] c"dev_attr_prox0_raw\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1104, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"dev_attr_prox0_sensor_range\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [22 x i8] c"dev_attr_prox0_raw_en\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [34 x i8] c"dev_attr_prox0_thresh_above_count\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [26 x i8] c"dev_attr_prox0_rate_above\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [26 x i8] c"dev_attr_prox0_rate_below\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [26 x i8] c"dev_attr_prox0_rate_avail\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [35 x i8] c"dev_attr_prox0_thresh_above0_value\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [35 x i8] c"dev_attr_prox0_thresh_above1_value\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"dev_attr_chip_id\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [21 x i8] c"dev_attr_power_state\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1117, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 949, i32 21 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1119, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1122, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 695, i32 21 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1123, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1124, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant [13 x i8] c"lux_rates_hz\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 173, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1126, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 993, i32 29 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1127, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1130, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1105, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1096, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1106, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1109, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant [14 x i8] c"prox_rates_hz\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 166, i32 18 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1112, i32 8 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1115, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1101, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1098, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1133, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 933, i32 22 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1134, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant [14 x i8] c"prox_rates_ms\00", align 1
@___asan_gen_.303 = private constant [28 x i8] c"../drivers/misc/bh1770glc.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 167, i32 18 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_bh1770_driver_exit, ptr @__initcall__kmod_bh1770glc__292_1389_bh1770_driver_init6, ptr @bh1770_driver_exit, ptr @bh1770_probe._entry, ptr @bh1770_probe._entry.13, ptr @bh1770_probe._entry.16, ptr @bh1770_probe._entry.19, ptr @bh1770_probe._entry.22, ptr @bh1770_probe._entry.26, ptr @bh1770_probe._entry_ptr, ptr @bh1770_probe._entry_ptr.15, ptr @bh1770_probe._entry_ptr.18, ptr @bh1770_probe._entry_ptr.21, ptr @bh1770_probe._entry_ptr.24, ptr @bh1770_probe._entry_ptr.28, ptr @bh1770_driver, ptr @.str, ptr @bh1770_pm_ops, ptr @bh1770_id, ptr @bh1770_probe.__key, ptr @.str.1, ptr @bh1770_probe.__key.2, ptr @.str.3, ptr @bh1770_probe.__key.4, ptr @.str.5, ptr @bh1770_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @reg_vcc, ptr @reg_vleds, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @bh1770_attribute_group, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @sysfs_attrs, ptr @dev_attr_lux0_calibscale, ptr @dev_attr_lux0_calibscale_default, ptr @dev_attr_lux0_input, ptr @dev_attr_lux0_sensor_range, ptr @dev_attr_lux0_rate, ptr @dev_attr_lux0_rate_avail, ptr @dev_attr_lux0_thresh_above_value, ptr @dev_attr_lux0_thresh_below_value, ptr @dev_attr_prox0_raw, ptr @dev_attr_prox0_sensor_range, ptr @dev_attr_prox0_raw_en, ptr @dev_attr_prox0_thresh_above_count, ptr @dev_attr_prox0_rate_above, ptr @dev_attr_prox0_rate_below, ptr @dev_attr_prox0_rate_avail, ptr @dev_attr_prox0_thresh_above0_value, ptr @dev_attr_prox0_thresh_above1_value, ptr @dev_attr_chip_id, ptr @dev_attr_power_state, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @lux_rates_hz, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @prox_rates_hz, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @prox_rates_ms], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_vcc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_vleds to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh1770_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_attrs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_calibscale to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_calibscale_default to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_sensor_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_rate_avail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_thresh_above_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux0_thresh_below_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_raw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_sensor_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_raw_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_thresh_above_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_rate_above to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_rate_below to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_rate_avail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_thresh_above0_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prox0_thresh_above1_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lux_rates_hz to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prox_rates_hz to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prox_rates_ms to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bh1770_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bh1770_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @bh1770_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 348, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %client1, align 4
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @bh1770_probe.__key) #7
  %wait = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @bh1770_probe.__key.2) #7
  %prox_work = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %prox_work, i32 noundef 0) #7
  %2 = ptrtoint ptr %prox_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %prox_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @bh1770_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry13 = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %3 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 9, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bh1770_prox_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @bh1770_probe.__key.6) #7
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call.i, align 4
  %lux_calib = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 12
  %9 = ptrtoint ptr %lux_calib to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8192, ptr %lux_calib, align 4
  %lux_rate_index = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %lux_rate_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %lux_rate_index, align 4
  %lux_threshold_lo = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 17
  %11 = ptrtoint ptr %lux_threshold_lo to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1000, ptr %lux_threshold_lo, align 4
  %lux_threshold_hi = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %lux_threshold_hi to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1000, ptr %lux_threshold_hi, align 2
  %glass_attenuation = getelementptr inbounds %struct.bh1770_platform_data, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %glass_attenuation to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %glass_attenuation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34 = icmp eq i32 %14, 0
  %spec.select = select i1 %cmp34, i32 16384, i32 %14
  %15 = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %15, align 4
  %prox_threshold = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 29
  %17 = ptrtoint ptr %prox_threshold to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 70, ptr %prox_threshold, align 1
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %7, align 4
  %prox_led = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 33
  %20 = ptrtoint ptr %prox_led to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %prox_led, align 1
  %prox_abs_thres = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 32
  %21 = ptrtoint ptr %prox_abs_thres to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 100, ptr %prox_abs_thres, align 2
  %prox_persistence = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 26
  %22 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %prox_persistence, align 4
  %prox_rate_threshold = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 25
  %23 = ptrtoint ptr %prox_rate_threshold to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %prox_rate_threshold, align 4
  %prox_rate = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 24
  %24 = ptrtoint ptr %prox_rate to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %prox_rate, align 4
  %prox_data = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 28
  %25 = ptrtoint ptr %prox_data to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %prox_data, align 2
  %regs = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @reg_vcc, ptr %regs, align 4
  %arrayidx42 = getelementptr %struct.bh1770_chip, ptr %call.i, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @reg_vleds, ptr %arrayidx42, align 4
  %call46 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %if.end53

do.end51:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end53:                                         ; preds = %if.end30
  %call56 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %if.end63

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end63:                                         ; preds = %if.end53
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  %28 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client1, align 4
  %call.i200 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext -117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %cmp.i = icmp slt i32 %call.i200, 0
  br i1 %cmp.i, label %if.end63.do.body.i_crit_edge, label %if.end.i

if.end63.do.body.i_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end.i:                                         ; preds = %if.end63
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext -118) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.do.body.i_crit_edge, label %if.end6.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end6.i:                                        ; preds = %if.end.i
  %30 = trunc i32 %call2.i to i8
  %conv9.i = and i8 %30, 15
  %revision.i = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv9.i, ptr %revision.i, align 2
  %prox_coef.i = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 22
  %32 = ptrtoint ptr %prox_coef.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1024, ptr %prox_coef.i, align 4
  %prox_const.i = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 23
  %33 = ptrtoint ptr %prox_const.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %prox_const.i, align 2
  %lux_cf.i = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %lux_cf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2048, ptr %lux_cf.i, align 4
  %conv10.i = and i32 %call.i200, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv10.i)
  %cmp11.i = icmp eq i32 %conv10.i, 1
  %and14.i = and i32 %call2.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %and14.i)
  %cmp15.i = icmp eq i32 %and14.i, 144
  %or.cond.i = select i1 %cmp11.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %chipname.i = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %chipname.i, ptr @.str.30, i32 10)
  br label %if.end67

if.end19.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv10.i)
  %cmp21.i = icmp eq i32 %conv10.i, 3
  %or.cond60.i = select i1 %cmp21.i, i1 %cmp15.i, i1 false
  br i1 %or.cond60.i, label %if.then28.i, label %if.end19.i.do.body.i_crit_edge

if.end19.i.do.body.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then28.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %chipname29.i = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %chipname29.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 6000562955504529408, ptr %chipname29.i, align 1
  %37 = ptrtoint ptr %prox_coef.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 819, ptr %prox_coef.i, align 4
  %38 = ptrtoint ptr %prox_const.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 40, ptr %prox_const.i, align 2
  br label %if.end67

do.body.i:                                        ; preds = %if.end19.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge, %if.end63.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %call.i200, %if.end63.do.body.i_crit_edge ], [ %call2.i, %if.end.i.do.body.i_crit_edge ], [ -19, %if.end19.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bh1770_detect.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bh1770_probe, %if.then38.i)) #7
          to label %fail0 [label %if.then38.i], !srcloc !158

if.then38.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bh1770_detect.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.33) #7
  br label %fail0

if.end67:                                         ; preds = %if.then28.i, %if.then17.i
  tail call fastcc void @bh1770_chip_on(ptr noundef nonnull %call.i)
  %call.i201 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %15, align 4
  %41 = lshr i32 %40, 2
  %div9.i = and i32 %41, 262143
  %42 = ptrtoint ptr %lux_cf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lux_cf.i, align 4
  %mul1.i = mul i32 %div9.i, %43
  %div210.i = lshr i32 %mul1.i, 11
  %44 = ptrtoint ptr %lux_calib to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lux_calib, align 4
  %mul3.i = mul i32 %div210.i, %45
  %div411.i = lshr i32 %mul3.i, 13
  %lux_corr = getelementptr inbounds %struct.bh1770_chip, ptr %call.i, i32 0, i32 14
  %46 = ptrtoint ptr %lux_corr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div411.i, ptr %lux_corr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %mul3.i)
  %cmp74 = icmp ult i32 %mul3.i, 8192
  br i1 %cmp74, label %do.end78, label %if.end80

do.end78:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %fail0

if.end80:                                         ; preds = %if.end67
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %setup_resources = getelementptr inbounds %struct.bh1770_platform_data, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %setup_resources to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %setup_resources, align 4
  %tobool82.not = icmp eq ptr %50, null
  br i1 %tobool82.not, label %if.end80.if.end90_crit_edge, label %if.then83

if.end80.if.end90_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then83:                                        ; preds = %if.end80
  %call86 = tail call i32 %50() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then83.if.end90_crit_edge, label %if.then83.fail0_crit_edge

if.then83.fail0_crit_edge:                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0

if.then83.if.end90_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.end90:                                         ; preds = %if.then83.if.end90_crit_edge, %if.end80.if.end90_crit_edge
  %51 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %client1, align 4
  %dev92 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  %call93 = tail call i32 @sysfs_create_group(ptr noundef %dev92, ptr noundef nonnull @bh1770_attribute_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.end98, label %if.end101

do.end98:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client1, align 4
  %dev100 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.23) #10
  br label %fail1

if.end101:                                        ; preds = %if.end90
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %call102 = tail call i32 @request_threaded_irq(i32 noundef %56, ptr noundef null, ptr noundef nonnull @bh1770_irq, i32 noundef 8202, ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end110, label %do.end107

do.end107:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %58) #10
  %59 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client1, align 4
  %dev115 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev115, ptr noundef nonnull @bh1770_attribute_group) #7
  br label %fail1

if.end110:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %call113 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #7
  br label %cleanup

fail1:                                            ; preds = %do.end107, %do.end98
  %err.0 = phi i32 [ %call93, %do.end98 ], [ %call102, %do.end107 ]
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %release_resources = getelementptr inbounds %struct.bh1770_platform_data, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %release_resources to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %release_resources, align 4
  %tobool118.not = icmp eq ptr %64, null
  br i1 %tobool118.not, label %fail1.fail0_crit_edge, label %if.then119

fail1.fail0_crit_edge:                            ; preds = %fail1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0

if.then119:                                       ; preds = %fail1
  call void @__sanitizer_cov_trace_pc() #9
  %call122 = tail call i32 %64() #7
  br label %fail0

fail0:                                            ; preds = %if.then119, %fail1.fail0_crit_edge, %if.then83.fail0_crit_edge, %do.end78, %if.then38.i, %do.body.i
  %err.1 = phi i32 [ -22, %do.end78 ], [ %err.0, %if.then119 ], [ %err.0, %fail1.fail0_crit_edge ], [ -22, %if.then83.fail0_crit_edge ], [ %ret.0.i, %if.then38.i ], [ %ret.0.i, %do.body.i ]
  %call126 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #7
  br label %cleanup

cleanup:                                          ; preds = %fail0, %if.end110, %do.end61, %do.end51, %do.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end28 ], [ %call46, %do.end51 ], [ %call56, %do.end61 ], [ %err.1, %fail0 ], [ 0, %if.end110 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  %client2 = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client2, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @bh1770_attribute_group) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %release_resources = getelementptr inbounds %struct.bh1770_platform_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %release_resources to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release_resources, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 %9() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %prox_work = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 9
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %prox_work) #7
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %10 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 15
  %12 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end10_crit_edge, label %pm_runtime_suspended.exit.if.then9_crit_edge

pm_runtime_suspended.exit.if.then9_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

pm_runtime_suspended.exit.if.end10_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %pm_runtime_suspended.exit.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %13 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client2, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext -110, i8 noundef zeroext 0) #7
  %15 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client2, align 4
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  %17 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client2, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -127, i8 noundef zeroext 0) #7
  %regs.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 4
  %call5.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs.i) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %pm_runtime_suspended.exit.if.end10_crit_edge
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev7, i1 noundef zeroext true) #7
  %call.i23 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev7, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bh1770_prox_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  %mutex = getelementptr i8, ptr %work, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call fastcc void @bh1770_prox_read_result(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bh1770_chip_on(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 4
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  %client = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -128, i8 noundef zeroext 4) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %lux_data_raw = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 15
  %2 = ptrtoint ptr %lux_data_raw to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %lux_data_raw, align 4
  %prox_data = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 28
  %3 = ptrtoint ptr %prox_data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %prox_data, align 2
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 3) #7
  %lux_thres_hi_onchip = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 18
  %6 = ptrtoint ptr %lux_thres_hi_onchip to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %lux_thres_hi_onchip, align 2
  %lux_thres_lo_onchip = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 19
  %7 = ptrtoint ptr %lux_thres_lo_onchip to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %lux_thres_lo_onchip, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %client = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -114) #7
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -110) #7
  %and = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i65 = icmp slt i32 %call.i, 0
  br i1 %cmp.i65, label %if.then.bh1770_lux_get_result.exit_crit_edge, label %if.end.i67

if.then.bh1770_lux_get_result.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_get_result.exit

if.end.i67:                                       ; preds = %if.then
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %call2.i66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext -115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i66)
  %cmp3.i = icmp slt i32 %call2.i66, 0
  br i1 %cmp3.i, label %if.end.i67.bh1770_lux_get_result.exit_crit_edge, label %if.end6.i

if.end.i67.bh1770_lux_get_result.exit_crit_edge:  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_get_result.exit

if.end6.i:                                        ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = and i32 %call.i, 255
  %and8.i = shl i32 %call2.i66, 8
  %or.i = or i32 %and8.i, %conv.i
  %conv9.i = trunc i32 %or.i to i16
  %lux_data_raw.i = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %lux_data_raw.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv9.i, ptr %lux_data_raw.i, align 4
  br label %bh1770_lux_get_result.exit

bh1770_lux_get_result.exit:                       ; preds = %if.end6.i, %if.end.i67.bh1770_lux_get_result.exit_crit_edge, %if.then.bh1770_lux_get_result.exit_crit_edge
  %lux_wait_result = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 20
  %9 = ptrtoint ptr %lux_wait_result to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lux_wait_result, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %bh1770_lux_get_result.exit.if.end10_crit_edge, label %if.then7, !prof !160

bh1770_lux_get_result.exit.if.end10_crit_edge:    ; preds = %bh1770_lux_get_result.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %bh1770_lux_get_result.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %lux_wait_result to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %lux_wait_result, align 2
  %wait = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %lux_threshold_hi = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 16
  %12 = ptrtoint ptr %lux_threshold_hi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %lux_threshold_hi, align 2
  %lux_threshold_lo = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 17
  %14 = ptrtoint ptr %lux_threshold_lo to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %lux_threshold_lo, align 4
  %call9 = tail call fastcc i32 @bh1770_lux_update_thresholds(ptr noundef %data, i16 noundef zeroext %13, i16 noundef zeroext %15)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %bh1770_lux_get_result.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -110, i8 noundef zeroext 0) #7
  %and13 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.if.end17_crit_edge, label %if.then15

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void @sysfs_notify(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @.str.37) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end10.if.end17_crit_edge
  %int_mode_prox = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 7
  %20 = ptrtoint ptr %int_mode_prox to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %int_mode_prox, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  %and19 = and i32 %call, 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %if.end17.if.end23_crit_edge, label %if.then21

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %prox_rate_threshold = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 25
  %22 = ptrtoint ptr %prox_rate_threshold to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prox_rate_threshold, align 4
  %arrayidx = getelementptr [8 x i16], ptr @prox_rates_ms, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %25 to i32
  tail call fastcc void @bh1770_prox_read_result(ptr noundef %data)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17.if.end23_crit_edge
  %rate.0 = phi i32 [ %conv, %if.then21 ], [ 0, %if.end17.if.end23_crit_edge ]
  %26 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client, align 4
  %int_mode_lux = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 8
  %28 = ptrtoint ptr %int_mode_lux to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %int_mode_lux, align 1, !range !159
  %30 = shl nuw nsw i8 %29, 1
  %31 = ptrtoint ptr %int_mode_prox to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %int_mode_prox, align 4, !range !159
  %or64 = or i8 %30, %32
  %call32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -110, i8 noundef zeroext %or64) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate.0)
  %tobool34.not = icmp eq i32 %rate.0, 0
  br i1 %tobool34.not, label %if.end23.if.end40_crit_edge, label %if.then35

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %prox_work = getelementptr inbounds %struct.bh1770_chip, ptr %data, i32 0, i32 9
  %call36 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %prox_work) #7
  %add = add nsw i32 %rate.0, 50
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %prox_work, i32 noundef %call2.i) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end23.if.end40_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bh1770_prox_read_result(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %prox_threshold_hw = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 30
  %2 = ptrtoint ptr %prox_threshold_hw to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prox_threshold_hw, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp1 = icmp ugt i32 %call, %conv
  %lux_data_raw = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 15
  %4 = ptrtoint ptr %lux_data_raw to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %lux_data_raw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 500, i16 %5)
  %cmp6 = icmp ugt i16 %5, 500
  %6 = and i32 %call, 255
  %conv.i = select i1 %cmp6, i32 0, i32 %6
  %prox_const.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 23
  %7 = ptrtoint ptr %prox_const.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %prox_const.i, align 2
  %conv1.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  %prox_coef.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 22
  %9 = ptrtoint ptr %prox_coef.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %prox_coef.i, align 4
  %conv2.i = zext i16 %10 to i32
  %mul.i = mul i32 %add.i, %conv2.i
  %div9.i = lshr i32 %mul.i, 10
  %11 = and i32 %mul.i, 66846720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  %12 = trunc i32 %div9.i to i8
  %conv6.i = select i1 %cmp.not.i, i8 %12, i8 -1
  %prox_data = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 28
  %13 = ptrtoint ptr %prox_data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6.i, ptr %prox_data, align 2
  %prox_abs_thres = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 32
  %14 = ptrtoint ptr %prox_abs_thres to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prox_abs_thres, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv6.i, i8 %15)
  %cmp15.not = icmp ult i8 %conv6.i, %15
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end.if.then18_crit_edge

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end
  %prox_force_update = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 31
  %16 = ptrtoint ptr %prox_force_update to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prox_force_update, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %prox_persistence = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 26
  %18 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %prox_persistence, align 4
  %prox_persistence_counter = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 27
  %20 = ptrtoint ptr %prox_persistence_counter to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %prox_persistence_counter, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false.if.end19_crit_edge
  %prox_force_update20 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 31
  %21 = ptrtoint ptr %prox_force_update20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %prox_force_update20, align 1
  %prox_persistence_counter25 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 27
  br i1 %cmp1, label %if.then24, label %if.then41, !prof !160

if.then24:                                        ; preds = %if.end19
  %22 = ptrtoint ptr %prox_persistence_counter25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %prox_persistence_counter25, align 1
  %prox_persistence27 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 26
  %24 = ptrtoint ptr %prox_persistence27 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %prox_persistence27, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp29 = icmp ult i8 %23, %25
  br i1 %cmp29, label %if.end38, label %29

if.end38:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw i8 %23, 1
  %26 = ptrtoint ptr %prox_persistence_counter25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %inc, ptr %prox_persistence_counter25, align 1
  br label %out

if.then41:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %prox_persistence_counter25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %prox_persistence_counter25, align 1
  %28 = ptrtoint ptr %prox_data to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %prox_data, align 2
  %prox_rate.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 24
  br label %30

29:                                               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %prox_rate_threshold.i7 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 25
  br label %30

30:                                               ; preds = %29, %if.then41
  %31 = phi ptr [ %prox_rate_threshold.i7, %29 ], [ %prox_rate.i, %if.then41 ]
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %cond.i = load i32, ptr %31, align 4
  %33 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client, align 4
  %conv.i1 = trunc i32 %cond.i to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext -123, i8 noundef zeroext %conv.i1) #7
  %35 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  tail call void @sysfs_notify(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @.str.29) #7
  br label %out

out:                                              ; preds = %30, %if.end38, %entry.out_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_lux_calib_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %lux_calib = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %lux_calib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lux_calib, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_lux_calib_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %data.i = alloca [4 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %lux_calib = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %lux_calib to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lux_calib, align 4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  store i32 %6, ptr %lux_calib, align 4
  %lux_ga.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %lux_ga.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lux_ga.i, align 4
  %9 = lshr i32 %8, 2
  %div9.i = and i32 %9, 262143
  %lux_cf.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %lux_cf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lux_cf.i, align 4
  %mul1.i = mul i32 %div9.i, %11
  %div210.i = lshr i32 %mul1.i, 11
  %mul3.i = mul i32 %div210.i, %6
  %div411.i = lshr i32 %mul3.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %mul3.i)
  %cmp = icmp ult i32 %mul3.i, 8192
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %lux_calib to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %4, ptr %lux_calib, align 4
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %lux_corr = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %lux_corr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div411.i, ptr %lux_corr, align 4
  %lux_threshold_hi = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %lux_threshold_hi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %lux_threshold_hi, align 2
  %lux_threshold_lo = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %lux_threshold_lo to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %lux_threshold_lo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %18 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %19 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %20 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %client.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4, i32 12, i32 18
  %23 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %if.end7.if.end.i_crit_edge

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pm_runtime_suspended.exit.i:                      ; preds = %if.end7
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4, i32 12, i32 15
  %25 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %pm_runtime_suspended.exit.i.bh1770_lux_update_thresholds.exit_crit_edge, label %pm_runtime_suspended.exit.i.if.end.i_crit_edge

pm_runtime_suspended.exit.i.if.end.i_crit_edge:   ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pm_runtime_suspended.exit.i.bh1770_lux_update_thresholds.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_update_thresholds.exit

if.end.i:                                         ; preds = %pm_runtime_suspended.exit.i.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %26 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %if.then5.i [
    i16 -1, label %if.end.i.if.end7.i_crit_edge
    i16 0, label %if.end.i.if.end7.i_crit_edge26
  ]

if.end.i.if.end7.i_crit_edge26:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i16 %15 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 12
  %div.i.i = udiv i32 %mul.i.i, %div411.i
  %conv1.i.i = trunc i32 %div.i.i to i16
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge26
  %threshold_hi.addr.0.i = phi i16 [ %conv1.i.i, %if.then5.i ], [ %15, %if.end.i.if.end7.i_crit_edge ], [ %15, %if.end.i.if.end7.i_crit_edge26 ]
  %27 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %17, label %if.then15.i [
    i16 -1, label %if.end7.i.if.end17.i_crit_edge
    i16 0, label %if.end7.i.if.end17.i_crit_edge27
  ]

if.end7.i.if.end17.i_crit_edge27:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i63.i = zext i16 %17 to i32
  %mul.i64.i = shl nuw nsw i32 %conv.i63.i, 12
  %div.i66.i = udiv i32 %mul.i64.i, %div411.i
  %conv1.i67.i = trunc i32 %div.i66.i to i16
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end7.i.if.end17.i_crit_edge, %if.end7.i.if.end17.i_crit_edge27
  %threshold_lo.addr.0.i = phi i16 [ %conv1.i67.i, %if.then15.i ], [ %17, %if.end7.i.if.end17.i_crit_edge ], [ %17, %if.end7.i.if.end17.i_crit_edge27 ]
  %lux_thres_hi_onchip.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %lux_thres_hi_onchip.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %lux_thres_hi_onchip.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %threshold_hi.addr.0.i)
  %cmp20.i = icmp eq i16 %29, %threshold_hi.addr.0.i
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end17.i.if.end28.i_crit_edge

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true22.i:                                ; preds = %if.end17.i
  %lux_thres_lo_onchip.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 19
  %30 = ptrtoint ptr %lux_thres_lo_onchip.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %lux_thres_lo_onchip.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %threshold_lo.addr.0.i)
  %cmp25.i = icmp eq i16 %31, %threshold_lo.addr.0.i
  br i1 %cmp25.i, label %land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge, label %land.lhs.true22.i.if.end28.i_crit_edge

land.lhs.true22.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_update_thresholds.exit

if.end28.i:                                       ; preds = %land.lhs.true22.i.if.end28.i_crit_edge, %if.end17.i.if.end28.i_crit_edge
  %32 = ptrtoint ptr %lux_thres_hi_onchip.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %threshold_hi.addr.0.i, ptr %lux_thres_hi_onchip.i, align 2
  %lux_thres_lo_onchip30.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %lux_thres_lo_onchip30.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %threshold_lo.addr.0.i, ptr %lux_thres_lo_onchip30.i, align 4
  %conv31.i = trunc i16 %threshold_hi.addr.0.i to i8
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv31.i, ptr %data.i, align 1
  %35 = lshr i16 %threshold_hi.addr.0.i, 8
  %conv33.i = trunc i16 %35 to i8
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv33.i, ptr %18, align 1
  %conv35.i = trunc i16 %threshold_lo.addr.0.i to i8
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv35.i, ptr %19, align 1
  %38 = lshr i16 %threshold_lo.addr.0.i, 8
  %conv39.i = trunc i16 %38 to i8
  %39 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv39.i, ptr %20, align 1
  %call42.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %22, i8 noundef zeroext -106, i8 noundef zeroext 4, ptr noundef nonnull %data.i) #7
  br label %bh1770_lux_update_thresholds.exit

bh1770_lux_update_thresholds.exit:                ; preds = %if.end28.i, %land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge, %pm_runtime_suspended.exit.i.bh1770_lux_update_thresholds.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %bh1770_lux_update_thresholds.exit, %if.then4
  %retval.0.ph = phi i32 [ %len, %bh1770_lux_update_thresholds.exit ], [ -22, %if.then4 ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bh1770_lux_update_thresholds(ptr nocapture noundef %chip, i16 noundef zeroext %threshold_hi, i16 noundef zeroext %threshold_lo) unnamed_addr #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %0 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %client = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = zext i16 %threshold_hi to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %threshold_hi, label %if.then5 [
    i16 -1, label %if.end.if.end7_crit_edge
    i16 0, label %if.end.if.end7_crit_edge68
  ]

if.end.if.end7_crit_edge68:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %threshold_hi to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %lux_corr.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 14
  %9 = ptrtoint ptr %lux_corr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lux_corr.i, align 4
  %div.i = udiv i32 %mul.i, %10
  %conv1.i = trunc i32 %div.i to i16
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge68
  %threshold_hi.addr.0 = phi i16 [ %conv1.i, %if.then5 ], [ %threshold_hi, %if.end.if.end7_crit_edge ], [ %threshold_hi, %if.end.if.end7_crit_edge68 ]
  %11 = zext i16 %threshold_lo to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %threshold_lo, label %if.then15 [
    i16 -1, label %if.end7.if.end17_crit_edge
    i16 0, label %if.end7.if.end17_crit_edge69
  ]

if.end7.if.end17_crit_edge69:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i63 = zext i16 %threshold_lo to i32
  %mul.i64 = shl nuw nsw i32 %conv.i63, 12
  %lux_corr.i65 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 14
  %12 = ptrtoint ptr %lux_corr.i65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lux_corr.i65, align 4
  %div.i66 = udiv i32 %mul.i64, %13
  %conv1.i67 = trunc i32 %div.i66 to i16
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end7.if.end17_crit_edge, %if.end7.if.end17_crit_edge69
  %threshold_lo.addr.0 = phi i16 [ %conv1.i67, %if.then15 ], [ %threshold_lo, %if.end7.if.end17_crit_edge ], [ %threshold_lo, %if.end7.if.end17_crit_edge69 ]
  %lux_thres_hi_onchip = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 18
  %14 = ptrtoint ptr %lux_thres_hi_onchip to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %lux_thres_hi_onchip, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %threshold_hi.addr.0)
  %cmp20 = icmp eq i16 %15, %threshold_hi.addr.0
  br i1 %cmp20, label %land.lhs.true22, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true22:                                  ; preds = %if.end17
  %lux_thres_lo_onchip = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 19
  %16 = ptrtoint ptr %lux_thres_lo_onchip to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %lux_thres_lo_onchip, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %threshold_lo.addr.0)
  %cmp25 = icmp eq i16 %17, %threshold_lo.addr.0
  br i1 %cmp25, label %land.lhs.true22.cleanup_crit_edge, label %land.lhs.true22.if.end28_crit_edge

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true22.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %18 = ptrtoint ptr %lux_thres_hi_onchip to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %threshold_hi.addr.0, ptr %lux_thres_hi_onchip, align 2
  %lux_thres_lo_onchip30 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 19
  %19 = ptrtoint ptr %lux_thres_lo_onchip30 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %threshold_lo.addr.0, ptr %lux_thres_lo_onchip30, align 4
  %conv31 = trunc i16 %threshold_hi.addr.0 to i8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv31, ptr %data, align 1
  %21 = lshr i16 %threshold_hi.addr.0, 8
  %conv33 = trunc i16 %21 to i8
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv33, ptr %0, align 1
  %conv35 = trunc i16 %threshold_lo.addr.0 to i8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv35, ptr %1, align 1
  %24 = lshr i16 %threshold_lo.addr.0, 8
  %conv39 = trunc i16 %24 to i8
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv39, ptr %2, align 1
  %call42 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %4, i8 noundef zeroext -106, i8 noundef zeroext 4, ptr noundef nonnull %data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true22.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end28 ], [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ 0, %land.lhs.true22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_lux_calib_default_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef 8192)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_lux_result_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup52_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_suspended.exit.cleanup52_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 690) #7
  %lux_wait_result = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %lux_wait_result to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lux_wait_result, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end48_crit_edge, label %if.then14

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wait = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 6
  %call1785 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %8 = ptrtoint ptr %lux_wait_result to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lux_wait_result, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not86 = icmp eq i8 %9, 0
  br i1 %tobool20.not86, label %if.end44.thread, label %if.then14.if.end37_crit_edge

if.then14.if.end37_crit_edge:                     ; preds = %if.then14
  br label %if.end37

if.end44.thread:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end48

if.end37:                                         ; preds = %cleanup.if.end37_crit_edge, %if.then14.if.end37_crit_edge
  %__ret15.188 = phi i32 [ %__ret15.1, %cleanup.if.end37_crit_edge ], [ 210, %if.then14.if.end37_crit_edge ]
  %call1787 = phi i32 [ %call17, %cleanup.if.end37_crit_edge ], [ %call1785, %if.then14.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1787)
  %tobool38.not = icmp eq i32 %call1787, 0
  br i1 %tobool38.not, label %cleanup, label %if.end44.thread80

if.end44.thread80:                                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end48

cleanup:                                          ; preds = %if.end37
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret15.188) #7
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %10 = ptrtoint ptr %lux_wait_result to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lux_wait_result, align 2, !range !159
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end44:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1)
  %phi.cmp = icmp eq i32 %__ret15.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %if.end44.cleanup52_crit_edge, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end44.cleanup52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end48:                                         ; preds = %if.end44.if.end48_crit_edge, %if.end44.thread80, %if.end44.thread, %if.end.if.end48_crit_edge
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %client.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i.i, align 4
  %call.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext -116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end48.bh1770_lux_read_result.exit_crit_edge, label %if.end.i.i

if.end48.bh1770_lux_read_result.exit_crit_edge:   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_read_result.exit

if.end.i.i:                                       ; preds = %if.end48
  %16 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i.i, align 4
  %call2.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext -115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.bh1770_lux_read_result.exit_crit_edge, label %if.end6.i.i

if.end.i.i.bh1770_lux_read_result.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_read_result.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = and i32 %call.i.i, 255
  %and8.i.i = shl i32 %call2.i.i, 8
  %or.i.i = or i32 %and8.i.i, %conv.i.i
  %conv9.i.i = trunc i32 %or.i.i to i16
  %lux_data_raw.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %lux_data_raw.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv9.i.i, ptr %lux_data_raw.i.i, align 4
  br label %bh1770_lux_read_result.exit

bh1770_lux_read_result.exit:                      ; preds = %if.end6.i.i, %if.end.i.i.bh1770_lux_read_result.exit_crit_edge, %if.end48.bh1770_lux_read_result.exit_crit_edge
  %lux_data_raw.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %lux_data_raw.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %lux_data_raw.i, align 4
  %conv.i4.i = zext i16 %20 to i32
  %lux_corr.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %lux_corr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lux_corr.i.i, align 4
  %mul.i.i = mul i32 %22, %conv.i4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268431360, i32 %mul.i.i)
  %cmp.i5.i = icmp ult i32 %mul.i.i, 268431360
  %div5.i.i = lshr i32 %mul.i.i, 12
  %23 = and i32 %div5.i.i, 65535
  %conv.i = select i1 %cmp.i5.i, i32 %23, i32 65535
  %call50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv.i)
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup52

cleanup52:                                        ; preds = %bh1770_lux_read_result.exit, %if.end44.cleanup52_crit_edge, %pm_runtime_suspended.exit.cleanup52_crit_edge
  %retval.0 = phi i32 [ %call50, %bh1770_lux_read_result.exit ], [ -5, %pm_runtime_suspended.exit.cleanup52_crit_edge ], [ -5, %if.end44.cleanup52_crit_edge ]
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
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_lux_range_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef 65535)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_get_lux_rate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_rate_index = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %lux_rate_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lux_rate_index, align 4
  %arrayidx = getelementptr [5 x i16], ptr @lux_rates_hz, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_set_lux_rate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %rate_hz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_hz) #7
  %2 = ptrtoint ptr %rate_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rate_hz, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %rate_hz) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %rate_hz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rate_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp2.not = icmp ult i32 %4, 10
  br i1 %cmp2.not, label %for.inc, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp2.not.1 = icmp ult i32 %4, 5
  br i1 %cmp2.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2.not.2 = icmp ult i32 %4, 2
  br i1 %cmp2.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.not.3 = icmp eq i32 %4, 0
  %spec.select28 = select i1 %cmp2.not.3, i32 4, i32 3
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ %spec.select28, %for.inc.2 ]
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %lux_rate_index = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %lux_rate_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.0.lcssa, ptr %lux_rate_index, align 4
  %client.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %for.end.bh1770_lux_rate.exit_crit_edge

for.end.bh1770_lux_rate.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_rate.exit

pm_runtime_suspended.exit.i:                      ; preds = %for.end
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 12, i32 15
  %10 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %bh1770_lux_rate.exit.thread, label %pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge

pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_rate.exit

bh1770_lux_rate.exit.thread:                      ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

bh1770_lux_rate.exit:                             ; preds = %pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge, %for.end.bh1770_lux_rate.exit_crit_edge
  %prox_enable_count.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %prox_enable_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prox_enable_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = trunc i32 %i.0.lcssa to i8
  %conv.i = select i1 %tobool.not.i, i8 %13, i8 0
  %call4.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -122, i8 noundef zeroext %conv.i) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp8 = icmp slt i32 %call4.i, 0
  %spec.select = select i1 %cmp8, i32 %call4.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %bh1770_lux_rate.exit, %bh1770_lux_rate.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %bh1770_lux_rate.exit.thread ], [ %spec.select, %bh1770_lux_rate.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_hz) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_get_lux_rate_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef 10)
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.42, i32 noundef 5)
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.42, i32 noundef 2)
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.42, i32 noundef 1)
  %add.3 = add i32 %call.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %call.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.42, i32 noundef 0)
  %add.4 = add i32 %call.4, %add.3
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %add.4
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 -1
  %0 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 2560, ptr %add.ptr2, align 1
  ret i32 %add.4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_get_lux_thresh_above(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_threshold_hi = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %lux_threshold_hi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lux_threshold_hi, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_set_lux_thresh_above(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_threshold_hi = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 16
  %call1 = tail call fastcc i32 @bh1770_set_lux_thresh(ptr noundef %1, ptr noundef %lux_threshold_hi, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.len = select i1 %cmp, i32 %call1, i32 %len
  ret i32 %call1.len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bh1770_set_lux_thresh(ptr noundef %chip, ptr nocapture noundef writeonly %target, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca [4 x i8], align 1
  %thresh = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thresh) #7
  %0 = ptrtoint ptr %thresh to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %thresh, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %thresh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %2)
  %cmp = icmp ugt i32 %2, 65535
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %3 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thresh, align 4
  %conv = trunc i32 %4 to i16
  %5 = ptrtoint ptr %target to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %target, align 2
  %lux_wait_result = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 20
  %6 = ptrtoint ptr %lux_wait_result to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lux_wait_result, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.end2.if.end6_crit_edge

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end2
  %lux_threshold_hi = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 16
  %8 = ptrtoint ptr %lux_threshold_hi to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lux_threshold_hi, align 2
  %lux_threshold_lo = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 17
  %10 = ptrtoint ptr %lux_threshold_lo to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lux_threshold_lo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %12 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %13 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %client.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 12, i32 18
  %17 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %if.then4.if.end.i_crit_edge

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pm_runtime_suspended.exit.i:                      ; preds = %if.then4
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 12, i32 15
  %19 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %pm_runtime_suspended.exit.i.bh1770_lux_update_thresholds.exit_crit_edge, label %pm_runtime_suspended.exit.i.if.end.i_crit_edge

pm_runtime_suspended.exit.i.if.end.i_crit_edge:   ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pm_runtime_suspended.exit.i.bh1770_lux_update_thresholds.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_update_thresholds.exit

if.end.i:                                         ; preds = %pm_runtime_suspended.exit.i.if.end.i_crit_edge, %if.then4.if.end.i_crit_edge
  %20 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %9, label %if.then5.i [
    i16 -1, label %if.end.i.if.end7.i_crit_edge
    i16 0, label %if.end.i.if.end7.i_crit_edge16
  ]

if.end.i.if.end7.i_crit_edge16:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i16 %9 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 12
  %lux_corr.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 14
  %21 = ptrtoint ptr %lux_corr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lux_corr.i.i, align 4
  %div.i.i = udiv i32 %mul.i.i, %22
  %conv1.i.i = trunc i32 %div.i.i to i16
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge16
  %threshold_hi.addr.0.i = phi i16 [ %conv1.i.i, %if.then5.i ], [ %9, %if.end.i.if.end7.i_crit_edge ], [ %9, %if.end.i.if.end7.i_crit_edge16 ]
  %23 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %11, label %if.then15.i [
    i16 -1, label %if.end7.i.if.end17.i_crit_edge
    i16 0, label %if.end7.i.if.end17.i_crit_edge17
  ]

if.end7.i.if.end17.i_crit_edge17:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i63.i = zext i16 %11 to i32
  %mul.i64.i = shl nuw nsw i32 %conv.i63.i, 12
  %lux_corr.i65.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 14
  %24 = ptrtoint ptr %lux_corr.i65.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lux_corr.i65.i, align 4
  %div.i66.i = udiv i32 %mul.i64.i, %25
  %conv1.i67.i = trunc i32 %div.i66.i to i16
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end7.i.if.end17.i_crit_edge, %if.end7.i.if.end17.i_crit_edge17
  %threshold_lo.addr.0.i = phi i16 [ %conv1.i67.i, %if.then15.i ], [ %11, %if.end7.i.if.end17.i_crit_edge ], [ %11, %if.end7.i.if.end17.i_crit_edge17 ]
  %lux_thres_hi_onchip.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 18
  %26 = ptrtoint ptr %lux_thres_hi_onchip.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %lux_thres_hi_onchip.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %threshold_hi.addr.0.i)
  %cmp20.i = icmp eq i16 %27, %threshold_hi.addr.0.i
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end17.i.if.end28.i_crit_edge

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true22.i:                                ; preds = %if.end17.i
  %lux_thres_lo_onchip.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 19
  %28 = ptrtoint ptr %lux_thres_lo_onchip.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %lux_thres_lo_onchip.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %threshold_lo.addr.0.i)
  %cmp25.i = icmp eq i16 %29, %threshold_lo.addr.0.i
  br i1 %cmp25.i, label %land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge, label %land.lhs.true22.i.if.end28.i_crit_edge

land.lhs.true22.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_update_thresholds.exit

if.end28.i:                                       ; preds = %land.lhs.true22.i.if.end28.i_crit_edge, %if.end17.i.if.end28.i_crit_edge
  %30 = ptrtoint ptr %lux_thres_hi_onchip.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %threshold_hi.addr.0.i, ptr %lux_thres_hi_onchip.i, align 2
  %lux_thres_lo_onchip30.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 19
  %31 = ptrtoint ptr %lux_thres_lo_onchip30.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %threshold_lo.addr.0.i, ptr %lux_thres_lo_onchip30.i, align 4
  %conv31.i = trunc i16 %threshold_hi.addr.0.i to i8
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv31.i, ptr %data.i, align 1
  %33 = lshr i16 %threshold_hi.addr.0.i, 8
  %conv33.i = trunc i16 %33 to i8
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv33.i, ptr %12, align 1
  %conv35.i = trunc i16 %threshold_lo.addr.0.i to i8
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv35.i, ptr %13, align 1
  %36 = lshr i16 %threshold_lo.addr.0.i, 8
  %conv39.i = trunc i16 %36 to i8
  %37 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv39.i, ptr %14, align 1
  %call42.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %16, i8 noundef zeroext -106, i8 noundef zeroext 4, ptr noundef nonnull %data.i) #7
  br label %bh1770_lux_update_thresholds.exit

bh1770_lux_update_thresholds.exit:                ; preds = %if.end28.i, %land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge, %pm_runtime_suspended.exit.i.bh1770_lux_update_thresholds.exit_crit_edge
  %retval.0.i = phi i32 [ %call42.i, %if.end28.i ], [ 0, %pm_runtime_suspended.exit.i.bh1770_lux_update_thresholds.exit_crit_edge ], [ 0, %land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  br label %if.end6

if.end6:                                          ; preds = %bh1770_lux_update_thresholds.exit, %if.end2.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %if.end2.if.end6_crit_edge ], [ %retval.0.i, %bh1770_lux_update_thresholds.exit ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thresh) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_get_lux_thresh_below(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_threshold_lo = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %lux_threshold_lo to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lux_threshold_lo, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_set_lux_thresh_below(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lux_threshold_lo = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 17
  %call1 = tail call fastcc i32 @bh1770_set_lux_thresh(ptr noundef %1, ptr noundef %lux_threshold_lo, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.len = select i1 %cmp, i32 %call1, i32 %len
  ret i32 %call1.len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_prox_result_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %prox_enable_count = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %prox_enable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prox_enable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %land.lhs.true
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %prox_data = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %prox_data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %prox_data, align 2
  %conv = zext i8 %8 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ -5, %pm_runtime_suspended.exit.if.end_crit_edge ], [ -5, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_prox_range_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef 255)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_prox_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %prox_enable_count = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %prox_enable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prox_enable_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_prox_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %prox_enable_count = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %prox_enable_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prox_enable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prox_data = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %prox_data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %prox_data, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %prox_enable_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prox_enable_count, align 4
  br i1 %tobool5.not, label %if.else, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.else.if.end13_crit_edge, label %if.else.leave_crit_edge

if.else.leave_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %leave

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %.sink = phi i32 [ 1, %if.end4.if.end13_crit_edge ], [ -1, %if.else.if.end13_crit_edge ]
  %dec = add i32 %9, %.sink
  %10 = ptrtoint ptr %prox_enable_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %prox_enable_count, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %11 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end13.if.then15_crit_edge

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

pm_runtime_suspended.exit:                        ; preds = %if.end13
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %13 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.leave_crit_edge, label %pm_runtime_suspended.exit.if.then15_crit_edge

pm_runtime_suspended.exit.if.then15_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

pm_runtime_suspended.exit.leave_crit_edge:        ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %leave

if.then15:                                        ; preds = %pm_runtime_suspended.exit.if.then15_crit_edge, %if.end13.if.then15_crit_edge
  call fastcc void @bh1770_prox_mode_control(ptr noundef %1)
  br label %leave

leave:                                            ; preds = %if.then15, %pm_runtime_suspended.exit.leave_crit_edge, %if.else.leave_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %leave, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %leave ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bh1770_prox_mode_control(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prox_enable_count = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 21
  %0 = ptrtoint ptr %prox_enable_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prox_enable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %prox_force_update = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 31
  %2 = ptrtoint ptr %prox_force_update to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %prox_force_update, align 1
  %client.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pm_runtime_suspended.exit.i:                      ; preds = %if.then
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge, label %pm_runtime_suspended.exit.i.if.end.i_crit_edge

pm_runtime_suspended.exit.i.if.end.i_crit_edge:   ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_rate.exit

if.end.i:                                         ; preds = %pm_runtime_suspended.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -122, i8 noundef zeroext 0) #7
  br label %bh1770_lux_rate.exit

bh1770_lux_rate.exit:                             ; preds = %if.end.i, %pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i2 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 12, i32 18
  %10 = ptrtoint ptr %runtime_status.i.i2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %runtime_status.i.i2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i3 = icmp eq i32 %11, 2
  br i1 %cmp.i.i3, label %pm_runtime_suspended.exit.i7, label %bh1770_lux_rate.exit.if.end.i8_crit_edge

bh1770_lux_rate.exit.if.end.i8_crit_edge:         ; preds = %bh1770_lux_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i8

pm_runtime_suspended.exit.i7:                     ; preds = %bh1770_lux_rate.exit
  %disable_depth.i.i4 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 12, i32 15
  %12 = ptrtoint ptr %disable_depth.i.i4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i5 = load i16, ptr %disable_depth.i.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i5)
  %tobool.not.i.i6 = icmp ult i16 %bf.load.i.i5, 8192
  br i1 %tobool.not.i.i6, label %pm_runtime_suspended.exit.i7.bh1770_prox_set_threshold.exit_crit_edge, label %pm_runtime_suspended.exit.i7.if.end.i8_crit_edge

pm_runtime_suspended.exit.i7.if.end.i8_crit_edge: ; preds = %pm_runtime_suspended.exit.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i8

pm_runtime_suspended.exit.i7.bh1770_prox_set_threshold.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_set_threshold.exit

if.end.i8:                                        ; preds = %pm_runtime_suspended.exit.i7.if.end.i8_crit_edge, %bh1770_lux_rate.exit.if.end.i8_crit_edge
  %prox_threshold.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 29
  %13 = ptrtoint ptr %prox_threshold.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %prox_threshold.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 10
  %prox_coef.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 22
  %15 = ptrtoint ptr %prox_coef.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %prox_coef.i.i, align 4
  %conv1.i.i = zext i16 %16 to i32
  %div.i.i = udiv i32 %mul.i.i, %conv1.i.i
  %conv3.i.i = and i32 %div.i.i, 65535
  %prox_const.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 23
  %17 = ptrtoint ptr %prox_const.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %prox_const.i.i, align 2
  %conv4.i.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i.i, i32 %conv4.i.i)
  %cmp.i9.i = icmp ugt i32 %conv3.i.i, %conv4.i.i
  %sub.i.i = sub nsw i32 %div.i.i, %conv4.i.i
  %extract.t.i.i = trunc i32 %sub.i.i to i8
  %raw.0.off0.i.i = select i1 %cmp.i9.i, i8 %extract.t.i.i, i8 0
  %prox_threshold_hw.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 30
  %19 = ptrtoint ptr %prox_threshold_hw.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %raw.0.off0.i.i, ptr %prox_threshold_hw.i, align 4
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -109, i8 noundef zeroext %raw.0.off0.i.i) #7
  br label %bh1770_prox_set_threshold.exit

bh1770_prox_set_threshold.exit:                   ; preds = %if.end.i8, %pm_runtime_suspended.exit.i7.bh1770_prox_set_threshold.exit_crit_edge
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %prox_led.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 33
  %22 = ptrtoint ptr %prox_led.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %prox_led.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext -126, i8 noundef zeroext %23) #7
  %prox_rate.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 24
  %24 = ptrtoint ptr %prox_rate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %cond.i = load i32, ptr %prox_rate.i, align 4
  %25 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client.i, align 4
  %conv.i12 = trunc i32 %cond.i to i8
  %call.i13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -123, i8 noundef zeroext %conv.i12) #7
  %int_mode_prox.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 7
  %27 = ptrtoint ptr %int_mode_prox.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %int_mode_prox.i, align 4
  %28 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client.i, align 4
  %int_mode_lux.i = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 8
  %30 = ptrtoint ptr %int_mode_lux.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %int_mode_lux.i, align 1, !range !159
  %32 = shl nuw nsw i8 %31, 1
  %conv3.i = or i8 %32, 1
  %call.i15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -110, i8 noundef zeroext %conv3.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %prox_data = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 28
  %33 = ptrtoint ptr %prox_data to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %prox_data, align 2
  %lux_rate_index6 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 13
  %34 = ptrtoint ptr %lux_rate_index6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lux_rate_index6, align 4
  %client.i16 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 3
  %36 = ptrtoint ptr %client.i16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client.i16, align 4
  %runtime_status.i.i17 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4, i32 12, i32 18
  %38 = ptrtoint ptr %runtime_status.i.i17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %runtime_status.i.i17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i.i18 = icmp eq i32 %39, 2
  br i1 %cmp.i.i18, label %pm_runtime_suspended.exit.i22, label %if.else.if.end.i27_crit_edge

if.else.if.end.i27_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i27

pm_runtime_suspended.exit.i22:                    ; preds = %if.else
  %disable_depth.i.i19 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4, i32 12, i32 15
  %40 = ptrtoint ptr %disable_depth.i.i19 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i.i20 = load i16, ptr %disable_depth.i.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i20)
  %tobool.not.i.i21 = icmp ult i16 %bf.load.i.i20, 8192
  br i1 %tobool.not.i.i21, label %pm_runtime_suspended.exit.i22.bh1770_lux_rate.exit29_crit_edge, label %pm_runtime_suspended.exit.i22.if.end.i27_crit_edge

pm_runtime_suspended.exit.i22.if.end.i27_crit_edge: ; preds = %pm_runtime_suspended.exit.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i27

pm_runtime_suspended.exit.i22.bh1770_lux_rate.exit29_crit_edge: ; preds = %pm_runtime_suspended.exit.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_rate.exit29

if.end.i27:                                       ; preds = %pm_runtime_suspended.exit.i22.if.end.i27_crit_edge, %if.else.if.end.i27_crit_edge
  %41 = trunc i32 %35 to i8
  %call4.i26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext -122, i8 noundef zeroext %41) #7
  br label %bh1770_lux_rate.exit29

bh1770_lux_rate.exit29:                           ; preds = %if.end.i27, %pm_runtime_suspended.exit.i22.bh1770_lux_rate.exit29_crit_edge
  %int_mode_prox.i30 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 7
  %42 = ptrtoint ptr %int_mode_prox.i30 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %int_mode_prox.i30, align 4
  %43 = ptrtoint ptr %client.i16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client.i16, align 4
  %int_mode_lux.i32 = getelementptr inbounds %struct.bh1770_chip, ptr %chip, i32 0, i32 8
  %45 = ptrtoint ptr %int_mode_lux.i32 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %int_mode_lux.i32, align 1, !range !159
  %47 = shl nuw nsw i8 %46, 1
  %call.i33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -110, i8 noundef zeroext %47) #7
  br label %if.end

if.end:                                           ; preds = %bh1770_lux_rate.exit29, %bh1770_prox_set_threshold.exit
  %client.i16.sink = phi ptr [ %client.i16, %bh1770_lux_rate.exit29 ], [ %client.i, %bh1770_prox_set_threshold.exit ]
  %.sink34 = phi i8 [ 0, %bh1770_lux_rate.exit29 ], [ 3, %bh1770_prox_set_threshold.exit ]
  %48 = ptrtoint ptr %client.i16.sink to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client.i16.sink, align 4
  %call10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext -127, i8 noundef zeroext %.sink34) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_prox_persistence_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %prox_persistence = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prox_persistence, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_prox_persistence_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %4)
  %cmp = icmp ugt i32 %4, 50
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %4 to i8
  %prox_persistence = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %prox_persistence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_get_prox_rate_above(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %prox_rate_threshold = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %prox_rate_threshold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prox_rate_threshold, align 4
  %arrayidx = getelementptr [8 x i16], ptr @prox_rates_hz, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_set_prox_rate_above(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp1.not.i = icmp slt i32 %4, 100
  br i1 %cmp1.not.i, label %for.inc.i, label %if.end.bh1770_prox_rate_validate.exit_crit_edge

if.end.bh1770_prox_rate_validate.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %4)
  %cmp1.not.1.i = icmp slt i32 %4, 50
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %4)
  %cmp1.not.2.i = icmp slt i32 %4, 33
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.1.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %4)
  %cmp1.not.3.i = icmp slt i32 %4, 25
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.2.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %4)
  %cmp1.not.4.i = icmp slt i32 %4, 14
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.3.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp1.not.5.i = icmp slt i32 %4, 10
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.4.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp1.not.6.i = icmp slt i32 %4, 5
  %spec.select.i = select i1 %cmp1.not.6.i, i32 7, i32 6
  br label %bh1770_prox_rate_validate.exit

bh1770_prox_rate_validate.exit:                   ; preds = %for.inc.5.i, %for.inc.4.i.bh1770_prox_rate_validate.exit_crit_edge, %for.inc.3.i.bh1770_prox_rate_validate.exit_crit_edge, %for.inc.2.i.bh1770_prox_rate_validate.exit_crit_edge, %for.inc.1.i.bh1770_prox_rate_validate.exit_crit_edge, %for.inc.i.bh1770_prox_rate_validate.exit_crit_edge, %if.end.bh1770_prox_rate_validate.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.bh1770_prox_rate_validate.exit_crit_edge ], [ 1, %for.inc.i.bh1770_prox_rate_validate.exit_crit_edge ], [ 2, %for.inc.1.i.bh1770_prox_rate_validate.exit_crit_edge ], [ 3, %for.inc.2.i.bh1770_prox_rate_validate.exit_crit_edge ], [ 4, %for.inc.3.i.bh1770_prox_rate_validate.exit_crit_edge ], [ 5, %for.inc.4.i.bh1770_prox_rate_validate.exit_crit_edge ], [ %spec.select.i, %for.inc.5.i ]
  %prox_rate_threshold = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %prox_rate_threshold to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.0.lcssa.i, ptr %prox_rate_threshold, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %bh1770_prox_rate_validate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bh1770_prox_rate_validate.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_get_prox_rate_below(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %prox_rate = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %prox_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prox_rate, align 4
  %arrayidx = getelementptr [8 x i16], ptr @prox_rates_hz, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_set_prox_rate_below(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp1.not.i = icmp slt i32 %4, 100
  br i1 %cmp1.not.i, label %for.inc.i, label %if.end.bh1770_prox_rate_validate.exit_crit_edge

if.end.bh1770_prox_rate_validate.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %4)
  %cmp1.not.1.i = icmp slt i32 %4, 50
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %4)
  %cmp1.not.2.i = icmp slt i32 %4, 33
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.1.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %4)
  %cmp1.not.3.i = icmp slt i32 %4, 25
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.2.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %4)
  %cmp1.not.4.i = icmp slt i32 %4, 14
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.3.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp1.not.5.i = icmp slt i32 %4, 10
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.bh1770_prox_rate_validate.exit_crit_edge

for.inc.4.i.bh1770_prox_rate_validate.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_rate_validate.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp1.not.6.i = icmp slt i32 %4, 5
  %spec.select.i = select i1 %cmp1.not.6.i, i32 7, i32 6
  br label %bh1770_prox_rate_validate.exit

bh1770_prox_rate_validate.exit:                   ; preds = %for.inc.5.i, %for.inc.4.i.bh1770_prox_rate_validate.exit_crit_edge, %for.inc.3.i.bh1770_prox_rate_validate.exit_crit_edge, %for.inc.2.i.bh1770_prox_rate_validate.exit_crit_edge, %for.inc.1.i.bh1770_prox_rate_validate.exit_crit_edge, %for.inc.i.bh1770_prox_rate_validate.exit_crit_edge, %if.end.bh1770_prox_rate_validate.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.bh1770_prox_rate_validate.exit_crit_edge ], [ 1, %for.inc.i.bh1770_prox_rate_validate.exit_crit_edge ], [ 2, %for.inc.1.i.bh1770_prox_rate_validate.exit_crit_edge ], [ 3, %for.inc.2.i.bh1770_prox_rate_validate.exit_crit_edge ], [ 4, %for.inc.3.i.bh1770_prox_rate_validate.exit_crit_edge ], [ 5, %for.inc.4.i.bh1770_prox_rate_validate.exit_crit_edge ], [ %spec.select.i, %for.inc.5.i ]
  %prox_rate = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %prox_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.0.lcssa.i, ptr %prox_rate, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %bh1770_prox_rate_validate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bh1770_prox_rate_validate.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_get_prox_rate_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef 100)
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.42, i32 noundef 50)
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.42, i32 noundef 33)
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.42, i32 noundef 25)
  %add.3 = add i32 %call.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %call.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.42, i32 noundef 14)
  %add.4 = add i32 %call.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %call.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.42, i32 noundef 10)
  %add.5 = add i32 %call.5, %add.4
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add.5
  %call.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6, ptr noundef nonnull @.str.42, i32 noundef 5)
  %add.6 = add i32 %call.6, %add.5
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add.6
  %call.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.7, ptr noundef nonnull @.str.42, i32 noundef 2)
  %add.7 = add i32 %call.7, %add.6
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %add.7
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 -1
  %0 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 2560, ptr %add.ptr2, align 1
  ret i32 %add.7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_get_prox_thres(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %prox_threshold = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %prox_threshold to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prox_threshold, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_set_prox_thres(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %conv = trunc i32 %6 to i8
  %prox_threshold = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %prox_threshold to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %prox_threshold, align 1
  %client.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 12, i32 18
  %10 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %if.end3.bh1770_prox_set_threshold.exit_crit_edge

if.end3.bh1770_prox_set_threshold.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_set_threshold.exit

pm_runtime_suspended.exit.i:                      ; preds = %if.end3
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 12, i32 15
  %12 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %bh1770_prox_set_threshold.exit.thread, label %pm_runtime_suspended.exit.i.bh1770_prox_set_threshold.exit_crit_edge

pm_runtime_suspended.exit.i.bh1770_prox_set_threshold.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_prox_set_threshold.exit

bh1770_prox_set_threshold.exit.thread:            ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

bh1770_prox_set_threshold.exit:                   ; preds = %pm_runtime_suspended.exit.i.bh1770_prox_set_threshold.exit_crit_edge, %if.end3.bh1770_prox_set_threshold.exit_crit_edge
  %conv.i.i = shl i32 %6, 10
  %mul.i.i = and i32 %conv.i.i, 261120
  %prox_coef.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %prox_coef.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %prox_coef.i.i, align 4
  %conv1.i.i = zext i16 %14 to i32
  %div.i.i = udiv i32 %mul.i.i, %conv1.i.i
  %conv3.i.i = and i32 %div.i.i, 65535
  %prox_const.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %prox_const.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %prox_const.i.i, align 2
  %conv4.i.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i.i, i32 %conv4.i.i)
  %cmp.i9.i = icmp ugt i32 %conv3.i.i, %conv4.i.i
  %sub.i.i = sub nsw i32 %div.i.i, %conv4.i.i
  %extract.t.i.i = trunc i32 %sub.i.i to i8
  %raw.0.off0.i.i = select i1 %cmp.i9.i, i8 %extract.t.i.i, i8 0
  %prox_threshold_hw.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 30
  %17 = ptrtoint ptr %prox_threshold_hw.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %raw.0.off0.i.i, ptr %prox_threshold_hw.i, align 4
  %call3.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -109, i8 noundef zeroext %raw.0.off0.i.i) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp6 = icmp slt i32 %call3.i, 0
  %spec.select = select i1 %cmp6, i32 %call3.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %bh1770_prox_set_threshold.exit, %bh1770_prox_set_threshold.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %bh1770_prox_set_threshold.exit.thread ], [ %spec.select, %bh1770_prox_set_threshold.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_prox_abs_thres_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %prox_abs_thres = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %prox_abs_thres to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prox_abs_thres, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_prox_abs_thres_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %4 to i8
  %prox_abs_thres = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %prox_abs_thres to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %prox_abs_thres, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_chip_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chipname = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 1
  %revision = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.55, ptr noundef %chipname, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_power_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %land.rhs.i, label %entry.pm_runtime_suspended.exit_crit_edge

entry.pm_runtime_suspended.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_suspended.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_power_state_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %data.i = alloca [4 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !161
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call.i40 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %lux_rate_index = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %lux_rate_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lux_rate_index, align 4
  %client.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 12, i32 18
  %9 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %if.then3.bh1770_lux_rate.exit_crit_edge

if.then3.bh1770_lux_rate.exit_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_rate.exit

pm_runtime_suspended.exit.i:                      ; preds = %if.then3
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %pm_runtime_suspended.exit.i.if.end8_crit_edge, label %pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge

pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_rate.exit

pm_runtime_suspended.exit.i.if.end8_crit_edge:    ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

bh1770_lux_rate.exit:                             ; preds = %pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge, %if.then3.bh1770_lux_rate.exit_crit_edge
  %prox_enable_count.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %prox_enable_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prox_enable_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %14 = trunc i32 %6 to i8
  %conv.i = select i1 %tobool.not.i, i8 %14, i8 0
  %call4.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -122, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %if.then6, label %bh1770_lux_rate.exit.if.end8_crit_edge

bh1770_lux_rate.exit.if.end8_crit_edge:           ; preds = %bh1770_lux_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %bh1770_lux_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i41 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %leave

if.end8:                                          ; preds = %bh1770_lux_rate.exit.if.end8_crit_edge, %pm_runtime_suspended.exit.i.if.end8_crit_edge
  %int_mode_lux.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %int_mode_lux.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %int_mode_lux.i, align 1
  %16 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i, align 4
  %int_mode_prox.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %int_mode_prox.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %int_mode_prox.i, align 4, !range !159
  %20 = or i8 %19, 2
  %call.i43 = call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -110, i8 noundef zeroext %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp10 = icmp slt i32 %call.i43, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call.i44 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %leave

if.end13:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %21 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %23 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %24 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i46 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 12, i32 18
  %26 = ptrtoint ptr %runtime_status.i.i46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %runtime_status.i.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i.i47 = icmp eq i32 %27, 2
  br i1 %cmp.i.i47, label %pm_runtime_suspended.exit.i51, label %if.end13.if.end.i52_crit_edge

if.end13.if.end.i52_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i52

pm_runtime_suspended.exit.i51:                    ; preds = %if.end13
  %disable_depth.i.i48 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 12, i32 15
  %28 = ptrtoint ptr %disable_depth.i.i48 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i.i49 = load i16, ptr %disable_depth.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i49)
  %tobool.not.i.i50 = icmp ult i16 %bf.load.i.i49, 8192
  br i1 %tobool.not.i.i50, label %pm_runtime_suspended.exit.i51.bh1770_lux_update_thresholds.exit_crit_edge, label %pm_runtime_suspended.exit.i51.if.end.i52_crit_edge

pm_runtime_suspended.exit.i51.if.end.i52_crit_edge: ; preds = %pm_runtime_suspended.exit.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i52

pm_runtime_suspended.exit.i51.bh1770_lux_update_thresholds.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_update_thresholds.exit

if.end.i52:                                       ; preds = %pm_runtime_suspended.exit.i51.if.end.i52_crit_edge, %if.end13.if.end.i52_crit_edge
  %lux_corr.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %lux_corr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lux_corr.i.i, align 4
  %div.i.i = udiv i32 4096000, %30
  %conv1.i.i = trunc i32 %div.i.i to i16
  %lux_thres_hi_onchip.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %lux_thres_hi_onchip.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %lux_thres_hi_onchip.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %conv1.i.i)
  %cmp20.i = icmp eq i16 %32, %conv1.i.i
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end.i52.if.end28.i_crit_edge

if.end.i52.if.end28.i_crit_edge:                  ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true22.i:                                ; preds = %if.end.i52
  %lux_thres_lo_onchip.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %lux_thres_lo_onchip.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %lux_thres_lo_onchip.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %conv1.i.i)
  %cmp25.i = icmp eq i16 %34, %conv1.i.i
  br i1 %cmp25.i, label %land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge, label %land.lhs.true22.i.if.end28.i_crit_edge

land.lhs.true22.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_update_thresholds.exit

if.end28.i:                                       ; preds = %land.lhs.true22.i.if.end28.i_crit_edge, %if.end.i52.if.end28.i_crit_edge
  %35 = ptrtoint ptr %lux_thres_hi_onchip.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv1.i.i, ptr %lux_thres_hi_onchip.i, align 2
  %lux_thres_lo_onchip30.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 19
  %36 = ptrtoint ptr %lux_thres_lo_onchip30.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv1.i.i, ptr %lux_thres_lo_onchip30.i, align 4
  %conv31.i = trunc i32 %div.i.i to i8
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv31.i, ptr %data.i, align 1
  %38 = lshr i32 %div.i.i, 8
  %conv33.i = trunc i32 %38 to i8
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv33.i, ptr %21, align 1
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv31.i, ptr %22, align 1
  %41 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv33.i, ptr %23, align 1
  %call42.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %25, i8 noundef zeroext -106, i8 noundef zeroext 4, ptr noundef nonnull %data.i) #7
  br label %bh1770_lux_update_thresholds.exit

bh1770_lux_update_thresholds.exit:                ; preds = %if.end28.i, %land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge, %pm_runtime_suspended.exit.i51.bh1770_lux_update_thresholds.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  %lux_wait_result = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 20
  %42 = ptrtoint ptr %lux_wait_result to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %lux_wait_result, align 2
  call fastcc void @bh1770_prox_mode_control(ptr noundef %1)
  br label %leave

if.else:                                          ; preds = %if.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %43 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i = icmp eq i32 %44, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.else.if.then17_crit_edge

if.else.if.then17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

pm_runtime_suspended.exit:                        ; preds = %if.else
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %45 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i54 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i54, label %pm_runtime_suspended.exit.leave_crit_edge, label %pm_runtime_suspended.exit.if.then17_crit_edge

pm_runtime_suspended.exit.if.then17_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

pm_runtime_suspended.exit.leave_crit_edge:        ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %leave

if.then17:                                        ; preds = %pm_runtime_suspended.exit.if.then17_crit_edge, %if.else.if.then17_crit_edge
  %call.i55 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %leave

leave:                                            ; preds = %if.then17, %pm_runtime_suspended.exit.leave_crit_edge, %bh1770_lux_update_thresholds.exit, %if.then11, %if.then6
  %ret.0 = phi i32 [ %call4.i, %if.then6 ], [ %call.i43, %if.then11 ], [ %count, %pm_runtime_suspended.exit.leave_crit_edge ], [ %count, %if.then17 ], [ %count, %bh1770_lux_update_thresholds.exit ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %leave, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %leave ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -110, i8 noundef zeroext 0) #7
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -127, i8 noundef zeroext 0) #7
  %regs.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 4
  %call5.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %data.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @bh1770_chip_on(ptr noundef %1)
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %lux_rate_index = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %lux_rate_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lux_rate_index, align 4
  %client.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 12, i32 18
  %9 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pm_runtime_suspended.exit.i:                      ; preds = %if.then
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge, label %pm_runtime_suspended.exit.i.if.end.i_crit_edge

pm_runtime_suspended.exit.i.if.end.i_crit_edge:   ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_rate.exit

if.end.i:                                         ; preds = %pm_runtime_suspended.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %prox_enable_count.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %prox_enable_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prox_enable_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i15 = icmp eq i32 %13, 0
  %14 = trunc i32 %6 to i8
  %conv.i = select i1 %tobool.not.i15, i8 %14, i8 0
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -122, i8 noundef zeroext %conv.i) #7
  br label %bh1770_lux_rate.exit

bh1770_lux_rate.exit:                             ; preds = %if.end.i, %pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ 0, %pm_runtime_suspended.exit.i.bh1770_lux_rate.exit_crit_edge ]
  %int_mode_lux.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %int_mode_lux.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %int_mode_lux.i, align 1
  %16 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i, align 4
  %int_mode_prox.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %int_mode_prox.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %int_mode_prox.i, align 4, !range !159
  %20 = or i8 %19, 2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -110, i8 noundef zeroext %20) #7
  %or = or i32 %call.i, %retval.0.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %21 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %23 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %24 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i, align 4
  %runtime_status.i.i18 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 12, i32 18
  %26 = ptrtoint ptr %runtime_status.i.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %runtime_status.i.i18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i.i19 = icmp eq i32 %27, 2
  br i1 %cmp.i.i19, label %pm_runtime_suspended.exit.i23, label %bh1770_lux_rate.exit.if.end.i24_crit_edge

bh1770_lux_rate.exit.if.end.i24_crit_edge:        ; preds = %bh1770_lux_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i24

pm_runtime_suspended.exit.i23:                    ; preds = %bh1770_lux_rate.exit
  %disable_depth.i.i20 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 12, i32 15
  %28 = ptrtoint ptr %disable_depth.i.i20 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i.i21 = load i16, ptr %disable_depth.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i21)
  %tobool.not.i.i22 = icmp ult i16 %bf.load.i.i21, 8192
  br i1 %tobool.not.i.i22, label %pm_runtime_suspended.exit.i23.bh1770_lux_update_thresholds.exit_crit_edge, label %pm_runtime_suspended.exit.i23.if.end.i24_crit_edge

pm_runtime_suspended.exit.i23.if.end.i24_crit_edge: ; preds = %pm_runtime_suspended.exit.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i24

pm_runtime_suspended.exit.i23.bh1770_lux_update_thresholds.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_update_thresholds.exit

if.end.i24:                                       ; preds = %pm_runtime_suspended.exit.i23.if.end.i24_crit_edge, %bh1770_lux_rate.exit.if.end.i24_crit_edge
  %lux_corr.i.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %lux_corr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lux_corr.i.i, align 4
  %div.i.i = udiv i32 4096000, %30
  %conv1.i.i = trunc i32 %div.i.i to i16
  %lux_thres_hi_onchip.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %lux_thres_hi_onchip.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %lux_thres_hi_onchip.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %conv1.i.i)
  %cmp20.i = icmp eq i16 %32, %conv1.i.i
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end.i24.if.end28.i_crit_edge

if.end.i24.if.end28.i_crit_edge:                  ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true22.i:                                ; preds = %if.end.i24
  %lux_thres_lo_onchip.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %lux_thres_lo_onchip.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %lux_thres_lo_onchip.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %conv1.i.i)
  %cmp25.i = icmp eq i16 %34, %conv1.i.i
  br i1 %cmp25.i, label %land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge, label %land.lhs.true22.i.if.end28.i_crit_edge

land.lhs.true22.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bh1770_lux_update_thresholds.exit

if.end28.i:                                       ; preds = %land.lhs.true22.i.if.end28.i_crit_edge, %if.end.i24.if.end28.i_crit_edge
  %35 = ptrtoint ptr %lux_thres_hi_onchip.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv1.i.i, ptr %lux_thres_hi_onchip.i, align 2
  %lux_thres_lo_onchip30.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 19
  %36 = ptrtoint ptr %lux_thres_lo_onchip30.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv1.i.i, ptr %lux_thres_lo_onchip30.i, align 4
  %conv31.i = trunc i32 %div.i.i to i8
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv31.i, ptr %data.i, align 1
  %38 = lshr i32 %div.i.i, 8
  %conv33.i = trunc i32 %38 to i8
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv33.i, ptr %21, align 1
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv31.i, ptr %22, align 1
  %41 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv33.i, ptr %23, align 1
  %call42.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %25, i8 noundef zeroext -106, i8 noundef zeroext 4, ptr noundef nonnull %data.i) #7
  br label %bh1770_lux_update_thresholds.exit

bh1770_lux_update_thresholds.exit:                ; preds = %if.end28.i, %land.lhs.true22.i.bh1770_lux_update_thresholds.exit_crit_edge, %pm_runtime_suspended.exit.i23.bh1770_lux_update_thresholds.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  %lux_wait_result = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 20
  %42 = ptrtoint ptr %lux_wait_result to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %lux_wait_result, align 2
  call fastcc void @bh1770_prox_mode_control(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %bh1770_lux_update_thresholds.exit, %pm_runtime_suspended.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %pm_runtime_suspended.exit.if.end_crit_edge ], [ %or, %bh1770_lux_update_thresholds.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -110, i8 noundef zeroext 0) #7
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -127, i8 noundef zeroext 0) #7
  %regs.i = getelementptr inbounds %struct.bh1770_chip, ptr %1, i32 0, i32 4
  %call5.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bh1770_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @bh1770_chip_on(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !73, !75, !76, !78, !80, !81, !83, !84, !86, !88, !89, !91, !92, !94, !96, !97, !99, !101, !103, !104, !106, !107, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !142, !143, !145, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__initcall__kmod_bh1770glc__292_1389_bh1770_driver_init6, !1, !"__initcall__kmod_bh1770glc__292_1389_bh1770_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/bh1770glc.c", i32 1389, i32 1}
!2 = !{ptr @__exitcall_bh1770_driver_exit, !1, !"__exitcall_bh1770_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/misc/bh1770glc.c", i32 1391, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/misc/bh1770glc.c", i32 1392, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/misc/bh1770glc.c", i32 1393, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/bh1770glc.c", i32 1381, i32 11}
!12 = !{ptr @bh1770_driver, !13, !"bh1770_driver", i1 false, i1 false}
!13 = !{!"../drivers/misc/bh1770glc.c", i32 1379, i32 26}
!14 = !{ptr @bh1770_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/misc/bh1770glc.c", i32 1178, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bh1770_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/misc/bh1770glc.c", i32 1179, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bh1770_probe.__key.4, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/misc/bh1770glc.c", i32 1180, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bh1770_probe.__key.6, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/bh1770glc.c", i32 1183, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @bh1770_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @bh1770_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/bh1770glc.c", i32 1212, i32 3}
!35 = !{ptr @bh1770_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bh1770_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/bh1770glc.c", i32 1219, i32 3}
!39 = !{ptr @bh1770_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bh1770_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/bh1770glc.c", i32 1235, i32 3}
!43 = !{ptr @bh1770_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bh1770_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/bh1770glc.c", i32 1251, i32 3}
!47 = !{ptr @bh1770_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bh1770_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/bh1770glc.c", i32 1264, i32 5}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/bh1770glc.c", i32 1266, i32 3}
!53 = !{ptr @bh1770_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bh1770_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/bh1770glc.c", i32 499, i32 47}
!57 = !{ptr @reg_vcc, !58, !"reg_vcc", i1 false, i1 false}
!58 = !{!"../drivers/misc/bh1770glc.c", i32 159, i32 19}
!59 = !{ptr @reg_vleds, !60, !"reg_vleds", i1 false, i1 false}
!60 = !{!"../drivers/misc/bh1770glc.c", i32 160, i32 19}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/bh1770glc.c", i32 528, i32 52}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/bh1770glc.c", i32 534, i32 52}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/bh1770glc.c", i32 543, i32 2}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @bh1770_detect.__UNIQUE_ID_ddebug291, !66, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!69 = !{ptr @bh1770_attribute_group, !70, !"bh1770_attribute_group", i1 false, i1 false}
!70 = !{!"../drivers/misc/bh1770glc.c", i32 1161, i32 37}
!71 = !{ptr @sysfs_attrs, !72, !"sysfs_attrs", i1 false, i1 false}
!72 = !{!"../drivers/misc/bh1770glc.c", i32 1138, i32 26}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/misc/bh1770glc.c", i32 1117, i32 8}
!75 = !{ptr @dev_attr_lux0_calibscale, !74, !"dev_attr_lux0_calibscale", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/misc/bh1770glc.c", i32 949, i32 21}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/misc/bh1770glc.c", i32 1119, i32 8}
!80 = !{ptr @dev_attr_lux0_calibscale_default, !79, !"dev_attr_lux0_calibscale_default", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/misc/bh1770glc.c", i32 1122, i32 8}
!83 = !{ptr @dev_attr_lux0_input, !82, !"dev_attr_lux0_input", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/bh1770glc.c", i32 695, i32 21}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/bh1770glc.c", i32 1123, i32 8}
!88 = !{ptr @dev_attr_lux0_sensor_range, !87, !"dev_attr_lux0_sensor_range", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/misc/bh1770glc.c", i32 1124, i32 8}
!91 = !{ptr @dev_attr_lux0_rate, !90, !"dev_attr_lux0_rate", i1 false, i1 false}
!92 = !{ptr @lux_rates_hz, !93, !"lux_rates_hz", i1 false, i1 false}
!93 = !{!"../drivers/misc/bh1770glc.c", i32 173, i32 18}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/misc/bh1770glc.c", i32 1126, i32 8}
!96 = !{ptr @dev_attr_lux0_rate_avail, !95, !"dev_attr_lux0_rate_avail", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/bh1770glc.c", i32 993, i32 29}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/misc/bh1770glc.c", i32 994, i32 25}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/misc/bh1770glc.c", i32 1127, i32 8}
!103 = !{ptr @dev_attr_lux0_thresh_above_value, !102, !"dev_attr_lux0_thresh_above_value", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/bh1770glc.c", i32 1130, i32 8}
!106 = !{ptr @dev_attr_lux0_thresh_below_value, !105, !"dev_attr_lux0_thresh_below_value", i1 false, i1 false}
!107 = !{ptr @dev_attr_prox0_raw, !108, !"dev_attr_prox0_raw", i1 false, i1 false}
!108 = !{!"../drivers/misc/bh1770glc.c", i32 1104, i32 8}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/misc/bh1770glc.c", i32 1105, i32 8}
!111 = !{ptr @dev_attr_prox0_sensor_range, !110, !"dev_attr_prox0_sensor_range", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/misc/bh1770glc.c", i32 1096, i32 8}
!114 = !{ptr @dev_attr_prox0_raw_en, !113, !"dev_attr_prox0_raw_en", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/misc/bh1770glc.c", i32 1106, i32 8}
!117 = !{ptr @dev_attr_prox0_thresh_above_count, !116, !"dev_attr_prox0_thresh_above_count", i1 false, i1 false}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/misc/bh1770glc.c", i32 1109, i32 8}
!120 = !{ptr @dev_attr_prox0_rate_above, !119, !"dev_attr_prox0_rate_above", i1 false, i1 false}
!121 = !{ptr @prox_rates_hz, !122, !"prox_rates_hz", i1 false, i1 false}
!122 = !{!"../drivers/misc/bh1770glc.c", i32 166, i32 18}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/misc/bh1770glc.c", i32 1112, i32 8}
!125 = !{ptr @dev_attr_prox0_rate_below, !124, !"dev_attr_prox0_rate_below", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/misc/bh1770glc.c", i32 1115, i32 8}
!128 = !{ptr @dev_attr_prox0_rate_avail, !127, !"dev_attr_prox0_rate_avail", i1 false, i1 false}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/misc/bh1770glc.c", i32 1101, i32 8}
!131 = !{ptr @dev_attr_prox0_thresh_above0_value, !130, !"dev_attr_prox0_thresh_above0_value", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/misc/bh1770glc.c", i32 1098, i32 8}
!134 = !{ptr @dev_attr_prox0_thresh_above1_value, !133, !"dev_attr_prox0_thresh_above1_value", i1 false, i1 false}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/misc/bh1770glc.c", i32 1133, i32 8}
!137 = !{ptr @dev_attr_chip_id, !136, !"dev_attr_chip_id", i1 false, i1 false}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/misc/bh1770glc.c", i32 933, i32 22}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/misc/bh1770glc.c", i32 1134, i32 8}
!142 = !{ptr @dev_attr_power_state, !141, !"dev_attr_power_state", i1 false, i1 false}
!143 = !{ptr @prox_rates_ms, !144, !"prox_rates_ms", i1 false, i1 false}
!144 = !{!"../drivers/misc/bh1770glc.c", i32 167, i32 18}
!145 = !{ptr @bh1770_pm_ops, !146, !"bh1770_pm_ops", i1 false, i1 false}
!146 = !{!"../drivers/misc/bh1770glc.c", i32 1374, i32 32}
!147 = !{ptr @bh1770_id, !148, !"bh1770_id", i1 false, i1 false}
!148 = !{!"../drivers/misc/bh1770glc.c", i32 1366, i32 35}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i64 2148727260, i64 2148727265, i64 2148727278, i64 2148727322, i64 2148727356, i64 2148727377}
!159 = !{i8 0, i8 2}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{!"auto-init"}
