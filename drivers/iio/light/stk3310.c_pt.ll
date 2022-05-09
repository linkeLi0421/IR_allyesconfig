; ModuleID = '/llk/IR_all_yes/drivers/iio/light/stk3310.c_pt.bc'
source_filename = "../drivers/iio/light/stk3310.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.stk3310_data = type { ptr, %struct.mutex, i8, i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_stk3310__288_703_stk3310_driver_init6 = internal global ptr @stk3310_driver_init, section ".initcall6.init", align 4
@stk3310_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @stk3310_probe, ptr @stk3310_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stk3310_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk3310_pm_ops, ptr null, ptr null }, ptr @stk3310_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stk3310_driver_exit = internal global ptr @stk3310_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"stk3310.author=Tiberiu Breana <tiberiu.a.breana@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [70 x i8] c"stk3310.description=STK3310 Ambient Light and Proximity Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"stk3310.file=drivers/iio/light/stk3310\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"stk3310.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stk3310\00", [24 x i8] zeroinitializer }, align 32
@stk3310_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensortek,stk3310\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensortek,stk3311\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensortek,stk3335\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@stk3310_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stk3310_suspend, ptr @stk3310_resume, ptr @stk3310_suspend, ptr @stk3310_resume, ptr @stk3310_suspend, ptr @stk3310_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stk3310_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"STK3310\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"STK3311\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"STK3335\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@stk3310_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iio allocation failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stk3310_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/stk3310.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stk3310_probe._entry_ptr = internal global ptr @stk3310_probe._entry, section ".printk_index", align 4
@stk3310_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@stk3310_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @stk3310_attribute_group, ptr @stk3310_read_raw, ptr null, ptr null, ptr @stk3310_write_raw, ptr null, ptr null, ptr @stk3310_read_event_config, ptr @stk3310_write_event_config, ptr @stk3310_read_event, ptr @stk3310_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@stk3310_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262149, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262149, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @stk3310_events, i32 2, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stk3310_event\00", [18 x i8] zeroinitializer }, align 32
@stk3310_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request irq %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@stk3310_probe._entry_ptr.10 = internal global ptr @stk3310_probe._entry.8, section ".printk_index", align 4
@stk3310_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device_register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@stk3310_probe._entry_ptr.13 = internal global ptr @stk3310_probe._entry.11, section ".printk_index", align 4
@stk3310_regmap_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@stk3310_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.34, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @stk3310_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 128, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"stk3310:507:(&stk3310_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"regmap initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stk3310_regmap_init\00", [44 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry_ptr = internal global ptr @stk3310_regmap_init._entry, section ".printk_index", align 4
@stk3310_regmap_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg field alloc failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry_ptr.19 = internal global ptr @stk3310_regmap_init._entry.17, section ".printk_index", align 4
@stk3310_regmap_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry_ptr.21 = internal global ptr @stk3310_regmap_init._entry.20, section ".printk_index", align 4
@stk3310_regmap_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry_ptr.23 = internal global ptr @stk3310_regmap_init._entry.22, section ".printk_index", align 4
@stk3310_regmap_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 517, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry_ptr.25 = internal global ptr @stk3310_regmap_init._entry.24, section ".printk_index", align 4
@stk3310_regmap_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry_ptr.27 = internal global ptr @stk3310_regmap_init._entry.26, section ".printk_index", align 4
@stk3310_regmap_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry_ptr.29 = internal global ptr @stk3310_regmap_init._entry.28, section ".printk_index", align 4
@stk3310_regmap_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry_ptr.31 = internal global ptr @stk3310_regmap_init._entry.30, section ".printk_index", align 4
@stk3310_regmap_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stk3310_regmap_init._entry_ptr.33 = internal global ptr @stk3310_regmap_init._entry.32, section ".printk_index", align 4
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stk3310_regmap\00", [17 x i8] zeroinitializer }, align 32
@stk3310_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @stk3310_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@stk3310_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_proximity_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_integration_time_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_proximity_integration_time_available, i64 4), ptr null], [44 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.35, %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_proximity_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.35, %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.38, %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_proximity_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.38, %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"6.4 1.6 0.4 0.1\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"in_illuminance_scale_available\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_proximity_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"0.000185 0.000370 0.000741 0.001480 0.002960 0.005920 0.011840 0.023680 0.047360 0.094720 0.189440 0.378880 0.757760 1.515520 3.031040 6.062080\00", [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"in_illuminance_integration_time_available\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"in_proximity_integration_time_available\00", [56 x i8] zeroinitializer }, align 32
@stk3310_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register read failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk3310_read_raw\00", [47 x i8] zeroinitializer }, align 32
@stk3310_read_raw._entry_ptr = internal global ptr @stk3310_read_raw._entry, section ".printk_index", align 4
@stk3310_it_table = internal constant { [16 x [2 x i32]], [32 x i8] } { [16 x [2 x i32]] [[2 x i32] [i32 0, i32 185], [2 x i32] [i32 0, i32 370], [2 x i32] [i32 0, i32 741], [2 x i32] [i32 0, i32 1480], [2 x i32] [i32 0, i32 2960], [2 x i32] [i32 0, i32 5920], [2 x i32] [i32 0, i32 11840], [2 x i32] [i32 0, i32 23680], [2 x i32] [i32 0, i32 47360], [2 x i32] [i32 0, i32 94720], [2 x i32] [i32 0, i32 189440], [2 x i32] [i32 0, i32 378880], [2 x i32] [i32 0, i32 757760], [2 x i32] [i32 1, i32 515520], [2 x i32] [i32 3, i32 31040], [2 x i32] [i32 6, i32 62080]], [32 x i8] zeroinitializer }, align 32
@stk3310_scale_table = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 6, i32 400000], [2 x i32] [i32 1, i32 600000], [2 x i32] [i32 0, i32 400000], [2 x i32] [i32 0, i32 100000]], [32 x i8] zeroinitializer }, align 32
@stk3310_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sensor configuration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stk3310_write_raw\00", [46 x i8] zeroinitializer }, align 32
@stk3310_write_raw._entry_ptr = internal global ptr @stk3310_write_raw._entry, section ".printk_index", align 4
@stk3310_write_raw._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 402, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stk3310_write_raw._entry_ptr.46 = internal global ptr @stk3310_write_raw._entry.45, section ".printk_index", align 4
@stk3310_write_event_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set interrupt mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stk3310_write_event_config\00", [37 x i8] zeroinitializer }, align 32
@stk3310_write_event_config._entry_ptr = internal global ptr @stk3310_write_event_config._entry, section ".printk_index", align 4
@stk3310_read_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.49, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stk3310_read_event\00", [45 x i8] zeroinitializer }, align 32
@stk3310_read_event._entry_ptr = internal global ptr @stk3310_read_event._entry, section ".printk_index", align 4
@stk3310_ps_max = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 102, i32 409, i32 1638, i32 6553], [16 x i8] zeroinitializer }, align 32
@stk3310_write_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set PS threshold!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stk3310_write_event\00", [44 x i8] zeroinitializer }, align 32
@stk3310_write_event._entry_ptr = internal global ptr @stk3310_write_event._entry, section ".printk_index", align 4
@stk3310_events = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@stk3310_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 459, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid chip id: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stk3310_init\00", [19 x i8] zeroinitializer }, align 32
@stk3310_init._entry_ptr = internal global ptr @stk3310_init._entry, section ".printk_index", align 4
@stk3310_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 466, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable sensor\00", [40 x i8] zeroinitializer }, align 32
@stk3310_init._entry_ptr.56 = internal global ptr @stk3310_init._entry.54, section ".printk_index", align 4
@stk3310_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.3, i32 473, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable interrupts!\0A\00", [34 x i8] zeroinitializer }, align 32
@stk3310_init._entry_ptr.59 = internal global ptr @stk3310_init._entry.57, section ".printk_index", align 4
@stk3310_irq_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 549, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register read failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stk3310_irq_event_handler\00", [38 x i8] zeroinitializer }, align 32
@stk3310_irq_event_handler._entry_ptr = internal global ptr @stk3310_irq_event_handler._entry, section ".printk_index", align 4
@stk3310_irq_event_handler._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to reset interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@stk3310_irq_event_handler._entry_ptr.64 = internal global ptr @stk3310_irq_event_handler._entry.62, section ".printk_index", align 4
@stk3310_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to change sensor state\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stk3310_set_state\00", [46 x i8] zeroinitializer }, align 32
@stk3310_set_state._entry_ptr = internal global ptr @stk3310_set_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 18, i64 19, i64 29, i64 81]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 18]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 18]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 6]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 6]
@__sancov_gen_cov_switch_values.73 = internal global [15 x i64] [i64 13, i64 32, i64 185, i64 370, i64 741, i64 1480, i64 2960, i64 5920, i64 11840, i64 23680, i64 47360, i64 94720, i64 189440, i64 378880, i64 757760]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 100000, i64 400000]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"stk3310_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 691, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 693, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"stk3310_of_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 683, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"stk3310_pm_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 659, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"stk3310_i2c_id\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 666, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 577, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 584, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"stk3310_info\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 410, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"stk3310_channels\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 138, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 606, i32 7 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 608, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 616, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [22 x i8] c"stk3310_regmap_config\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 492, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 507, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 509, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 514, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 515, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 516, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 517, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 518, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 519, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 520, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 521, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 493, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant [24 x i8] c"stk3310_attribute_group\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 175, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant [19 x i8] c"stk3310_attributes\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 167, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant [46 x i8] c"iio_const_attr_in_illuminance_scale_available\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [44 x i8] c"iio_const_attr_in_proximity_scale_available\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [57 x i8] c"iio_const_attr_in_illuminance_integration_time_available\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [55 x i8] c"iio_const_attr_in_proximity_integration_time_available\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 157, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 159, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 161, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 164, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 326, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"stk3310_it_table\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 97, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"stk3310_scale_table\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 92, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 384, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 401, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 296, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 219, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [15 x i8] c"stk3310_ps_max\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 85, i32 18 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 258, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [15 x i8] c"stk3310_events\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 121, i32 36 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 459, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 466, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 473, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 549, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 561, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.321 = private constant [31 x i8] c"../drivers/iio/light/stk3310.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 432, i32 3 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_stk3310_driver_exit, ptr @__initcall__kmod_stk3310__288_703_stk3310_driver_init6, ptr @stk3310_driver_exit, ptr @stk3310_init._entry, ptr @stk3310_init._entry.54, ptr @stk3310_init._entry.57, ptr @stk3310_init._entry_ptr, ptr @stk3310_init._entry_ptr.56, ptr @stk3310_init._entry_ptr.59, ptr @stk3310_irq_event_handler._entry, ptr @stk3310_irq_event_handler._entry.62, ptr @stk3310_irq_event_handler._entry_ptr, ptr @stk3310_irq_event_handler._entry_ptr.64, ptr @stk3310_probe._entry, ptr @stk3310_probe._entry.11, ptr @stk3310_probe._entry.8, ptr @stk3310_probe._entry_ptr, ptr @stk3310_probe._entry_ptr.10, ptr @stk3310_probe._entry_ptr.13, ptr @stk3310_read_event._entry, ptr @stk3310_read_event._entry_ptr, ptr @stk3310_read_raw._entry, ptr @stk3310_read_raw._entry_ptr, ptr @stk3310_regmap_init._entry, ptr @stk3310_regmap_init._entry.17, ptr @stk3310_regmap_init._entry.20, ptr @stk3310_regmap_init._entry.22, ptr @stk3310_regmap_init._entry.24, ptr @stk3310_regmap_init._entry.26, ptr @stk3310_regmap_init._entry.28, ptr @stk3310_regmap_init._entry.30, ptr @stk3310_regmap_init._entry.32, ptr @stk3310_regmap_init._entry_ptr, ptr @stk3310_regmap_init._entry_ptr.19, ptr @stk3310_regmap_init._entry_ptr.21, ptr @stk3310_regmap_init._entry_ptr.23, ptr @stk3310_regmap_init._entry_ptr.25, ptr @stk3310_regmap_init._entry_ptr.27, ptr @stk3310_regmap_init._entry_ptr.29, ptr @stk3310_regmap_init._entry_ptr.31, ptr @stk3310_regmap_init._entry_ptr.33, ptr @stk3310_set_state._entry, ptr @stk3310_set_state._entry_ptr, ptr @stk3310_write_event._entry, ptr @stk3310_write_event._entry_ptr, ptr @stk3310_write_event_config._entry, ptr @stk3310_write_event_config._entry_ptr, ptr @stk3310_write_raw._entry, ptr @stk3310_write_raw._entry.45, ptr @stk3310_write_raw._entry_ptr, ptr @stk3310_write_raw._entry_ptr.46, ptr @stk3310_driver, ptr @.str, ptr @stk3310_of_match, ptr @stk3310_pm_ops, ptr @stk3310_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stk3310_probe.__key, ptr @.str.6, ptr @stk3310_info, ptr @stk3310_channels, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @stk3310_regmap_init._key, ptr @stk3310_regmap_config, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.34, ptr @stk3310_attribute_group, ptr @stk3310_attributes, ptr @iio_const_attr_in_illuminance_scale_available, ptr @iio_const_attr_in_proximity_scale_available, ptr @iio_const_attr_in_illuminance_integration_time_available, ptr @iio_const_attr_in_proximity_integration_time_available, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @stk3310_it_table, ptr @stk3310_scale_table, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @stk3310_ps_max, ptr @.str.50, ptr @.str.51, ptr @stk3310_events, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_regmap_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_proximity_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_proximity_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_it_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_scale_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_write_raw._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_write_event_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_read_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_ps_max to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_write_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_events to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_irq_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_irq_event_handler._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3310_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stk3310_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stk3310_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @stk3310_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %chipid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 152) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @stk3310_probe.__key) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @__devm_regmap_init_i2c(ptr noundef %5, ptr noundef nonnull @stk3310_regmap_config, ptr noundef nonnull @stk3310_regmap_init._key, ptr noundef nonnull @.str.14) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #9
  br label %stk3310_regmap_init.exit

if.end.i:                                         ; preds = %if.end
  %regmap4.i = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %regmap4.i, align 8
  %dev6.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call7.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev6.i, ptr noundef %call.i, [5 x i32] [i32 0, i32 0, i32 2, i32 0, i32 0]) #6
  %reg_state.i = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %reg_state.i, align 4
  %cmp.i210.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210.i, label %do.end13.i, label %do.body20.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.18) #9
  %8 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_state.i, align 4
  br label %stk3310_regmap_init.exit

do.body20.i:                                      ; preds = %if.end.i
  %call22.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev6.i, ptr noundef %call.i, [5 x i32] [i32 2, i32 4, i32 5, i32 0, i32 0]) #6
  %reg_als_gain.i = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %reg_als_gain.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22.i, ptr %reg_als_gain.i, align 8
  %cmp.i211.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211.i, label %do.end28.i, label %do.body35.i

do.end28.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.18) #9
  %11 = ptrtoint ptr %reg_als_gain.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_als_gain.i, align 8
  br label %stk3310_regmap_init.exit

do.body35.i:                                      ; preds = %do.body20.i
  %call37.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev6.i, ptr noundef %call.i, [5 x i32] [i32 1, i32 4, i32 5, i32 0, i32 0]) #6
  %reg_ps_gain.i = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %reg_ps_gain.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call37.i, ptr %reg_ps_gain.i, align 4
  %cmp.i212.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212.i, label %do.end43.i, label %do.body50.i

do.end43.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.18) #9
  %14 = ptrtoint ptr %reg_ps_gain.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_ps_gain.i, align 4
  br label %stk3310_regmap_init.exit

do.body50.i:                                      ; preds = %do.body35.i
  %call52.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev6.i, ptr noundef %call.i, [5 x i32] [i32 2, i32 0, i32 3, i32 0, i32 0]) #6
  %reg_als_it.i = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %reg_als_it.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call52.i, ptr %reg_als_it.i, align 8
  %cmp.i213.i = icmp ugt ptr %call52.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213.i, label %do.end58.i, label %do.body65.i

do.end58.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.18) #9
  %17 = ptrtoint ptr %reg_als_it.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_als_it.i, align 8
  br label %stk3310_regmap_init.exit

do.body65.i:                                      ; preds = %do.body50.i
  %call67.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev6.i, ptr noundef %call.i, [5 x i32] [i32 1, i32 0, i32 3, i32 0, i32 0]) #6
  %reg_ps_it.i = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %reg_ps_it.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call67.i, ptr %reg_ps_it.i, align 4
  %cmp.i214.i = icmp ugt ptr %call67.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214.i, label %do.end73.i, label %do.body80.i

do.end73.i:                                       ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.18) #9
  %20 = ptrtoint ptr %reg_ps_it.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_ps_it.i, align 4
  br label %stk3310_regmap_init.exit

do.body80.i:                                      ; preds = %do.body65.i
  %call82.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev6.i, ptr noundef %call.i, [5 x i32] [i32 4, i32 0, i32 2, i32 0, i32 0]) #6
  %reg_int_ps.i = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %reg_int_ps.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call82.i, ptr %reg_int_ps.i, align 8
  %cmp.i215.i = icmp ugt ptr %call82.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215.i, label %do.end88.i, label %do.body95.i

do.end88.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.18) #9
  %23 = ptrtoint ptr %reg_int_ps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_int_ps.i, align 8
  br label %stk3310_regmap_init.exit

do.body95.i:                                      ; preds = %do.body80.i
  %call97.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev6.i, ptr noundef %call.i, [5 x i32] [i32 16, i32 4, i32 4, i32 0, i32 0]) #6
  %reg_flag_psint.i = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %reg_flag_psint.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call97.i, ptr %reg_flag_psint.i, align 4
  %cmp.i216.i = icmp ugt ptr %call97.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216.i, label %do.end103.i, label %do.body110.i

do.end103.i:                                      ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.18) #9
  %26 = ptrtoint ptr %reg_flag_psint.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_flag_psint.i, align 4
  br label %stk3310_regmap_init.exit

do.body110.i:                                     ; preds = %do.body95.i
  %call112.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev6.i, ptr noundef %call.i, [5 x i32] [i32 16, i32 0, i32 0, i32 0, i32 0]) #6
  %reg_flag_nf.i = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %reg_flag_nf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call112.i, ptr %reg_flag_nf.i, align 8
  %cmp.i217.i = icmp ugt ptr %call112.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217.i, label %do.end118.i, label %do.body110.i.if.end9_crit_edge

do.body110.i.if.end9_crit_edge:                   ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end118.i:                                      ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.18) #9
  %29 = ptrtoint ptr %reg_flag_nf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_flag_nf.i, align 8
  br label %stk3310_regmap_init.exit

stk3310_regmap_init.exit:                         ; preds = %do.end118.i, %do.end103.i, %do.end88.i, %do.end73.i, %do.end58.i, %do.end43.i, %do.end28.i, %do.end13.i, %do.end.i
  %retval.0.i.in = phi ptr [ %call.i, %do.end.i ], [ %9, %do.end13.i ], [ %12, %do.end28.i ], [ %15, %do.end43.i ], [ %18, %do.end58.i ], [ %21, %do.end73.i ], [ %24, %do.end88.i ], [ %27, %do.end103.i ], [ %30, %do.end118.i ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %cmp = icmp slt ptr %retval.0.i.in, null
  br i1 %cmp, label %stk3310_regmap_init.exit.cleanup_crit_edge, label %stk3310_regmap_init.exit.if.end9_crit_edge

stk3310_regmap_init.exit.if.end9_crit_edge:       ; preds = %stk3310_regmap_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

stk3310_regmap_init.exit.cleanup_crit_edge:       ; preds = %stk3310_regmap_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %stk3310_regmap_init.exit.if.end9_crit_edge, %do.body110.i.if.end9_crit_edge
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %31 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @stk3310_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %32 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str, ptr %name, align 8
  %33 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %34 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @stk3310_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %35 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %num_channels, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid.i) #6
  %36 = ptrtoint ptr %chipid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %chipid.i, align 4, !annotation !187
  %37 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %regmap.i = getelementptr inbounds %struct.stk3310_data, ptr %38, i32 0, i32 5
  %41 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i, align 8
  %call2.i = call i32 @regmap_read(ptr noundef %42, i32 noundef 62, ptr noundef nonnull %chipid.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end9.stk3310_init.exit.thread_crit_edge, label %if.end.i67

if.end9.stk3310_init.exit.thread_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %stk3310_init.exit.thread

if.end.i67:                                       ; preds = %if.end9
  %43 = ptrtoint ptr %chipid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chipid.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %do.end.i69 [
    i32 19, label %if.end.i67.if.end10.i_crit_edge
    i32 29, label %if.end.i67.if.end10.i_crit_edge82
    i32 18, label %if.end.i67.if.end10.i_crit_edge83
    i32 81, label %if.end.i67.if.end10.i_crit_edge84
  ]

if.end.i67.if.end10.i_crit_edge84:                ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end.i67.if.end10.i_crit_edge83:                ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end.i67.if.end10.i_crit_edge82:                ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end.i67.if.end10.i_crit_edge:                  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

do.end.i69:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i68 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i68, ptr noundef nonnull @.str.52, i32 noundef %44) #9
  br label %stk3310_init.exit.thread

if.end10.i:                                       ; preds = %if.end.i67.if.end10.i_crit_edge, %if.end.i67.if.end10.i_crit_edge82, %if.end.i67.if.end10.i_crit_edge83, %if.end.i67.if.end10.i_crit_edge84
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %38, align 8
  %lock.i.i = getelementptr inbounds %struct.stk3310_data, ptr %38, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  %reg_state.i.i = getelementptr inbounds %struct.stk3310_data, ptr %38, i32 0, i32 6
  %48 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_state.i.i, align 4
  %call.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %49, i32 noundef -1, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp7.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp7.i.i, label %do.end16.i, label %if.end18.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.65) #9
  call void @mutex_unlock(ptr noundef %lock.i.i) #6
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.55) #9
  br label %stk3310_init.exit.thread

if.end18.i:                                       ; preds = %if.end10.i
  %ps_enabled.i.i = getelementptr inbounds %struct.stk3310_data, ptr %38, i32 0, i32 3
  %50 = ptrtoint ptr %ps_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %ps_enabled.i.i, align 1
  %als_enabled.i.i = getelementptr inbounds %struct.stk3310_data, ptr %38, i32 0, i32 2
  %51 = ptrtoint ptr %als_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %als_enabled.i.i, align 8
  call void @mutex_unlock(ptr noundef %lock.i.i) #6
  %reg_int_ps.i70 = getelementptr inbounds %struct.stk3310_data, ptr %38, i32 0, i32 11
  %52 = ptrtoint ptr %reg_int_ps.i70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_int_ps.i70, align 8
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %53, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp20.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp20.i, label %do.end24.i, label %if.end13

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.58) #9
  br label %stk3310_init.exit.thread

stk3310_init.exit.thread:                         ; preds = %do.end24.i, %do.end16.i, %do.end.i69, %if.end9.stk3310_init.exit.thread_crit_edge
  %retval.0.i71.ph = phi i32 [ %call.i.i, %do.end24.i ], [ %call2.i, %if.end9.stk3310_init.exit.thread_crit_edge ], [ %call.i.i.i, %do.end16.i ], [ -19, %do.end.i69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid.i) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end18.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid.i) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp14 = icmp sgt i32 %55, 0
  br i1 %cmp14, label %if.then15, label %if.end13.if.end27_crit_edge

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then15:                                        ; preds = %if.end13
  %call18 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %55, ptr noundef nonnull @stk3310_irq_handler, ptr noundef nonnull @stk3310_irq_event_handler, i32 noundef 8194, ptr noundef nonnull @.str.7, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.then15.if.end27_crit_edge

if.then15.if.end27_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %57) #9
  br label %err_standby

if.end27:                                         ; preds = %if.then15.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  %call28 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %err_standby

err_standby:                                      ; preds = %do.end33, %do.end23
  %ret.0 = phi i32 [ %call18, %do.end23 ], [ %call28, %do.end33 ]
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %reg_state.i72 = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %reg_state.i72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_state.i72, align 4
  %call.i.i73 = call i32 @regmap_field_update_bits_base(ptr noundef %61, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %cmp7.i = icmp slt i32 %call.i.i73, 0
  br i1 %cmp7.i, label %do.end.i76, label %err_standby.stk3310_set_state.exit_crit_edge

err_standby.stk3310_set_state.exit_crit_edge:     ; preds = %err_standby
  call void @__sanitizer_cov_trace_pc() #8
  br label %stk3310_set_state.exit

do.end.i76:                                       ; preds = %err_standby
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i75 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i75, ptr noundef nonnull @.str.65) #9
  br label %stk3310_set_state.exit

stk3310_set_state.exit:                           ; preds = %do.end.i76, %err_standby.stk3310_set_state.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %stk3310_set_state.exit, %if.end27.cleanup_crit_edge, %stk3310_init.exit.thread, %stk3310_regmap_init.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %stk3310_set_state.exit ], [ -12, %do.end ], [ %retval.0.i, %stk3310_regmap_init.exit.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ %retval.0.i71.ph, %stk3310_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %lock.i = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %reg_state.i = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_state.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %do.end.i, label %entry.stk3310_set_state.exit_crit_edge

entry.stk3310_set_state.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stk3310_set_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.65) #9
  br label %stk3310_set_state.exit

stk3310_set_state.exit:                           ; preds = %do.end.i, %entry.stk3310_set_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret i32 %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_irq_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #6
  %timestamp = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call1, ptr %timestamp, align 8
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_irq_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %dir = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dir) #6
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dir, align 4, !annotation !187
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.stk3310_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %reg_flag_nf = getelementptr inbounds %struct.stk3310_data, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %reg_flag_nf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_flag_nf, align 8
  %call1 = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %call1) #9
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %9 = zext i32 %cond to i64
  %shl = shl nuw nsw i64 %9, 48
  %or6 = or i64 %shl, 34359738369
  %timestamp = getelementptr inbounds %struct.stk3310_data, ptr %2, i32 0, i32 4
  %10 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %timestamp, align 8
  %call7 = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or6, i64 noundef %11) #6
  %reg_flag_psint = getelementptr inbounds %struct.stk3310_data, ptr %2, i32 0, i32 12
  %12 = ptrtoint ptr %reg_flag_psint to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_flag_psint, align 4
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  br i1 %cmp9, label %do.end14, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 8
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.63) #9
  br label %out

out:                                              ; preds = %do.end14, %if.end.out_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stk3310_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 5
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf = alloca i16, align 2
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %buf, align 2, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #6
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index, align 4, !annotation !187
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 6, label %entry.if.end_crit_edge
    i32 8, label %entry.if.end_crit_edge75
  ]

entry.if.end_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge75
  %9 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 18, label %sw.bb16
    i32 2, label %sw.bb32
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp5 = icmp eq i32 %7, 6
  %. = select i1 %cmp5, i32 19, i32 17
  %lock = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call8 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %., ptr noundef nonnull %buf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end, label %if.end13

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #9
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end13:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %buf, align 2
  %conv14 = zext i16 %13 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv14, ptr %val, align 4
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp18 = icmp eq i32 %7, 6
  %reg_ps_it = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 10
  %reg_als_it = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 9
  %.sink.in = select i1 %cmp18, ptr %reg_als_it, ptr %reg_ps_it
  %15 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink = load ptr, ptr %.sink.in, align 4
  %call23 = call i32 @regmap_field_read(ptr noundef %.sink, ptr noundef nonnull %index) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %sw.bb16.cleanup_crit_edge, label %if.end28

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [16 x [2 x i32]], ptr @stk3310_it_table, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  %arrayidx31 = getelementptr [16 x [2 x i32]], ptr @stk3310_it_table, i32 0, i32 %17, i32 1
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx31, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val2, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp34 = icmp eq i32 %7, 6
  %reg_ps_gain = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 8
  %reg_als_gain = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 7
  %.sink74.in = select i1 %cmp34, ptr %reg_als_gain, ptr %reg_ps_gain
  %24 = ptrtoint ptr %.sink74.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.sink74 = load ptr, ptr %.sink74.in, align 4
  %call39 = call i32 @regmap_field_read(ptr noundef %.sink74, ptr noundef nonnull %index) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp41 = icmp slt i32 %call39, 0
  br i1 %cmp41, label %sw.bb32.cleanup_crit_edge, label %if.end44

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index, align 4
  %arrayidx45 = getelementptr [4 x [2 x i32]], ptr @stk3310_scale_table, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx45, align 4
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val, align 4
  %arrayidx48 = getelementptr [4 x [2 x i32]], ptr @stk3310_scale_table, i32 0, i32 %26, i32 1
  %30 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx48, align 4
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %sw.bb32.cleanup_crit_edge, %if.end28, %sw.bb16.cleanup_crit_edge, %if.end13, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end44 ], [ 2, %if.end28 ], [ %call8, %do.end ], [ 1, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ %call23, %sw.bb16.cleanup_crit_edge ], [ %call39, %sw.bb32.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 6, label %entry.if.end_crit_edge
    i32 8, label %entry.if.end_crit_edge110
  ]

entry.if.end_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge110
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 18, label %for.body.i.preheader
    i32 2, label %for.body.i67.preheader
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i67.preheader:                           ; preds = %if.end
  %6 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %val, label %for.body.i67.preheader.cleanup_crit_edge [
    i32 6, label %land.lhs.true.i70
    i32 1, label %land.lhs.true.i70.1
    i32 0, label %land.lhs.true.i70.2
  ]

for.body.i67.preheader.cleanup_crit_edge:         ; preds = %for.body.i67.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.preheader:                             ; preds = %if.end
  %7 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %val, label %for.body.i.preheader.cleanup_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.i.13
    i32 3, label %land.lhs.true.i.14
    i32 6, label %land.lhs.true.i.15
  ]

for.body.i.preheader.cleanup_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %for.body.i.preheader
  %8 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %val2, label %land.lhs.true.i.cleanup_crit_edge [
    i32 185, label %land.lhs.true.i.if.end6_crit_edge
    i32 370, label %if.end6.fold.split
    i32 741, label %if.end6.fold.split97
    i32 1480, label %if.end6.fold.split98
    i32 2960, label %if.end6.fold.split99
    i32 5920, label %if.end6.fold.split100
    i32 11840, label %if.end6.fold.split101
    i32 23680, label %if.end6.fold.split102
    i32 47360, label %if.end6.fold.split103
    i32 94720, label %if.end6.fold.split104
    i32 189440, label %if.end6.fold.split105
    i32 378880, label %if.end6.fold.split106
    i32 757760, label %if.end6.fold.split107
  ]

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.13:                               ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 515520, i32 %val2)
  %cmp5.i.13 = icmp eq i32 %val2, 515520
  br i1 %cmp5.i.13, label %land.lhs.true.i.13.if.end6_crit_edge, label %land.lhs.true.i.13.cleanup_crit_edge

land.lhs.true.i.13.cleanup_crit_edge:             ; preds = %land.lhs.true.i.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.13.if.end6_crit_edge:             ; preds = %land.lhs.true.i.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true.i.14:                               ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 31040, i32 %val2)
  %cmp5.i.14 = icmp eq i32 %val2, 31040
  br i1 %cmp5.i.14, label %land.lhs.true.i.14.if.end6_crit_edge, label %land.lhs.true.i.14.cleanup_crit_edge

land.lhs.true.i.14.cleanup_crit_edge:             ; preds = %land.lhs.true.i.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.14.if.end6_crit_edge:             ; preds = %land.lhs.true.i.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true.i.15:                               ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 62080, i32 %val2)
  %cmp5.i.15 = icmp eq i32 %val2, 62080
  br i1 %cmp5.i.15, label %land.lhs.true.i.15.if.end6_crit_edge, label %land.lhs.true.i.15.cleanup_crit_edge

land.lhs.true.i.15.cleanup_crit_edge:             ; preds = %land.lhs.true.i.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.15.if.end6_crit_edge:             ; preds = %land.lhs.true.i.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split97:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split98:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split99:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split100:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split101:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split102:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split103:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split104:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split105:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split106:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.fold.split107:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.end6.fold.split107, %if.end6.fold.split106, %if.end6.fold.split105, %if.end6.fold.split104, %if.end6.fold.split103, %if.end6.fold.split102, %if.end6.fold.split101, %if.end6.fold.split100, %if.end6.fold.split99, %if.end6.fold.split98, %if.end6.fold.split97, %if.end6.fold.split, %land.lhs.true.i.15.if.end6_crit_edge, %land.lhs.true.i.14.if.end6_crit_edge, %land.lhs.true.i.13.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge
  %i.012.i.lcssa = phi i32 [ 0, %land.lhs.true.i.if.end6_crit_edge ], [ 13, %land.lhs.true.i.13.if.end6_crit_edge ], [ 14, %land.lhs.true.i.14.if.end6_crit_edge ], [ 15, %land.lhs.true.i.15.if.end6_crit_edge ], [ 1, %if.end6.fold.split ], [ 2, %if.end6.fold.split97 ], [ 3, %if.end6.fold.split98 ], [ 4, %if.end6.fold.split99 ], [ 5, %if.end6.fold.split100 ], [ 6, %if.end6.fold.split101 ], [ 7, %if.end6.fold.split102 ], [ 8, %if.end6.fold.split103 ], [ 9, %if.end6.fold.split104 ], [ 10, %if.end6.fold.split105 ], [ 11, %if.end6.fold.split106 ], [ 12, %if.end6.fold.split107 ]
  %lock = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp8 = icmp eq i32 %10, 6
  %reg_ps_it = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 10
  %reg_als_it = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 9
  %.sink.in = select i1 %cmp8, ptr %reg_als_it, ptr %reg_ps_it
  %11 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.sink = load ptr, ptr %.sink.in, align 4
  %call.i63 = tail call i32 @regmap_field_update_bits_base(ptr noundef %.sink, i32 noundef -1, i32 noundef %i.012.i.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp13 = icmp slt i32 %call.i63, 0
  br i1 %cmp13, label %if.end6.cleanup.sink.split.sink.split_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end6.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

land.lhs.true.i70:                                ; preds = %for.body.i67.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %val2)
  %cmp5.i69 = icmp eq i32 %val2, 400000
  br i1 %cmp5.i69, label %land.lhs.true.i70.if.end21_crit_edge, label %land.lhs.true.i70.cleanup_crit_edge

land.lhs.true.i70.cleanup_crit_edge:              ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i70.if.end21_crit_edge:             ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true.i70.1:                              ; preds = %for.body.i67.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %val2)
  %cmp5.i69.1 = icmp eq i32 %val2, 600000
  br i1 %cmp5.i69.1, label %land.lhs.true.i70.1.if.end21_crit_edge, label %land.lhs.true.i70.1.cleanup_crit_edge

land.lhs.true.i70.1.cleanup_crit_edge:            ; preds = %land.lhs.true.i70.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i70.1.if.end21_crit_edge:           ; preds = %land.lhs.true.i70.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true.i70.2:                              ; preds = %for.body.i67.preheader
  %12 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %val2, label %land.lhs.true.i70.2.cleanup_crit_edge [
    i32 400000, label %land.lhs.true.i70.2.if.end21_crit_edge
    i32 100000, label %if.end21.fold.split
  ]

land.lhs.true.i70.2.if.end21_crit_edge:           ; preds = %land.lhs.true.i70.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true.i70.2.cleanup_crit_edge:            ; preds = %land.lhs.true.i70.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.fold.split:                              ; preds = %land.lhs.true.i70.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %if.end21.fold.split, %land.lhs.true.i70.2.if.end21_crit_edge, %land.lhs.true.i70.1.if.end21_crit_edge, %land.lhs.true.i70.if.end21_crit_edge
  %i.012.i64.lcssa = phi i32 [ 0, %land.lhs.true.i70.if.end21_crit_edge ], [ 1, %land.lhs.true.i70.1.if.end21_crit_edge ], [ 2, %land.lhs.true.i70.2.if.end21_crit_edge ], [ 3, %if.end21.fold.split ]
  %lock22 = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock22, i32 noundef 0) #6
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp24 = icmp eq i32 %14, 6
  %reg_ps_gain = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 8
  %reg_als_gain = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 7
  %.sink108.in = select i1 %cmp24, ptr %reg_als_gain, ptr %reg_ps_gain
  %15 = ptrtoint ptr %.sink108.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink108 = load ptr, ptr %.sink108.in, align 4
  %call.i77 = tail call i32 @regmap_field_update_bits_base(ptr noundef %.sink108, i32 noundef -1, i32 noundef %i.012.i64.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp30 = icmp slt i32 %call.i77, 0
  br i1 %cmp30, label %if.end21.cleanup.sink.split.sink.split_crit_edge, label %if.end21.cleanup.sink.split_crit_edge

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end21.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end21.cleanup.sink.split.sink.split_crit_edge, %if.end6.cleanup.sink.split.sink.split_crit_edge
  %lock22.sink.ph = phi ptr [ %lock, %if.end6.cleanup.sink.split.sink.split_crit_edge ], [ %lock22, %if.end21.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %call.i63, %if.end6.cleanup.sink.split.sink.split_crit_edge ], [ %call.i77, %if.end21.cleanup.sink.split.sink.split_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.43) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end21.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge
  %lock22.sink = phi ptr [ %lock, %if.end6.cleanup.sink.split_crit_edge ], [ %lock22, %if.end21.cleanup.sink.split_crit_edge ], [ %lock22.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call.i63, %if.end6.cleanup.sink.split_crit_edge ], [ %call.i77, %if.end21.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock22.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.i70.2.cleanup_crit_edge, %land.lhs.true.i70.1.cleanup_crit_edge, %land.lhs.true.i70.cleanup_crit_edge, %land.lhs.true.i.15.cleanup_crit_edge, %land.lhs.true.i.14.cleanup_crit_edge, %land.lhs.true.i.13.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %for.body.i.preheader.cleanup_crit_edge, %for.body.i67.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.i.15.cleanup_crit_edge ], [ -22, %land.lhs.true.i70.1.cleanup_crit_edge ], [ -22, %land.lhs.true.i.14.cleanup_crit_edge ], [ -22, %land.lhs.true.i.13.cleanup_crit_edge ], [ -22, %land.lhs.true.i70.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %for.body.i.preheader.cleanup_crit_edge ], [ -22, %for.body.i67.preheader.cleanup_crit_edge ], [ -22, %land.lhs.true.i70.2.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  %event_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event_val) #6
  %0 = ptrtoint ptr %event_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %event_val, align 4, !annotation !187
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %reg_int_ps = getelementptr inbounds %struct.stk3310_data, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %reg_int_ps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_int_ps, align 8
  %call1 = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %event_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %event_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event_val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event_val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %state)
  %4 = icmp ugt i32 %state, 7
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %reg_int_ps = getelementptr inbounds %struct.stk3310_data, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %reg_int_ps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_int_ps, align 8
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %6, i32 noundef -1, i32 noundef %state, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  %buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %buf, align 2, !annotation !187
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cmp.not = icmp eq i32 %info, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %dir, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end7_crit_edge
    i32 2, label %if.then4
  ]

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %reg.0 = phi i32 [ 8, %if.then4 ], [ 6, %if.end.if.end7_crit_edge ]
  %lock = getelementptr inbounds %struct.stk3310_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.stk3310_data, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call8 = call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef %reg.0, ptr noundef nonnull %buf, i32 noundef 2) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp slt i32 %call8, 0
  br i1 %cmp10, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buf, align 2
  %conv14 = zext i16 %9 to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv14, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ 1, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  %buf = alloca i16, align 2
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #6
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %index, align 4, !annotation !187
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %reg_ps_gain = getelementptr inbounds %struct.stk3310_data, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %reg_ps_gain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_ps_gain, align 4
  %call2 = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %index) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp3 = icmp slt i32 %val, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [4 x i32], ptr @stk3310_ps_max, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp4 = icmp slt i32 %10, %val
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %11 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %dir, label %if.end6.cleanup_crit_edge [
    i32 1, label %if.end6.if.end13_crit_edge
    i32 2, label %if.then10
  ]

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  %reg.0 = phi i32 [ 8, %if.then10 ], [ 6, %if.end6.if.end13_crit_edge ]
  %conv = trunc i32 %val to i16
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %buf, align 2
  %regmap = getelementptr inbounds %struct.stk3310_data, ptr %2, i32 0, i32 5
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 8
  %call15 = call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef %reg.0, ptr noundef nonnull %buf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call15, %do.end ], [ %call15, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %lock.i = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %reg_state.i = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_state.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %do.end.i, label %entry.stk3310_set_state.exit_crit_edge

entry.stk3310_set_state.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stk3310_set_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.65) #9
  br label %stk3310_set_state.exit

stk3310_set_state.exit:                           ; preds = %do.end.i, %entry.stk3310_set_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk3310_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %ps_enabled = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ps_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ps_enabled, align 1, !range !188
  %als_enabled = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %als_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %als_enabled, align 8, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  %8 = or i8 %5, 2
  %state.1 = select i1 %tobool3.not, i8 %5, i8 %8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %conv.i = zext i8 %state.1 to i32
  %lock.i = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %reg_state.i = getelementptr inbounds %struct.stk3310_data, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_state.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.65) #9
  br label %if.end23.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.1)
  %cmp11.not.i = icmp eq i8 %state.1, 0
  br i1 %cmp11.not.i, label %if.else.i.if.end23.i_crit_edge, label %if.then13.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %ps_enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %5, ptr %ps_enabled, align 1
  %and17.i = lshr i8 %state.1, 1
  %14 = ptrtoint ptr %als_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and17.i, ptr %als_enabled, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then13.i, %if.else.i.if.end23.i_crit_edge, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !113, !115, !117, !119, !120, !121, !122, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_stk3310__288_703_stk3310_driver_init6, !1, !"__initcall__kmod_stk3310__288_703_stk3310_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/stk3310.c", i32 703, i32 1}
!2 = !{ptr @__exitcall_stk3310_driver_exit, !1, !"__exitcall_stk3310_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/stk3310.c", i32 705, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/stk3310.c", i32 706, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/stk3310.c", i32 707, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/stk3310.c", i32 693, i32 11}
!12 = !{ptr @stk3310_driver, !13, !"stk3310_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/stk3310.c", i32 691, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/stk3310.c", i32 577, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stk3310_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @stk3310_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @stk3310_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/light/stk3310.c", i32 584, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/stk3310.c", i32 606, i32 7}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/stk3310.c", i32 608, i32 4}
!29 = !{ptr @stk3310_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @stk3310_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/stk3310.c", i32 616, i32 3}
!33 = !{ptr @stk3310_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @stk3310_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @stk3310_regmap_init._key, !36, !"_key", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/stk3310.c", i32 507, i32 11}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/light/stk3310.c", i32 509, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @stk3310_regmap_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @stk3310_regmap_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/stk3310.c", i32 514, i32 2}
!45 = !{ptr @stk3310_regmap_init._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @stk3310_regmap_init._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @stk3310_regmap_init._entry.20, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/iio/light/stk3310.c", i32 515, i32 2}
!49 = !{ptr @stk3310_regmap_init._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @stk3310_regmap_init._entry.22, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/stk3310.c", i32 516, i32 2}
!52 = !{ptr @stk3310_regmap_init._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @stk3310_regmap_init._entry.24, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/stk3310.c", i32 517, i32 2}
!55 = !{ptr @stk3310_regmap_init._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @stk3310_regmap_init._entry.26, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/stk3310.c", i32 518, i32 2}
!58 = !{ptr @stk3310_regmap_init._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @stk3310_regmap_init._entry.28, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/iio/light/stk3310.c", i32 519, i32 2}
!61 = !{ptr @stk3310_regmap_init._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @stk3310_regmap_init._entry.30, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/stk3310.c", i32 520, i32 2}
!64 = !{ptr @stk3310_regmap_init._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @stk3310_regmap_init._entry.32, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/stk3310.c", i32 521, i32 2}
!67 = !{ptr @stk3310_regmap_init._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/stk3310.c", i32 493, i32 10}
!70 = !{ptr @stk3310_regmap_config, !71, !"stk3310_regmap_config", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/stk3310.c", i32 492, i32 35}
!72 = distinct !{null, !73, !"stk3310_reg_field_state", i1 false, i1 false}
!73 = !{!"../drivers/iio/light/stk3310.c", i32 67, i32 31}
!74 = distinct !{null, !75, !"stk3310_reg_field_als_gain", i1 false, i1 false}
!75 = !{!"../drivers/iio/light/stk3310.c", i32 69, i32 31}
!76 = distinct !{null, !77, !"stk3310_reg_field_ps_gain", i1 false, i1 false}
!77 = !{!"../drivers/iio/light/stk3310.c", i32 71, i32 31}
!78 = distinct !{null, !79, !"stk3310_reg_field_als_it", i1 false, i1 false}
!79 = !{!"../drivers/iio/light/stk3310.c", i32 73, i32 31}
!80 = distinct !{null, !81, !"stk3310_reg_field_ps_it", i1 false, i1 false}
!81 = !{!"../drivers/iio/light/stk3310.c", i32 75, i32 31}
!82 = distinct !{null, !83, !"stk3310_reg_field_int_ps", i1 false, i1 false}
!83 = !{!"../drivers/iio/light/stk3310.c", i32 77, i32 31}
!84 = distinct !{null, !85, !"stk3310_reg_field_flag_psint", i1 false, i1 false}
!85 = !{!"../drivers/iio/light/stk3310.c", i32 79, i32 31}
!86 = distinct !{null, !87, !"stk3310_reg_field_flag_nf", i1 false, i1 false}
!87 = !{!"../drivers/iio/light/stk3310.c", i32 81, i32 31}
!88 = !{ptr @stk3310_info, !89, !"stk3310_info", i1 false, i1 false}
!89 = !{!"../drivers/iio/light/stk3310.c", i32 410, i32 30}
!90 = !{ptr @stk3310_attribute_group, !91, !"stk3310_attribute_group", i1 false, i1 false}
!91 = !{!"../drivers/iio/light/stk3310.c", i32 175, i32 37}
!92 = !{ptr @stk3310_attributes, !93, !"stk3310_attributes", i1 false, i1 false}
!93 = !{!"../drivers/iio/light/stk3310.c", i32 167, i32 26}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/light/stk3310.c", i32 157, i32 8}
!96 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @iio_const_attr_in_illuminance_scale_available, !95, !"iio_const_attr_in_illuminance_scale_available", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/light/stk3310.c", i32 159, i32 8}
!100 = !{ptr @iio_const_attr_in_proximity_scale_available, !99, !"iio_const_attr_in_proximity_scale_available", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/light/stk3310.c", i32 161, i32 8}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @iio_const_attr_in_illuminance_integration_time_available, !102, !"iio_const_attr_in_illuminance_integration_time_available", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/light/stk3310.c", i32 164, i32 8}
!107 = !{ptr @iio_const_attr_in_proximity_integration_time_available, !106, !"iio_const_attr_in_proximity_integration_time_available", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/light/stk3310.c", i32 326, i32 4}
!110 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @stk3310_read_raw._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @stk3310_read_raw._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @stk3310_it_table, !114, !"stk3310_it_table", i1 false, i1 false}
!114 = !{!"../drivers/iio/light/stk3310.c", i32 97, i32 18}
!115 = !{ptr @stk3310_scale_table, !116, !"stk3310_scale_table", i1 false, i1 false}
!116 = !{!"../drivers/iio/light/stk3310.c", i32 92, i32 18}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/light/stk3310.c", i32 384, i32 4}
!119 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @stk3310_write_raw._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @stk3310_write_raw._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @stk3310_write_raw._entry.45, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/iio/light/stk3310.c", i32 401, i32 4}
!124 = !{ptr @stk3310_write_raw._entry_ptr.46, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/light/stk3310.c", i32 296, i32 3}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @stk3310_write_event_config._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @stk3310_write_event_config._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/light/stk3310.c", i32 219, i32 3}
!132 = !{ptr @stk3310_read_event._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @stk3310_read_event._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/light/stk3310.c", i32 258, i32 3}
!136 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @stk3310_write_event._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @stk3310_write_event._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @stk3310_ps_max, !140, !"stk3310_ps_max", i1 false, i1 false}
!140 = !{!"../drivers/iio/light/stk3310.c", i32 85, i32 18}
!141 = !{ptr @stk3310_channels, !142, !"stk3310_channels", i1 false, i1 false}
!142 = !{!"../drivers/iio/light/stk3310.c", i32 138, i32 35}
!143 = !{ptr @stk3310_events, !144, !"stk3310_events", i1 false, i1 false}
!144 = !{!"../drivers/iio/light/stk3310.c", i32 121, i32 36}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/light/stk3310.c", i32 459, i32 3}
!147 = !{ptr @.str.53, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @stk3310_init._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @stk3310_init._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/light/stk3310.c", i32 466, i32 3}
!152 = !{ptr @stk3310_init._entry.54, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @stk3310_init._entry_ptr.56, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/iio/light/stk3310.c", i32 473, i32 3}
!156 = !{ptr @stk3310_init._entry.57, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @stk3310_init._entry_ptr.59, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/light/stk3310.c", i32 549, i32 3}
!160 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @stk3310_irq_event_handler._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @stk3310_irq_event_handler._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/iio/light/stk3310.c", i32 561, i32 3}
!165 = !{ptr @stk3310_irq_event_handler._entry.62, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @stk3310_irq_event_handler._entry_ptr.64, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.65, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/iio/light/stk3310.c", i32 432, i32 3}
!169 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @stk3310_set_state._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @stk3310_set_state._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @stk3310_of_match, !173, !"stk3310_of_match", i1 false, i1 false}
!173 = !{!"../drivers/iio/light/stk3310.c", i32 683, i32 34}
!174 = !{ptr @stk3310_pm_ops, !175, !"stk3310_pm_ops", i1 false, i1 false}
!175 = !{!"../drivers/iio/light/stk3310.c", i32 659, i32 8}
!176 = !{ptr @stk3310_i2c_id, !177, !"stk3310_i2c_id", i1 false, i1 false}
!177 = !{!"../drivers/iio/light/stk3310.c", i32 666, i32 35}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"auto-init"}
!188 = !{i8 0, i8 2}
