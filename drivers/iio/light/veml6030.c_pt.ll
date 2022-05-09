; ModuleID = '/llk/IR_all_yes/drivers/iio/light/veml6030.c_pt.bc'
source_filename = "../drivers/iio/light/veml6030.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.veml6030_data = type { ptr, ptr, i32, i32, i32 }

@__initcall__kmod_veml6030__289_903_veml6030_driver_init6 = internal global ptr @veml6030_driver_init, section ".initcall6.init", align 4
@veml6030_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @veml6030_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @veml6030_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @veml6030_pm_ops, ptr null, ptr null }, ptr @veml6030_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_veml6030_driver_exit = internal global ptr @veml6030_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [47 x i8] c"veml6030.author=Rishi Gupta <gupt21@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [51 x i8] c"veml6030.description=VEML6030 Ambient Light Sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"veml6030.file=drivers/iio/light/veml6030\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"veml6030.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"veml6030\00", [23 x i8] zeroinitializer }, align 32
@veml6030_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vishay,veml6030\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@veml6030_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @veml6030_runtime_suspend, ptr @veml6030_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@veml6030_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"veml6030\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@veml6030_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 798, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"i2c adapter doesn't support plain i2c\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"veml6030_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/veml6030.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@veml6030_probe._entry_ptr = internal global ptr @veml6030_probe._entry, section ".printk_index", align 4
@veml6030_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@veml6030_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.13, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"veml6030:802:(&veml6030_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@veml6030_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 804, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't setup regmap\0A\00", [44 x i8] zeroinitializer }, align 32
@veml6030_probe._entry_ptr.9 = internal global ptr @veml6030_probe._entry.7, section ".printk_index", align 4
@veml6030_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262151, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @veml6030_event_spec, i32 3, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 1, i32 12, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [48 x i8] zeroinitializer }, align 32
@veml6030_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 829, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"irq %d request failed\0A\00", [41 x i8] zeroinitializer }, align 32
@veml6030_probe._entry_ptr.12 = internal global ptr @veml6030_probe._entry.10, section ".printk_index", align 4
@veml6030_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @veml6030_event_attr_group, ptr @veml6030_attr_group, ptr @veml6030_read_raw, ptr null, ptr null, ptr @veml6030_write_raw, ptr null, ptr null, ptr @veml6030_read_interrupt_config, ptr @veml6030_write_interrupt_config, ptr @veml6030_read_event_val, ptr @veml6030_write_event_val, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@veml6030_info_no_irq = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @veml6030_attr_group, ptr @veml6030_read_raw, ptr null, ptr null, ptr @veml6030_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"veml6030_regmap\00", [16 x i8] zeroinitializer }, align 32
@veml6030_event_spec = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 9, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@veml6030_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 701, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't read als interrupt register %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"veml6030_event_handler\00", [41 x i8] zeroinitializer }, align 32
@veml6030_event_handler._entry_ptr = internal global ptr @veml6030_event_handler._entry, section ".printk_index", align 4
@veml6030_event_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @veml6030_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@veml6030_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @veml6030_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@veml6030_event_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_in_illuminance_period_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_illuminance_period_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_illuminance_period_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"in_illuminance_period_available\00", [32 x i8] zeroinitializer }, align 32
@in_illuminance_period_available_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't read als conf register %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"in_illuminance_period_available_show\00", [59 x i8] zeroinitializer }, align 32
@in_illuminance_period_available_show._entry_ptr = internal global ptr @in_illuminance_period_available_show._entry, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@period_values = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0.1 0.2 0.4 0.8\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0.2 0.4 0.8 1.6\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0.4 0.8 1.6 3.2\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0.8 1.6 3.2 6.4\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0.05 0.1 0.2 0.4\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.025 0.050 0.1 0.2\00", [44 x i8] zeroinitializer }, align 32
@veml6030_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_integration_time_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_scale_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.26, %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.28, %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0.025 0.05 0.1 0.2 0.4 0.8\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"in_illuminance_integration_time_available\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0.125 0.25 1.0 2.0\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"in_illuminance_scale_available\00", [33 x i8] zeroinitializer }, align 32
@veml6030_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't read als data %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"veml6030_read_raw\00", [46 x i8] zeroinitializer }, align 32
@veml6030_read_raw._entry_ptr = internal global ptr @veml6030_read_raw._entry, section ".printk_index", align 4
@veml6030_read_raw._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 534, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't read white data %d\0A\00", [38 x i8] zeroinitializer }, align 32
@veml6030_read_raw._entry_ptr.34 = internal global ptr @veml6030_read_raw._entry.32, section ".printk_index", align 4
@veml6030_get_intgrn_tm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.35, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"veml6030_get_intgrn_tm\00", [41 x i8] zeroinitializer }, align 32
@veml6030_get_intgrn_tm._entry_ptr = internal global ptr @veml6030_get_intgrn_tm._entry, section ".printk_index", align 4
@veml6030_get_als_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.36, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"veml6030_get_als_gain\00", [42 x i8] zeroinitializer }, align 32
@veml6030_get_als_gain._entry_ptr = internal global ptr @veml6030_get_als_gain._entry, section ".printk_index", align 4
@veml6030_set_intgrn_tm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't update als integration time %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"veml6030_set_intgrn_tm\00", [41 x i8] zeroinitializer }, align 32
@veml6030_set_intgrn_tm._entry_ptr = internal global ptr @veml6030_set_intgrn_tm._entry, section ".printk_index", align 4
@veml6030_set_als_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't set als gain %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"veml6030_set_als_gain\00", [42 x i8] zeroinitializer }, align 32
@veml6030_set_als_gain._entry_ptr = internal global ptr @veml6030_set_als_gain._entry, section ".printk_index", align 4
@veml6030_read_interrupt_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.41, ptr @.str.3, i32 631, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"veml6030_read_interrupt_config\00", [33 x i8] zeroinitializer }, align 32
@veml6030_read_interrupt_config._entry_ptr = internal global ptr @veml6030_read_interrupt_config._entry, section ".printk_index", align 4
@veml6030_write_interrupt_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 661, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"can't disable als to configure interrupt %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"veml6030_write_interrupt_config\00", [32 x i8] zeroinitializer }, align 32
@veml6030_write_interrupt_config._entry_ptr = internal global ptr @veml6030_write_interrupt_config._entry, section ".printk_index", align 4
@veml6030_write_interrupt_config._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't enable interrupt & poweron als %d\0A\00", [55 x i8] zeroinitializer }, align 32
@veml6030_write_interrupt_config._entry_ptr.46 = internal global ptr @veml6030_write_interrupt_config._entry.44, section ".printk_index", align 4
@veml6030_read_thresh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't read als threshold value %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"veml6030_read_thresh\00", [43 x i8] zeroinitializer }, align 32
@veml6030_read_thresh._entry_ptr = internal global ptr @veml6030_read_thresh._entry, section ".printk_index", align 4
@veml6030_read_persistence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.49, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"veml6030_read_persistence\00", [38 x i8] zeroinitializer }, align 32
@veml6030_read_persistence._entry_ptr = internal global ptr @veml6030_read_persistence._entry, section ".printk_index", align 4
@veml6030_write_thresh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't set high threshold %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"veml6030_write_thresh\00", [42 x i8] zeroinitializer }, align 32
@veml6030_write_thresh._entry_ptr = internal global ptr @veml6030_write_thresh._entry, section ".printk_index", align 4
@veml6030_write_thresh._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't set low threshold %d\0A\00", [36 x i8] zeroinitializer }, align 32
@veml6030_write_thresh._entry_ptr.54 = internal global ptr @veml6030_write_thresh._entry.52, section ".printk_index", align 4
@veml6030_write_persistence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't set persistence value %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"veml6030_write_persistence\00", [37 x i8] zeroinitializer }, align 32
@veml6030_write_persistence._entry_ptr = internal global ptr @veml6030_write_persistence._entry, section ".printk_index", align 4
@veml6030_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 735, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't shutdown als %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"veml6030_hw_init\00", [47 x i8] zeroinitializer }, align 32
@veml6030_hw_init._entry_ptr = internal global ptr @veml6030_hw_init._entry, section ".printk_index", align 4
@veml6030_hw_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't setup als configs %d\0A\00", [36 x i8] zeroinitializer }, align 32
@veml6030_hw_init._entry_ptr.61 = internal global ptr @veml6030_hw_init._entry.59, section ".printk_index", align 4
@veml6030_hw_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.3, i32 748, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't setup default PSM %d\0A\00", [36 x i8] zeroinitializer }, align 32
@veml6030_hw_init._entry_ptr.64 = internal global ptr @veml6030_hw_init._entry.62, section ".printk_index", align 4
@veml6030_hw_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.3, i32 754, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't setup high threshold %d\0A\00", [33 x i8] zeroinitializer }, align 32
@veml6030_hw_init._entry_ptr.67 = internal global ptr @veml6030_hw_init._entry.65, section ".printk_index", align 4
@veml6030_hw_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.3, i32 760, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't setup low threshold %d\0A\00", [34 x i8] zeroinitializer }, align 32
@veml6030_hw_init._entry_ptr.70 = internal global ptr @veml6030_hw_init._entry.68, section ".printk_index", align 4
@veml6030_hw_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.3, i32 766, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't poweron als %d\0A\00", [42 x i8] zeroinitializer }, align 32
@veml6030_hw_init._entry_ptr.73 = internal global ptr @veml6030_hw_init._entry.71, section ".printk_index", align 4
@veml6030_hw_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.58, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't clear als interrupt status %d\0A\00", [59 x i8] zeroinitializer }, align 32
@veml6030_hw_init._entry_ptr.76 = internal global ptr @veml6030_hw_init._entry.74, section ".printk_index", align 4
@veml6030_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't suspend als %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"veml6030_runtime_suspend\00", [39 x i8] zeroinitializer }, align 32
@veml6030_runtime_suspend._entry_ptr = internal global ptr @veml6030_runtime_suspend._entry, section ".printk_index", align 4
@veml6030_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 870, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't resume als %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"veml6030_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@veml6030_runtime_resume._entry_ptr = internal global ptr @veml6030_runtime_resume._entry, section ".printk_index", align 4
@switch.table.veml6030_read_raw = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 100000, i32 200000, i32 400000, i32 800000, i32 100000, i32 100000, i32 100000, i32 100000, i32 50000, i32 100000, i32 100000, i32 100000, i32 25000], [44 x i8] zeroinitializer }, align 32
@switch.table.veml6030_read_event_val = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 100000, i32 200000, i32 400000, i32 800000, i32 100000, i32 100000, i32 100000, i32 100000, i32 50000, i32 100000, i32 100000, i32 100000, i32 25000], [44 x i8] zeroinitializer }, align 32
@switch.table.veml6030_write_event_val = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 100000, i32 200000, i32 400000, i32 800000, i32 100000, i32 100000, i32 100000, i32 100000, i32 50000, i32 100000, i32 100000, i32 100000, i32 25000], [44 x i8] zeroinitializer }, align 32
@switch.table.in_illuminance_period_available_show = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 18]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 18]
@__sancov_gen_cov_switch_values.84 = internal global [8 x i64] [i64 6, i64 32, i64 25000, i64 50000, i64 100000, i64 200000, i64 400000, i64 800000]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 6]
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"veml6030_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 894, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 896, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"veml6030_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 882, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"veml6030_pm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 875, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"veml6030_id\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 888, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 798, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [23 x i8] c"veml6030_regmap_config\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 206, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 802, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 804, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"veml6030_channels\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 185, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 828, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"veml6030_info\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 675, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant [21 x i8] c"veml6030_info_no_irq\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 686, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 207, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"veml6030_event_spec\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 162, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 700, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"veml6030_event_attr_group\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 141, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"veml6030_attr_group\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 77, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant [26 x i8] c"veml6030_event_attributes\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 136, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant [45 x i8] c"iio_dev_attr_in_illuminance_period_available\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 134, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 108, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 131, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant [14 x i8] c"period_values\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 86, i32 27 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 87, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 88, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 89, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 90, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 91, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 92, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"veml6030_attributes\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 71, i32 26 }
@___asan_gen_.217 = private unnamed_addr constant [57 x i8] c"iio_const_attr_in_illuminance_integration_time_available\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [46 x i8] c"iio_const_attr_in_illuminance_scale_available\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 61, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 68, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 521, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 534, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 222, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 428, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 295, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 400, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 630, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 660, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 669, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 468, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 327, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 489, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 494, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 369, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 735, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 741, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 748, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 754, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 760, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 766, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 776, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 857, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.401 = private constant [32 x i8] c"../drivers/iio/light/veml6030.c\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 870, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant [31 x i8] c"switch.table.veml6030_read_raw\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [37 x i8] c"switch.table.veml6030_read_event_val\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [38 x i8] c"switch.table.veml6030_write_event_val\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [50 x i8] c"switch.table.in_illuminance_period_available_show\00", align 1
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_veml6030_driver_exit, ptr @__initcall__kmod_veml6030__289_903_veml6030_driver_init6, ptr @in_illuminance_period_available_show._entry, ptr @in_illuminance_period_available_show._entry_ptr, ptr @veml6030_driver_exit, ptr @veml6030_event_handler._entry, ptr @veml6030_event_handler._entry_ptr, ptr @veml6030_get_als_gain._entry, ptr @veml6030_get_als_gain._entry_ptr, ptr @veml6030_get_intgrn_tm._entry, ptr @veml6030_get_intgrn_tm._entry_ptr, ptr @veml6030_hw_init._entry, ptr @veml6030_hw_init._entry.59, ptr @veml6030_hw_init._entry.62, ptr @veml6030_hw_init._entry.65, ptr @veml6030_hw_init._entry.68, ptr @veml6030_hw_init._entry.71, ptr @veml6030_hw_init._entry.74, ptr @veml6030_hw_init._entry_ptr, ptr @veml6030_hw_init._entry_ptr.61, ptr @veml6030_hw_init._entry_ptr.64, ptr @veml6030_hw_init._entry_ptr.67, ptr @veml6030_hw_init._entry_ptr.70, ptr @veml6030_hw_init._entry_ptr.73, ptr @veml6030_hw_init._entry_ptr.76, ptr @veml6030_probe._entry, ptr @veml6030_probe._entry.10, ptr @veml6030_probe._entry.7, ptr @veml6030_probe._entry_ptr, ptr @veml6030_probe._entry_ptr.12, ptr @veml6030_probe._entry_ptr.9, ptr @veml6030_read_interrupt_config._entry, ptr @veml6030_read_interrupt_config._entry_ptr, ptr @veml6030_read_persistence._entry, ptr @veml6030_read_persistence._entry_ptr, ptr @veml6030_read_raw._entry, ptr @veml6030_read_raw._entry.32, ptr @veml6030_read_raw._entry_ptr, ptr @veml6030_read_raw._entry_ptr.34, ptr @veml6030_read_thresh._entry, ptr @veml6030_read_thresh._entry_ptr, ptr @veml6030_runtime_resume._entry, ptr @veml6030_runtime_resume._entry_ptr, ptr @veml6030_runtime_suspend._entry, ptr @veml6030_runtime_suspend._entry_ptr, ptr @veml6030_set_als_gain._entry, ptr @veml6030_set_als_gain._entry_ptr, ptr @veml6030_set_intgrn_tm._entry, ptr @veml6030_set_intgrn_tm._entry_ptr, ptr @veml6030_write_interrupt_config._entry, ptr @veml6030_write_interrupt_config._entry.44, ptr @veml6030_write_interrupt_config._entry_ptr, ptr @veml6030_write_interrupt_config._entry_ptr.46, ptr @veml6030_write_persistence._entry, ptr @veml6030_write_persistence._entry_ptr, ptr @veml6030_write_thresh._entry, ptr @veml6030_write_thresh._entry.52, ptr @veml6030_write_thresh._entry_ptr, ptr @veml6030_write_thresh._entry_ptr.54, ptr @veml6030_driver, ptr @.str, ptr @veml6030_of_match, ptr @veml6030_pm_ops, ptr @veml6030_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @veml6030_probe._key, ptr @veml6030_regmap_config, ptr @.str.6, ptr @.str.8, ptr @veml6030_channels, ptr @.str.11, ptr @veml6030_info, ptr @veml6030_info_no_irq, ptr @.str.13, ptr @veml6030_event_spec, ptr @.str.14, ptr @.str.15, ptr @veml6030_event_attr_group, ptr @veml6030_attr_group, ptr @veml6030_event_attributes, ptr @iio_dev_attr_in_illuminance_period_available, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @period_values, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @veml6030_attributes, ptr @iio_const_attr_in_illuminance_integration_time_available, ptr @iio_const_attr_in_illuminance_scale_available, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @switch.table.veml6030_read_raw, ptr @switch.table.veml6030_read_event_val, ptr @switch.table.veml6030_write_event_val, ptr @switch.table.in_illuminance_period_available_show], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_info_no_irq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_event_spec to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_event_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_event_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_illuminance_period_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_illuminance_period_available_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @period_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_read_raw._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_get_intgrn_tm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_get_als_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_set_intgrn_tm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_set_als_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_read_interrupt_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_write_interrupt_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_write_interrupt_config._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_read_thresh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_read_persistence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_write_thresh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_write_thresh._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_write_persistence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_hw_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_hw_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_hw_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_hw_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_hw_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_hw_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6030_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.veml6030_read_raw to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.veml6030_read_event_val to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.veml6030_write_event_val to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.in_illuminance_period_available_show to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @veml6030_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @veml6030_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @veml6030_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @veml6030_regmap_config, ptr noundef nonnull @veml6030_probe._key, ptr noundef nonnull @.str.6) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.8) #9
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev7, i32 noundef 20) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 19
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %8, align 4
  %regmap17 = getelementptr inbounds %struct.veml6030_data, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %regmap17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1, ptr %regmap17, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 15
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 13
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @veml6030_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %num_channels, align 4
  %15 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call11, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.end14.if.end31_crit_edge, label %if.then19

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then19:                                        ; preds = %if.end14
  %call22 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev7, i32 noundef %17, ptr noundef null, ptr noundef nonnull @veml6030_event_handler, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.end26, label %if.then19.if.end31_crit_edge

if.then19.if.end31_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.11, i32 noundef %19) #9
  br label %cleanup

if.end31:                                         ; preds = %if.then19.if.end31_crit_edge, %if.end14.if.end31_crit_edge
  %veml6030_info_no_irq.sink = phi ptr [ @veml6030_info, %if.then19.if.end31_crit_edge ], [ @veml6030_info_no_irq, %if.end14.if.end31_crit_edge ]
  %info30 = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 17
  %20 = ptrtoint ptr %info30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %veml6030_info_no_irq.sink, ptr %info30, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !207
  %22 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %regmap.i.i = getelementptr inbounds %struct.veml6030_data, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, i32 noundef %call.i.i.i) #9
  br label %veml6030_hw_init.exit

if.end.i:                                         ; preds = %if.end31
  %28 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 0, i32 noundef 4097) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.60, i32 noundef %call3.i) #9
  br label %veml6030_hw_init.exit

if.end10.i:                                       ; preds = %if.end.i
  %30 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 3, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool13.not.i = icmp eq i32 %call.i.i79, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.63, i32 noundef %call.i.i79) #9
  br label %veml6030_hw_init.exit

if.end19.i:                                       ; preds = %if.end10.i
  %32 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i.i, align 4
  %call21.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 1, i32 noundef 65535) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end28.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev27.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.66, i32 noundef %call21.i) #9
  br label %veml6030_hw_init.exit

if.end28.i:                                       ; preds = %if.end19.i
  %34 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i.i, align 4
  %call30.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end37.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev36.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36.i, ptr noundef nonnull @.str.69, i32 noundef %call30.i) #9
  br label %veml6030_hw_init.exit

if.end37.i:                                       ; preds = %if.end28.i
  %36 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i95.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95.i)
  %tobool39.not.i = icmp eq i32 %call.i.i95.i, 0
  br i1 %tobool39.not.i, label %if.end45.i, label %do.end43.i

do.end43.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev44.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.72, i32 noundef %call.i.i95.i) #9
  br label %veml6030_hw_init.exit

if.end45.i:                                       ; preds = %if.end37.i
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 4002, i32 noundef 2) #6
  %38 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i.i, align 4
  %call47.i = call i32 @regmap_read(ptr noundef %39, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp.i80 = icmp slt i32 %call47.i, 0
  br i1 %cmp.i80, label %veml6030_hw_init.exit.thread, label %veml6030_hw_init.exit.thread85

veml6030_hw_init.exit.thread:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev52.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52.i, ptr noundef nonnull @.str.75, i32 noundef %call47.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

veml6030_hw_init.exit.thread85:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %cur_gain.i = getelementptr inbounds %struct.veml6030_data, ptr %23, i32 0, i32 3
  %40 = ptrtoint ptr %cur_gain.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %cur_gain.i, align 4
  %cur_resolution.i = getelementptr inbounds %struct.veml6030_data, ptr %23, i32 0, i32 2
  %41 = ptrtoint ptr %cur_resolution.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4608, ptr %cur_resolution.i, align 4
  %cur_integration_time.i = getelementptr inbounds %struct.veml6030_data, ptr %23, i32 0, i32 4
  %42 = ptrtoint ptr %cur_integration_time.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %cur_integration_time.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end35

veml6030_hw_init.exit:                            ; preds = %do.end43.i, %do.end35.i, %do.end26.i, %do.end17.i, %do.end8.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i.i, %do.end.i ], [ %call3.i, %do.end8.i ], [ %call.i.i79, %do.end17.i ], [ %call21.i, %do.end26.i ], [ %call30.i, %do.end35.i ], [ %call.i.i95.i, %do.end43.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp33 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp33, label %veml6030_hw_init.exit.cleanup_crit_edge, label %veml6030_hw_init.exit.if.end35_crit_edge

veml6030_hw_init.exit.if.end35_crit_edge:         ; preds = %veml6030_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

veml6030_hw_init.exit.cleanup_crit_edge:          ; preds = %veml6030_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %veml6030_hw_init.exit.if.end35_crit_edge, %veml6030_hw_init.exit.thread85
  %call.i = call i32 @devm_add_action(ptr noundef %dev7, ptr noundef nonnull @veml6030_als_shut_down_action, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i81 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i81, label %if.end35.if.end40_crit_edge, label %devm_add_action_or_reset.exit

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

devm_add_action_or_reset.exit:                    ; preds = %if.end35
  %43 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap17, align 4
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp38 = icmp slt i32 %call.i, 0
  br i1 %cmp38, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.if.end40_crit_edge

devm_add_action_or_reset.exit.if.end40_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %devm_add_action_or_reset.exit.if.end40_crit_edge, %if.end35.if.end40_crit_edge
  %call42 = call i32 @__devm_iio_device_register(ptr noundef %dev7, ptr noundef nonnull %call11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %devm_add_action_or_reset.exit.cleanup_crit_edge, %veml6030_hw_init.exit.cleanup_crit_edge, %veml6030_hw_init.exit.thread, %do.end26, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %6, %do.end6 ], [ %call22, %do.end26 ], [ %call42, %if.end40 ], [ -95, %do.end ], [ -12, %if.end9.cleanup_crit_edge ], [ %retval.0.i, %veml6030_hw_init.exit.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit.cleanup_crit_edge ], [ %call47.i, %veml6030_hw_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !207
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.veml6030_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and5 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %. = select i1 %tobool6.not, i32 2, i32 1
  %9 = zext i32 %. to i64
  %shl = shl nuw nsw i64 %9, 48
  %or10 = or i64 %shl, 30064771072
  %call14 = call i64 @iio_get_time_ns(ptr noundef %private) #6
  %call15 = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or10, i64 noundef %call14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %if.end4 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @veml6030_als_shut_down_action(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.veml6030_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg.i70 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !207
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %regmap1 = getelementptr inbounds %struct.veml6030_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %7 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge83
    i32 18, label %sw.bb27
    i32 2, label %sw.bb33
  ]

entry.sw.bb_crit_edge83:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge83
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %9, label %sw.bb.cleanup_crit_edge [
    i32 6, label %sw.bb3
    i32 7, label %sw.bb10
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %call4 = call i32 @regmap_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.30, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cmp5 = icmp eq i32 %mask, 1
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cur_resolution = getelementptr inbounds %struct.veml6030_data, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %cur_resolution to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_resolution, align 4
  %mul = mul i32 %14, %12
  %div = sdiv i32 %mul, 10000
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %val, align 4
  %16 = load i32, ptr %cur_resolution, align 4
  %mul8 = mul i32 %16, %12
  %rem = srem i32 %mul8, 10000
  %17 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rem, ptr %val2, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %12, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb
  %call11 = call i32 @regmap_read(ptr noundef %4, i32 noundef 5, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end17

do.end16:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.33, i32 noundef %call11) #9
  br label %cleanup

if.end17:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cmp18 = icmp eq i32 %mask, 1
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  br i1 %cmp18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %cur_resolution20 = getelementptr inbounds %struct.veml6030_data, ptr %2, i32 0, i32 2
  %21 = ptrtoint ptr %cur_resolution20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_resolution20, align 4
  %mul21 = mul i32 %22, %20
  %div22 = sdiv i32 %mul21, 10000
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div22, ptr %val, align 4
  %24 = load i32, ptr %cur_resolution20, align 4
  %mul24 = mul i32 %24, %20
  %rem25 = srem i32 %mul24, 10000
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %rem25, ptr %val2, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  %27 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp29 = icmp eq i32 %28, 6
  br i1 %cmp29, label %if.then30, label %sw.bb27.cleanup_crit_edge

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %sw.bb27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %reg.i, align 4, !annotation !207
  %call1.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %call1.i) #9
  br label %veml6030_get_intgrn_tm.exit

if.end.i:                                         ; preds = %if.then30
  %32 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg.i, align 4
  %34 = lshr i32 %33, 6
  %and.i = and i32 %34, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i)
  %35 = icmp ult i32 %and.i, 13
  br i1 %35, label %switch.hole_check, label %if.end.i.veml6030_get_intgrn_tm.exit_crit_edge

if.end.i.veml6030_get_intgrn_tm.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %veml6030_get_intgrn_tm.exit

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %and.i to i16
  %switch.shifted = lshr i16 4367, %switch.maskindex
  %36 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %switch.lobit.not = icmp eq i16 %36, 0
  br i1 %switch.lobit.not, label %switch.hole_check.veml6030_get_intgrn_tm.exit_crit_edge, label %switch.lookup

switch.hole_check.veml6030_get_intgrn_tm.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %veml6030_get_intgrn_tm.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.veml6030_read_raw, i32 0, i32 %and.i
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load i32, ptr %switch.gep, align 4
  %38 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %switch.load, ptr %val2, align 4
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %val, align 4
  br label %veml6030_get_intgrn_tm.exit

veml6030_get_intgrn_tm.exit:                      ; preds = %switch.lookup, %switch.hole_check.veml6030_get_intgrn_tm.exit_crit_edge, %if.end.i.veml6030_get_intgrn_tm.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ 2, %switch.lookup ], [ -22, %if.end.i.veml6030_get_intgrn_tm.exit_crit_edge ], [ -22, %switch.hole_check.veml6030_get_intgrn_tm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  %40 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %41)
  %cmp35 = icmp eq i32 %41, 6
  br i1 %cmp35, label %if.then36, label %sw.bb33.cleanup_crit_edge

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %sw.bb33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i70) #6
  %42 = ptrtoint ptr %reg.i70 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %reg.i70, align 4, !annotation !207
  %call1.i73 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %reg.i70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %if.end.i78, label %do.end.i76

do.end.i76:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %2, align 4
  %dev.i75 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i75, ptr noundef nonnull @.str.17, i32 noundef %call1.i73) #9
  br label %veml6030_get_als_gain.exit

if.end.i78:                                       ; preds = %if.then36
  %45 = ptrtoint ptr %reg.i70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg.i70, align 4
  %47 = lshr i32 %46, 11
  %and.i77 = and i32 %47, 3
  %48 = zext i32 %and.i77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and.i77, label %if.end.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i79
    i32 2, label %sw.bb3.i80
    i32 3, label %sw.bb4.i81
  ]

sw.bb.i:                                          ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %val, align 4
  %50 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %val2, align 4
  br label %veml6030_get_als_gain.exit

sw.bb2.i79:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %val, align 4
  %52 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %val2, align 4
  br label %veml6030_get_als_gain.exit

sw.bb3.i80:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %val, align 4
  %54 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 125000, ptr %val2, align 4
  br label %veml6030_get_als_gain.exit

sw.bb4.i81:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %val, align 4
  %56 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 250000, ptr %val2, align 4
  br label %veml6030_get_als_gain.exit

if.end.unreachabledefault.i:                      ; preds = %if.end.i78
  unreachable

veml6030_get_als_gain.exit:                       ; preds = %sw.bb4.i81, %sw.bb3.i80, %sw.bb2.i79, %sw.bb.i, %do.end.i76
  %retval.0.i82 = phi i32 [ %call1.i73, %do.end.i76 ], [ 2, %sw.bb4.i81 ], [ 2, %sw.bb3.i80 ], [ 2, %sw.bb2.i79 ], [ 2, %sw.bb.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i70) #6
  br label %cleanup

cleanup:                                          ; preds = %veml6030_get_als_gain.exit, %sw.bb33.cleanup_crit_edge, %veml6030_get_intgrn_tm.exit, %sw.bb27.cleanup_crit_edge, %if.end26, %if.then19, %do.end16, %if.end9, %if.then6, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i82, %veml6030_get_als_gain.exit ], [ %retval.0.i, %veml6030_get_intgrn_tm.exit ], [ %call11, %do.end16 ], [ 2, %if.then19 ], [ 1, %if.end26 ], [ %call4, %do.end ], [ 2, %if.then6 ], [ 1, %if.end9 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb27.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 18, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cond8 = icmp eq i32 %2, 6
  br i1 %cond8, label %sw.bb1, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %sw.bb
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %sw.bb1
  %5 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %val2, label %if.end.i.return_crit_edge [
    i32 25000, label %if.end.i.sw.epilog.i_crit_edge
    i32 50000, label %sw.bb1.i
    i32 100000, label %sw.bb2.i
    i32 200000, label %sw.bb3.i
    i32 400000, label %sw.bb4.i
    i32 800000, label %sw.bb5.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %new_int_time.0.i = phi i32 [ 192, %sw.bb5.i ], [ 128, %sw.bb4.i ], [ 64, %sw.bb3.i ], [ 0, %sw.bb2.i ], [ 512, %sw.bb1.i ], [ 768, %if.end.i.sw.epilog.i_crit_edge ]
  %int_idx.0.i = phi i32 [ 0, %sw.bb5.i ], [ 1, %sw.bb4.i ], [ 2, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 5, %if.end.i.sw.epilog.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.veml6030_data, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 960, i32 noundef %new_int_time.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %call.i.i) #9
  br label %return

if.end9.i:                                        ; preds = %sw.epilog.i
  %cur_integration_time.i = getelementptr inbounds %struct.veml6030_data, ptr %4, i32 0, i32 4
  %10 = ptrtoint ptr %cur_integration_time.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_integration_time.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %int_idx.0.i)
  %cmp.i = icmp slt i32 %11, %int_idx.0.i
  br i1 %cmp.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %int_idx.0.i, %11
  %cur_resolution.i = getelementptr inbounds %struct.veml6030_data, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %cur_resolution.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_resolution.i, align 4
  %shl.i = shl i32 %13, %sub.i
  store i32 %shl.i, ptr %cur_resolution.i, align 4
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %int_idx.0.i)
  %cmp13.i = icmp sgt i32 %11, %int_idx.0.i
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i.if.end19.i_crit_edge

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub16.i = sub i32 %11, %int_idx.0.i
  %cur_resolution17.i = getelementptr inbounds %struct.veml6030_data, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %cur_resolution17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_resolution17.i, align 4
  %shr.i = ashr i32 %15, %sub16.i
  store i32 %shr.i, ptr %cur_resolution17.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %if.else.i.if.end19.i_crit_edge, %if.then10.i
  %16 = ptrtoint ptr %cur_integration_time.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %int_idx.0.i, ptr %cur_integration_time.i, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cond = icmp eq i32 %18, 6
  br i1 %cond, label %sw.bb4, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb4:                                           ; preds = %sw.bb2
  %priv.i.i13 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %19 = ptrtoint ptr %priv.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i.i13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i14 = icmp eq i32 %val, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %val2)
  %cmp1.i = icmp eq i32 %val2, 125000
  %or.cond.i = and i1 %cmp.i14, %cmp1.i
  br i1 %or.cond.i, label %sw.bb4.if.end19.i19_crit_edge, label %if.else.i15

sw.bb4.if.end19.i19_crit_edge:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i19

if.else.i15:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp4.i = icmp eq i32 %val2, 250000
  %or.cond60.i = and i1 %cmp.i14, %cmp4.i
  br i1 %or.cond60.i, label %if.else.i15.if.end19.i19_crit_edge, label %if.else6.i

if.else.i15.if.end19.i19_crit_edge:               ; preds = %if.else.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i19

if.else6.i:                                       ; preds = %if.else.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp7.i = icmp eq i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp9.i = icmp eq i32 %val2, 0
  %or.cond61.i = and i1 %cmp7.i, %cmp9.i
  br i1 %or.cond61.i, label %if.else6.i.if.end19.i19_crit_edge, label %if.else11.i

if.else6.i.if.end19.i19_crit_edge:                ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i19

if.else11.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp12.i = icmp eq i32 %val, 2
  %or.cond62.i = and i1 %cmp12.i, %cmp9.i
  br i1 %or.cond62.i, label %if.else11.i.if.end19.i19_crit_edge, label %if.else11.i.return_crit_edge

if.else11.i.return_crit_edge:                     ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else11.i.if.end19.i19_crit_edge:               ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i19

if.end19.i19:                                     ; preds = %if.else11.i.if.end19.i19_crit_edge, %if.else6.i.if.end19.i19_crit_edge, %if.else.i15.if.end19.i19_crit_edge, %sw.bb4.if.end19.i19_crit_edge
  %new_gain.0.i = phi i32 [ 4096, %sw.bb4.if.end19.i19_crit_edge ], [ 6144, %if.else.i15.if.end19.i19_crit_edge ], [ 0, %if.else6.i.if.end19.i19_crit_edge ], [ 2048, %if.else11.i.if.end19.i19_crit_edge ]
  %gain_idx.0.i = phi i32 [ 3, %sw.bb4.if.end19.i19_crit_edge ], [ 2, %if.else.i15.if.end19.i19_crit_edge ], [ 1, %if.else6.i.if.end19.i19_crit_edge ], [ 0, %if.else11.i.if.end19.i19_crit_edge ]
  %regmap.i16 = getelementptr inbounds %struct.veml6030_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i16, align 4
  %call.i.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 0, i32 noundef 6144, i32 noundef %new_gain.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool.not.i18 = icmp eq i32 %call.i.i17, 0
  br i1 %tobool.not.i18, label %if.end22.i, label %do.end.i21

do.end.i21:                                       ; preds = %if.end19.i19
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %dev.i20 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i20, ptr noundef nonnull @.str.39, i32 noundef %call.i.i17) #9
  br label %return

if.end22.i:                                       ; preds = %if.end19.i19
  %cur_gain.i = getelementptr inbounds %struct.veml6030_data, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %cur_gain.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur_gain.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %gain_idx.0.i)
  %cmp23.i = icmp slt i32 %26, %gain_idx.0.i
  br i1 %cmp23.i, label %if.then24.i, label %if.else26.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i22 = sub i32 %gain_idx.0.i, %26
  %cur_resolution.i23 = getelementptr inbounds %struct.veml6030_data, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %cur_resolution.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_resolution.i23, align 4
  %shl.i24 = shl i32 %28, %sub.i22
  store i32 %shl.i24, ptr %cur_resolution.i23, align 4
  br label %if.end34.i

if.else26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %gain_idx.0.i)
  %cmp28.i = icmp sgt i32 %26, %gain_idx.0.i
  br i1 %cmp28.i, label %if.then29.i, label %if.else26.i.if.end34.i_crit_edge

if.else26.i.if.end34.i_crit_edge:                 ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub31.i = sub i32 %26, %gain_idx.0.i
  %cur_resolution32.i = getelementptr inbounds %struct.veml6030_data, ptr %20, i32 0, i32 2
  %29 = ptrtoint ptr %cur_resolution32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_resolution32.i, align 4
  %shr.i25 = ashr i32 %30, %sub31.i
  store i32 %shr.i25, ptr %cur_resolution32.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %if.else26.i.if.end34.i_crit_edge, %if.then24.i
  %31 = ptrtoint ptr %cur_gain.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %gain_idx.0.i, ptr %cur_gain.i, align 4
  br label %return

return:                                           ; preds = %if.end34.i, %do.end.i21, %if.else11.i.return_crit_edge, %sw.bb2.return_crit_edge, %if.end19.i, %do.end.i, %if.end.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb2.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ %call.i.i, %do.end.i ], [ 0, %if.end19.i ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ %call.i.i17, %do.end.i21 ], [ 0, %if.end34.i ], [ -22, %if.else11.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_read_interrupt_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !207
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.veml6030_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = lshr i32 %8, 1
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %and.lobit, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_write_interrupt_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %2 = icmp ugt i32 %state, 1
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.veml6030_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp slt i32 %call.i.i, 0
  br i1 %cmp3, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call.i.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %shl = shl nuw nsw i32 %state, 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 3, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %do.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.45, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end10 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_read_event_val(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  %reg.i9 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %info, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %dir.off = add i32 %dir, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir.off)
  %switch = icmp ult i32 %dir.off, 2
  br i1 %switch, label %sw.bb1, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg.i, align 4, !annotation !207
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 1
  %regmap.i = getelementptr inbounds %struct.veml6030_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %..i = select i1 %cmp.i, i32 1, i32 2
  %call3.i = call i32 @regmap_read(ptr noundef %5, i32 noundef %..i, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %call3.i) #9
  br label %veml6030_read_thresh.exit

if.end5.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %9, 65535
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i, ptr %val, align 4
  br label %veml6030_read_thresh.exit

veml6030_read_thresh.exit:                        ; preds = %if.end5.i, %do.end.i
  %retval.0.i = phi i32 [ %call3.i, %do.end.i ], [ 1, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i9) #6
  %11 = ptrtoint ptr %reg.i9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %reg.i9, align 4, !annotation !207
  %priv.i.i10 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %12 = ptrtoint ptr %priv.i.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #6
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !207
  %regmap.i.i = getelementptr inbounds %struct.veml6030_data, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %reg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %veml6030_get_intgrn_tm.exit.i

if.end.i.i:                                       ; preds = %sw.bb2
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg.i.i, align 4
  %19 = lshr i32 %18, 6
  %and.i.i = and i32 %19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i.i)
  %20 = icmp ult i32 %and.i.i, 13
  br i1 %20, label %switch.hole_check, label %if.end.i.i.veml6030_get_intgrn_tm.exit.thread.i_crit_edge

if.end.i.i.veml6030_get_intgrn_tm.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %veml6030_get_intgrn_tm.exit.thread.i

veml6030_get_intgrn_tm.exit.thread.i:             ; preds = %switch.hole_check.veml6030_get_intgrn_tm.exit.thread.i_crit_edge, %if.end.i.i.veml6030_get_intgrn_tm.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  br label %veml6030_read_persistence.exit

switch.hole_check:                                ; preds = %if.end.i.i
  %switch.maskindex = trunc i32 %and.i.i to i16
  %switch.shifted = lshr i16 4367, %switch.maskindex
  %21 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %switch.lobit.not = icmp eq i16 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.veml6030_get_intgrn_tm.exit.thread.i_crit_edge, label %switch.lookup

switch.hole_check.veml6030_get_intgrn_tm.exit.thread.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %veml6030_get_intgrn_tm.exit.thread.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.veml6030_read_event_val, i32 0, i32 %and.i.i
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  br label %if.end.i

veml6030_get_intgrn_tm.exit.i:                    ; preds = %sw.bb2
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %13, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef %call1.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i11 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i11, label %veml6030_get_intgrn_tm.exit.i.veml6030_read_persistence.exit_crit_edge, label %veml6030_get_intgrn_tm.exit.i.if.end.i_crit_edge

veml6030_get_intgrn_tm.exit.i.if.end.i_crit_edge: ; preds = %veml6030_get_intgrn_tm.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

veml6030_get_intgrn_tm.exit.i.veml6030_read_persistence.exit_crit_edge: ; preds = %veml6030_get_intgrn_tm.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %veml6030_read_persistence.exit

if.end.i:                                         ; preds = %veml6030_get_intgrn_tm.exit.i.if.end.i_crit_edge, %switch.lookup
  %y.023.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %veml6030_get_intgrn_tm.exit.i.if.end.i_crit_edge ]
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %reg.i9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i12 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i12, label %if.end.i.if.end4.i_crit_edge, label %do.end.i14

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

do.end.i14:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %13, align 4
  %dev.i13 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i13, ptr noundef nonnull @.str.17, i32 noundef %call2.i) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i14, %if.end.i.if.end4.i_crit_edge
  %29 = ptrtoint ptr %reg.i9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg.i9, align 4
  %31 = lshr i32 %30, 4
  %and.i15 = and i32 %31, 3
  %mul.i = shl nsw i32 %y.023.i, %and.i15
  %mul.i.frozen = freeze i32 %mul.i
  %div.i = sdiv i32 %mul.i.frozen, 1000000
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div.i, ptr %val, align 4
  %33 = mul i32 %div.i, 1000000
  %rem.i.decomposed = sub i32 %mul.i.frozen, %33
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %rem.i.decomposed, ptr %val2, align 4
  br label %veml6030_read_persistence.exit

veml6030_read_persistence.exit:                   ; preds = %if.end4.i, %veml6030_get_intgrn_tm.exit.i.veml6030_read_persistence.exit_crit_edge, %veml6030_get_intgrn_tm.exit.thread.i
  %retval.0.i16 = phi i32 [ 2, %if.end4.i ], [ %call1.i.i, %veml6030_get_intgrn_tm.exit.i.veml6030_read_persistence.exit_crit_edge ], [ -22, %veml6030_get_intgrn_tm.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i9) #6
  br label %return

return:                                           ; preds = %veml6030_read_persistence.exit, %veml6030_read_thresh.exit, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i16, %veml6030_read_persistence.exit ], [ %retval.0.i, %veml6030_read_thresh.exit ], [ -22, %sw.bb.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_write_event_val(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %info, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %val)
  %3 = icmp ult i32 %val, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not.i = icmp eq i32 %val2, 0
  %or.cond31.i = and i1 %3, %tobool.not.i
  br i1 %or.cond31.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp3.i = icmp eq i32 %dir, 1
  %regmap.i = getelementptr inbounds %struct.veml6030_data, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1, i32 noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.return_crit_edge, label %do.end.i

if.then4.i.return_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50, i32 noundef %call5.i) #9
  br label %return

if.else.i:                                        ; preds = %if.end.i
  %call10.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2, i32 noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.else.i.return_crit_edge, label %do.end15.i

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end15.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.53, i32 noundef %call10.i) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  %priv.i.i6 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %10 = ptrtoint ptr %priv.i.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i.i6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #6
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !207
  %regmap.i.i = getelementptr inbounds %struct.veml6030_data, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %reg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %veml6030_get_intgrn_tm.exit.i

if.end.i.i:                                       ; preds = %sw.bb1
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg.i.i, align 4
  %17 = lshr i32 %16, 6
  %and.i.i = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i.i)
  %18 = icmp ult i32 %and.i.i, 13
  br i1 %18, label %switch.hole_check, label %if.end.i.i.veml6030_get_intgrn_tm.exit.thread.i_crit_edge

if.end.i.i.veml6030_get_intgrn_tm.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %veml6030_get_intgrn_tm.exit.thread.i

veml6030_get_intgrn_tm.exit.thread.i:             ; preds = %switch.hole_check.veml6030_get_intgrn_tm.exit.thread.i_crit_edge, %if.end.i.i.veml6030_get_intgrn_tm.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  br label %return

switch.hole_check:                                ; preds = %if.end.i.i
  %switch.maskindex = trunc i32 %and.i.i to i16
  %switch.shifted = lshr i16 4367, %switch.maskindex
  %19 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %switch.lobit.not = icmp eq i16 %19, 0
  br i1 %switch.lobit.not, label %switch.hole_check.veml6030_get_intgrn_tm.exit.thread.i_crit_edge, label %switch.lookup

switch.hole_check.veml6030_get_intgrn_tm.exit.thread.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %veml6030_get_intgrn_tm.exit.thread.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.veml6030_write_event_val, i32 0, i32 %and.i.i
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  br label %if.end.i7

veml6030_get_intgrn_tm.exit.i:                    ; preds = %sw.bb1
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %11, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef %call1.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %veml6030_get_intgrn_tm.exit.i.return_crit_edge, label %veml6030_get_intgrn_tm.exit.i.if.end.i7_crit_edge

veml6030_get_intgrn_tm.exit.i.if.end.i7_crit_edge: ; preds = %veml6030_get_intgrn_tm.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i7

veml6030_get_intgrn_tm.exit.i.return_crit_edge:   ; preds = %veml6030_get_intgrn_tm.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i7:                                        ; preds = %veml6030_get_intgrn_tm.exit.i.if.end.i7_crit_edge, %switch.lookup
  %y.0136.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %veml6030_get_intgrn_tm.exit.i.if.end.i7_crit_edge ]
  %23 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %val, label %if.end.i7.return_crit_edge [
    i32 0, label %if.end.i7.if.end23.i_crit_edge
    i32 1, label %land.lhs.true.i
    i32 3, label %land.lhs.true9.i
    i32 6, label %land.lhs.true15.i
  ]

if.end.i7.if.end23.i_crit_edge:                   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end.i7.return_crit_edge:                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.i:                                  ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %val2)
  %cmp4.i = icmp eq i32 %val2, 600000
  br i1 %cmp4.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

land.lhs.true9.i:                                 ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %val2)
  %cmp10.old.i = icmp eq i32 %val2, 200000
  br i1 %cmp10.old.i, label %land.lhs.true9.i.if.end23.i_crit_edge, label %land.lhs.true9.i.return_crit_edge

land.lhs.true9.i.return_crit_edge:                ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true9.i.if.end23.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

land.lhs.true15.i:                                ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %val2)
  %cmp16.old.i = icmp eq i32 %val2, 400000
  br i1 %cmp16.old.i, label %land.lhs.true15.i.if.end23.i_crit_edge, label %land.lhs.true15.i.return_crit_edge

land.lhs.true15.i.return_crit_edge:               ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true15.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %land.lhs.true15.i.if.end23.i_crit_edge, %land.lhs.true9.i.if.end23.i_crit_edge, %land.lhs.true.i.if.end23.i_crit_edge, %if.end.i7.if.end23.i_crit_edge
  %.pn.i = phi i32 [ %val2, %if.end.i7.if.end23.i_crit_edge ], [ 1600000, %land.lhs.true.i.if.end23.i_crit_edge ], [ 3200000, %land.lhs.true9.i.if.end23.i_crit_edge ], [ 6400000, %land.lhs.true15.i.if.end23.i_crit_edge ]
  %period.0.i = sdiv i32 %.pn.i, %y.0136.i
  %24 = add i32 %period.0.i, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %24)
  %25 = icmp ult i32 %24, -8
  br i1 %25, label %if.end23.i.return_crit_edge, label %cond.false.i

if.end23.i.return_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.false.i:                                     ; preds = %if.end23.i
  %call.i.i = call i32 @__sw_hweight8(i32 noundef %period.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp85.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp85.not.i, label %if.end88.i, label %cond.false.i.return_crit_edge

cond.false.i.return_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end88.i:                                       ; preds = %cond.false.i
  %26 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i, align 4
  %28 = call i32 @llvm.cttz.i32(i32 %period.0.i, i1 true) #6, !range !208
  %shl.i = shl nuw nsw i32 %28, 4
  %call.i124.i = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef 48, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i)
  %tobool90.not.i = icmp eq i32 %call.i124.i, 0
  br i1 %tobool90.not.i, label %if.end88.i.return_crit_edge, label %do.end.i9

if.end88.i.return_crit_edge:                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i9:                                        ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %11, align 4
  %dev.i8 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i8, ptr noundef nonnull @.str.55, i32 noundef %call.i124.i) #9
  br label %return

return:                                           ; preds = %do.end.i9, %if.end88.i.return_crit_edge, %cond.false.i.return_crit_edge, %if.end23.i.return_crit_edge, %land.lhs.true15.i.return_crit_edge, %land.lhs.true9.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.end.i7.return_crit_edge, %veml6030_get_intgrn_tm.exit.i.return_crit_edge, %veml6030_get_intgrn_tm.exit.thread.i, %do.end15.i, %if.else.i.return_crit_edge, %do.end.i, %if.then4.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %sw.bb.return_crit_edge ], [ %call5.i, %do.end.i ], [ 0, %if.then4.i.return_crit_edge ], [ %call10.i, %do.end15.i ], [ 0, %if.else.i.return_crit_edge ], [ %call1.i.i, %veml6030_get_intgrn_tm.exit.i.return_crit_edge ], [ -22, %cond.false.i.return_crit_edge ], [ -22, %if.end23.i.return_crit_edge ], [ %call.i124.i, %do.end.i9 ], [ 0, %if.end88.i.return_crit_edge ], [ -22, %veml6030_get_intgrn_tm.exit.thread.i ], [ -22, %if.end.i7.return_crit_edge ], [ -22, %land.lhs.true15.i.return_crit_edge ], [ -22, %land.lhs.true.i.return_crit_edge ], [ -22, %land.lhs.true9.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance_period_available_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !207
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.veml6030_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.17, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %11 = lshr i32 %10, 6
  %and = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and)
  %12 = icmp ult i32 %and, 13
  br i1 %12, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %and to i16
  %switch.shifted = lshr i16 4367, %switch.maskindex
  %13 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %switch.lobit.not = icmp eq i16 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.in_illuminance_period_available_show, i32 0, i32 %and
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @period_values, i32 0, i32 %switch.load
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call6 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef %16) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call6, %switch.lookup ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %regmap.i = getelementptr inbounds %struct.veml6030_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.77, i32 noundef %call.i.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6030_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %regmap.i = getelementptr inbounds %struct.veml6030_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.79, i32 noundef %call.i.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !186, !188, !189, !190, !191, !193, !194, !195, !196}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__initcall__kmod_veml6030__289_903_veml6030_driver_init6, !1, !"__initcall__kmod_veml6030__289_903_veml6030_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/veml6030.c", i32 903, i32 1}
!2 = !{ptr @__exitcall_veml6030_driver_exit, !1, !"__exitcall_veml6030_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/veml6030.c", i32 905, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/veml6030.c", i32 906, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/veml6030.c", i32 907, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/veml6030.c", i32 896, i32 11}
!12 = !{ptr @veml6030_driver, !13, !"veml6030_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/veml6030.c", i32 894, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/veml6030.c", i32 798, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @veml6030_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @veml6030_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @veml6030_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/iio/light/veml6030.c", i32 802, i32 11}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/veml6030.c", i32 804, i32 3}
!27 = !{ptr @veml6030_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @veml6030_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/veml6030.c", i32 828, i32 4}
!31 = !{ptr @veml6030_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @veml6030_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/veml6030.c", i32 207, i32 10}
!35 = !{ptr @veml6030_regmap_config, !36, !"veml6030_regmap_config", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/veml6030.c", i32 206, i32 35}
!37 = !{ptr @veml6030_channels, !38, !"veml6030_channels", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/veml6030.c", i32 185, i32 35}
!39 = !{ptr @veml6030_event_spec, !40, !"veml6030_event_spec", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/veml6030.c", i32 162, i32 36}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/light/veml6030.c", i32 700, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @veml6030_event_handler._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @veml6030_event_handler._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @veml6030_info, !47, !"veml6030_info", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/veml6030.c", i32 675, i32 30}
!48 = !{ptr @veml6030_event_attr_group, !49, !"veml6030_event_attr_group", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/veml6030.c", i32 141, i32 37}
!50 = !{ptr @veml6030_event_attributes, !51, !"veml6030_event_attributes", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/veml6030.c", i32 136, i32 26}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/veml6030.c", i32 134, i32 8}
!54 = !{ptr @iio_dev_attr_in_illuminance_period_available, !53, !"iio_dev_attr_in_illuminance_period_available", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/veml6030.c", i32 108, i32 3}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @in_illuminance_period_available_show._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @in_illuminance_period_available_show._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/veml6030.c", i32 131, i32 25}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/veml6030.c", i32 87, i32 3}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/light/veml6030.c", i32 88, i32 3}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/veml6030.c", i32 89, i32 3}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/veml6030.c", i32 90, i32 3}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/veml6030.c", i32 91, i32 3}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/light/veml6030.c", i32 92, i32 3}
!74 = !{ptr @period_values, !75, !"period_values", i1 false, i1 false}
!75 = !{!"../drivers/iio/light/veml6030.c", i32 86, i32 27}
!76 = !{ptr @veml6030_attr_group, !77, !"veml6030_attr_group", i1 false, i1 false}
!77 = !{!"../drivers/iio/light/veml6030.c", i32 77, i32 37}
!78 = !{ptr @veml6030_attributes, !79, !"veml6030_attributes", i1 false, i1 false}
!79 = !{!"../drivers/iio/light/veml6030.c", i32 71, i32 26}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/light/veml6030.c", i32 61, i32 8}
!82 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @iio_const_attr_in_illuminance_integration_time_available, !81, !"iio_const_attr_in_illuminance_integration_time_available", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/light/veml6030.c", i32 68, i32 8}
!86 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @iio_const_attr_in_illuminance_scale_available, !85, !"iio_const_attr_in_illuminance_scale_available", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/light/veml6030.c", i32 521, i32 5}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @veml6030_read_raw._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @veml6030_read_raw._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/light/veml6030.c", i32 534, i32 5}
!95 = !{ptr @veml6030_read_raw._entry.32, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @veml6030_read_raw._entry_ptr.34, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/light/veml6030.c", i32 222, i32 3}
!99 = !{ptr @veml6030_get_intgrn_tm._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @veml6030_get_intgrn_tm._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/light/veml6030.c", i32 428, i32 3}
!103 = !{ptr @veml6030_get_als_gain._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @veml6030_get_als_gain._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/light/veml6030.c", i32 295, i32 3}
!107 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @veml6030_set_intgrn_tm._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @veml6030_set_intgrn_tm._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/light/veml6030.c", i32 400, i32 3}
!112 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @veml6030_set_als_gain._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @veml6030_set_als_gain._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/light/veml6030.c", i32 630, i32 3}
!117 = !{ptr @veml6030_read_interrupt_config._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @veml6030_read_interrupt_config._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/light/veml6030.c", i32 660, i32 3}
!121 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @veml6030_write_interrupt_config._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @veml6030_write_interrupt_config._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/light/veml6030.c", i32 669, i32 3}
!126 = !{ptr @veml6030_write_interrupt_config._entry.44, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @veml6030_write_interrupt_config._entry_ptr.46, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/light/veml6030.c", i32 468, i32 3}
!130 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @veml6030_read_thresh._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @veml6030_read_thresh._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/light/veml6030.c", i32 327, i32 3}
!135 = !{ptr @veml6030_read_persistence._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @veml6030_read_persistence._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/light/veml6030.c", i32 489, i32 4}
!139 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @veml6030_write_thresh._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @veml6030_write_thresh._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/iio/light/veml6030.c", i32 494, i32 4}
!144 = !{ptr @veml6030_write_thresh._entry.52, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @veml6030_write_thresh._entry_ptr.54, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/light/veml6030.c", i32 369, i32 3}
!148 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @veml6030_write_persistence._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @veml6030_write_persistence._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @veml6030_info_no_irq, !152, !"veml6030_info_no_irq", i1 false, i1 false}
!152 = !{!"../drivers/iio/light/veml6030.c", i32 686, i32 30}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/light/veml6030.c", i32 735, i32 3}
!155 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @veml6030_hw_init._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @veml6030_hw_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/light/veml6030.c", i32 741, i32 3}
!160 = !{ptr @veml6030_hw_init._entry.59, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @veml6030_hw_init._entry_ptr.61, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/iio/light/veml6030.c", i32 748, i32 3}
!164 = !{ptr @veml6030_hw_init._entry.62, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @veml6030_hw_init._entry_ptr.64, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/iio/light/veml6030.c", i32 754, i32 3}
!168 = !{ptr @veml6030_hw_init._entry.65, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @veml6030_hw_init._entry_ptr.67, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/iio/light/veml6030.c", i32 760, i32 3}
!172 = !{ptr @veml6030_hw_init._entry.68, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @veml6030_hw_init._entry_ptr.70, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/iio/light/veml6030.c", i32 766, i32 3}
!176 = !{ptr @veml6030_hw_init._entry.71, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @veml6030_hw_init._entry_ptr.73, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/light/veml6030.c", i32 776, i32 3}
!180 = !{ptr @veml6030_hw_init._entry.74, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @veml6030_hw_init._entry_ptr.76, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @veml6030_of_match, !183, !"veml6030_of_match", i1 false, i1 false}
!183 = !{!"../drivers/iio/light/veml6030.c", i32 882, i32 34}
!184 = !{ptr @veml6030_pm_ops, !185, !"veml6030_pm_ops", i1 false, i1 false}
!185 = !{!"../drivers/iio/light/veml6030.c", i32 875, i32 32}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/light/veml6030.c", i32 857, i32 3}
!188 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @veml6030_runtime_suspend._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @veml6030_runtime_suspend._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/iio/light/veml6030.c", i32 870, i32 3}
!193 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @veml6030_runtime_resume._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @veml6030_runtime_resume._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @veml6030_id, !197, !"veml6030_id", i1 false, i1 false}
!197 = !{!"../drivers/iio/light/veml6030.c", i32 888, i32 35}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{!"auto-init"}
!208 = !{i32 0, i32 33}
