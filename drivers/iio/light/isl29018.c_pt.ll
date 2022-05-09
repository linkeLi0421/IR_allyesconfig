; ModuleID = '/llk/IR_all_yes/drivers/iio/light/isl29018.c_pt.bc'
source_filename = "../drivers/iio/light/isl29018.c"
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
%struct.isl29018_scale = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.isl29018_chip_info = type { ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.isl29018_chip = type { ptr, %struct.mutex, i32, i32, i32, i32, %struct.isl29018_scale, i32, i8, ptr }

@__initcall__kmod_isl29018__288_875_isl29018_driver_init6 = internal global ptr @isl29018_driver_init, section ".initcall6.init", align 4
@isl29018_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @isl29018_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isl29018_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isl29018_pm_ops, ptr null, ptr null }, ptr @isl29018_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_isl29018_driver_exit = internal global ptr @isl29018_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [58 x i8] c"isl29018.description=ISL29018 Ambient Light Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [41 x i8] c"isl29018.file=drivers/iio/light/isl29018\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [21 x i8] c"isl29018.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isl29018\00", [23 x i8] zeroinitializer }, align 32
@isl29018_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29018\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29035\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@isl29018_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @isl29018_suspend, ptr @isl29018_resume, ptr @isl29018_suspend, ptr @isl29018_resume, ptr @isl29018_suspend, ptr @isl29018_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@isl29018_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isl29018\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"isl29023\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"isl29035\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@isl29018_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@isl29018_scales = internal constant { [4 x [4 x %struct.isl29018_scale]], [32 x i8] } { [4 x [4 x %struct.isl29018_scale]] [[4 x %struct.isl29018_scale] [%struct.isl29018_scale { i32 0, i32 15258 }, %struct.isl29018_scale { i32 0, i32 61035 }, %struct.isl29018_scale { i32 0, i32 244140 }, %struct.isl29018_scale { i32 0, i32 976562 }], [4 x %struct.isl29018_scale] [%struct.isl29018_scale { i32 0, i32 244140 }, %struct.isl29018_scale { i32 0, i32 976562 }, %struct.isl29018_scale { i32 3, i32 906250 }, %struct.isl29018_scale { i32 15, i32 625000 }], [4 x %struct.isl29018_scale] [%struct.isl29018_scale { i32 3, i32 906250 }, %struct.isl29018_scale { i32 15, i32 625000 }, %struct.isl29018_scale { i32 62, i32 500000 }, %struct.isl29018_scale { i32 250, i32 0 }], [4 x %struct.isl29018_scale] [%struct.isl29018_scale { i32 62, i32 500000 }, %struct.isl29018_scale { i32 250, i32 0 }, %struct.isl29018_scale { i32 1000, i32 0 }, %struct.isl29018_scale { i32 4000, i32 0 }]], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get VCC regulator!\0A\00", [34 x i8] zeroinitializer }, align 32
@isl29018_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 755, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable VCC regulator!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl29018_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/isl29018.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isl29018_probe._entry_ptr = internal global ptr @isl29018_probe._entry, section ".printk_index", align 4
@isl29018_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 762, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to setup regulator cleanup action!\0A\00", [53 x i8] zeroinitializer }, align 32
@isl29018_probe._entry_ptr.11 = internal global ptr @isl29018_probe._entry.9, section ".printk_index", align 4
@isl29018_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@isl29018_chip_info_tbl = internal constant { [3 x %struct.isl29018_chip_info], [48 x i8] } { [3 x %struct.isl29018_chip_info] [%struct.isl29018_chip_info { ptr @isl29018_channels, i32 3, ptr @isl29018_info, ptr @isl29018_regmap_config }, %struct.isl29018_chip_info { ptr @isl29023_channels, i32 2, ptr @isl29023_info, ptr @isl29018_regmap_config }, %struct.isl29018_chip_info { ptr @isl29023_channels, i32 2, ptr @isl29023_info, ptr @isl29035_regmap_config }], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"isl29018:767:(isl29018_chip_info_tbl[dev_id].regmap_cfg)->lock\00", [33 x i8] zeroinitializer }, align 32
@isl29018_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 770, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"regmap initialization fails: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@isl29018_probe._entry_ptr.15 = internal global ptr @isl29018_probe._entry.13, section ".printk_index", align 4
@isl29018_disable_regulator_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013failed to disable isl29018's VCC regulator!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"isl29018_disable_regulator_action\00", [62 x i8] zeroinitializer }, align 32
@isl29018_disable_regulator_action._entry_ptr = internal global ptr @isl29018_disable_regulator_action._entry, section ".printk_index", align 4
@isl29018_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262166, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@isl29018_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @isl29018_group, ptr @isl29018_read_raw, ptr null, ptr null, ptr @isl29018_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@isl29018_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @isl29018_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 9, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@isl29023_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262166, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [48 x i8] zeroinitializer }, align 32
@isl29023_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @isl29023_group, ptr @isl29018_read_raw, ptr null, ptr null, ptr @isl29018_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@isl29035_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @isl29018_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 16, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@isl29018_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl29018_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@isl29018_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_in_illuminance_scale_available, ptr @iio_dev_attr_in_illuminance_integration_time_available, ptr @iio_dev_attr_proximity_on_chip_ambient_infrared_suppression, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_illuminance_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_illuminance_scale_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_illuminance_integration_time_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_illuminance_integration_time_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_proximity_on_chip_ambient_infrared_suppression = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @proximity_on_chip_ambient_infrared_suppression_show, ptr @proximity_on_chip_ambient_infrared_suppression_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"in_illuminance_scale_available\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%06d \00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"in_illuminance_integration_time_available\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%06d \00", [24 x i8] zeroinitializer }, align 32
@isl29018_int_utimes = internal constant { [3 x [4 x i32]], [48 x i8] } { [3 x [4 x i32]] [[4 x i32] [i32 90000, i32 5630, i32 351, i32 21], [4 x i32] [i32 90000, i32 5600, i32 352, i32 22], [4 x i32] [i32 105000, i32 6500, i32 410, i32 25]], [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"proximity_on_chip_ambient_infrared_suppression\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@isl29018_read_sensor_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 170, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error in setting operating mode err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isl29018_read_sensor_input\00", [37 x i8] zeroinitializer }, align 32
@isl29018_read_sensor_input._entry_ptr = internal global ptr @isl29018_read_sensor_input._entry, section ".printk_index", align 4
@isl29018_read_sensor_input._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 177, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error in reading LSB DATA with err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@isl29018_read_sensor_input._entry_ptr.28 = internal global ptr @isl29018_read_sensor_input._entry.26, section ".printk_index", align 4
@isl29018_read_sensor_input._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.6, i32 184, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error in reading MSB DATA with error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@isl29018_read_sensor_input._entry_ptr.31 = internal global ptr @isl29018_read_sensor_input._entry.29, section ".printk_index", align 4
@isl29018_read_proximity_ir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 237, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error in setting operating mode\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isl29018_read_proximity_ir\00", [37 x i8] zeroinitializer }, align 32
@isl29018_read_proximity_ir._entry_ptr = internal global ptr @isl29018_read_proximity_ir._entry, section ".printk_index", align 4
@isl29023_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl29023_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@isl29023_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_in_illuminance_scale_available, ptr @iio_dev_attr_in_illuminance_integration_time_available, ptr null], [20 x i8] zeroinitializer }, align 32
@isl29018_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 543, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error reading ID register with error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isl29018_chip_init\00", [45 x i8] zeroinitializer }, align 32
@isl29018_chip_init._entry_ptr = internal global ptr @isl29018_chip_init._entry, section ".printk_index", align 4
@isl29018_chip_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.6, i32 584, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to clear isl29018 TEST reg.(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@isl29018_chip_init._entry_ptr.38 = internal global ptr @isl29018_chip_init._entry.36, section ".printk_index", align 4
@isl29018_chip_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.6, i32 596, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to clear isl29018 CMD1 reg.(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@isl29018_chip_init._entry_ptr.41 = internal global ptr @isl29018_chip_init._entry.39, section ".printk_index", align 4
@isl29018_chip_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.6, i32 606, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Init of isl29018 fails\0A\00", [40 x i8] zeroinitializer }, align 32
@isl29018_chip_init._entry_ptr.44 = internal global ptr @isl29018_chip_init._entry.42, section ".printk_index", align 4
@isl29018_chip_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.6, i32 613, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@isl29018_chip_init._entry_ptr.46 = internal global ptr @isl29018_chip_init._entry.45, section ".printk_index", align 4
@isl29018_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 803, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable VCC regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isl29018_suspend\00", [47 x i8] zeroinitializer }, align 32
@isl29018_suspend._entry_ptr = internal global ptr @isl29018_suspend._entry, section ".printk_index", align 4
@isl29018_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.6, i32 819, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable VCC regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isl29018_resume\00", [16 x i8] zeroinitializer }, align 32
@isl29018_resume._entry_ptr = internal global ptr @isl29018_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 18]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 18]
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"isl29018_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 865, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 867, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"isl29018_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 857, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"isl29018_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 833, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"isl29018_id\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 849, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 739, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"isl29018_scales\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 73, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 748, i32 51 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 751, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 755, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 762, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"isl29018_chip_info_tbl\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 669, i32 40 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 766, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 770, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 711, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"isl29018_channels\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 487, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"isl29018_info\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 618, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"isl29018_regmap_config\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 644, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"isl29023_channels\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 493, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant [14 x i8] c"isl29023_info\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 624, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant [23 x i8] c"isl29035_regmap_config\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 653, i32 35 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"isl29018_group\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 517, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"isl29018_attributes\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 504, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant [44 x i8] c"iio_dev_attr_in_illuminance_scale_available\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [55 x i8] c"iio_dev_attr_in_illuminance_integration_time_available\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [60 x i8] c"iio_dev_attr_proximity_on_chip_ambient_infrared_suppression\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 499, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 275, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 498, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 295, i32 29 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"isl29018_int_utimes\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 64, i32 27 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 500, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 332, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 169, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 176, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 183, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 237, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [15 x i8] c"isl29023_group\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 521, i32 37 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"isl29023_attributes\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 511, i32 26 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 541, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 583, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 595, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 606, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 613, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 803, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [32 x i8] c"../drivers/iio/light/isl29018.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 819, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_isl29018_driver_exit, ptr @__initcall__kmod_isl29018__288_875_isl29018_driver_init6, ptr @isl29018_chip_init._entry, ptr @isl29018_chip_init._entry.36, ptr @isl29018_chip_init._entry.39, ptr @isl29018_chip_init._entry.42, ptr @isl29018_chip_init._entry.45, ptr @isl29018_chip_init._entry_ptr, ptr @isl29018_chip_init._entry_ptr.38, ptr @isl29018_chip_init._entry_ptr.41, ptr @isl29018_chip_init._entry_ptr.44, ptr @isl29018_chip_init._entry_ptr.46, ptr @isl29018_disable_regulator_action._entry, ptr @isl29018_disable_regulator_action._entry_ptr, ptr @isl29018_driver_exit, ptr @isl29018_probe._entry, ptr @isl29018_probe._entry.13, ptr @isl29018_probe._entry.9, ptr @isl29018_probe._entry_ptr, ptr @isl29018_probe._entry_ptr.11, ptr @isl29018_probe._entry_ptr.15, ptr @isl29018_read_proximity_ir._entry, ptr @isl29018_read_proximity_ir._entry_ptr, ptr @isl29018_read_sensor_input._entry, ptr @isl29018_read_sensor_input._entry.26, ptr @isl29018_read_sensor_input._entry.29, ptr @isl29018_read_sensor_input._entry_ptr, ptr @isl29018_read_sensor_input._entry_ptr.28, ptr @isl29018_read_sensor_input._entry_ptr.31, ptr @isl29018_resume._entry, ptr @isl29018_resume._entry_ptr, ptr @isl29018_suspend._entry, ptr @isl29018_suspend._entry_ptr, ptr @isl29018_driver, ptr @.str, ptr @isl29018_of_match, ptr @isl29018_pm_ops, ptr @isl29018_id, ptr @isl29018_probe.__key, ptr @.str.1, ptr @isl29018_scales, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @isl29018_probe._key, ptr @isl29018_chip_info_tbl, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @isl29018_channels, ptr @isl29018_info, ptr @isl29018_regmap_config, ptr @isl29023_channels, ptr @isl29023_info, ptr @isl29035_regmap_config, ptr @isl29018_group, ptr @isl29018_attributes, ptr @iio_dev_attr_in_illuminance_scale_available, ptr @iio_dev_attr_in_illuminance_integration_time_available, ptr @iio_dev_attr_proximity_on_chip_ambient_infrared_suppression, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @isl29018_int_utimes, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @isl29023_group, ptr @isl29023_attributes, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_scales to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_chip_info_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_disable_regulator_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29023_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29023_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29035_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_illuminance_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_illuminance_integration_time_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_proximity_on_chip_ambient_infrared_suppression to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_int_utimes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_read_sensor_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_read_sensor_input._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_read_sensor_input._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_read_proximity_ir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29023_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29023_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_chip_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_chip_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_chip_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_chip_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29018_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29018_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl29018_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isl29018_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @isl29018_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29018_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 132) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %tobool2.not = icmp eq ptr %id, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.then3

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.end.do.body_crit_edge
  %dev_id.0 = phi i32 [ %4, %if.then3 ], [ 0, %if.end.do.body_crit_edge ]
  %lock = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @isl29018_probe.__key) #9
  %type = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dev_id.0, ptr %type, align 4
  %calibscale = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %calibscale to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %calibscale, align 4
  %ucalibscale = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ucalibscale to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ucalibscale, align 4
  %int_time = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %int_time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %int_time, align 4
  %scale = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %scale to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 15258, ptr %scale, align 4
  %suspended = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %suspended, align 4
  %call13 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %vcc_reg = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %vcc_reg, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end21

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call13 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end21:                                         ; preds = %do.body
  %call23 = tail call i32 @regulator_enable(ptr noundef %call13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @isl29018_disable_regulator_action, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end39, label %if.then.i

if.then.i:                                        ; preds = %if.end30
  %13 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vcc_reg, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.do.end37_crit_edge, label %do.end.i.i

if.then.i.do.end37_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %do.end37

do.end37:                                         ; preds = %do.end.i.i, %if.then.i.do.end37_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %arrayidx40 = getelementptr [3 x %struct.isl29018_chip_info], ptr @isl29018_chip_info_tbl, i32 0, i32 %dev_id.0
  %regmap_cfg = getelementptr [3 x %struct.isl29018_chip_info], ptr @isl29018_chip_info_tbl, i32 0, i32 %dev_id.0, i32 3
  %15 = ptrtoint ptr %regmap_cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_cfg, align 4
  %call41 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef %16, ptr noundef nonnull @isl29018_probe._key, ptr noundef nonnull @.str.12) #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call41, ptr %1, align 4
  %cmp.i114 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then44, label %if.end51

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %18) #12
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  %call52 = tail call fastcc i32 @isl29018_chip_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %indio_info = getelementptr [3 x %struct.isl29018_chip_info], ptr @isl29018_chip_info_tbl, i32 0, i32 %dev_id.0, i32 2
  %19 = ptrtoint ptr %indio_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %indio_info, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %info, align 8
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx40, align 4
  %channels58 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %24 = ptrtoint ptr %channels58 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %channels58, align 8
  %num_channels = getelementptr [3 x %struct.isl29018_chip_info], ptr @isl29018_chip_info_tbl, i32 0, i32 %dev_id.0, i32 1
  %25 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_channels, align 4
  %num_channels60 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %27 = ptrtoint ptr %num_channels60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %num_channels60, align 4
  %name61 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %28 = ptrtoint ptr %name61 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %id, ptr %name61, align 8
  %29 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %call, align 8
  %call63 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end51.cleanup_crit_edge, %if.then44, %do.end37, %do.end28, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then16 ], [ %call23, %do.end28 ], [ %call.i, %do.end37 ], [ %18, %if.then44 ], [ %call63, %if.end55 ], [ -12, %entry.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isl29018_disable_regulator_action(ptr nocapture noundef readonly %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vcc_reg = getelementptr inbounds %struct.isl29018_chip, ptr %_data, i32 0, i32 9
  %0 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcc_reg, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl29018_chip_init(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #9
  %type = getelementptr inbounds %struct.isl29018_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #9
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %id, align 4, !annotation !147
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 15, ptr noundef nonnull %id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.34, i32 noundef %call2) #12
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %and = lshr i32 %8, 3
  %shr = and i32 %and, 7
  store i32 %shr, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr)
  %cmp5.not = icmp eq i32 %shr, 5
  br i1 %cmp5.not, label %cleanup, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %do.end
  %retval.0.ph = phi i32 [ -19, %if.end.cleanup.thread_crit_edge ], [ %call2, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  br label %cleanup48

cleanup:                                          ; preds = %if.end
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 15, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  br i1 %cmp10, label %cleanup.cleanup48_crit_edge, label %cleanup.if.end13_crit_edge

cleanup.if.end13_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

cleanup.cleanup48_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end13:                                         ; preds = %cleanup.if.end13_crit_edge, %entry.if.end13_crit_edge
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %call15 = call i32 @regmap_write(ptr noundef %12, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.37, i32 noundef %call15) #12
  br label %cleanup48

if.end21:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %call23 = call i32 @regmap_write(ptr noundef %14, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.40, i32 noundef %call23) #12
  br label %cleanup48

if.end29:                                         ; preds = %if.end21
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %scale = getelementptr inbounds %struct.isl29018_chip, ptr %chip, i32 0, i32 6
  %15 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scale, align 4
  %uscale = getelementptr inbounds %struct.isl29018_chip, ptr %chip, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uscale, align 4
  %int_time.i = getelementptr inbounds %struct.isl29018_chip, ptr %chip, i32 0, i32 5
  %19 = ptrtoint ptr %int_time.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %int_time.i, align 4
  %arrayidx1.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %20, i32 0
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %16)
  %cmp3.i = icmp eq i32 %22, %16
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end29.for.inc.i_crit_edge

if.end29.for.inc.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end29
  %uscale7.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %20, i32 0, i32 1
  %23 = ptrtoint ptr %uscale7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %uscale7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %18)
  %cmp8.i = icmp eq i32 %24, %18
  br i1 %cmp8.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end29.for.inc.i_crit_edge
  %arrayidx1.1.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %20, i32 1
  %25 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %16)
  %cmp3.1.i = icmp eq i32 %26, %16
  br i1 %cmp3.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %uscale7.1.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %20, i32 1, i32 1
  %27 = ptrtoint ptr %uscale7.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %uscale7.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %18)
  %cmp8.1.i = icmp eq i32 %28, %18
  br i1 %cmp8.1.i, label %land.lhs.true.1.i.if.end14.i_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

land.lhs.true.1.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx1.2.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %20, i32 2
  %29 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %16)
  %cmp3.2.i = icmp eq i32 %30, %16
  br i1 %cmp3.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %uscale7.2.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %20, i32 2, i32 1
  %31 = ptrtoint ptr %uscale7.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uscale7.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %18)
  %cmp8.2.i = icmp eq i32 %32, %18
  br i1 %cmp8.2.i, label %land.lhs.true.2.i.if.end14.i_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

land.lhs.true.2.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx1.3.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %20, i32 3
  %33 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %16)
  %cmp3.3.i = icmp eq i32 %34, %16
  br i1 %cmp3.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.do.end37_crit_edge

for.inc.2.i.do.end37_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %uscale7.3.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %20, i32 3, i32 1
  %35 = ptrtoint ptr %uscale7.3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %uscale7.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %18)
  %cmp8.3.i = icmp eq i32 %36, %18
  br i1 %cmp8.3.i, label %land.lhs.true.3.i.if.end14.i_crit_edge, label %land.lhs.true.3.i.do.end37_crit_edge

land.lhs.true.3.i.do.end37_crit_edge:             ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

land.lhs.true.3.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %land.lhs.true.3.i.if.end14.i_crit_edge, %land.lhs.true.2.i.if.end14.i_crit_edge, %land.lhs.true.1.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge
  %i.038.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.end14.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.end14.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.end14.i_crit_edge ], [ 3, %land.lhs.true.3.i.if.end14.i_crit_edge ]
  %arrayidx1.lcssa.i = phi ptr [ %arrayidx1.i, %land.lhs.true.i.if.end14.i_crit_edge ], [ %arrayidx1.1.i, %land.lhs.true.1.i.if.end14.i_crit_edge ], [ %arrayidx1.2.i, %land.lhs.true.2.i.if.end14.i_crit_edge ], [ %arrayidx1.3.i, %land.lhs.true.3.i.if.end14.i_crit_edge ]
  %new_scale.sroa.5.0.arrayidx11.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx1.lcssa.i, i32 4
  %37 = ptrtoint ptr %new_scale.sroa.5.0.arrayidx11.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %new_scale.sroa.5.0.copyload.i = load i32, ptr %new_scale.sroa.5.0.arrayidx11.sroa_idx.i, align 4
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 1, i32 noundef 3, i32 noundef %i.038.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp15.i, label %if.end14.i.do.end37_crit_edge, label %if.end38

if.end14.i.do.end37_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

do.end37:                                         ; preds = %if.end14.i.do.end37_crit_edge, %land.lhs.true.3.i.do.end37_crit_edge, %for.inc.2.i.do.end37_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %for.inc.2.i.do.end37_crit_edge ], [ -22, %land.lhs.true.3.i.do.end37_crit_edge ], [ %call.i.i, %if.end14.i.do.end37_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.43) #12
  br label %cleanup48

if.end38:                                         ; preds = %if.end14.i
  %40 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %16, ptr %scale, align 4
  %41 = ptrtoint ptr %uscale to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %new_scale.sroa.5.0.copyload.i, ptr %uscale, align 4
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  %44 = ptrtoint ptr %int_time.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %int_time.i, align 4
  %arrayidx40 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %43, i32 %45
  %46 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx40, align 4
  %call41 = call fastcc i32 @isl29018_set_integration_time(ptr noundef %chip, i32 noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end38.cleanup48_crit_edge

if.end38.cleanup48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.43) #12
  br label %cleanup48

cleanup48:                                        ; preds = %do.end46, %if.end38.cleanup48_crit_edge, %do.end37, %do.end28, %do.end20, %cleanup.cleanup48_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ %call15, %do.end20 ], [ %call23, %do.end28 ], [ %retval.0.i.ph, %do.end37 ], [ %call.i, %cleanup.cleanup48_crit_edge ], [ %call41, %do.end46 ], [ %call41, %if.end38.cleanup48_crit_edge ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29018_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %suspended = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.read_done_crit_edge

entry.read_done_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.read_done_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge64
    i32 18, label %sw.bb10
    i32 2, label %sw.bb16
    i32 4, label %sw.bb23
  ]

if.end.sw.bb_crit_edge64:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.read_done_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge64
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %6, label %sw.bb.read_done_crit_edge [
    i32 6, label %sw.bb1
    i32 7, label %sw.bb3
    i32 8, label %sw.bb5
  ]

sw.bb.read_done_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

sw.bb1:                                           ; preds = %sw.bb
  %call.i = tail call fastcc i32 @isl29018_read_sensor_input(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb1.read_done_crit_edge, label %if.end.i

sw.bb1.read_done_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %scale.i = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scale.i, align 4
  %mul.i = mul i32 %9, %call.i
  %uscale.i = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %uscale.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uscale.i, align 4
  %mul3.i = mul i32 %11, %call.i
  %div.i = udiv i32 %mul3.i, 1000000
  %add.i = add i32 %div.i, %mul.i
  %calibscale.i = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %calibscale.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %calibscale.i, align 4
  %mul4.i = mul i32 %add.i, %13
  %ucalibscale.i = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %ucalibscale.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ucalibscale.i, align 4
  %mul5.i = mul i32 %add.i, %15
  %div6.i = udiv i32 %mul5.i, 1000000
  %add7.i = add i32 %div6.i, %mul4.i
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add7.i, ptr %val, align 4
  br label %read_done

sw.bb3:                                           ; preds = %sw.bb
  %call.i54 = tail call fastcc i32 @isl29018_read_sensor_input(ptr noundef %1, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i55 = icmp slt i32 %call.i54, 0
  br i1 %cmp.i55, label %sw.bb3.read_done_crit_edge, label %if.end.i56

sw.bb3.read_done_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

if.end.i56:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i54, ptr %val, align 4
  br label %read_done

sw.bb5:                                           ; preds = %sw.bb
  %prox_scheme = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %prox_scheme to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prox_scheme, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i58 = tail call ptr @regmap_get_device(ptr noundef %21) #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %shl.i = shl i32 %19, 7
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 1, i32 noundef 128, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i60, label %do.end.i

do.end.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i58, ptr noundef nonnull @.str.32) #12
  br label %read_done

if.end.i60:                                       ; preds = %sw.bb5
  %call3.i = tail call fastcc i32 @isl29018_read_sensor_input(ptr noundef %1, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i59 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i59, label %if.end.i60.read_done_crit_edge, label %if.end5.i

if.end.i60.read_done_crit_edge:                   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

if.end5.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp6.i = icmp eq i32 %19, 1
  br i1 %cmp6.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3.i, ptr %val, align 4
  br label %read_done

if.end8.i:                                        ; preds = %if.end5.i
  %call9.i = tail call fastcc i32 @isl29018_read_sensor_input(ptr noundef %1, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.read_done_crit_edge, label %if.end12.i

if.end8.i.read_done_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = tail call i32 @llvm.usub.sat.i32(i32 %call3.i, i32 %call9.i) #9
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val, align 4
  br label %read_done

sw.bb10:                                          ; preds = %if.end
  %27 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp = icmp eq i32 %28, 6
  br i1 %cmp, label %if.then12, label %sw.bb10.read_done_crit_edge

sw.bb10.read_done_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

if.then12:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %val, align 4
  %type13 = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %type13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type13, align 4
  %int_time = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %int_time to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %int_time, align 4
  %arrayidx14 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %31, i32 %33
  %34 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx14, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val2, align 4
  br label %read_done

sw.bb16:                                          ; preds = %if.end
  %37 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp18 = icmp eq i32 %38, 6
  br i1 %cmp18, label %if.then19, label %sw.bb16.read_done_crit_edge

sw.bb16.read_done_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  %scale = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scale, align 4
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %val, align 4
  %uscale = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %uscale, align 4
  %44 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val2, align 4
  br label %read_done

sw.bb23:                                          ; preds = %if.end
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp25 = icmp eq i32 %46, 6
  br i1 %cmp25, label %if.then26, label %sw.bb23.read_done_crit_edge

sw.bb23.read_done_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_done

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %calibscale = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %calibscale to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %calibscale, align 4
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %val, align 4
  %ucalibscale = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %ucalibscale to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ucalibscale, align 4
  %52 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %val2, align 4
  br label %read_done

read_done:                                        ; preds = %if.then26, %sw.bb23.read_done_crit_edge, %if.then19, %sw.bb16.read_done_crit_edge, %if.then12, %sw.bb10.read_done_crit_edge, %if.end12.i, %if.end8.i.read_done_crit_edge, %if.then7.i, %if.end.i60.read_done_crit_edge, %do.end.i, %if.end.i56, %sw.bb3.read_done_crit_edge, %if.end.i, %sw.bb1.read_done_crit_edge, %sw.bb.read_done_crit_edge, %if.end.read_done_crit_edge, %entry.read_done_crit_edge
  %ret.1 = phi i32 [ -22, %if.end.read_done_crit_edge ], [ 2, %if.then26 ], [ -22, %sw.bb23.read_done_crit_edge ], [ 2, %if.then19 ], [ -22, %sw.bb16.read_done_crit_edge ], [ 2, %if.then12 ], [ -22, %sw.bb10.read_done_crit_edge ], [ -16, %entry.read_done_crit_edge ], [ 1, %if.end.i ], [ 1, %if.end.i56 ], [ 1, %if.then7.i ], [ 1, %if.end12.i ], [ %call9.i, %if.end8.i.read_done_crit_edge ], [ %call3.i, %if.end.i60.read_done_crit_edge ], [ %call.i.i, %do.end.i ], [ %call.i54, %sw.bb3.read_done_crit_edge ], [ %call.i, %sw.bb1.read_done_crit_edge ], [ -22, %sw.bb.read_done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29018_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %suspended = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.write_done_crit_edge

entry.write_done_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_done

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %mask, label %if.end.write_done_crit_edge [
    i32 4, label %sw.bb
    i32 18, label %sw.bb3
    i32 2, label %sw.bb10
  ]

if.end.write_done_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_done

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp = icmp eq i32 %6, 6
  br i1 %cmp, label %if.then1, label %sw.bb.write_done_crit_edge

sw.bb.write_done_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_done

if.then1:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %calibscale = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %calibscale to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val, ptr %calibscale, align 4
  %ucalibscale = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ucalibscale to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val2, ptr %ucalibscale, align 4
  br label %write_done

sw.bb3:                                           ; preds = %if.end
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp5 = icmp eq i32 %10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool6.not = icmp eq i32 %val, 0
  %or.cond = and i1 %tobool6.not, %cmp5
  br i1 %or.cond, label %if.then7, label %sw.bb3.write_done_crit_edge

sw.bb3.write_done_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_done

if.then7:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @isl29018_set_integration_time(ptr noundef %1, i32 noundef %val2)
  br label %write_done

sw.bb10:                                          ; preds = %if.end
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp12 = icmp eq i32 %12, 6
  br i1 %cmp12, label %if.then13, label %sw.bb10.write_done_crit_edge

sw.bb10.write_done_crit_edge:                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_done

if.then13:                                        ; preds = %sw.bb10
  %int_time.i = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %int_time.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_time.i, align 4
  %arrayidx1.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %14, i32 0
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp3.i = icmp eq i32 %16, %val
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.then13.for.inc.i_crit_edge

if.then13.for.inc.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then13
  %uscale7.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %14, i32 0, i32 1
  %17 = ptrtoint ptr %uscale7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uscale7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val2)
  %cmp8.i = icmp eq i32 %18, %val2
  br i1 %cmp8.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.then13.for.inc.i_crit_edge
  %arrayidx1.1.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %14, i32 1
  %19 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val)
  %cmp3.1.i = icmp eq i32 %20, %val
  br i1 %cmp3.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %uscale7.1.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %14, i32 1, i32 1
  %21 = ptrtoint ptr %uscale7.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %uscale7.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %val2)
  %cmp8.1.i = icmp eq i32 %22, %val2
  br i1 %cmp8.1.i, label %land.lhs.true.1.i.if.end14.i_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

land.lhs.true.1.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx1.2.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %14, i32 2
  %23 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %val)
  %cmp3.2.i = icmp eq i32 %24, %val
  br i1 %cmp3.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %uscale7.2.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %14, i32 2, i32 1
  %25 = ptrtoint ptr %uscale7.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uscale7.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %val2)
  %cmp8.2.i = icmp eq i32 %26, %val2
  br i1 %cmp8.2.i, label %land.lhs.true.2.i.if.end14.i_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

land.lhs.true.2.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx1.3.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %14, i32 3
  %27 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %val)
  %cmp3.3.i = icmp eq i32 %28, %val
  br i1 %cmp3.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.write_done_crit_edge

for.inc.2.i.write_done_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_done

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %uscale7.3.i = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %14, i32 3, i32 1
  %29 = ptrtoint ptr %uscale7.3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uscale7.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %val2)
  %cmp8.3.i = icmp eq i32 %30, %val2
  br i1 %cmp8.3.i, label %land.lhs.true.3.i.if.end14.i_crit_edge, label %land.lhs.true.3.i.write_done_crit_edge

land.lhs.true.3.i.write_done_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_done

land.lhs.true.3.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %land.lhs.true.3.i.if.end14.i_crit_edge, %land.lhs.true.2.i.if.end14.i_crit_edge, %land.lhs.true.1.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge
  %i.038.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.end14.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.end14.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.end14.i_crit_edge ], [ 3, %land.lhs.true.3.i.if.end14.i_crit_edge ]
  %arrayidx1.lcssa.i = phi ptr [ %arrayidx1.i, %land.lhs.true.i.if.end14.i_crit_edge ], [ %arrayidx1.1.i, %land.lhs.true.1.i.if.end14.i_crit_edge ], [ %arrayidx1.2.i, %land.lhs.true.2.i.if.end14.i_crit_edge ], [ %arrayidx1.3.i, %land.lhs.true.3.i.if.end14.i_crit_edge ]
  %new_scale.sroa.5.0.arrayidx11.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx1.lcssa.i, i32 4
  %31 = ptrtoint ptr %new_scale.sroa.5.0.arrayidx11.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %new_scale.sroa.5.0.copyload.i = load i32, ptr %new_scale.sroa.5.0.arrayidx11.sroa_idx.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 1, i32 noundef 3, i32 noundef %i.038.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp15.i, label %if.end14.i.write_done_crit_edge, label %if.end17.i

if.end14.i.write_done_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_done

if.end17.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %scale18.i = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %scale18.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %val, ptr %scale18.i, align 4
  %new_scale.sroa.5.0.scale18.sroa_idx.i = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %new_scale.sroa.5.0.scale18.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %new_scale.sroa.5.0.copyload.i, ptr %new_scale.sroa.5.0.scale18.sroa_idx.i, align 4
  br label %write_done

write_done:                                       ; preds = %if.end17.i, %if.end14.i.write_done_crit_edge, %land.lhs.true.3.i.write_done_crit_edge, %for.inc.2.i.write_done_crit_edge, %sw.bb10.write_done_crit_edge, %if.then7, %sw.bb3.write_done_crit_edge, %if.then1, %sw.bb.write_done_crit_edge, %if.end.write_done_crit_edge, %entry.write_done_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.write_done_crit_edge ], [ -22, %sw.bb10.write_done_crit_edge ], [ %call8, %if.then7 ], [ -22, %sw.bb3.write_done_crit_edge ], [ 0, %if.then1 ], [ -22, %sw.bb.write_done_crit_edge ], [ -16, %entry.write_done_crit_edge ], [ 0, %if.end17.i ], [ %call.i.i, %if.end14.i.write_done_crit_edge ], [ -22, %land.lhs.true.3.i.write_done_crit_edge ], [ -22, %for.inc.2.i.write_done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance_scale_available_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %int_time = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %int_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_time, align 4
  %arrayidx2 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %3, i32 0
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %uscale = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %3, i32 0, i32 1
  %6 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uscale, align 4
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef %7)
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call6
  %8 = ptrtoint ptr %int_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %int_time, align 4
  %arrayidx2.1 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %9, i32 1
  %10 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.1, align 4
  %uscale.1 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %9, i32 1, i32 1
  %12 = ptrtoint ptr %uscale.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uscale.1, align 4
  %call6.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.19, i32 noundef %11, i32 noundef %13)
  %add.1 = add i32 %call6.1, %call6
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %14 = ptrtoint ptr %int_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %int_time, align 4
  %arrayidx2.2 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %15, i32 2
  %16 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.2, align 4
  %uscale.2 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %15, i32 2, i32 1
  %18 = ptrtoint ptr %uscale.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uscale.2, align 4
  %call6.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.19, i32 noundef %17, i32 noundef %19)
  %add.2 = add i32 %call6.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %20 = ptrtoint ptr %int_time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %int_time, align 4
  %arrayidx2.3 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %21, i32 3
  %22 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.3, align 4
  %uscale.3 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %21, i32 3, i32 1
  %24 = ptrtoint ptr %uscale.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uscale.3, align 4
  %call6.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.19, i32 noundef %23, i32 noundef %25)
  %add.3 = add i32 %call6.3, %add.2
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %sub = add i32 %add.3, -1
  %arrayidx8 = getelementptr i8, ptr %buf, i32 %sub
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %arrayidx8, align 1
  ret i32 %add.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance_integration_time_available_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %type = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx2 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %3, i32 0
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %5)
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %arrayidx2.1 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.1, align 4
  %call3.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.21, i32 noundef %9)
  %add.1 = add i32 %call3.1, %call3
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %arrayidx2.2 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %11, i32 2
  %12 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.2, align 4
  %call3.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.21, i32 noundef %13)
  %add.2 = add i32 %call3.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %arrayidx2.3 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %15, i32 3
  %16 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.3, align 4
  %call3.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.21, i32 noundef %17)
  %add.3 = add i32 %call3.3, %add.2
  %sub = add i32 %add.3, -1
  %arrayidx4 = getelementptr i8, ptr %buf, i32 %sub
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %arrayidx4, align 1
  ret i32 %add.3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proximity_on_chip_ambient_infrared_suppression_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %prox_scheme = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %prox_scheme to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prox_scheme, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proximity_on_chip_ambient_infrared_suppression_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %prox_scheme = getelementptr inbounds %struct.isl29018_chip, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %prox_scheme to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prox_scheme, align 4
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl29018_read_sensor_input(ptr nocapture noundef readonly %chip, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %lsb = alloca i32, align 4
  %msb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsb) #9
  %0 = ptrtoint ptr %lsb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lsb, align 4, !annotation !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msb) #9
  %1 = ptrtoint ptr %msb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %msb, align 4, !annotation !147
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %3) #9
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %shl = shl i32 %mode, 5
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef %shl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.24, i32 noundef %call2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 100) #9
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %call4 = call i32 @regmap_read(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %lsb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.27, i32 noundef %call4) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %call11 = call i32 @regmap_read(ptr noundef %9, i32 noundef 3, ptr noundef nonnull %msb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.30, i32 noundef %call11) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msb, align 4
  %shl18 = shl i32 %11, 8
  %12 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lsb, align 4
  %or = or i32 %shl18, %13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end16, %do.end8, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end8 ], [ %call11, %do.end16 ], [ %or, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msb) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl29018_set_integration_time(ptr nocapture noundef %chip, i32 noundef %utime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.isl29018_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %arrayidx1 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %1, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %utime)
  %cmp2 = icmp eq i32 %3, %utime
  br i1 %cmp2, label %entry.if.end5_crit_edge, label %for.inc

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.inc:                                          ; preds = %entry
  %arrayidx1.1 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %1, i32 1
  %4 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %utime)
  %cmp2.1 = icmp eq i32 %5, %utime
  br i1 %cmp2.1, label %for.inc.if.end5_crit_edge, label %for.inc.1

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.inc.1:                                        ; preds = %for.inc
  %arrayidx1.2 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %1, i32 2
  %6 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %utime)
  %cmp2.2 = icmp eq i32 %7, %utime
  br i1 %cmp2.2, label %for.inc.1.if.end5_crit_edge, label %for.inc.2

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx1.3 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %1, i32 3
  %8 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %utime)
  %cmp2.3 = icmp eq i32 %9, %utime
  br i1 %cmp2.3, label %for.inc.2.if.end5_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2.if.end5_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %for.inc.2.if.end5_crit_edge, %for.inc.1.if.end5_crit_edge, %for.inc.if.end5_crit_edge, %entry.if.end5_crit_edge
  %i.058.lcssa = phi i32 [ 0, %entry.if.end5_crit_edge ], [ 1, %for.inc.if.end5_crit_edge ], [ 2, %for.inc.1.if.end5_crit_edge ], [ 3, %for.inc.2.if.end5_crit_edge ]
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %shl = shl nuw nsw i32 %i.058.lcssa, 2
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 1, i32 noundef 12, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %int_time9 = getelementptr inbounds %struct.isl29018_chip, ptr %chip, i32 0, i32 5
  %12 = ptrtoint ptr %int_time9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %int_time9, align 4
  %scale = getelementptr inbounds %struct.isl29018_chip, ptr %chip, i32 0, i32 6
  %14 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scale, align 4
  %uscale = getelementptr inbounds %struct.isl29018_chip, ptr %chip, i32 0, i32 6, i32 1
  %arrayidx15 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %13, i32 0
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp17 = icmp eq i32 %15, %17
  br i1 %cmp17, label %land.lhs.true, label %if.end8.for.inc28_crit_edge

if.end8.for.inc28_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

land.lhs.true:                                    ; preds = %if.end8
  %18 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uscale, align 4
  %uscale21 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %13, i32 0, i32 1
  %20 = ptrtoint ptr %uscale21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uscale21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp22 = icmp eq i32 %19, %21
  br i1 %cmp22, label %land.lhs.true.if.then23_crit_edge, label %land.lhs.true.for.inc28_crit_edge

land.lhs.true.for.inc28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %land.lhs.true.3.if.then23_crit_edge, %land.lhs.true.2.if.then23_crit_edge, %land.lhs.true.1.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge
  %i.159.lcssa = phi i32 [ 0, %land.lhs.true.if.then23_crit_edge ], [ 1, %land.lhs.true.1.if.then23_crit_edge ], [ 2, %land.lhs.true.2.if.then23_crit_edge ], [ 3, %land.lhs.true.3.if.then23_crit_edge ]
  %arrayidx26 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %i.058.lcssa, i32 %i.159.lcssa
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %arrayidx26, align 4
  %24 = ptrtoint ptr %scale to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %scale, align 4
  br label %for.end30

for.inc28:                                        ; preds = %land.lhs.true.for.inc28_crit_edge, %if.end8.for.inc28_crit_edge
  %arrayidx15.1 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %13, i32 1
  %25 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %26)
  %cmp17.1 = icmp eq i32 %15, %26
  br i1 %cmp17.1, label %land.lhs.true.1, label %for.inc28.for.inc28.1_crit_edge

for.inc28.for.inc28.1_crit_edge:                  ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.1

land.lhs.true.1:                                  ; preds = %for.inc28
  %27 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %uscale, align 4
  %uscale21.1 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %13, i32 1, i32 1
  %29 = ptrtoint ptr %uscale21.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uscale21.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp22.1 = icmp eq i32 %28, %30
  br i1 %cmp22.1, label %land.lhs.true.1.if.then23_crit_edge, label %land.lhs.true.1.for.inc28.1_crit_edge

land.lhs.true.1.for.inc28.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.1

land.lhs.true.1.if.then23_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

for.inc28.1:                                      ; preds = %land.lhs.true.1.for.inc28.1_crit_edge, %for.inc28.for.inc28.1_crit_edge
  %arrayidx15.2 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %13, i32 2
  %31 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx15.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %32)
  %cmp17.2 = icmp eq i32 %15, %32
  br i1 %cmp17.2, label %land.lhs.true.2, label %for.inc28.1.for.inc28.2_crit_edge

for.inc28.1.for.inc28.2_crit_edge:                ; preds = %for.inc28.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.2

land.lhs.true.2:                                  ; preds = %for.inc28.1
  %33 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %uscale, align 4
  %uscale21.2 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %13, i32 2, i32 1
  %35 = ptrtoint ptr %uscale21.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %uscale21.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp22.2 = icmp eq i32 %34, %36
  br i1 %cmp22.2, label %land.lhs.true.2.if.then23_crit_edge, label %land.lhs.true.2.for.inc28.2_crit_edge

land.lhs.true.2.for.inc28.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.2

land.lhs.true.2.if.then23_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

for.inc28.2:                                      ; preds = %land.lhs.true.2.for.inc28.2_crit_edge, %for.inc28.1.for.inc28.2_crit_edge
  %arrayidx15.3 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %13, i32 3
  %37 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx15.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %38)
  %cmp17.3 = icmp eq i32 %15, %38
  br i1 %cmp17.3, label %land.lhs.true.3, label %for.inc28.2.for.end30_crit_edge

for.inc28.2.for.end30_crit_edge:                  ; preds = %for.inc28.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

land.lhs.true.3:                                  ; preds = %for.inc28.2
  %39 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %uscale, align 4
  %uscale21.3 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %13, i32 3, i32 1
  %41 = ptrtoint ptr %uscale21.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %uscale21.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp22.3 = icmp eq i32 %40, %42
  br i1 %cmp22.3, label %land.lhs.true.3.if.then23_crit_edge, label %land.lhs.true.3.for.end30_crit_edge

land.lhs.true.3.for.end30_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

land.lhs.true.3.if.then23_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

for.end30:                                        ; preds = %land.lhs.true.3.for.end30_crit_edge, %for.inc28.2.for.end30_crit_edge, %if.then23
  %43 = ptrtoint ptr %int_time9 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %i.058.lcssa, ptr %int_time9, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end30, %if.end5.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end30 ], [ %call.i, %if.end5.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @isl29018_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %reg)
  %0 = icmp ult i32 %reg, 16
  %switch.cast = trunc i32 %reg to i16
  %switch.downshift = lshr i16 -32499, %switch.cast
  %1 = and i16 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.masked = icmp ne i16 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29018_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.isl29018_chip, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %suspended = getelementptr inbounds %struct.isl29018_chip, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %suspended, align 4
  %vcc_reg = getelementptr inbounds %struct.isl29018_chip, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vcc_reg, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29018_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.isl29018_chip, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %vcc_reg = getelementptr inbounds %struct.isl29018_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc_reg, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @isl29018_chip_init(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %suspended = getelementptr inbounds %struct.isl29018_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %suspended, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %if.then6 ], [ %call4, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !63, !65, !67, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_isl29018__288_875_isl29018_driver_init6, !1, !"__initcall__kmod_isl29018__288_875_isl29018_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/isl29018.c", i32 875, i32 1}
!2 = !{ptr @__exitcall_isl29018_driver_exit, !1, !"__exitcall_isl29018_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/isl29018.c", i32 877, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/isl29018.c", i32 878, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/light/isl29018.c", i32 867, i32 12}
!10 = !{ptr @isl29018_driver, !11, !"isl29018_driver", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/isl29018.c", i32 865, i32 26}
!12 = !{ptr @isl29018_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/isl29018.c", i32 739, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/light/isl29018.c", i32 748, i32 51}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/isl29018.c", i32 751, i32 10}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/light/isl29018.c", i32 755, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @isl29018_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @isl29018_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/isl29018.c", i32 762, i32 3}
!29 = !{ptr @isl29018_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @isl29018_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @isl29018_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/isl29018.c", i32 766, i32 17}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/isl29018.c", i32 770, i32 3}
!36 = !{ptr @isl29018_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @isl29018_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @isl29018_scales, !39, !"isl29018_scales", i1 false, i1 false}
!39 = !{!"../drivers/iio/light/isl29018.c", i32 73, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/isl29018.c", i32 711, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @isl29018_disable_regulator_action._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @isl29018_disable_regulator_action._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @isl29018_chip_info_tbl, !46, !"isl29018_chip_info_tbl", i1 false, i1 false}
!46 = !{!"../drivers/iio/light/isl29018.c", i32 669, i32 40}
!47 = !{ptr @isl29018_channels, !48, !"isl29018_channels", i1 false, i1 false}
!48 = !{!"../drivers/iio/light/isl29018.c", i32 487, i32 35}
!49 = !{ptr @isl29018_info, !50, !"isl29018_info", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/isl29018.c", i32 618, i32 30}
!51 = !{ptr @isl29018_group, !52, !"isl29018_group", i1 false, i1 false}
!52 = !{!"../drivers/iio/light/isl29018.c", i32 517, i32 37}
!53 = !{ptr @isl29018_attributes, !54, !"isl29018_attributes", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/isl29018.c", i32 504, i32 26}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/isl29018.c", i32 499, i32 8}
!57 = !{ptr @iio_dev_attr_in_illuminance_scale_available, !56, !"iio_dev_attr_in_illuminance_scale_available", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/isl29018.c", i32 275, i32 29}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/isl29018.c", i32 498, i32 8}
!62 = !{ptr @iio_dev_attr_in_illuminance_integration_time_available, !61, !"iio_dev_attr_in_illuminance_integration_time_available", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/light/isl29018.c", i32 295, i32 29}
!65 = !{ptr @isl29018_int_utimes, !66, !"isl29018_int_utimes", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/isl29018.c", i32 64, i32 27}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/light/isl29018.c", i32 500, i32 8}
!69 = !{ptr @iio_dev_attr_proximity_on_chip_ambient_infrared_suppression, !68, !"iio_dev_attr_proximity_on_chip_ambient_infrared_suppression", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/isl29018.c", i32 332, i32 22}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/light/isl29018.c", i32 169, i32 3}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @isl29018_read_sensor_input._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @isl29018_read_sensor_input._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/light/isl29018.c", i32 176, i32 3}
!79 = !{ptr @isl29018_read_sensor_input._entry.26, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @isl29018_read_sensor_input._entry_ptr.28, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/light/isl29018.c", i32 183, i32 3}
!83 = !{ptr @isl29018_read_sensor_input._entry.29, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @isl29018_read_sensor_input._entry_ptr.31, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/light/isl29018.c", i32 237, i32 3}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @isl29018_read_proximity_ir._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @isl29018_read_proximity_ir._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @isl29018_regmap_config, !91, !"isl29018_regmap_config", i1 false, i1 false}
!91 = !{!"../drivers/iio/light/isl29018.c", i32 644, i32 35}
!92 = !{ptr @isl29023_channels, !93, !"isl29023_channels", i1 false, i1 false}
!93 = !{!"../drivers/iio/light/isl29018.c", i32 493, i32 35}
!94 = !{ptr @isl29023_info, !95, !"isl29023_info", i1 false, i1 false}
!95 = !{!"../drivers/iio/light/isl29018.c", i32 624, i32 30}
!96 = !{ptr @isl29023_group, !97, !"isl29023_group", i1 false, i1 false}
!97 = !{!"../drivers/iio/light/isl29018.c", i32 521, i32 37}
!98 = !{ptr @isl29023_attributes, !99, !"isl29023_attributes", i1 false, i1 false}
!99 = !{!"../drivers/iio/light/isl29018.c", i32 511, i32 26}
!100 = !{ptr @isl29035_regmap_config, !101, !"isl29035_regmap_config", i1 false, i1 false}
!101 = !{!"../drivers/iio/light/isl29018.c", i32 653, i32 35}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/light/isl29018.c", i32 541, i32 4}
!104 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @isl29018_chip_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @isl29018_chip_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/light/isl29018.c", i32 583, i32 3}
!109 = !{ptr @isl29018_chip_init._entry.36, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @isl29018_chip_init._entry_ptr.38, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/light/isl29018.c", i32 595, i32 3}
!113 = !{ptr @isl29018_chip_init._entry.39, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @isl29018_chip_init._entry_ptr.41, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/light/isl29018.c", i32 606, i32 3}
!117 = !{ptr @isl29018_chip_init._entry.42, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @isl29018_chip_init._entry_ptr.44, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @isl29018_chip_init._entry.45, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/iio/light/isl29018.c", i32 613, i32 3}
!121 = !{ptr @isl29018_chip_init._entry_ptr.46, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @isl29018_of_match, !123, !"isl29018_of_match", i1 false, i1 false}
!123 = !{!"../drivers/iio/light/isl29018.c", i32 857, i32 34}
!124 = !{ptr @isl29018_pm_ops, !125, !"isl29018_pm_ops", i1 false, i1 false}
!125 = !{!"../drivers/iio/light/isl29018.c", i32 833, i32 8}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/light/isl29018.c", i32 803, i32 3}
!128 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @isl29018_suspend._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @isl29018_suspend._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/light/isl29018.c", i32 819, i32 3}
!133 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @isl29018_resume._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @isl29018_resume._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @isl29018_id, !137, !"isl29018_id", i1 false, i1 false}
!137 = !{!"../drivers/iio/light/isl29018.c", i32 849, i32 35}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"auto-init"}
!148 = !{i8 0, i8 2}
