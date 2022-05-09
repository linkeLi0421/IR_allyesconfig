; ModuleID = '/llk/IR_all_yes/drivers/iio/light/isl29028.c_pt.bc'
source_filename = "../drivers/iio/light/isl29028.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.isl29028_prox_data = type { i32, i32, i32 }
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
%struct.isl29028_chip = type { %struct.mutex, ptr, i32, i32, i8, i32, i32 }

@__initcall__kmod_isl29028__289_709_isl29028_driver_init6 = internal global ptr @isl29028_driver_init, section ".initcall6.init", align 4
@isl29028_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @isl29028_probe, ptr @isl29028_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isl29028_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isl29028_pm_ops, ptr null, ptr null }, ptr @isl29028_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_isl29028_driver_exit = internal global ptr @isl29028_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [72 x i8] c"isl29028.description=ISL29028 Ambient Light and Proximity Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"isl29028.file=drivers/iio/light/isl29028\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"isl29028.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [55 x i8] c"isl29028.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isl29028\00", [23 x i8] zeroinitializer }, align 32
@isl29028_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isl,isl29028\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29028\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29030\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@isl29028_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isl29028_suspend, ptr @isl29028_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@isl29028_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isl29028\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"isl29030\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@isl29028_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@isl29028_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@isl29028_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @isl29028_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 16, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"isl29028:584:(&isl29028_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@isl29028_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 588, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Error %d initializing regmap\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl29028_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/isl29028.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isl29028_probe._entry_ptr = internal global ptr @isl29028_probe._entry, section ".printk_index", align 4
@isl29028_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 601, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): Error %d writing to TEST1_MODE register\0A\00", [49 x i8] zeroinitializer }, align 32
@isl29028_probe._entry_ptr.10 = internal global ptr @isl29028_probe._entry.8, section ".printk_index", align 4
@isl29028_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 609, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): Error %d writing to TEST2_MODE register\0A\00", [49 x i8] zeroinitializer }, align 32
@isl29028_probe._entry_ptr.13 = internal global ptr @isl29028_probe._entry.11, section ".printk_index", align 4
@isl29028_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @isl29108_group, ptr @isl29028_read_raw, ptr null, ptr null, ptr @isl29028_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@isl29028_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 4097, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@isl29028_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 632, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): iio registration failed with error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@isl29028_probe._entry_ptr.16 = internal global ptr @isl29028_probe._entry.14, section ".printk_index", align 4
@isl29028_clear_configure_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 538, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(): Error %d clearing the CONFIGURE register\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"isl29028_clear_configure_reg\00", [35 x i8] zeroinitializer }, align 32
@isl29028_clear_configure_reg._entry_ptr = internal global ptr @isl29028_clear_configure_reg._entry, section ".printk_index", align 4
@isl29108_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl29028_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@isl29028_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_proximity_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_scale_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_in_proximity_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.19, %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.21, %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"1.25 2.5 5 10 13.3 20 80 100\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"in_proximity_sampling_frequency_available\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"125 2000\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"in_illuminance_scale_available\00", [33 x i8] zeroinitializer }, align 32
@isl29028_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 473, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): mask value 0x%08lx is not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isl29028_read_raw\00", [46 x i8] zeroinitializer }, align 32
@isl29028_read_raw._entry_ptr = internal global ptr @isl29028_read_raw._entry, section ".printk_index", align 4
@isl29028_als_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 298, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): Error %d enabling ALS mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isl29028_als_get\00", [47 x i8] zeroinitializer }, align 32
@isl29028_als_get._entry_ptr = internal global ptr @isl29028_als_get._entry, section ".printk_index", align 4
@isl29028_set_als_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 173, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): Error %d setting the ALS scale\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isl29028_set_als_scale\00", [41 x i8] zeroinitializer }, align 32
@isl29028_set_als_scale._entry_ptr = internal global ptr @isl29028_set_als_scale._entry, section ".printk_index", align 4
@isl29028_read_als_ir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 246, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): Error %d reading register ALSIR_L\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isl29028_read_als_ir\00", [43 x i8] zeroinitializer }, align 32
@isl29028_read_als_ir._entry_ptr = internal global ptr @isl29028_read_als_ir._entry, section ".printk_index", align 4
@isl29028_read_als_ir._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.5, i32 254, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): Error %d reading register ALSIR_U\0A\00", [55 x i8] zeroinitializer }, align 32
@isl29028_read_als_ir._entry_ptr.33 = internal global ptr @isl29028_read_als_ir._entry.31, section ".printk_index", align 4
@isl29028_ir_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 329, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): Error %d enabling IR mode\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isl29028_ir_get\00", [16 x i8] zeroinitializer }, align 32
@isl29028_ir_get._entry_ptr = internal global ptr @isl29028_ir_get._entry, section ".printk_index", align 4
@isl29028_read_proxim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 280, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): Error %d reading register PROX_DATA\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isl29028_read_proxim\00", [43 x i8] zeroinitializer }, align 32
@isl29028_read_proxim._entry_ptr = internal global ptr @isl29028_read_proxim._entry, section ".printk_index", align 4
@isl29028_prox_data = internal constant { [8 x %struct.isl29028_prox_data], [32 x i8] } { [8 x %struct.isl29028_prox_data] [%struct.isl29028_prox_data { i32 1, i32 250000, i32 800 }, %struct.isl29028_prox_data { i32 2, i32 500000, i32 400 }, %struct.isl29028_prox_data { i32 5, i32 0, i32 200 }, %struct.isl29028_prox_data { i32 10, i32 0, i32 100 }, %struct.isl29028_prox_data { i32 13, i32 300000, i32 75 }, %struct.isl29028_prox_data { i32 20, i32 0, i32 50 }, %struct.isl29028_prox_data { i32 80, i32 0, i32 13 }, %struct.isl29028_prox_data { i32 100, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@isl29028_set_proxim_sampling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 126, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): Error %d setting the proximity sampling\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"isl29028_set_proxim_sampling\00", [35 x i8] zeroinitializer }, align 32
@isl29028_set_proxim_sampling._entry_ptr = internal global ptr @isl29028_set_proxim_sampling._entry, section ".printk_index", align 4
@isl29028_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 372, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(): proximity: Mask value 0x%08lx is not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isl29028_write_raw\00", [45 x i8] zeroinitializer }, align 32
@isl29028_write_raw._entry_ptr = internal global ptr @isl29028_write_raw._entry, section ".printk_index", align 4
@isl29028_write_raw._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.5, i32 379, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s(): proximity: Sampling frequency %d is not in the range [1:100]\0A\00", [60 x i8] zeroinitializer }, align 32
@isl29028_write_raw._entry_ptr.44 = internal global ptr @isl29028_write_raw._entry.42, section ".printk_index", align 4
@isl29028_write_raw._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.5, i32 389, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): light: Mask value 0x%08lx is not supported\0A\00", [46 x i8] zeroinitializer }, align 32
@isl29028_write_raw._entry_ptr.47 = internal global ptr @isl29028_write_raw._entry.45, section ".printk_index", align 4
@isl29028_write_raw._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.5, i32 396, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s(): light: Lux scale %d is not in the set {125, 2000}\0A\00", [39 x i8] zeroinitializer }, align 32
@isl29028_write_raw._entry_ptr.50 = internal global ptr @isl29028_write_raw._entry.48, section ".printk_index", align 4
@isl29028_write_raw._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.5, i32 404, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): Unsupported channel type %x\0A\00", [61 x i8] zeroinitializer }, align 32
@isl29028_write_raw._entry_ptr.53 = internal global ptr @isl29028_write_raw._entry.51, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 12]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 5, i64 10, i64 13, i64 20, i64 80, i64 100]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 125, i64 2000]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 5, i64 10, i64 13, i64 20, i64 80, i64 100]
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"isl29028_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 698, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 700, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"isl29028_of_match\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 690, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"isl29028_pm_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 677, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"isl29028_id\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 683, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 582, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"isl29028_regmap_config\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 559, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 584, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 587, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 599, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 607, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"isl29028_info\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 524, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"isl29028_channels\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 509, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 630, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 537, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"isl29108_group\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 505, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"isl29028_attributes\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 499, i32 26 }
@___asan_gen_.147 = private unnamed_addr constant [57 x i8] c"iio_const_attr_in_proximity_sampling_frequency_available\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [46 x i8] c"iio_const_attr_in_illuminance_scale_available\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 494, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 496, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 472, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 297, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 172, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 244, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 252, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 328, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 279, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [19 x i8] c"isl29028_prox_data\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 66, i32 40 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 125, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 370, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 377, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 387, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 394, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private constant [32 x i8] c"../drivers/iio/light/isl29028.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 403, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_isl29028_driver_exit, ptr @__initcall__kmod_isl29028__289_709_isl29028_driver_init6, ptr @isl29028_als_get._entry, ptr @isl29028_als_get._entry_ptr, ptr @isl29028_clear_configure_reg._entry, ptr @isl29028_clear_configure_reg._entry_ptr, ptr @isl29028_driver_exit, ptr @isl29028_ir_get._entry, ptr @isl29028_ir_get._entry_ptr, ptr @isl29028_probe._entry, ptr @isl29028_probe._entry.11, ptr @isl29028_probe._entry.14, ptr @isl29028_probe._entry.8, ptr @isl29028_probe._entry_ptr, ptr @isl29028_probe._entry_ptr.10, ptr @isl29028_probe._entry_ptr.13, ptr @isl29028_probe._entry_ptr.16, ptr @isl29028_read_als_ir._entry, ptr @isl29028_read_als_ir._entry.31, ptr @isl29028_read_als_ir._entry_ptr, ptr @isl29028_read_als_ir._entry_ptr.33, ptr @isl29028_read_proxim._entry, ptr @isl29028_read_proxim._entry_ptr, ptr @isl29028_read_raw._entry, ptr @isl29028_read_raw._entry_ptr, ptr @isl29028_set_als_scale._entry, ptr @isl29028_set_als_scale._entry_ptr, ptr @isl29028_set_proxim_sampling._entry, ptr @isl29028_set_proxim_sampling._entry_ptr, ptr @isl29028_write_raw._entry, ptr @isl29028_write_raw._entry.42, ptr @isl29028_write_raw._entry.45, ptr @isl29028_write_raw._entry.48, ptr @isl29028_write_raw._entry.51, ptr @isl29028_write_raw._entry_ptr, ptr @isl29028_write_raw._entry_ptr.44, ptr @isl29028_write_raw._entry_ptr.47, ptr @isl29028_write_raw._entry_ptr.50, ptr @isl29028_write_raw._entry_ptr.53, ptr @isl29028_driver, ptr @.str, ptr @isl29028_of_match, ptr @isl29028_pm_ops, ptr @isl29028_id, ptr @isl29028_probe.__key, ptr @.str.1, ptr @isl29028_probe._key, ptr @isl29028_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @isl29028_info, ptr @isl29028_channels, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @isl29108_group, ptr @isl29028_attributes, ptr @iio_const_attr_in_proximity_sampling_frequency_available, ptr @iio_const_attr_in_illuminance_scale_available, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @isl29028_prox_data, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_clear_configure_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29108_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_proximity_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_als_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_set_als_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_read_als_ir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_read_als_ir._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_ir_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_read_proxim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_prox_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_set_proxim_sampling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_write_raw._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_write_raw._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_write_raw._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29028_write_raw._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29028_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl29028_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isl29028_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @isl29028_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29028_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 116) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @isl29028_probe.__key) #7
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @isl29028_regmap_config, ptr noundef nonnull @isl29028_probe._key, ptr noundef nonnull @.str.2) #7
  %regmap = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %4) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %enable_prox = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %enable_prox to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enable_prox, align 4
  %prox_sampling_int = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %prox_sampling_int to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 20, ptr %prox_sampling_int, align 4
  %prox_sampling_frac = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %prox_sampling_frac to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %prox_sampling_frac, align 4
  %lux_scale = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %lux_scale to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2000, ptr %lux_scale, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %call2, i32 noundef 14, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef %call14) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 15, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, i32 noundef %call22) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %12) #7
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i89 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i89, label %isl29028_clear_configure_reg.exit.thread, label %if.end33

isl29028_clear_configure_reg.exit.thread:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call2.i) #10
  %als_ir_mode.i90 = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %als_ir_mode.i90 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %als_ir_mode.i90, align 4
  %16 = ptrtoint ptr %enable_prox to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %enable_prox, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %als_ir_mode.i = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %als_ir_mode.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %als_ir_mode.i, align 4
  %18 = ptrtoint ptr %enable_prox to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %enable_prox, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @isl29028_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @isl29028_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %21 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %num_channels, align 4
  %name34 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %name34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %id, ptr %name34, align 8
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %call, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %parent = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  %call39 = tail call i32 @__devm_iio_device_register(ptr noundef %25, ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end44:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef %call39) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end33.cleanup_crit_edge, %isl29028_clear_configure_reg.exit.thread, %do.end27, %do.end18, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %call14, %do.end18 ], [ %call22, %do.end27 ], [ %call39, %do.end44 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ %call2.i, %isl29028_clear_configure_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29028_remove(ptr noundef %client) #2 align 64 {
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
  %regmap.i = getelementptr inbounds %struct.isl29028_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i8 = tail call ptr @regmap_get_device(ptr noundef %5) #7
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.isl29028_clear_configure_reg.exit_crit_edge

entry.isl29028_clear_configure_reg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_clear_configure_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i8, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call2.i) #10
  br label %isl29028_clear_configure_reg.exit

isl29028_clear_configure_reg.exit:                ; preds = %do.end.i, %entry.isl29028_clear_configure_reg.exit_crit_edge
  %als_ir_mode.i = getelementptr inbounds %struct.isl29028_chip, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %als_ir_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %als_ir_mode.i, align 4
  %enable_prox.i = getelementptr inbounds %struct.isl29028_chip, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %enable_prox.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enable_prox.i, align 4
  ret i32 %call2.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @isl29028_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  %switch.cast = trunc i32 %switch.tableidx to i9
  %switch.downshift = lshr i9 -63, %switch.cast
  %1 = and i9 %switch.downshift, 1
  %2 = sext i9 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i9 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29028_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  %als_ir_data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #7
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #7, !srcloc !141
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !142
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %7 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %do.end [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge86
    i32 12, label %sw.bb12
    i32 2, label %sw.bb17
  ]

if.end.sw.bb_crit_edge86:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge86
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %9, label %sw.bb.sw.epilog23.thread_crit_edge [
    i32 6, label %sw.bb3
    i32 7, label %sw.bb5
    i32 8, label %sw.bb7
  ]

sw.bb.sw.epilog23.thread_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog23.thread

sw.bb3:                                           ; preds = %sw.bb
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i59 = tail call ptr @regmap_get_device(ptr noundef %12) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %als_ir_data.i) #7
  %13 = ptrtoint ptr %als_ir_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %als_ir_data.i, align 4, !annotation !143
  %call1.i = tail call fastcc i32 @isl29028_set_als_ir_mode(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i59, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %call1.i) #10
  br label %isl29028_als_get.exit

if.end.i:                                         ; preds = %sw.bb3
  %call2.i = call fastcc i32 @isl29028_read_als_ir(ptr noundef %1, ptr noundef nonnull %als_ir_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.isl29028_als_get.exit_crit_edge, label %if.end5.i

if.end.i.isl29028_als_get.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_als_get.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %lux_scale.i = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %lux_scale.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lux_scale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %15)
  %cmp6.i = icmp eq i32 %15, 125
  %16 = ptrtoint ptr %als_ir_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %als_ir_data.i, align 4
  %..i = select i1 %cmp6.i, i32 31, i32 49
  %.21.i = select i1 %cmp6.i, i32 1000, i32 100
  %mul8.i = mul i32 %..i, %17
  %div9.i = sdiv i32 %mul8.i, %.21.i
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div9.i, ptr %val, align 4
  br label %isl29028_als_get.exit

isl29028_als_get.exit:                            ; preds = %if.end5.i, %if.end.i.isl29028_als_get.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ 0, %if.end5.i ], [ %call2.i, %if.end.i.isl29028_als_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %als_ir_data.i) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.bb
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i61 = tail call ptr @regmap_get_device(ptr noundef %20) #7
  %call1.i62 = tail call fastcc i32 @isl29028_set_als_ir_mode(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %cmp.i63 = icmp slt i32 %call1.i62, 0
  br i1 %cmp.i63, label %do.end.i64, label %if.end.i66

do.end.i64:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i61, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %call1.i62) #10
  br label %sw.epilog23.thread

if.end.i66:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i65 = tail call fastcc i32 @isl29028_read_als_ir(ptr noundef %1, ptr noundef %val) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %sw.bb
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i69 = tail call ptr @regmap_get_device(ptr noundef %22) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %data.i, align 4, !annotation !143
  %enable_prox.i = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %enable_prox.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable_prox.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb7.if.end4.i_crit_edge

sw.bb7.if.end4.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %sw.bb7
  %prox_sampling_int.i.i = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %prox_sampling_int.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prox_sampling_int.i.i, align 4
  %prox_sampling_frac.i.i = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %prox_sampling_frac.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prox_sampling_frac.i.i, align 4
  %call.i.i70 = tail call fastcc i32 @isl29028_set_proxim_sampling(ptr noundef %1, i32 noundef %27, i32 noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.i.i71 = icmp slt i32 %call.i.i70, 0
  br i1 %cmp.i.i71, label %if.then.i.isl29028_read_proxim.exit_crit_edge, label %if.end.i.i

if.then.i.isl29028_read_proxim.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

if.end.i.i:                                       ; preds = %if.then.i
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 1, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.isl29028_read_proxim.exit_crit_edge, label %if.end4.i.i

if.end.i.i.isl29028_read_proxim.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %32 = ptrtoint ptr %prox_sampling_int.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prox_sampling_int.i.i, align 4
  %34 = ptrtoint ptr %prox_sampling_frac.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prox_sampling_frac.i.i, align 4
  %36 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %33, label %if.end4.i.i.isl29028_read_proxim.exit_crit_edge [
    i32 1, label %land.lhs.true.i.i.i
    i32 2, label %land.lhs.true.1.i.i.i
    i32 5, label %land.lhs.true.2.i.i.i
    i32 10, label %land.lhs.true.3.i.i.i
    i32 13, label %land.lhs.true.4.i.i.i
    i32 20, label %land.lhs.true.5.i.i.i
    i32 80, label %land.lhs.true.6.i.i.i
    i32 100, label %land.lhs.true.7.i.i.i
  ]

if.end4.i.i.isl29028_read_proxim.exit_crit_edge:  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

land.lhs.true.i.i.i:                              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %35)
  %cmp5.i.i.i = icmp eq i32 %35, 250000
  br i1 %cmp5.i.i.i, label %land.lhs.true.i.i.i.if.end.i72_crit_edge, label %land.lhs.true.i.i.i.isl29028_read_proxim.exit_crit_edge

land.lhs.true.i.i.i.isl29028_read_proxim.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

land.lhs.true.i.i.i.if.end.i72_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i72

land.lhs.true.1.i.i.i:                            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %35)
  %cmp5.1.i.i.i = icmp eq i32 %35, 500000
  br i1 %cmp5.1.i.i.i, label %land.lhs.true.1.i.i.i.if.end.i72_crit_edge, label %land.lhs.true.1.i.i.i.isl29028_read_proxim.exit_crit_edge

land.lhs.true.1.i.i.i.isl29028_read_proxim.exit_crit_edge: ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

land.lhs.true.1.i.i.i.if.end.i72_crit_edge:       ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i72

land.lhs.true.2.i.i.i:                            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5.2.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp5.2.i.i.i, label %land.lhs.true.2.i.i.i.if.end.i72_crit_edge, label %land.lhs.true.2.i.i.i.isl29028_read_proxim.exit_crit_edge

land.lhs.true.2.i.i.i.isl29028_read_proxim.exit_crit_edge: ; preds = %land.lhs.true.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

land.lhs.true.2.i.i.i.if.end.i72_crit_edge:       ; preds = %land.lhs.true.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i72

land.lhs.true.3.i.i.i:                            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5.3.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp5.3.i.i.i, label %land.lhs.true.3.i.i.i.if.end.i72_crit_edge, label %land.lhs.true.3.i.i.i.isl29028_read_proxim.exit_crit_edge

land.lhs.true.3.i.i.i.isl29028_read_proxim.exit_crit_edge: ; preds = %land.lhs.true.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

land.lhs.true.3.i.i.i.if.end.i72_crit_edge:       ; preds = %land.lhs.true.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i72

land.lhs.true.4.i.i.i:                            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %35)
  %cmp5.4.i.i.i = icmp eq i32 %35, 300000
  br i1 %cmp5.4.i.i.i, label %land.lhs.true.4.i.i.i.if.end.i72_crit_edge, label %land.lhs.true.4.i.i.i.isl29028_read_proxim.exit_crit_edge

land.lhs.true.4.i.i.i.isl29028_read_proxim.exit_crit_edge: ; preds = %land.lhs.true.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

land.lhs.true.4.i.i.i.if.end.i72_crit_edge:       ; preds = %land.lhs.true.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i72

land.lhs.true.5.i.i.i:                            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5.5.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp5.5.i.i.i, label %land.lhs.true.5.i.i.i.if.end.i72_crit_edge, label %land.lhs.true.5.i.i.i.isl29028_read_proxim.exit_crit_edge

land.lhs.true.5.i.i.i.isl29028_read_proxim.exit_crit_edge: ; preds = %land.lhs.true.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

land.lhs.true.5.i.i.i.if.end.i72_crit_edge:       ; preds = %land.lhs.true.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i72

land.lhs.true.6.i.i.i:                            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5.6.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp5.6.i.i.i, label %land.lhs.true.6.i.i.i.if.end.i72_crit_edge, label %land.lhs.true.6.i.i.i.isl29028_read_proxim.exit_crit_edge

land.lhs.true.6.i.i.i.isl29028_read_proxim.exit_crit_edge: ; preds = %land.lhs.true.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

land.lhs.true.6.i.i.i.if.end.i72_crit_edge:       ; preds = %land.lhs.true.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i72

land.lhs.true.7.i.i.i:                            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5.7.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp5.7.i.i.i, label %land.lhs.true.7.i.i.i.if.end.i72_crit_edge, label %land.lhs.true.7.i.i.i.isl29028_read_proxim.exit_crit_edge

land.lhs.true.7.i.i.i.isl29028_read_proxim.exit_crit_edge: ; preds = %land.lhs.true.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_read_proxim.exit

land.lhs.true.7.i.i.i.if.end.i72_crit_edge:       ; preds = %land.lhs.true.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i72

if.end.i72:                                       ; preds = %land.lhs.true.7.i.i.i.if.end.i72_crit_edge, %land.lhs.true.6.i.i.i.if.end.i72_crit_edge, %land.lhs.true.5.i.i.i.if.end.i72_crit_edge, %land.lhs.true.4.i.i.i.if.end.i72_crit_edge, %land.lhs.true.3.i.i.i.if.end.i72_crit_edge, %land.lhs.true.2.i.i.i.if.end.i72_crit_edge, %land.lhs.true.1.i.i.i.if.end.i72_crit_edge, %land.lhs.true.i.i.i.if.end.i72_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ 7, %land.lhs.true.7.i.i.i.if.end.i72_crit_edge ], [ 6, %land.lhs.true.6.i.i.i.if.end.i72_crit_edge ], [ 5, %land.lhs.true.5.i.i.i.if.end.i72_crit_edge ], [ 4, %land.lhs.true.4.i.i.i.if.end.i72_crit_edge ], [ 3, %land.lhs.true.3.i.i.i.if.end.i72_crit_edge ], [ 2, %land.lhs.true.2.i.i.i.if.end.i72_crit_edge ], [ 1, %land.lhs.true.1.i.i.i.if.end.i72_crit_edge ], [ 0, %land.lhs.true.i.i.i.if.end.i72_crit_edge ]
  %sleep_time.i.i = getelementptr [8 x %struct.isl29028_prox_data], ptr @isl29028_prox_data, i32 0, i32 %retval.0.i.ph.i.i, i32 2
  %37 = ptrtoint ptr %sleep_time.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sleep_time.i.i, align 4
  tail call void @msleep(i32 noundef %38) #7
  %39 = ptrtoint ptr %enable_prox.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %enable_prox.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i72, %sw.bb7.if.end4.i_crit_edge
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %41, i32 noundef 8, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end.i73, label %if.end9.i

do.end.i73:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i69, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %call6.i) #10
  br label %isl29028_read_proxim.exit

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data.i, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  br label %isl29028_read_proxim.exit

isl29028_read_proxim.exit:                        ; preds = %if.end9.i, %do.end.i73, %land.lhs.true.7.i.i.i.isl29028_read_proxim.exit_crit_edge, %land.lhs.true.6.i.i.i.isl29028_read_proxim.exit_crit_edge, %land.lhs.true.5.i.i.i.isl29028_read_proxim.exit_crit_edge, %land.lhs.true.4.i.i.i.isl29028_read_proxim.exit_crit_edge, %land.lhs.true.3.i.i.i.isl29028_read_proxim.exit_crit_edge, %land.lhs.true.2.i.i.i.isl29028_read_proxim.exit_crit_edge, %land.lhs.true.1.i.i.i.isl29028_read_proxim.exit_crit_edge, %land.lhs.true.i.i.i.isl29028_read_proxim.exit_crit_edge, %if.end4.i.i.isl29028_read_proxim.exit_crit_edge, %if.end.i.i.isl29028_read_proxim.exit_crit_edge, %if.then.i.isl29028_read_proxim.exit_crit_edge
  %retval.0.i74 = phi i32 [ %call6.i, %do.end.i73 ], [ 0, %if.end9.i ], [ -22, %land.lhs.true.7.i.i.i.isl29028_read_proxim.exit_crit_edge ], [ -22, %land.lhs.true.6.i.i.i.isl29028_read_proxim.exit_crit_edge ], [ -22, %land.lhs.true.5.i.i.i.isl29028_read_proxim.exit_crit_edge ], [ -22, %land.lhs.true.4.i.i.i.isl29028_read_proxim.exit_crit_edge ], [ -22, %land.lhs.true.3.i.i.i.isl29028_read_proxim.exit_crit_edge ], [ -22, %land.lhs.true.2.i.i.i.isl29028_read_proxim.exit_crit_edge ], [ -22, %land.lhs.true.1.i.i.i.isl29028_read_proxim.exit_crit_edge ], [ -22, %land.lhs.true.i.i.i.isl29028_read_proxim.exit_crit_edge ], [ -22, %if.end4.i.i.isl29028_read_proxim.exit_crit_edge ], [ %call.i.i.i, %if.end.i.i.isl29028_read_proxim.exit_crit_edge ], [ %call.i.i70, %if.then.i.isl29028_read_proxim.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %isl29028_read_proxim.exit, %if.end.i66, %isl29028_als_get.exit
  %ret.0 = phi i32 [ %retval.0.i74, %isl29028_read_proxim.exit ], [ %retval.0.i, %isl29028_als_get.exit ], [ %call2.i65, %if.end.i66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp9 = icmp slt i32 %ret.0, 0
  br i1 %cmp9, label %sw.epilog.sw.epilog23.thread_crit_edge, label %sw.epilog.if.end27_crit_edge

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

sw.epilog.sw.epilog23.thread_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog23.thread

sw.bb12:                                          ; preds = %if.end
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %cmp14.not = icmp eq i32 %46, 8
  br i1 %cmp14.not, label %if.end16, label %sw.bb12.sw.epilog23.thread_crit_edge

sw.bb12.sw.epilog23.thread_crit_edge:             ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog23.thread

if.end16:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %prox_sampling_int = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %prox_sampling_int to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prox_sampling_int, align 4
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %val, align 4
  %prox_sampling_frac = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 3
  br label %if.end27.sink.split

sw.bb17:                                          ; preds = %if.end
  %50 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %51)
  %cmp19.not = icmp eq i32 %51, 6
  br i1 %cmp19.not, label %if.end21, label %sw.bb17.sw.epilog23.thread_crit_edge

sw.bb17.sw.epilog23.thread_crit_edge:             ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog23.thread

if.end21:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %lux_scale = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 5
  br label %if.end27.sink.split

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %mask) #10
  br label %sw.epilog23.thread

sw.epilog23.thread:                               ; preds = %do.end, %sw.bb17.sw.epilog23.thread_crit_edge, %sw.bb12.sw.epilog23.thread_crit_edge, %sw.epilog.sw.epilog23.thread_crit_edge, %do.end.i64, %sw.bb.sw.epilog23.thread_crit_edge
  %ret.1.ph = phi i32 [ -22, %sw.bb12.sw.epilog23.thread_crit_edge ], [ -22, %sw.bb17.sw.epilog23.thread_crit_edge ], [ -22, %do.end ], [ %ret.0, %sw.epilog.sw.epilog23.thread_crit_edge ], [ %call1.i62, %do.end.i64 ], [ -22, %sw.bb.sw.epilog23.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

if.end27.sink.split:                              ; preds = %if.end21, %if.end16
  %prox_sampling_frac.sink = phi ptr [ %prox_sampling_frac, %if.end16 ], [ %lux_scale, %if.end21 ]
  %val2.sink = phi ptr [ %val2, %if.end16 ], [ %val, %if.end21 ]
  %52 = ptrtoint ptr %prox_sampling_frac.sink to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prox_sampling_frac.sink, align 4
  %54 = ptrtoint ptr %val2.sink to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %val2.sink, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %sw.epilog.if.end27_crit_edge
  call void @mutex_unlock(ptr noundef %1) #7
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call.i76 = call ptr @regmap_get_device(ptr noundef %56) #7
  %call.i5.i = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i76, i32 0, i32 12, i32 22
  %57 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store volatile i64 %call.i5.i, ptr %last_busy.i.i, align 8
  %call.i6.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i76, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %cmp29 = icmp slt i32 %call.i6.i, 0
  %call28.ret.1 = select i1 %cmp29, i32 %call.i6.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %sw.epilog23.thread, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28.ret.1, %if.end27 ], [ %ret.1.ph, %sw.epilog23.thread ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29028_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #7
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #7, !srcloc !141
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !142
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %8, label %do.end31 [
    i32 8, label %sw.bb
    i32 6, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cmp3.not = icmp eq i32 %mask, 12
  br i1 %cmp3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %mask) #10
  br label %sw.epilog.thread

if.end5:                                          ; preds = %sw.bb
  %10 = add i32 %val, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %10)
  %11 = icmp ult i32 %10, -100
  br i1 %11, label %do.end11, label %sw.epilog

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %val) #10
  br label %sw.epilog.thread

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cmp15.not = icmp eq i32 %mask, 2
  br i1 %cmp15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41, i32 noundef %mask) #10
  br label %sw.epilog.thread

if.end20:                                         ; preds = %sw.bb14
  %12 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %val, label %do.end26 [
    i32 125, label %if.end20.if.end27_crit_edge
    i32 2000, label %if.end20.if.end27_crit_edge84
  ]

if.end20.if.end27_crit_edge84:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41, i32 noundef %val) #10
  br label %sw.epilog.thread

if.end27:                                         ; preds = %if.end20.if.end27_crit_edge, %if.end20.if.end27_crit_edge84
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i71 = tail call ptr @regmap_get_device(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %val)
  %cmp.i = icmp eq i32 %val, 2000
  %cond.i = select i1 %cmp.i, i32 2, i32 0
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i.i72 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 1, i32 noundef 2, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %cmp3.i = icmp slt i32 %call.i.i72, 0
  br i1 %cmp3.i, label %do.end.i, label %sw.epilog.thread81

do.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i71, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i.i72) #10
  br label %sw.epilog.thread

sw.epilog.thread81:                               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %lux_scale4.i = getelementptr inbounds %struct.isl29028_chip, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %lux_scale4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %val, ptr %lux_scale4.i, align 4
  tail call void @mutex_unlock(ptr noundef %1) #7
  br label %if.end36

do.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.41, i32 noundef %8) #10
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %do.end31, %do.end.i, %do.end26, %do.end19, %do.end11, %do.end
  %ret.0.ph = phi i32 [ %call.i.i72, %do.end.i ], [ -22, %do.end11 ], [ -22, %do.end ], [ -22, %do.end26 ], [ -22, %do.end19 ], [ -22, %do.end31 ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end5
  %call13 = tail call fastcc i32 @isl29028_set_proxim_sampling(ptr noundef %1, i32 noundef %val, i32 noundef %val2)
  tail call void @mutex_unlock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp34 = icmp slt i32 %call13, 0
  br i1 %cmp34, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end36_crit_edge

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %sw.epilog.if.end36_crit_edge, %sw.epilog.thread81
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i74 = tail call ptr @regmap_get_device(ptr noundef %19) #7
  %call.i5.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i74, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i5.i, ptr %last_busy.i.i, align 8
  %call.i6.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i74, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %sw.epilog.cleanup_crit_edge ], [ %call.i6.i, %if.end36 ], [ %ret.0.ph, %sw.epilog.thread ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl29028_set_als_ir_mode(ptr nocapture noundef %chip, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %als_ir_mode = getelementptr inbounds %struct.isl29028_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %als_ir_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %als_ir_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mode)
  %cmp = icmp eq i32 %1, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lux_scale = getelementptr inbounds %struct.isl29028_chip, ptr %chip, i32 0, i32 5
  %2 = ptrtoint ptr %lux_scale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lux_scale, align 4
  %regmap.i = getelementptr inbounds %struct.isl29028_chip, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %3)
  %cmp.i = icmp eq i32 %3, 2000
  %cond.i = select i1 %cmp.i, i32 2, i32 0
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1, i32 noundef 2, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %isl29028_set_als_scale.exit.thread, label %if.end3

isl29028_set_als_scale.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %lux_scale to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %lux_scale, align 4
  %9 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %mode, label %if.end3.if.end18_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 0, label %sw.bb13
  ]

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

sw.bb:                                            ; preds = %if.end3
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp5 = icmp slt i32 %call.i42, 0
  br i1 %cmp5, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 1, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %if.end7
  %ret.0 = phi i32 [ %call.i44, %sw.bb10 ], [ %call.i43, %if.end7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp16 = icmp slt i32 %ret.0, 0
  br i1 %cmp16, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end18_crit_edge

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog.if.end18_crit_edge, %if.end3.if.end18_crit_edge
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 1, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp21 = icmp slt i32 %call.i46, 0
  br i1 %cmp21, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  %20 = ptrtoint ptr %als_ir_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mode, ptr %als_ir_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end18.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb13, %sw.bb.cleanup_crit_edge, %isl29028_set_als_scale.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %call.i45, %sw.bb13 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i42, %sw.bb.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ %call.i46, %if.end18.cleanup_crit_edge ], [ %call.i.i, %isl29028_set_als_scale.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl29028_read_als_ir(ptr nocapture noundef readonly %chip, ptr nocapture noundef writeonly %als_ir) unnamed_addr #2 align 64 {
entry:
  %lsb = alloca i32, align 4
  %msb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.isl29028_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsb) #7
  %2 = ptrtoint ptr %lsb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lsb, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msb) #7
  %3 = ptrtoint ptr %msb to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %msb, align 4, !annotation !143
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 9, ptr noundef nonnull %lsb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %7, i32 noundef 10, ptr noundef nonnull %msb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end10

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %call4) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msb, align 4
  %and = shl i32 %9, 8
  %shl = and i32 %and, 3840
  %10 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lsb, align 4
  %and11 = and i32 %11, 255
  %or = or i32 %shl, %and11
  %12 = ptrtoint ptr %als_ir to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %als_ir, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end9 ], [ 0, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msb) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl29028_set_proxim_sampling(ptr nocapture noundef %chip, i32 noundef %sampling_int, i32 noundef %sampling_fract) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.isl29028_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #7
  %2 = zext i32 %sampling_int to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %sampling_int, label %entry.cleanup_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true.1.i
    i32 5, label %land.lhs.true.2.i
    i32 10, label %land.lhs.true.3.i
    i32 13, label %land.lhs.true.4.i
    i32 20, label %land.lhs.true.5.i
    i32 80, label %land.lhs.true.6.i
    i32 100, label %land.lhs.true.7.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %sampling_fract)
  %cmp5.i = icmp eq i32 %sampling_fract, 250000
  br i1 %cmp5.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.1.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %sampling_fract)
  %cmp5.1.i = icmp eq i32 %sampling_fract, 500000
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.if.end_crit_edge, label %land.lhs.true.1.i.cleanup_crit_edge

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.1.i.if.end_crit_edge:               ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.2.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sampling_fract)
  %cmp5.2.i = icmp eq i32 %sampling_fract, 0
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.if.end_crit_edge, label %land.lhs.true.2.i.cleanup_crit_edge

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.2.i.if.end_crit_edge:               ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.3.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sampling_fract)
  %cmp5.3.i = icmp eq i32 %sampling_fract, 0
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.end_crit_edge, label %land.lhs.true.3.i.cleanup_crit_edge

land.lhs.true.3.i.cleanup_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.3.i.if.end_crit_edge:               ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.4.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %sampling_fract)
  %cmp5.4.i = icmp eq i32 %sampling_fract, 300000
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.if.end_crit_edge, label %land.lhs.true.4.i.cleanup_crit_edge

land.lhs.true.4.i.cleanup_crit_edge:              ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.4.i.if.end_crit_edge:               ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.5.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sampling_fract)
  %cmp5.5.i = icmp eq i32 %sampling_fract, 0
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.if.end_crit_edge, label %land.lhs.true.5.i.cleanup_crit_edge

land.lhs.true.5.i.cleanup_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.5.i.if.end_crit_edge:               ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.6.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sampling_fract)
  %cmp5.6.i = icmp eq i32 %sampling_fract, 0
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.if.end_crit_edge, label %land.lhs.true.6.i.cleanup_crit_edge

land.lhs.true.6.i.cleanup_crit_edge:              ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.6.i.if.end_crit_edge:               ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.7.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sampling_fract)
  %cmp5.7.i = icmp eq i32 %sampling_fract, 0
  br i1 %cmp5.7.i, label %land.lhs.true.7.i.if.end_crit_edge, label %land.lhs.true.7.i.cleanup_crit_edge

land.lhs.true.7.i.cleanup_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.7.i.if.end_crit_edge:               ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.7.i.if.end_crit_edge, %land.lhs.true.6.i.if.end_crit_edge, %land.lhs.true.5.i.if.end_crit_edge, %land.lhs.true.4.i.if.end_crit_edge, %land.lhs.true.3.i.if.end_crit_edge, %land.lhs.true.2.i.if.end_crit_edge, %land.lhs.true.1.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 112, %land.lhs.true.7.i.if.end_crit_edge ], [ 96, %land.lhs.true.6.i.if.end_crit_edge ], [ 80, %land.lhs.true.5.i.if.end_crit_edge ], [ 64, %land.lhs.true.4.i.if.end_crit_edge ], [ 48, %land.lhs.true.3.i.if.end_crit_edge ], [ 32, %land.lhs.true.2.i.if.end_crit_edge ], [ 16, %land.lhs.true.1.i.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ]
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 1, i32 noundef 112, i32 noundef %retval.0.i.ph, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %call.i) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prox_sampling_int = getelementptr inbounds %struct.isl29028_chip, ptr %chip, i32 0, i32 2
  %5 = ptrtoint ptr %prox_sampling_int to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sampling_int, ptr %prox_sampling_int, align 4
  %prox_sampling_frac = getelementptr inbounds %struct.isl29028_chip, ptr %chip, i32 0, i32 3
  %6 = ptrtoint ptr %prox_sampling_frac to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sampling_fract, ptr %prox_sampling_frac, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %land.lhs.true.7.i.cleanup_crit_edge, %land.lhs.true.6.i.cleanup_crit_edge, %land.lhs.true.5.i.cleanup_crit_edge, %land.lhs.true.4.i.cleanup_crit_edge, %land.lhs.true.3.i.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %land.lhs.true.1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %land.lhs.true.1.i.cleanup_crit_edge ], [ -22, %land.lhs.true.2.i.cleanup_crit_edge ], [ -22, %land.lhs.true.3.i.cleanup_crit_edge ], [ -22, %land.lhs.true.4.i.cleanup_crit_edge ], [ -22, %land.lhs.true.5.i.cleanup_crit_edge ], [ -22, %land.lhs.true.6.i.cleanup_crit_edge ], [ -22, %land.lhs.true.7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29028_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %regmap.i = getelementptr inbounds %struct.isl29028_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #7
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.isl29028_clear_configure_reg.exit_crit_edge

entry.isl29028_clear_configure_reg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29028_clear_configure_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call2.i) #10
  br label %isl29028_clear_configure_reg.exit

isl29028_clear_configure_reg.exit:                ; preds = %do.end.i, %entry.isl29028_clear_configure_reg.exit_crit_edge
  %als_ir_mode.i = getelementptr inbounds %struct.isl29028_chip, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %als_ir_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %als_ir_mode.i, align 4
  %enable_prox.i = getelementptr inbounds %struct.isl29028_chip, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %enable_prox.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enable_prox.i, align 4
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %call2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isl29028_resume(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_isl29028__289_709_isl29028_driver_init6, !1, !"__initcall__kmod_isl29028__289_709_isl29028_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/isl29028.c", i32 709, i32 1}
!2 = !{ptr @__exitcall_isl29028_driver_exit, !1, !"__exitcall_isl29028_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/isl29028.c", i32 711, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/isl29028.c", i32 712, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author293, !9, !"__UNIQUE_ID_author293", i1 false, i1 false}
!9 = !{!"../drivers/iio/light/isl29028.c", i32 713, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/isl29028.c", i32 700, i32 11}
!12 = !{ptr @isl29028_driver, !13, !"isl29028_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/isl29028.c", i32 698, i32 26}
!14 = !{ptr @isl29028_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/isl29028.c", i32 582, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @isl29028_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/isl29028.c", i32 584, i32 17}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/light/isl29028.c", i32 587, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @isl29028_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @isl29028_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/isl29028.c", i32 599, i32 3}
!30 = !{ptr @isl29028_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @isl29028_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/isl29028.c", i32 607, i32 3}
!34 = !{ptr @isl29028_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @isl29028_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/isl29028.c", i32 630, i32 3}
!38 = !{ptr @isl29028_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @isl29028_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @isl29028_regmap_config, !41, !"isl29028_regmap_config", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/isl29028.c", i32 559, i32 35}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/isl29028.c", i32 537, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @isl29028_clear_configure_reg._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @isl29028_clear_configure_reg._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @isl29028_info, !48, !"isl29028_info", i1 false, i1 false}
!48 = !{!"../drivers/iio/light/isl29028.c", i32 524, i32 30}
!49 = !{ptr @isl29108_group, !50, !"isl29108_group", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/isl29028.c", i32 505, i32 37}
!51 = !{ptr @isl29028_attributes, !52, !"isl29028_attributes", i1 false, i1 false}
!52 = !{!"../drivers/iio/light/isl29028.c", i32 499, i32 26}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/isl29028.c", i32 494, i32 8}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @iio_const_attr_in_proximity_sampling_frequency_available, !54, !"iio_const_attr_in_proximity_sampling_frequency_available", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/light/isl29028.c", i32 496, i32 8}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @iio_const_attr_in_illuminance_scale_available, !58, !"iio_const_attr_in_illuminance_scale_available", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/light/isl29028.c", i32 472, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @isl29028_read_raw._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @isl29028_read_raw._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/isl29028.c", i32 297, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @isl29028_als_get._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @isl29028_als_get._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/light/isl29028.c", i32 172, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @isl29028_set_als_scale._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @isl29028_set_als_scale._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/light/isl29028.c", i32 244, i32 3}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @isl29028_read_als_ir._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @isl29028_read_als_ir._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/light/isl29028.c", i32 252, i32 3}
!83 = !{ptr @isl29028_read_als_ir._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @isl29028_read_als_ir._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/light/isl29028.c", i32 328, i32 3}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @isl29028_ir_get._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @isl29028_ir_get._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/light/isl29028.c", i32 279, i32 3}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @isl29028_read_proxim._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @isl29028_read_proxim._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/light/isl29028.c", i32 125, i32 3}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @isl29028_set_proxim_sampling._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @isl29028_set_proxim_sampling._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @isl29028_prox_data, !101, !"isl29028_prox_data", i1 false, i1 false}
!101 = !{!"../drivers/iio/light/isl29028.c", i32 66, i32 40}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/light/isl29028.c", i32 370, i32 4}
!104 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @isl29028_write_raw._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @isl29028_write_raw._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/light/isl29028.c", i32 377, i32 4}
!109 = !{ptr @isl29028_write_raw._entry.42, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @isl29028_write_raw._entry_ptr.44, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/light/isl29028.c", i32 387, i32 4}
!113 = !{ptr @isl29028_write_raw._entry.45, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @isl29028_write_raw._entry_ptr.47, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/light/isl29028.c", i32 394, i32 4}
!117 = !{ptr @isl29028_write_raw._entry.48, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @isl29028_write_raw._entry_ptr.50, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/light/isl29028.c", i32 403, i32 3}
!121 = !{ptr @isl29028_write_raw._entry.51, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @isl29028_write_raw._entry_ptr.53, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @isl29028_channels, !124, !"isl29028_channels", i1 false, i1 false}
!124 = !{!"../drivers/iio/light/isl29028.c", i32 509, i32 35}
!125 = !{ptr @isl29028_of_match, !126, !"isl29028_of_match", i1 false, i1 false}
!126 = !{!"../drivers/iio/light/isl29028.c", i32 690, i32 34}
!127 = !{ptr @isl29028_pm_ops, !128, !"isl29028_pm_ops", i1 false, i1 false}
!128 = !{!"../drivers/iio/light/isl29028.c", i32 677, i32 32}
!129 = !{ptr @isl29028_id, !130, !"isl29028_id", i1 false, i1 false}
!130 = !{!"../drivers/iio/light/isl29028.c", i32 683, i32 35}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 2148354446}
!141 = !{i64 840066, i64 840091, i64 840113, i64 840129, i64 840141, i64 840161, i64 840185, i64 840201, i64 840213}
!142 = !{i64 2148354634}
!143 = !{!"auto-init"}
!144 = !{i8 0, i8 2}
