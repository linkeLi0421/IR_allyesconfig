; ModuleID = '/llk/IR_all_yes/drivers/iio/light/apds9960.c_pt.bc'
source_filename = "../drivers/iio/light/apds9960.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range = type { i32, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.apds9960_data = type { ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [4 x i8] }

@__initcall__kmod_apds9960__289_1138_apds9960_driver_init6 = internal global ptr @apds9960_driver_init, section ".initcall6.init", align 4
@apds9960_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @apds9960_probe, ptr @apds9960_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @apds9960_of_match, ptr @apds9960_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apds9960_pm_ops, ptr null, ptr null }, ptr @apds9960_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_apds9960_driver_exit = internal global ptr @apds9960_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [59 x i8] c"apds9960.author=Matt Ranostay <matt.ranostay@konsulko.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [63 x i8] c"apds9960.description=APDS9960 Gesture/RGB/ALS/Proximity sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"apds9960.file=drivers/iio/light/apds9960\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"apds9960.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apds9960\00", [23 x i8] zeroinitializer }, align 32
@apds9960_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"avago,apds9960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@apds9960_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"MSHW0184\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@apds9960_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apds9960_runtime_suspend, ptr @apds9960_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@apds9960_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"apds9960\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@apds9960_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @apds9960_attribute_group, ptr @apds9960_read_raw, ptr null, ptr null, ptr @apds9960_write_raw, ptr null, ptr null, ptr @apds9960_read_event_config, ptr @apds9960_write_event_config, ptr @apds9960_read_event, ptr @apds9960_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@apds9960_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 156, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @apds9960_pxs_event_spec, i32 2, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 2, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 3, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 4, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 16, i32 148, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 262148, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @apds9960_als_event_spec, i32 2, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 17, i32 150, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 262148, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 18, i32 152, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 262148, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 19, i32 154, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 262148, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [200 x i8] zeroinitializer }, align 32
@apds9960_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 0], [24 x i8] zeroinitializer }, align 32
@apds9960_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @apds9960_buffer_postenable, ptr @apds9960_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@apds9960_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@apds9960_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.21, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr @apds9960_writeable_table, ptr @apds9960_readable_table, ptr @apds9960_volatile_table, ptr @apds9960_precious_table, ptr null, ptr null, ptr @apds9960_reg_defaults, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"apds9960:1014:(&apds9960_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@apds9960_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1016, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"regmap initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apds9960_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/apds9960.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@apds9960_probe._entry_ptr = internal global ptr @apds9960_probe._entry, section ".printk_index", align 4
@apds9960_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@apds9960_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1043, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no valid irq defined\0A\00", [42 x i8] zeroinitializer }, align 32
@apds9960_probe._entry_ptr.10 = internal global ptr @apds9960_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apds9960_event\00", [17 x i8] zeroinitializer }, align 32
@apds9960_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1053, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"request irq (%d) failed\0A\00", [39 x i8] zeroinitializer }, align 32
@apds9960_probe._entry_ptr.14 = internal global ptr @apds9960_probe._entry.12, section ".printk_index", align 4
@apds9960_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @apds9960_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@apds9960_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_proximity_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_intensity_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_integration_time_available, i64 4), ptr null], [16 x i8] zeroinitializer }, align 32
@iio_const_attr_proximity_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.15, %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_intensity_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.17, %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.19, %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1 2 4 8\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"proximity_scale_available\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1 4 16 64\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"intensity_scale_available\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0.028 0.1 0.2 0.7\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@apds9960_pxs_gain_map = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@apds9960_als_gain_map = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 4, i32 16, i32 64], [16 x i8] zeroinitializer }, align 32
@apds9960_int_time = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 28000, i32 246], [2 x i32] [i32 100000, i32 219], [2 x i32] [i32 200000, i32 182], [2 x i32] [i32 700000, i32 0]], [32 x i8] zeroinitializer }, align 32
@apds9960_pxs_event_spec = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@apds9960_als_event_spec = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apds9960_regmap\00", [16 x i8] zeroinitializer }, align 32
@apds9960_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @apds9960_writeable_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@apds9960_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @apds9960_readable_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@apds9960_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @apds9960_volatile_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@apds9960_precious_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @apds9960_precious_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@apds9960_reg_defaults = internal constant { [1 x %struct.reg_default], [24 x i8] } { [1 x %struct.reg_default] [%struct.reg_default { i32 129, i32 255 }], [24 x i8] zeroinitializer }, align 32
@apds9960_writeable_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 128, i32 144 }, %struct.regmap_range { i32 157, i32 171 }, %struct.regmap_range { i32 228, i32 231 }], [40 x i8] zeroinitializer }, align 32
@apds9960_readable_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 128, i32 175 }, %struct.regmap_range { i32 252, i32 255 }], [16 x i8] zeroinitializer }, align 32
@apds9960_volatile_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 147, i32 156 }, %struct.regmap_range { i32 174, i32 175 }, %struct.regmap_range { i32 252, i32 255 }, %struct.regmap_range { i32 228, i32 231 }], [32 x i8] zeroinitializer }, align 32
@apds9960_precious_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 127 }], [24 x i8] zeroinitializer }, align 32
@apds9960_regfield_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 874, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"INT ALS reg field init failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"apds9960_regfield_init\00", [41 x i8] zeroinitializer }, align 32
@apds9960_regfield_init._entry_ptr = internal global ptr @apds9960_regfield_init._entry, section ".printk_index", align 4
@apds9960_regfield_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 881, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"INT gesture reg field init failed\0A\00", [61 x i8] zeroinitializer }, align 32
@apds9960_regfield_init._entry_ptr.26 = internal global ptr @apds9960_regfield_init._entry.24, section ".printk_index", align 4
@apds9960_regfield_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 888, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"INT pxs reg field init failed\0A\00", [33 x i8] zeroinitializer }, align 32
@apds9960_regfield_init._entry_ptr.29 = internal global ptr @apds9960_regfield_init._entry.27, section ".printk_index", align 4
@apds9960_regfield_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.4, i32 895, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Enable ALS reg field init failed\0A\00", [62 x i8] zeroinitializer }, align 32
@apds9960_regfield_init._entry_ptr.32 = internal global ptr @apds9960_regfield_init._entry.30, section ".printk_index", align 4
@apds9960_regfield_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.4, i32 902, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Enable gesture reg field init failed\0A\00", [58 x i8] zeroinitializer }, align 32
@apds9960_regfield_init._entry_ptr.35 = internal global ptr @apds9960_regfield_init._entry.33, section ".printk_index", align 4
@apds9960_regfield_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.4, i32 909, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Enable PXS reg field init failed\0A\00", [62 x i8] zeroinitializer }, align 32
@apds9960_regfield_init._entry_ptr.38 = internal global ptr @apds9960_regfield_init._entry.36, section ".printk_index", align 4
@apds9960_interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 792, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"irq status reg read failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"apds9960_interrupt_handler\00", [37 x i8] zeroinitializer }, align 32
@apds9960_interrupt_handler._entry_ptr = internal global ptr @apds9960_interrupt_handler._entry, section ".printk_index", align 4
@switch.table.apds9960_write_raw = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 18]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 18]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 28000, i64 100000, i64 200000, i64 700000]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 16, i64 64]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"apds9960_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1127, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1129, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"apds9960_of_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1121, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"apds9960_acpi_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1115, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"apds9960_pm_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1102, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"apds9960_id\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1109, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"apds9960_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 738, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"apds9960_channels\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 277, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"apds9960_scan_masks\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 275, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"apds9960_buffer_setup_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 861, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"apds9960_regmap_config\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 204, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1014, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1016, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1022, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1043, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1050, i32 6 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1053, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"apds9960_attribute_group\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 338, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"apds9960_attributes\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 331, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant [41 x i8] c"iio_const_attr_proximity_scale_available\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [41 x i8] c"iio_const_attr_intensity_scale_available\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [42 x i8] c"iio_const_attr_integration_time_available\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 327, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 328, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 329, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant [22 x i8] c"apds9960_pxs_gain_map\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 324, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"apds9960_als_gain_map\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 325, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"apds9960_int_time\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 316, i32 18 }
@___asan_gen_.175 = private unnamed_addr constant [24 x i8] c"apds9960_pxs_event_spec\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 222, i32 36 }
@___asan_gen_.178 = private unnamed_addr constant [24 x i8] c"apds9960_als_event_spec\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 237, i32 36 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 205, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant [25 x i8] c"apds9960_writeable_table\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 199, i32 41 }
@___asan_gen_.187 = private unnamed_addr constant [24 x i8] c"apds9960_readable_table\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 188, i32 41 }
@___asan_gen_.190 = private unnamed_addr constant [24 x i8] c"apds9960_volatile_table\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 167, i32 41 }
@___asan_gen_.193 = private unnamed_addr constant [24 x i8] c"apds9960_precious_table\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 176, i32 41 }
@___asan_gen_.196 = private unnamed_addr constant [22 x i8] c"apds9960_reg_defaults\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 151, i32 33 }
@___asan_gen_.199 = private unnamed_addr constant [26 x i8] c"apds9960_writeable_ranges\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 193, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant [25 x i8] c"apds9960_readable_ranges\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 181, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant [25 x i8] c"apds9960_volatile_ranges\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 156, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant [25 x i8] c"apds9960_precious_ranges\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 172, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 874, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 881, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 888, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 895, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 902, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 909, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [32 x i8] c"../drivers/iio/light/apds9960.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 792, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [32 x i8] c"switch.table.apds9960_write_raw\00", align 1
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_apds9960_driver_exit, ptr @__initcall__kmod_apds9960__289_1138_apds9960_driver_init6, ptr @apds9960_driver_exit, ptr @apds9960_interrupt_handler._entry, ptr @apds9960_interrupt_handler._entry_ptr, ptr @apds9960_probe._entry, ptr @apds9960_probe._entry.12, ptr @apds9960_probe._entry.8, ptr @apds9960_probe._entry_ptr, ptr @apds9960_probe._entry_ptr.10, ptr @apds9960_probe._entry_ptr.14, ptr @apds9960_regfield_init._entry, ptr @apds9960_regfield_init._entry.24, ptr @apds9960_regfield_init._entry.27, ptr @apds9960_regfield_init._entry.30, ptr @apds9960_regfield_init._entry.33, ptr @apds9960_regfield_init._entry.36, ptr @apds9960_regfield_init._entry_ptr, ptr @apds9960_regfield_init._entry_ptr.26, ptr @apds9960_regfield_init._entry_ptr.29, ptr @apds9960_regfield_init._entry_ptr.32, ptr @apds9960_regfield_init._entry_ptr.35, ptr @apds9960_regfield_init._entry_ptr.38, ptr @apds9960_driver, ptr @.str, ptr @apds9960_of_match, ptr @apds9960_acpi_match, ptr @apds9960_pm_ops, ptr @apds9960_id, ptr @apds9960_info, ptr @apds9960_channels, ptr @apds9960_scan_masks, ptr @apds9960_buffer_setup_ops, ptr @apds9960_probe._key, ptr @apds9960_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @apds9960_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @apds9960_attribute_group, ptr @apds9960_attributes, ptr @iio_const_attr_proximity_scale_available, ptr @iio_const_attr_intensity_scale_available, ptr @iio_const_attr_integration_time_available, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @apds9960_pxs_gain_map, ptr @apds9960_als_gain_map, ptr @apds9960_int_time, ptr @apds9960_pxs_event_spec, ptr @apds9960_als_event_spec, ptr @.str.21, ptr @apds9960_writeable_table, ptr @apds9960_readable_table, ptr @apds9960_volatile_table, ptr @apds9960_precious_table, ptr @apds9960_reg_defaults, ptr @apds9960_writeable_ranges, ptr @apds9960_readable_ranges, ptr @apds9960_volatile_ranges, ptr @apds9960_precious_ranges, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @switch.table.apds9960_write_raw], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_proximity_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_intensity_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_pxs_gain_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_als_gain_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_int_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_pxs_event_spec to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_als_event_spec to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_precious_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_reg_defaults to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_writeable_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_readable_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_volatile_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_precious_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_regfield_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_regfield_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_regfield_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_regfield_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_regfield_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_regfield_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9960_interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.apds9960_write_raw to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @apds9960_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apds9960_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @apds9960_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 156) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @apds9960_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @apds9960_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %3 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 9, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @apds9960_scan_masks, ptr %available_scan_masks, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %call, align 8
  %call2 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef 4, ptr noundef nonnull @apds9960_buffer_setup_ops, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @apds9960_regmap_config, ptr noundef nonnull @apds9960_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %client, ptr %7, align 4
  %indio_dev16 = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %indio_dev16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %indio_dev16, align 4
  %lock = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @apds9960_probe.__key) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end24, label %if.end14.error_power_down_crit_edge

if.end14.error_power_down_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end24:                                         ; preds = %if.end14
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 5000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 12, i32 18
  %17 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %pm_runtime_suspended.exit.thread.i

pm_runtime_suspended.exit.thread.i:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call.i3.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #7
  br label %apds9960_set_power_state.exit

pm_runtime_suspended.exit.i:                      ; preds = %if.end24
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 12, i32 15
  %19 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #7
  br i1 %tobool.not.i.i, label %if.then4.i, label %pm_runtime_suspended.exit.i.apds9960_set_power_state.exit_crit_edge

pm_runtime_suspended.exit.i.apds9960_set_power_state.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_set_power_state.exit

if.then4.i:                                       ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %als_adc_int_us.i = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 15
  %20 = ptrtoint ptr %als_adc_int_us.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %als_adc_int_us.i, align 4
  tail call void @usleep_range_state(i32 noundef %21, i32 noundef 1000000, i32 noundef 2) #7
  br label %apds9960_set_power_state.exit

apds9960_set_power_state.exit:                    ; preds = %if.then4.i, %pm_runtime_suspended.exit.i.apds9960_set_power_state.exit_crit_edge, %pm_runtime_suspended.exit.thread.i
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %dev1.i106 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i107 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1.i106, ptr noundef %25, [5 x i32] [i32 128, i32 4, i32 4, i32 0, i32 0]) #7
  %reg_int_als.i = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 4
  %26 = ptrtoint ptr %reg_int_als.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i107, ptr %reg_int_als.i, align 4
  %cmp.i.i108 = icmp ugt ptr %call.i107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i108, label %apds9960_set_power_state.exit.apds9960_regfield_init.exit_crit_edge, label %if.end.i

apds9960_set_power_state.exit.apds9960_regfield_init.exit_crit_edge: ; preds = %apds9960_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_regfield_init.exit

if.end.i:                                         ; preds = %apds9960_set_power_state.exit
  %call7.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1.i106, ptr noundef %25, [5 x i32] [i32 171, i32 1, i32 1, i32 0, i32 0]) #7
  %reg_int_ges.i = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 5
  %27 = ptrtoint ptr %reg_int_ges.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %reg_int_ges.i, align 4
  %cmp.i117.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117.i, label %if.end.i.apds9960_regfield_init.exit_crit_edge, label %if.end16.i

if.end.i.apds9960_regfield_init.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_regfield_init.exit

if.end16.i:                                       ; preds = %if.end.i
  %call17.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1.i106, ptr noundef %25, [5 x i32] [i32 128, i32 5, i32 5, i32 0, i32 0]) #7
  %reg_int_pxs.i = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 6
  %28 = ptrtoint ptr %reg_int_pxs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call17.i, ptr %reg_int_pxs.i, align 4
  %cmp.i118.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118.i, label %if.end16.i.apds9960_regfield_init.exit_crit_edge, label %if.end26.i

if.end16.i.apds9960_regfield_init.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_regfield_init.exit

if.end26.i:                                       ; preds = %if.end16.i
  %call27.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1.i106, ptr noundef %25, [5 x i32] [i32 128, i32 1, i32 1, i32 0, i32 0]) #7
  %reg_enable_als.i = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 7
  %29 = ptrtoint ptr %reg_enable_als.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call27.i, ptr %reg_enable_als.i, align 4
  %cmp.i119.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119.i, label %if.end26.i.apds9960_regfield_init.exit_crit_edge, label %if.end36.i

if.end26.i.apds9960_regfield_init.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_regfield_init.exit

if.end36.i:                                       ; preds = %if.end26.i
  %call37.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1.i106, ptr noundef %25, [5 x i32] [i32 128, i32 6, i32 6, i32 0, i32 0]) #7
  %reg_enable_ges.i = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 8
  %30 = ptrtoint ptr %reg_enable_ges.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call37.i, ptr %reg_enable_ges.i, align 4
  %cmp.i120.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120.i, label %if.end36.i.apds9960_regfield_init.exit_crit_edge, label %if.end46.i

if.end36.i.apds9960_regfield_init.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_regfield_init.exit

if.end46.i:                                       ; preds = %if.end36.i
  %call47.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1.i106, ptr noundef %25, [5 x i32] [i32 128, i32 2, i32 2, i32 0, i32 0]) #7
  %reg_enable_pxs.i = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 9
  %31 = ptrtoint ptr %reg_enable_pxs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call47.i, ptr %reg_enable_pxs.i, align 4
  %cmp.i121.i = icmp ugt ptr %call47.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121.i, label %if.end46.i.apds9960_regfield_init.exit_crit_edge, label %if.end46.i.if.end32_crit_edge

if.end46.i.if.end32_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end46.i.apds9960_regfield_init.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_regfield_init.exit

apds9960_regfield_init.exit:                      ; preds = %if.end46.i.apds9960_regfield_init.exit_crit_edge, %if.end36.i.apds9960_regfield_init.exit_crit_edge, %if.end26.i.apds9960_regfield_init.exit_crit_edge, %if.end16.i.apds9960_regfield_init.exit_crit_edge, %if.end.i.apds9960_regfield_init.exit_crit_edge, %apds9960_set_power_state.exit.apds9960_regfield_init.exit_crit_edge
  %.str.37.sink.i = phi ptr [ @.str.22, %apds9960_set_power_state.exit.apds9960_regfield_init.exit_crit_edge ], [ @.str.25, %if.end.i.apds9960_regfield_init.exit_crit_edge ], [ @.str.28, %if.end16.i.apds9960_regfield_init.exit_crit_edge ], [ @.str.31, %if.end26.i.apds9960_regfield_init.exit_crit_edge ], [ @.str.34, %if.end36.i.apds9960_regfield_init.exit_crit_edge ], [ @.str.37, %if.end46.i.apds9960_regfield_init.exit_crit_edge ]
  %reg_enable_pxs.sink.i = phi ptr [ %reg_int_als.i, %apds9960_set_power_state.exit.apds9960_regfield_init.exit_crit_edge ], [ %reg_int_ges.i, %if.end.i.apds9960_regfield_init.exit_crit_edge ], [ %reg_int_pxs.i, %if.end16.i.apds9960_regfield_init.exit_crit_edge ], [ %reg_enable_als.i, %if.end26.i.apds9960_regfield_init.exit_crit_edge ], [ %reg_enable_ges.i, %if.end36.i.apds9960_regfield_init.exit_crit_edge ], [ %reg_enable_pxs.i, %if.end46.i.apds9960_regfield_init.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i106, ptr noundef nonnull %.str.37.sink.i) #10
  %32 = ptrtoint ptr %reg_enable_pxs.sink.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_enable_pxs.sink.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %tobool30.not = icmp eq ptr %33, null
  br i1 %tobool30.not, label %apds9960_regfield_init.exit.if.end32_crit_edge, label %apds9960_regfield_init.exit.error_power_down_crit_edge

apds9960_regfield_init.exit.error_power_down_crit_edge: ; preds = %apds9960_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

apds9960_regfield_init.exit.if.end32_crit_edge:   ; preds = %apds9960_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %apds9960_regfield_init.exit.if.end32_crit_edge, %if.end46.i.if.end32_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i.i109 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 129, i32 noundef 246) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %tobool.not.i.i110 = icmp eq i32 %call.i.i109, 0
  br i1 %tobool.not.i.i110, label %if.end.i112, label %apds9960_set_it_time.exit.i

apds9960_set_it_time.exit.i:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %error_power_down

if.end.i112:                                      ; preds = %if.end32
  %als_adc_int_us.i.i = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 15
  %37 = ptrtoint ptr %als_adc_int_us.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 28000, ptr %als_adc_int_us.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %reg_int_ges.i111 = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 5
  %38 = ptrtoint ptr %reg_int_ges.i111 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_int_ges.i111, align 4
  %call.i77.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %39, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool2.not.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i112.error_power_down_crit_edge

if.end.i112.error_power_down_crit_edge:           ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end4.i:                                        ; preds = %if.end.i112
  %reg_enable_ges.i113 = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 8
  %40 = ptrtoint ptr %reg_enable_ges.i113 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_enable_ges.i113, align 4
  %call.i78.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %41, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %tobool6.not.i = icmp eq i32 %call.i78.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.error_power_down_crit_edge

if.end4.i.error_power_down_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end8.i:                                        ; preds = %if.end4.i
  %reg_int_pxs.i114 = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 6
  %42 = ptrtoint ptr %reg_int_pxs.i114 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_int_pxs.i114, align 4
  %call.i79.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %43, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %tobool10.not.i = icmp eq i32 %call.i79.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.error_power_down_crit_edge

if.end8.i.error_power_down_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end12.i:                                       ; preds = %if.end8.i
  %reg_enable_pxs.i115 = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 9
  %44 = ptrtoint ptr %reg_enable_pxs.i115 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_enable_pxs.i115, align 4
  %call.i80.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %45, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %tobool14.not.i = icmp eq i32 %call.i80.i, 0
  br i1 %tobool14.not.i, label %if.end16.i117, label %if.end12.i.error_power_down_crit_edge

if.end12.i.error_power_down_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end16.i117:                                    ; preds = %if.end12.i
  %46 = ptrtoint ptr %reg_int_als.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_int_als.i, align 4
  %call.i81.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %47, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %tobool18.not.i = icmp eq i32 %call.i81.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i117.error_power_down_crit_edge

if.end16.i117.error_power_down_crit_edge:         ; preds = %if.end16.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end20.i:                                       ; preds = %if.end16.i117
  %reg_enable_als.i118 = getelementptr inbounds %struct.apds9960_data, ptr %7, i32 0, i32 7
  %48 = ptrtoint ptr %reg_enable_als.i118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_enable_als.i118, align 4
  %call.i82.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %49, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool22.not.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.error_power_down_crit_edge

if.end20.i.error_power_down_crit_edge:            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end24.i:                                       ; preds = %if.end20.i
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call25.i = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 140, i32 noundef 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.error_power_down_crit_edge

if.end24.i.error_power_down_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end28.i:                                       ; preds = %if.end24.i
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call.i83.i = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 162, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool31.not.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end28.i.error_power_down_crit_edge

if.end28.i.error_power_down_crit_edge:            ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end33.i:                                       ; preds = %if.end28.i
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call35.i = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 160, i32 noundef 80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end33.i.error_power_down_crit_edge

if.end33.i.error_power_down_crit_edge:            ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end38.i:                                       ; preds = %if.end33.i
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call40.i = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 161, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %apds9960_chip_init.exit, label %if.end38.i.error_power_down_crit_edge

if.end38.i.error_power_down_crit_edge:            ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

apds9960_chip_init.exit:                          ; preds = %if.end38.i
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 128, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool34.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool34.not, label %if.end36, label %apds9960_chip_init.exit.error_power_down_crit_edge

apds9960_chip_init.exit.error_power_down_crit_edge: ; preds = %apds9960_chip_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end36:                                         ; preds = %apds9960_chip_init.exit
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp = icmp slt i32 %61, 1
  br i1 %cmp, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %error_power_down

if.end42:                                         ; preds = %if.end36
  %call45 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %61, ptr noundef null, ptr noundef nonnull @apds9960_interrupt_handler, i32 noundef 8194, ptr noundef nonnull @.str.11, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end53, label %do.end50

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %63) #10
  br label %error_power_down

if.end53:                                         ; preds = %if.end42
  %call54 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.error_power_down_crit_edge

if.end53.error_power_down_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_down

if.end57:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @apds9960_set_power_state(ptr noundef %7, i1 noundef zeroext false)
  br label %cleanup

error_power_down:                                 ; preds = %if.end53.error_power_down_crit_edge, %do.end50, %do.end40, %apds9960_chip_init.exit.error_power_down_crit_edge, %if.end38.i.error_power_down_crit_edge, %if.end33.i.error_power_down_crit_edge, %if.end28.i.error_power_down_crit_edge, %if.end24.i.error_power_down_crit_edge, %if.end20.i.error_power_down_crit_edge, %if.end16.i117.error_power_down_crit_edge, %if.end12.i.error_power_down_crit_edge, %if.end8.i.error_power_down_crit_edge, %if.end4.i.error_power_down_crit_edge, %if.end.i112.error_power_down_crit_edge, %apds9960_set_it_time.exit.i, %apds9960_regfield_init.exit.error_power_down_crit_edge, %if.end14.error_power_down_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end14.error_power_down_crit_edge ], [ %34, %apds9960_regfield_init.exit.error_power_down_crit_edge ], [ %call.i.i.i, %apds9960_chip_init.exit.error_power_down_crit_edge ], [ -22, %do.end40 ], [ %call45, %do.end50 ], [ %call54, %if.end53.error_power_down_crit_edge ], [ %call40.i, %if.end38.i.error_power_down_crit_edge ], [ %call35.i, %if.end33.i.error_power_down_crit_edge ], [ %call.i83.i, %if.end28.i.error_power_down_crit_edge ], [ %call25.i, %if.end24.i.error_power_down_crit_edge ], [ %call.i82.i, %if.end20.i.error_power_down_crit_edge ], [ %call.i81.i, %if.end16.i117.error_power_down_crit_edge ], [ %call.i80.i, %if.end12.i.error_power_down_crit_edge ], [ %call.i79.i, %if.end8.i.error_power_down_crit_edge ], [ %call.i78.i, %if.end4.i.error_power_down_crit_edge ], [ %call.i77.i, %if.end.i112.error_power_down_crit_edge ], [ %call.i.i109, %apds9960_set_it_time.exit.i ]
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %7, align 4
  %dev1.i120 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call.i1.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4, i32 12, i32 22
  %66 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store volatile i64 %call.i1.i, ptr %last_busy.i.i, align 8
  %call.i2.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1.i120, i32 noundef 13) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %error_power_down, %if.end57, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %do.end ], [ %ret.0, %error_power_down ], [ 0, %if.end57 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %regmap.i = getelementptr inbounds %struct.apds9960_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 128, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apds9960_set_power_state(ptr noundef %data, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %lock = getelementptr inbounds %struct.apds9960_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %pm_runtime_suspended.exit.thread

pm_runtime_suspended.exit.thread:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i3 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  br label %if.end6

pm_runtime_suspended.exit:                        ; preds = %if.then
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  br i1 %tobool.not.i, label %if.then4, label %pm_runtime_suspended.exit.if.end6_crit_edge

pm_runtime_suspended.exit.if.end6_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  %als_adc_int_us = getelementptr inbounds %struct.apds9960_data, ptr %data, i32 0, i32 15
  %5 = ptrtoint ptr %als_adc_int_us to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %als_adc_int_us, align 4
  tail call void @usleep_range_state(i32 noundef %6, i32 noundef 1000000, i32 noundef 2) #7
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i1, ptr %last_busy.i, align 8
  %call.i2 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #7
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4, %pm_runtime_suspended.exit.if.end6_crit_edge, %pm_runtime_suspended.exit.thread
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_interrupt_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %cnt.i.i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !153
  %regmap = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 147, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %als_int = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %als_int to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %als_int, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end8_crit_edge, label %if.then3

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i64 @iio_get_time_ns(ptr noundef %private) #7
  %call5 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 30064771072, i64 noundef %call4) #7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_write(ptr noundef %12, i32 noundef 230, i32 noundef 1) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and9 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end18_crit_edge, label %land.lhs.true11

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true11:                                  ; preds = %if.end8
  %pxs_int = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %pxs_int to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pxs_int, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %land.lhs.true11.if.end18_crit_edge, label %if.then13

land.lhs.true11.if.end18_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i64 @iio_get_time_ns(ptr noundef %private) #7
  %call15 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 34359738368, i64 noundef %call14) #7
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call17 = call i32 @regmap_write(ptr noundef %18, i32 noundef 229, i32 noundef 1) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %land.lhs.true11.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %and19 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  %lock.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %gesture_mode_running.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %gesture_mode_running.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %gesture_mode_running.i, align 4
  %buffer.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 16
  %indio_dev.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 1
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.end.i, %if.then21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt.i.i) #7
  %22 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %cnt.i.i, align 4, !annotation !153
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 174, ptr noundef nonnull %cnt.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.rhs.i.apds9660_fifo_is_empty.exit.i_crit_edge

lor.rhs.i.apds9660_fifo_is_empty.exit.i_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9660_fifo_is_empty.exit.i

if.end.i.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cnt.i.i, align 4
  br label %apds9660_fifo_is_empty.exit.i

apds9660_fifo_is_empty.exit.i:                    ; preds = %if.end.i.i, %lor.rhs.i.apds9660_fifo_is_empty.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %26, %if.end.i.i ], [ %call.i.i, %lor.rhs.i.apds9660_fifo_is_empty.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp sgt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %while.body.i, label %apds9660_fifo_is_empty.exit.i.apds9960_read_gesture_fifo.exit_crit_edge

apds9660_fifo_is_empty.exit.i.apds9960_read_gesture_fifo.exit_crit_edge: ; preds = %apds9660_fifo_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_read_gesture_fifo.exit

while.body.i:                                     ; preds = %apds9660_fifo_is_empty.exit.i
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %28, i32 noundef 252, ptr noundef %buffer.i, i32 noundef 4) #7
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %while.body.i.apds9960_read_gesture_fifo.exit_crit_edge

while.body.i.apds9960_read_gesture_fifo.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_read_gesture_fifo.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %indio_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %indio_dev.i, align 4
  %call4.i = call i32 @iio_push_to_buffers(ptr noundef %30, ptr noundef %buffer.i) #7
  br label %lor.rhs.i

apds9960_read_gesture_fifo.exit:                  ; preds = %while.body.i.apds9960_read_gesture_fifo.exit_crit_edge, %apds9660_fifo_is_empty.exit.i.apds9960_read_gesture_fifo.exit_crit_edge
  %31 = ptrtoint ptr %gesture_mode_running.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %gesture_mode_running.i, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %apds9960_read_gesture_fifo.exit, %if.end18.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buf, align 2, !annotation !153
  %gesture_mode_running = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %gesture_mode_running to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gesture_mode_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 18, label %sw.bb15
    i32 2, label %sw.bb21
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %lock.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %runtime_status.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %pm_runtime_suspended.exit.thread.i

pm_runtime_suspended.exit.thread.i:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i3.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #7
  br label %apds9960_set_power_state.exit

pm_runtime_suspended.exit.i:                      ; preds = %sw.bb
  %disable_depth.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 12, i32 15
  %10 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #7
  br i1 %tobool.not.i.i, label %if.then4.i, label %pm_runtime_suspended.exit.i.apds9960_set_power_state.exit_crit_edge

pm_runtime_suspended.exit.i.apds9960_set_power_state.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apds9960_set_power_state.exit

if.then4.i:                                       ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %als_adc_int_us.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %als_adc_int_us.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %als_adc_int_us.i, align 4
  tail call void @usleep_range_state(i32 noundef %12, i32 noundef 1000000, i32 noundef 2) #7
  br label %apds9960_set_power_state.exit

apds9960_set_power_state.exit:                    ; preds = %if.then4.i, %pm_runtime_suspended.exit.i.apds9960_set_power_state.exit_crit_edge, %pm_runtime_suspended.exit.thread.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %14, label %apds9960_set_power_state.exit.sw.epilog_crit_edge [
    i32 8, label %sw.bb2
    i32 7, label %sw.bb7
  ]

apds9960_set_power_state.exit.sw.epilog_crit_edge: ; preds = %apds9960_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %apds9960_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %18 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %address, align 4
  %call3 = tail call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.store.select = select i1 %tobool4.not, i32 1, i32 %call3
  br label %sw.epilog

sw.bb7:                                           ; preds = %apds9960_set_power_state.exit
  %regmap8 = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap8, align 4
  %address9 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %22 = ptrtoint ptr %address9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %address9, align 4
  %call10 = call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %buf, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %buf, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv = zext i16 %26 to i32
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then12, %sw.bb7.sw.epilog_crit_edge, %sw.bb2, %apds9960_set_power_state.exit.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call10, %sw.bb7.sw.epilog_crit_edge ], [ 1, %if.then12 ], [ %spec.store.select, %sw.bb2 ], [ -22, %apds9960_set_power_state.exit.sw.epilog_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev1.i54 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %call.i1.i = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i1.i, ptr %last_busy.i.i, align 8
  %call.i2.i = call i32 @__pm_runtime_suspend(ptr noundef %dev1.i54, i32 noundef 13) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %31 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %32)
  %cond = icmp eq i32 %32, 7
  br i1 %cond, label %sw.bb17, label %sw.bb15.sw.epilog19_crit_edge

sw.bb15.sw.epilog19_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.bb17:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %val, align 4
  %als_adc_int_us = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %als_adc_int_us to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %als_adc_int_us, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val2, align 4
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb17, %sw.bb15.sw.epilog19_crit_edge
  %ret.1 = phi i32 [ 2, %sw.bb17 ], [ -22, %sw.bb15.sw.epilog19_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  %lock22 = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock22, i32 noundef 0) #7
  %37 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chan, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %38, label %sw.bb21.sw.epilog28_crit_edge [
    i32 8, label %sw.bb24
    i32 7, label %sw.bb25
  ]

sw.bb21.sw.epilog28_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog28

sw.bb24:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %pxs_gain = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 14
  br label %sw.epilog28.sink.split

sw.bb25:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %als_gain = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 13
  br label %sw.epilog28.sink.split

sw.epilog28.sink.split:                           ; preds = %sw.bb25, %sw.bb24
  %als_gain.sink = phi ptr [ %als_gain, %sw.bb25 ], [ %pxs_gain, %sw.bb24 ]
  %apds9960_als_gain_map.sink = phi ptr [ @apds9960_als_gain_map, %sw.bb25 ], [ @apds9960_pxs_gain_map, %sw.bb24 ]
  %40 = ptrtoint ptr %als_gain.sink to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %als_gain.sink, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr %apds9960_als_gain_map.sink, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx26, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %sw.epilog28.sink.split, %sw.bb21.sw.epilog28_crit_edge
  %ret.2 = phi i32 [ -22, %sw.bb21.sw.epilog28_crit_edge ], [ 1, %sw.epilog28.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock22) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog28, %sw.epilog19, %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.2, %sw.epilog28 ], [ %ret.1, %sw.epilog19 ], [ %ret.0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 18, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cond = icmp eq i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  %or.cond = and i1 %cmp.not, %cond
  br i1 %or.cond, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %5 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %val2, label %if.end.cleanup_crit_edge [
    i32 28000, label %if.end.if.then.i_crit_edge
    i32 100000, label %if.then.fold.split.i
    i32 200000, label %if.then.fold.split19.i
    i32 700000, label %if.then.fold.split20.i
  ]

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split19.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split20.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split20.i, %if.then.fold.split19.i, %if.then.fold.split.i, %if.end.if.then.i_crit_edge
  %idx.017.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split19.i ], [ 3, %if.then.fold.split20.i ]
  %lock.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %regmap.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %arrayidx4.i = getelementptr [4 x [2 x i32]], ptr @apds9960_int_time, i32 0, i32 %idx.017.lcssa.i, i32 1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 129, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.then.i.cleanup.sink.split_crit_edge

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %als_adc_int_us.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %als_adc_int_us.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %val2, ptr %als_adc_int_us.i, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp4.not = icmp eq i32 %val2, 0
  br i1 %cmp4.not, label %if.end6, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %sw.bb3
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %12, label %if.end6.cleanup_crit_edge [
    i32 8, label %sw.bb8
    i32 7, label %sw.bb10
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end6
  %switch.tableidx = add i32 %val, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 8
  br i1 %14, label %switch.hole_check, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb8
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.apds9960_write_raw, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %lock.i21 = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i21, i32 noundef 0) #7
  %regmap.i22 = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i22, align 4
  %shl.i = shl nuw nsw i32 %switch.load, 2
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 143, i32 noundef 12, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i23 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i23, label %if.end.i25, label %switch.lookup.cleanup.sink.split_crit_edge

switch.lookup.cleanup.sink.split_crit_edge:       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i25:                                       ; preds = %switch.lookup
  %19 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i22, align 4
  %shl5.i = shl nuw nsw i32 %switch.load, 5
  %call.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 144, i32 noundef 96, i32 noundef %shl5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool7.not.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end.i25.cleanup.sink.split_crit_edge

if.end.i25.cleanup.sink.split_crit_edge:          ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then8.i:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  %pxs_gain.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %pxs_gain.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %switch.load, ptr %pxs_gain.i, align 4
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %if.end6
  %22 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %val, label %sw.bb10.cleanup_crit_edge [
    i32 1, label %sw.bb10.if.then.i32_crit_edge
    i32 4, label %if.then.fold.split.i27
    i32 16, label %if.then.fold.split16.i
    i32 64, label %if.then.fold.split17.i
  ]

sw.bb10.if.then.i32_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i32

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.fold.split.i27:                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i32

if.then.fold.split16.i:                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i32

if.then.fold.split17.i:                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i32

if.then.i32:                                      ; preds = %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split.i27, %sw.bb10.if.then.i32_crit_edge
  %idx.014.lcssa.i = phi i32 [ 0, %sw.bb10.if.then.i32_crit_edge ], [ 1, %if.then.fold.split.i27 ], [ 2, %if.then.fold.split16.i ], [ 3, %if.then.fold.split17.i ]
  %lock.i28 = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i28, i32 noundef 0) #7
  %regmap.i29 = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %regmap.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i29, align 4
  %call.i.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 143, i32 noundef 3, i32 noundef %idx.014.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool.not.i31 = icmp eq i32 %call.i.i30, 0
  br i1 %tobool.not.i31, label %if.then2.i, label %if.then.i32.cleanup.sink.split_crit_edge

if.then.i32.cleanup.sink.split_crit_edge:         ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then2.i:                                       ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #9
  %als_gain.i = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %als_gain.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %idx.014.lcssa.i, ptr %als_gain.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2.i, %if.then.i32.cleanup.sink.split_crit_edge, %if.then8.i, %if.end.i25.cleanup.sink.split_crit_edge, %switch.lookup.cleanup.sink.split_crit_edge, %if.then5.i, %if.then.i.cleanup.sink.split_crit_edge
  %lock.i28.sink = phi ptr [ %lock.i, %if.then5.i ], [ %lock.i, %if.then.i.cleanup.sink.split_crit_edge ], [ %lock.i21, %if.then8.i ], [ %lock.i21, %if.end.i25.cleanup.sink.split_crit_edge ], [ %lock.i21, %switch.lookup.cleanup.sink.split_crit_edge ], [ %lock.i28, %if.then2.i ], [ %lock.i28, %if.then.i32.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.then5.i ], [ %call.i, %if.then.i.cleanup.sink.split_crit_edge ], [ 0, %if.then8.i ], [ %call.i24.i, %if.end.i25.cleanup.sink.split_crit_edge ], [ %call.i.i, %switch.lookup.cleanup.sink.split_crit_edge ], [ %call.i.i30, %if.then2.i ], [ %call.i.i30, %if.then.i32.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i28.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb10.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apds9960_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 7, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pxs_int = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 11
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %als_int = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %sw.bb
  %als_int.sink = phi ptr [ %als_int, %sw.bb2 ], [ %pxs_int, %sw.bb ]
  %5 = ptrtoint ptr %als_int.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %als_int.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %6, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  %lnot.ext = zext i1 %tobool to i32
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 7, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %pxs_int = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %pxs_int to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pxs_int, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %lnot.ext)
  %cmp = icmp eq i32 %6, %lnot.ext
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %reg_int_pxs = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %reg_int_pxs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_int_pxs, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %8, i32 noundef -1, i32 noundef %lnot.ext, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %entry
  %als_int = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %als_int to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %als_int, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %lnot.ext)
  %cmp11 = icmp eq i32 %10, %lnot.ext
  br i1 %cmp11, label %sw.bb10.cleanup_crit_edge, label %if.end13

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %sw.bb10
  %reg_int_als = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %reg_int_als to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_int_als, align 4
  %call.i40 = tail call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef %lnot.ext, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool15.not = icmp eq i32 %call.i40, 0
  br i1 %tobool15.not, label %if.end13.cleanup.sink.split_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %pxs_int.sink = phi ptr [ %pxs_int, %if.end.cleanup.sink.split_crit_edge ], [ %als_int, %if.end13.cleanup.sink.split_crit_edge ]
  %13 = ptrtoint ptr %pxs_int.sink to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext, ptr %pxs_int.sink, align 4
  tail call fastcc void @apds9960_set_power_state(ptr noundef %1, i1 noundef zeroext %tobool)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ %call.i40, %if.end13.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr noundef %val, ptr nocapture noundef writeonly %val2) #2 align 64 {
entry:
  %buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %buf, align 2, !annotation !153
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cmp.not = icmp eq i32 %info, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %dir, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %5, label %sw.bb.i.cleanup_crit_edge [
    i32 8, label %sw.bb.i.if.then7_crit_edge
    i32 7, label %sw.bb.i.if.then16_crit_edge
  ]

sw.bb.i.if.then16_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

sw.bb.i.if.then7_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %8, label %sw.bb3.i.cleanup_crit_edge [
    i32 8, label %sw.bb3.i.if.then7_crit_edge
    i32 7, label %sw.bb3.i.if.then16_crit_edge
  ]

sw.bb3.i.if.then16_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

sw.bb3.i.if.then7_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %sw.bb3.i.if.then7_crit_edge, %sw.bb.i.if.then7_crit_edge
  %.sink.i.ph = phi i32 [ 137, %sw.bb3.i.if.then7_crit_edge ], [ 139, %sw.bb.i.if.then7_crit_edge ]
  %regmap = getelementptr inbounds %struct.apds9960_data, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef %.sink.i.ph, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then7.cleanup_crit_edge, label %if.then7.if.end27_crit_edge

if.then7.if.end27_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %sw.bb3.i.if.then16_crit_edge, %sw.bb.i.if.then16_crit_edge
  %.sink.i = phi i32 [ 134, %sw.bb.i.if.then16_crit_edge ], [ 132, %sw.bb3.i.if.then16_crit_edge ]
  %regmap17 = getelementptr inbounds %struct.apds9960_data, ptr %2, i32 0, i32 3
  %12 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap17, align 4
  %call19 = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef %.sink.i, ptr noundef nonnull %buf, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then16.cleanup_crit_edge, label %if.end23

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %buf, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv24 = zext i16 %16 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv24, ptr %val, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.then7.if.end27_crit_edge
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then16.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call19, %if.then16.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb3.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  %buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cmp.not = icmp eq i32 %info, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %dir, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %4, label %sw.bb.i.cleanup_crit_edge [
    i32 8, label %sw.bb.i.if.then7_crit_edge
    i32 7, label %sw.bb.i.if.then20_crit_edge
  ]

sw.bb.i.if.then20_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

sw.bb.i.if.then7_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %7, label %sw.bb3.i.cleanup_crit_edge [
    i32 8, label %sw.bb3.i.if.then7_crit_edge
    i32 7, label %sw.bb3.i.if.then20_crit_edge
  ]

sw.bb3.i.if.then20_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

sw.bb3.i.if.then7_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %sw.bb3.i.if.then7_crit_edge, %sw.bb.i.if.then7_crit_edge
  %.sink.i.ph = phi i32 [ 137, %sw.bb3.i.if.then7_crit_edge ], [ 139, %sw.bb.i.if.then7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %9 = icmp ugt i32 %val, 255
  br i1 %9, label %if.then7.cleanup_crit_edge, label %if.end11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %regmap = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %.sink.i.ph, i32 noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end11.if.end38_crit_edge

if.end11.if.end38_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %sw.bb3.i.if.then20_crit_edge, %sw.bb.i.if.then20_crit_edge
  %.sink.i = phi i32 [ 134, %sw.bb.i.if.then20_crit_edge ], [ 132, %sw.bb3.i.if.then20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %12 = icmp ugt i32 %val, 65535
  br i1 %12, label %if.then20.cleanup_crit_edge, label %if.end27

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.then20
  %conv28 = trunc i32 %val to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv28)
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %buf, align 2
  %regmap29 = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap29, align 4
  %call31 = call i32 @regmap_bulk_write(ptr noundef %16, i32 noundef %.sink.i, ptr noundef nonnull %buf, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end27.cleanup_crit_edge, label %if.end27.if.end38_crit_edge

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end27.if.end38_crit_edge, %if.end11.if.end38_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end27.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -22, %if.then20.cleanup_crit_edge ], [ %call31, %if.end27.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb3.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %reg_int_ges = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reg_int_ges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_int_ges, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_enable_ges = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %reg_enable_ges to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_enable_ges, align 4
  %call.i13 = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool3.not = icmp eq i32 %call.i13, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %call.i14 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i13, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %reg_enable_ges = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reg_enable_ges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_enable_ges, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_int_ges = getelementptr inbounds %struct.apds9960_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %reg_int_ges to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_int_ges, align 4
  %call.i13 = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool3.not = icmp eq i32 %call.i13, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %call.i14 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i13, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.apds9960_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 128, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9960_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.apds9960_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 128, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !138, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_apds9960__289_1138_apds9960_driver_init6, !1, !"__initcall__kmod_apds9960__289_1138_apds9960_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/apds9960.c", i32 1138, i32 1}
!2 = !{ptr @__exitcall_apds9960_driver_exit, !1, !"__exitcall_apds9960_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/apds9960.c", i32 1140, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/apds9960.c", i32 1141, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/apds9960.c", i32 1142, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/apds9960.c", i32 1129, i32 11}
!12 = !{ptr @apds9960_driver, !13, !"apds9960_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/apds9960.c", i32 1127, i32 26}
!14 = !{ptr @apds9960_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/apds9960.c", i32 1014, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/apds9960.c", i32 1016, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @apds9960_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @apds9960_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @apds9960_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/apds9960.c", i32 1022, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/apds9960.c", i32 1043, i32 3}
!30 = !{ptr @apds9960_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @apds9960_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/apds9960.c", i32 1050, i32 6}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/apds9960.c", i32 1053, i32 3}
!36 = !{ptr @apds9960_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @apds9960_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @apds9960_info, !39, !"apds9960_info", i1 false, i1 false}
!39 = !{!"../drivers/iio/light/apds9960.c", i32 738, i32 30}
!40 = !{ptr @apds9960_attribute_group, !41, !"apds9960_attribute_group", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/apds9960.c", i32 338, i32 37}
!42 = !{ptr @apds9960_attributes, !43, !"apds9960_attributes", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/apds9960.c", i32 331, i32 26}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/apds9960.c", i32 327, i32 8}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @iio_const_attr_proximity_scale_available, !45, !"iio_const_attr_proximity_scale_available", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/apds9960.c", i32 328, i32 8}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @iio_const_attr_intensity_scale_available, !49, !"iio_const_attr_intensity_scale_available", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/apds9960.c", i32 329, i32 8}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @iio_const_attr_integration_time_available, !53, !"iio_const_attr_integration_time_available", i1 false, i1 false}
!56 = !{ptr @apds9960_pxs_gain_map, !57, !"apds9960_pxs_gain_map", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/apds9960.c", i32 324, i32 18}
!58 = !{ptr @apds9960_als_gain_map, !59, !"apds9960_als_gain_map", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/apds9960.c", i32 325, i32 18}
!60 = !{ptr @apds9960_int_time, !61, !"apds9960_int_time", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/apds9960.c", i32 316, i32 18}
!62 = !{ptr @apds9960_channels, !63, !"apds9960_channels", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/apds9960.c", i32 277, i32 35}
!64 = !{ptr @apds9960_pxs_event_spec, !65, !"apds9960_pxs_event_spec", i1 false, i1 false}
!65 = !{!"../drivers/iio/light/apds9960.c", i32 222, i32 36}
!66 = !{ptr @apds9960_als_event_spec, !67, !"apds9960_als_event_spec", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/apds9960.c", i32 237, i32 36}
!68 = !{ptr @apds9960_scan_masks, !69, !"apds9960_scan_masks", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/apds9960.c", i32 275, i32 28}
!70 = !{ptr @apds9960_buffer_setup_ops, !71, !"apds9960_buffer_setup_ops", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/apds9960.c", i32 861, i32 42}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/light/apds9960.c", i32 205, i32 10}
!74 = !{ptr @apds9960_regmap_config, !75, !"apds9960_regmap_config", i1 false, i1 false}
!75 = !{!"../drivers/iio/light/apds9960.c", i32 204, i32 35}
!76 = !{ptr @apds9960_writeable_table, !77, !"apds9960_writeable_table", i1 false, i1 false}
!77 = !{!"../drivers/iio/light/apds9960.c", i32 199, i32 41}
!78 = !{ptr @apds9960_writeable_ranges, !79, !"apds9960_writeable_ranges", i1 false, i1 false}
!79 = !{!"../drivers/iio/light/apds9960.c", i32 193, i32 34}
!80 = !{ptr @apds9960_readable_table, !81, !"apds9960_readable_table", i1 false, i1 false}
!81 = !{!"../drivers/iio/light/apds9960.c", i32 188, i32 41}
!82 = !{ptr @apds9960_readable_ranges, !83, !"apds9960_readable_ranges", i1 false, i1 false}
!83 = !{!"../drivers/iio/light/apds9960.c", i32 181, i32 34}
!84 = !{ptr @apds9960_volatile_table, !85, !"apds9960_volatile_table", i1 false, i1 false}
!85 = !{!"../drivers/iio/light/apds9960.c", i32 167, i32 41}
!86 = !{ptr @apds9960_volatile_ranges, !87, !"apds9960_volatile_ranges", i1 false, i1 false}
!87 = !{!"../drivers/iio/light/apds9960.c", i32 156, i32 34}
!88 = !{ptr @apds9960_precious_table, !89, !"apds9960_precious_table", i1 false, i1 false}
!89 = !{!"../drivers/iio/light/apds9960.c", i32 176, i32 41}
!90 = !{ptr @apds9960_precious_ranges, !91, !"apds9960_precious_ranges", i1 false, i1 false}
!91 = !{!"../drivers/iio/light/apds9960.c", i32 172, i32 34}
!92 = !{ptr @apds9960_reg_defaults, !93, !"apds9960_reg_defaults", i1 false, i1 false}
!93 = !{!"../drivers/iio/light/apds9960.c", i32 151, i32 33}
!94 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/light/apds9960.c", i32 874, i32 3}
!96 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @apds9960_regfield_init._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @apds9960_regfield_init._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/light/apds9960.c", i32 881, i32 3}
!101 = !{ptr @apds9960_regfield_init._entry.24, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @apds9960_regfield_init._entry_ptr.26, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/light/apds9960.c", i32 888, i32 3}
!105 = !{ptr @apds9960_regfield_init._entry.27, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @apds9960_regfield_init._entry_ptr.29, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/light/apds9960.c", i32 895, i32 3}
!109 = !{ptr @apds9960_regfield_init._entry.30, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @apds9960_regfield_init._entry_ptr.32, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/light/apds9960.c", i32 902, i32 3}
!113 = !{ptr @apds9960_regfield_init._entry.33, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @apds9960_regfield_init._entry_ptr.35, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/light/apds9960.c", i32 909, i32 3}
!117 = !{ptr @apds9960_regfield_init._entry.36, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @apds9960_regfield_init._entry_ptr.38, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"apds9960_reg_field_int_als", i1 false, i1 false}
!120 = !{!"../drivers/iio/light/apds9960.c", i32 342, i32 31}
!121 = distinct !{null, !122, !"apds9960_reg_field_int_ges", i1 false, i1 false}
!122 = !{!"../drivers/iio/light/apds9960.c", i32 345, i32 31}
!123 = distinct !{null, !124, !"apds9960_reg_field_int_pxs", i1 false, i1 false}
!124 = !{!"../drivers/iio/light/apds9960.c", i32 348, i32 31}
!125 = distinct !{null, !126, !"apds9960_reg_field_enable_als", i1 false, i1 false}
!126 = !{!"../drivers/iio/light/apds9960.c", i32 351, i32 31}
!127 = distinct !{null, !128, !"apds9960_reg_field_enable_ges", i1 false, i1 false}
!128 = !{!"../drivers/iio/light/apds9960.c", i32 354, i32 31}
!129 = distinct !{null, !130, !"apds9960_reg_field_enable_pxs", i1 false, i1 false}
!130 = !{!"../drivers/iio/light/apds9960.c", i32 357, i32 31}
!131 = !{ptr @.str.39, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/light/apds9960.c", i32 792, i32 3}
!133 = !{ptr @.str.40, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @apds9960_interrupt_handler._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @apds9960_interrupt_handler._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @apds9960_of_match, !137, !"apds9960_of_match", i1 false, i1 false}
!137 = !{!"../drivers/iio/light/apds9960.c", i32 1121, i32 34}
!138 = !{ptr @apds9960_acpi_match, !139, !"apds9960_acpi_match", i1 false, i1 false}
!139 = !{!"../drivers/iio/light/apds9960.c", i32 1115, i32 36}
!140 = !{ptr @apds9960_pm_ops, !141, !"apds9960_pm_ops", i1 false, i1 false}
!141 = !{!"../drivers/iio/light/apds9960.c", i32 1102, i32 32}
!142 = !{ptr @apds9960_id, !143, !"apds9960_id", i1 false, i1 false}
!143 = !{!"../drivers/iio/light/apds9960.c", i32 1109, i32 35}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"auto-init"}
