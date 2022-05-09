; ModuleID = '/llk/IR_all_yes/drivers/iio/light/tsl2591.c_pt.bc'
source_filename = "../drivers/iio/light/tsl2591.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tsl2591_chip = type { %struct.tsl2591_als_settings, ptr, %struct.mutex, i8 }
%struct.tsl2591_als_settings = type { i16, i16, i8, i8, i8 }

@__initcall__kmod_tsl2591__301_1221_tsl2591_driver_init6 = internal global ptr @tsl2591_driver_init, section ".initcall6.init", align 4
@tsl2591_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @tsl2591_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tsl2591_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsl2591_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tsl2591_driver_exit = internal global ptr @tsl2591_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [51 x i8] c"tsl2591.author=Joe Sandom <joe.g.sandom@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [61 x i8] c"tsl2591.description=TAOS tsl2591 ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [39 x i8] c"tsl2591.file=drivers/iio/light/tsl2591\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [20 x i8] c"tsl2591.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsl2591\00", [24 x i8] zeroinitializer }, align 32
@tsl2591_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2591\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tsl2591_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsl2591_suspend, ptr @tsl2591_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tsl2591_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"I2C smbus byte data functionality is not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsl2591_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/tsl2591.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsl2591_probe._entry_ptr = internal global ptr @tsl2591_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tsl2591_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ request error\0A\00", [45 x i8] zeroinitializer }, align 32
@tsl2591_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @tsl2591_event_attribute_group, ptr null, ptr @tsl2591_read_raw, ptr null, ptr @tsl2591_read_available, ptr @tsl2591_write_raw, ptr null, ptr null, ptr @tsl2591_read_event_config, ptr @tsl2591_write_event_config, ptr @tsl2591_read_event_value, ptr @tsl2591_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tsl2591_info_no_irq = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @tsl2591_read_raw, ptr null, ptr @tsl2591_read_available, ptr @tsl2591_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tsl2591_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip->als_mutex\00", [47 x i8] zeroinitializer }, align 32
@tsl2591_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read the device ID register\0A\00", [57 x i8] zeroinitializer }, align 32
@tsl2591_probe._entry_ptr.11 = internal global ptr @tsl2591_probe._entry.9, section ".printk_index", align 4
@tsl2591_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Device ID: %#04x unknown\0A\00", [38 x i8] zeroinitializer }, align 32
@tsl2591_probe._entry_ptr.14 = internal global ptr @tsl2591_probe._entry.12, section ".printk_index", align 4
@tsl2591_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262160, i32 262160, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 12, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262160, i32 262160, ptr @tsl2591_events, i32 3, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262160, i32 262160, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@tsl2591_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to load sensor defaults\0A\00", [32 x i8] zeroinitializer }, align 32
@tsl2591_probe._entry_ptr.17 = internal global ptr @tsl2591_probe._entry.15, section ".printk_index", align 4
@tsl2591_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to clear als irq\0A\00", [39 x i8] zeroinitializer }, align 32
@tsl2591_probe._entry_ptr.20 = internal global ptr @tsl2591_probe._entry.18, section ".printk_index", align 4
@tsl2591_event_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tsl2591_event_attrs_ctrl, ptr null }, [44 x i8] zeroinitializer }, align 32
@tsl2591_event_attrs_ctrl = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_tsl2591_in_illuminance_period_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_tsl2591_in_illuminance_period_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tsl2591_in_illuminance_period_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tsl2591_in_illuminance_period_available\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@tsl2591_als_period_list = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"0.1 0.2 0.3 0.5 1.0 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"0.2 0.4 0.6 1.0 2.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"0.3 0.6 0.9 1.5 3.0 6.0 7.5 9.0 10.5 12.0 13.5 15.0 16.5 18.0\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"0.4 0.8 1.2 2.0 4.0 8.0 10.0 12.0 14.0 16.0 18.0 20.0 22.0 24.0\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"0.5 1.0 1.5 2.5 5.0 10.0 12.5 15.0 17.5 20.0 22.5 25.0 27.5 30.0\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"0.6 1.2 1.8 3.0 6.0 12.0 15.0 18.0 21.0 24.0 27.0 30.0 33.0 36.0\00", [63 x i8] zeroinitializer }, align 32
@tsl2591_read_channel_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No data available. Err: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tsl2591_read_channel_data\00", [38 x i8] zeroinitializer }, align 32
@tsl2591_read_channel_data._entry_ptr = internal global ptr @tsl2591_read_channel_data._entry, section ".printk_index", align 4
@tsl2591_read_channel_data._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read data bytes\00", [38 x i8] zeroinitializer }, align 32
@tsl2591_read_channel_data._entry_ptr.33 = internal global ptr @tsl2591_read_channel_data._entry.31, section ".printk_index", align 4
@tsl2591_read_channel_data._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid multiplier\00", [45 x i8] zeroinitializer }, align 32
@tsl2591_read_channel_data._entry_ptr.36 = internal global ptr @tsl2591_read_channel_data._entry.34, section ".printk_index", align 4
@tsl2591_read_channel_data.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.37, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Counts Per Lux: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tsl2591_read_channel_data.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.38, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Raw lux calculation: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tsl2591_wait_adc_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timed out waiting for valid ALS data\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tsl2591_wait_adc_complete\00", [38 x i8] zeroinitializer }, align 32
@tsl2591_wait_adc_complete._entry_ptr = internal global ptr @tsl2591_wait_adc_complete._entry, section ".printk_index", align 4
@tsl2591_check_als_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read register\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tsl2591_check_als_valid\00", [40 x i8] zeroinitializer }, align 32
@tsl2591_check_als_valid._entry_ptr = internal global ptr @tsl2591_check_als_valid._entry, section ".printk_index", align 4
@tsl2591_int_time_available = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], [40 x i8] zeroinitializer }, align 32
@tsl2591_calibscale_available = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 25, i32 428, i32 9876], [16 x i8] zeroinitializer }, align 32
@tsl2591_set_als_gain_int_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set als gain & int time\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tsl2591_set_als_gain_int_time\00", [34 x i8] zeroinitializer }, align 32
@tsl2591_set_als_gain_int_time._entry_ptr = internal global ptr @tsl2591_set_als_gain_int_time._entry, section ".printk_index", align 4
@tsl2591_set_als_upper_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set als upper threshold\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tsl2591_set_als_upper_threshold\00", [32 x i8] zeroinitializer }, align 32
@tsl2591_set_als_upper_threshold._entry_ptr = internal global ptr @tsl2591_set_als_upper_threshold._entry, section ".printk_index", align 4
@tsl2591_set_als_upper_threshold._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tsl2591_set_als_upper_threshold._entry_ptr.48 = internal global ptr @tsl2591_set_als_upper_threshold._entry.47, section ".printk_index", align 4
@tsl2591_set_als_lower_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set als lower threshold\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tsl2591_set_als_lower_threshold\00", [32 x i8] zeroinitializer }, align 32
@tsl2591_set_als_lower_threshold._entry_ptr = internal global ptr @tsl2591_set_als_lower_threshold._entry, section ".printk_index", align 4
@tsl2591_set_als_lower_threshold._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tsl2591_set_als_lower_threshold._entry_ptr.52 = internal global ptr @tsl2591_set_als_lower_threshold._entry.51, section ".printk_index", align 4
@tsl2591_set_als_persist_cycle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set als persist cycle\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tsl2591_set_als_persist_cycle\00", [34 x i8] zeroinitializer }, align 32
@tsl2591_set_als_persist_cycle._entry_ptr = internal global ptr @tsl2591_set_als_persist_cycle._entry, section ".printk_index", align 4
@tsl2591_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 9, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@tsl2591_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set the power state to %#04x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tsl2591_set_power_state\00", [40 x i8] zeroinitializer }, align 32
@tsl2591_set_power_state._entry_ptr = internal global ptr @tsl2591_set_power_state._entry, section ".printk_index", align 4
@switch.table.tsl2591_read_raw = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 25, i32 428, i32 9876], [16 x i8] zeroinitializer }, align 32
@switch.table.tsl2591_read_event_value = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 2, i32 3, i32 5, i32 10, i32 15, i32 20, i32 25, i32 30, i32 35, i32 40, i32 45, i32 50, i32 55, i32 60], [36 x i8] zeroinitializer }, align 32
@switch.table.tsl2591_read_channel_data = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 25, i32 428, i32 9876], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 18]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 25, i64 428, i64 9876]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [17 x i64] [i64 15, i64 8, i64 1, i64 2, i64 3, i64 5, i64 10, i64 15, i64 20, i64 25, i64 30, i64 35, i64 40, i64 45, i64 50, i64 55, i64 60]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 13]
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"tsl2591_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1213, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1215, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"tsl2591_of_match\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1207, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"tsl2591_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1052, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1126, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1143, i32 7 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1145, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"tsl2591_info\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1005, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"tsl2591_info_no_irq\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1016, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1153, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1158, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1164, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"tsl2591_channels\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 679, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1194, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1200, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [30 x i8] c"tsl2591_event_attribute_group\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 658, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"tsl2591_event_attrs_ctrl\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 653, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [53 x i8] c"iio_dev_attr_tsl2591_in_illuminance_period_available\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 651, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 647, i32 25 }
@___asan_gen_.157 = private unnamed_addr constant [24 x i8] c"tsl2591_als_period_list\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 178, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 179, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 180, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 181, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 182, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 183, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 184, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 445, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 453, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 472, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 480, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 486, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 411, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 380, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [27 x i8] c"tsl2591_int_time_available\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 187, i32 18 }
@___asan_gen_.226 = private unnamed_addr constant [29 x i8] c"tsl2591_calibscale_available\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 191, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 512, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 593, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 601, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 546, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 554, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 618, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"tsl2591_events\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 662, i32 36 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [31 x i8] c"../drivers/iio/light/tsl2591.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 634, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [30 x i8] c"switch.table.tsl2591_read_raw\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [38 x i8] c"switch.table.tsl2591_read_event_value\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [39 x i8] c"switch.table.tsl2591_read_channel_data\00", align 1
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_tsl2591_driver_exit, ptr @__initcall__kmod_tsl2591__301_1221_tsl2591_driver_init6, ptr @tsl2591_check_als_valid._entry, ptr @tsl2591_check_als_valid._entry_ptr, ptr @tsl2591_driver_exit, ptr @tsl2591_probe._entry, ptr @tsl2591_probe._entry.12, ptr @tsl2591_probe._entry.15, ptr @tsl2591_probe._entry.18, ptr @tsl2591_probe._entry.9, ptr @tsl2591_probe._entry_ptr, ptr @tsl2591_probe._entry_ptr.11, ptr @tsl2591_probe._entry_ptr.14, ptr @tsl2591_probe._entry_ptr.17, ptr @tsl2591_probe._entry_ptr.20, ptr @tsl2591_read_channel_data._entry, ptr @tsl2591_read_channel_data._entry.31, ptr @tsl2591_read_channel_data._entry.34, ptr @tsl2591_read_channel_data._entry_ptr, ptr @tsl2591_read_channel_data._entry_ptr.33, ptr @tsl2591_read_channel_data._entry_ptr.36, ptr @tsl2591_set_als_gain_int_time._entry, ptr @tsl2591_set_als_gain_int_time._entry_ptr, ptr @tsl2591_set_als_lower_threshold._entry, ptr @tsl2591_set_als_lower_threshold._entry.51, ptr @tsl2591_set_als_lower_threshold._entry_ptr, ptr @tsl2591_set_als_lower_threshold._entry_ptr.52, ptr @tsl2591_set_als_persist_cycle._entry, ptr @tsl2591_set_als_persist_cycle._entry_ptr, ptr @tsl2591_set_als_upper_threshold._entry, ptr @tsl2591_set_als_upper_threshold._entry.47, ptr @tsl2591_set_als_upper_threshold._entry_ptr, ptr @tsl2591_set_als_upper_threshold._entry_ptr.48, ptr @tsl2591_set_power_state._entry, ptr @tsl2591_set_power_state._entry_ptr, ptr @tsl2591_wait_adc_complete._entry, ptr @tsl2591_wait_adc_complete._entry_ptr, ptr @tsl2591_driver, ptr @.str, ptr @tsl2591_of_match, ptr @tsl2591_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tsl2591_info, ptr @tsl2591_info_no_irq, ptr @tsl2591_probe.__key, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @tsl2591_channels, ptr @.str.16, ptr @.str.19, ptr @tsl2591_event_attribute_group, ptr @tsl2591_event_attrs_ctrl, ptr @iio_dev_attr_tsl2591_in_illuminance_period_available, ptr @.str.21, ptr @.str.22, ptr @tsl2591_als_period_list, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @tsl2591_int_time_available, ptr @tsl2591_calibscale_available, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @tsl2591_events, ptr @.str.55, ptr @.str.56, ptr @switch.table.tsl2591_read_raw, ptr @switch.table.tsl2591_read_event_value, ptr @switch.table.tsl2591_read_channel_data], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_info_no_irq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_event_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_event_attrs_ctrl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_tsl2591_in_illuminance_period_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_als_period_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_read_channel_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_read_channel_data._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_read_channel_data._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_wait_adc_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_check_als_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_int_time_available to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_calibscale_available to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_set_als_gain_int_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_set_als_upper_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_set_als_upper_threshold._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_set_als_lower_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_set_als_lower_threshold._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_set_als_persist_cycle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2591_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tsl2591_read_raw to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tsl2591_read_event_value to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tsl2591_read_channel_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tsl2591_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsl2591_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @tsl2591_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 108) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %client7 = getelementptr inbounds %struct.tsl2591_chip, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end5.do.body20_crit_edge, label %if.then9

if.end5.do.body20_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

if.then9:                                         ; preds = %if.end5
  %call12 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %11, ptr noundef null, ptr noundef nonnull @tsl2591_event_handler, i32 noundef 8194, ptr noundef nonnull @.str.6, ptr noundef nonnull %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then9.do.body20_crit_edge, label %if.then14

if.then9.do.body20_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call12, ptr noundef nonnull @.str.7) #9
  br label %cleanup

do.body20:                                        ; preds = %if.then9.do.body20_crit_edge, %if.end5.do.body20_crit_edge
  %tsl2591_info.sink = phi ptr [ @tsl2591_info, %if.then9.do.body20_crit_edge ], [ @tsl2591_info_no_irq, %if.end5.do.body20_crit_edge ]
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %12 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tsl2591_info.sink, ptr %info, align 8
  %als_mutex = getelementptr inbounds %struct.tsl2591_chip, ptr %7, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %als_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @tsl2591_probe.__key) #9
  %call23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.end27, label %do.end44

do.end27:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %cleanup

do.end44:                                         ; preds = %do.body20
  %and = and i32 %call23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %and)
  %cmp45.not = icmp eq i32 %and, 80
  br i1 %cmp45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %and) #12
  br label %cleanup

if.end51:                                         ; preds = %do.end44
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tsl2591_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %num_channels, align 4
  %15 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call2, align 8
  %16 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client7, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 2
  %name53 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %18 = ptrtoint ptr %name53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %name, ptr %name53, align 8
  %events_enabled = getelementptr inbounds %struct.tsl2591_chip, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %events_enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %events_enabled, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #9
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @tsl2591_chip_off, ptr noundef nonnull %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end51.if.end61_crit_edge, label %devm_add_action_or_reset.exit

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

devm_add_action_or_reset.exit:                    ; preds = %if.end51
  tail call void @tsl2591_chip_off(ptr noundef nonnull %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp59 = icmp slt i32 %call.i, 0
  br i1 %cmp59, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.if.end61_crit_edge

devm_add_action_or_reset.exit.if.end61_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %devm_add_action_or_reset.exit.if.end61_crit_edge, %if.end51.if.end61_crit_edge
  %als_int_time.i = getelementptr inbounds %struct.tsl2591_als_settings, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %als_int_time.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %als_int_time.i, align 4
  %als_gain.i = getelementptr inbounds %struct.tsl2591_als_settings, ptr %7, i32 0, i32 4
  %21 = ptrtoint ptr %als_gain.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %als_gain.i, align 2
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 100, ptr %7, align 4
  %als_upper_thresh.i = getelementptr inbounds %struct.tsl2591_als_settings, ptr %7, i32 0, i32 1
  %23 = ptrtoint ptr %als_upper_thresh.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1500, ptr %als_upper_thresh.i, align 2
  %24 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client7, align 4
  %call.i.i125 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext -95, i8 noundef zeroext 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %tobool.not.i.i = icmp eq i32 %call.i.i125, 0
  br i1 %tobool.not.i.i, label %if.end61.if.end.i_crit_edge, label %tsl2591_set_als_gain_int_time.exit.i

if.end61.if.end.i_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

tsl2591_set_als_gain_int_time.exit.i:             ; preds = %if.end61
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %cmp.i126 = icmp slt i32 %call.i.i125, 0
  br i1 %cmp.i126, label %tsl2591_set_als_gain_int_time.exit.i.do.end67_crit_edge, label %tsl2591_set_als_gain_int_time.exit.i.if.end.i_crit_edge

tsl2591_set_als_gain_int_time.exit.i.if.end.i_crit_edge: ; preds = %tsl2591_set_als_gain_int_time.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

tsl2591_set_als_gain_int_time.exit.i.do.end67_crit_edge: ; preds = %tsl2591_set_als_gain_int_time.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.end.i:                                         ; preds = %tsl2591_set_als_gain_int_time.exit.i.if.end.i_crit_edge, %if.end61.if.end.i_crit_edge
  %26 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client7, align 4
  %call.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -84, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %tsl2591_set_als_persist_cycle.exit.thread.i, label %tsl2591_set_als_persist_cycle.exit.i

tsl2591_set_als_persist_cycle.exit.thread.i:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %als_persist2.i45.i = getelementptr inbounds %struct.tsl2591_als_settings, ptr %7, i32 0, i32 3
  %28 = ptrtoint ptr %als_persist2.i45.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %als_persist2.i45.i, align 1
  br label %if.end7.i

tsl2591_set_als_persist_cycle.exit.i:             ; preds = %if.end.i
  %dev.i32.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i32.i, ptr noundef nonnull @.str.53) #12
  %als_persist2.i.i = getelementptr inbounds %struct.tsl2591_als_settings, ptr %7, i32 0, i32 3
  %29 = ptrtoint ptr %als_persist2.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %als_persist2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %cmp5.i = icmp slt i32 %call.i30.i, 0
  br i1 %cmp5.i, label %tsl2591_set_als_persist_cycle.exit.i.do.end67_crit_edge, label %tsl2591_set_als_persist_cycle.exit.i.if.end7.i_crit_edge

tsl2591_set_als_persist_cycle.exit.i.if.end7.i_crit_edge: ; preds = %tsl2591_set_als_persist_cycle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

tsl2591_set_als_persist_cycle.exit.i.do.end67_crit_edge: ; preds = %tsl2591_set_als_persist_cycle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.end7.i:                                        ; preds = %tsl2591_set_als_persist_cycle.exit.i.if.end7.i_crit_edge, %tsl2591_set_als_persist_cycle.exit.thread.i
  %30 = ptrtoint ptr %als_upper_thresh.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %als_settings.sroa.4.0.copyload34.i.i = load i16, ptr %als_upper_thresh.i, align 2
  %31 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client7, align 4
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 100, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %als_settings.sroa.4.0.copyload34.i.i)
  %cmp.not.i.i = icmp ugt i16 %als_settings.sroa.4.0.copyload34.i.i, 100
  br i1 %cmp.not.i.i, label %if.end7.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end7.i.if.end.i.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i36.i = tail call fastcc i32 @tsl2591_set_als_upper_threshold(ptr noundef %7, i16 noundef zeroext 101) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end7.i.if.end.i.i_crit_edge
  %call11.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -92, i8 noundef zeroext 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool.not.i37.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool.not.i37.i, label %if.end13.i.i, label %if.end.i.i.tsl2591_set_als_lower_threshold.exit.i_crit_edge

if.end.i.i.tsl2591_set_als_lower_threshold.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_set_als_lower_threshold.exit.i

if.end13.i.i:                                     ; preds = %if.end.i.i
  %call14.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -91, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end13.i.i.if.end11.i_crit_edge, label %if.end13.i.i.tsl2591_set_als_lower_threshold.exit.i_crit_edge

if.end13.i.i.tsl2591_set_als_lower_threshold.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_set_als_lower_threshold.exit.i

if.end13.i.i.if.end11.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

tsl2591_set_als_lower_threshold.exit.i:           ; preds = %if.end13.i.i.tsl2591_set_als_lower_threshold.exit.i_crit_edge, %if.end.i.i.tsl2591_set_als_lower_threshold.exit.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ %call11.i.i, %if.end.i.i.tsl2591_set_als_lower_threshold.exit.i_crit_edge ], [ %call14.i.i, %if.end13.i.i.tsl2591_set_als_lower_threshold.exit.i_crit_edge ]
  %dev20.i.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i.i, ptr noundef nonnull @.str.49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i.i)
  %cmp9.i = icmp slt i32 %retval.0.ph.i.i, 0
  br i1 %cmp9.i, label %tsl2591_set_als_lower_threshold.exit.i.do.end67_crit_edge, label %tsl2591_set_als_lower_threshold.exit.i.if.end11.i_crit_edge

tsl2591_set_als_lower_threshold.exit.i.if.end11.i_crit_edge: ; preds = %tsl2591_set_als_lower_threshold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

tsl2591_set_als_lower_threshold.exit.i.do.end67_crit_edge: ; preds = %tsl2591_set_als_lower_threshold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.end11.i:                                       ; preds = %tsl2591_set_als_lower_threshold.exit.i.if.end11.i_crit_edge, %if.end13.i.i.if.end11.i_crit_edge
  %34 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client7, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %36)
  %als_settings.sroa.0.0.copyload38.i.i = load i16, ptr %7, align 4
  %37 = ptrtoint ptr %als_upper_thresh.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1500, ptr %als_upper_thresh.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1500, i16 %als_settings.sroa.0.0.copyload38.i.i)
  %cmp7.i.i = icmp ugt i16 %als_settings.sroa.0.0.copyload38.i.i, 1500
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end11.i.if.end12.i.i_crit_edge

if.end11.i.if.end12.i.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then9.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i39.i = tail call fastcc i32 @tsl2591_set_als_lower_threshold(ptr noundef %7, i16 noundef zeroext 1499) #13
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then9.i.i, %if.end11.i.if.end12.i.i_crit_edge
  %call16.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext -90, i8 noundef zeroext -36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool.not.i40.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool.not.i40.i, label %if.end18.i.i, label %if.end12.i.i.tsl2591_load_defaults.exit_crit_edge

if.end12.i.i.tsl2591_load_defaults.exit_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_load_defaults.exit

if.end18.i.i:                                     ; preds = %if.end12.i.i
  %call19.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext -89, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end18.i.i.if.end69_crit_edge, label %if.end18.i.i.tsl2591_load_defaults.exit_crit_edge

if.end18.i.i.tsl2591_load_defaults.exit_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_load_defaults.exit

if.end18.i.i.if.end69_crit_edge:                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

tsl2591_load_defaults.exit:                       ; preds = %if.end18.i.i.tsl2591_load_defaults.exit_crit_edge, %if.end12.i.i.tsl2591_load_defaults.exit_crit_edge
  %retval.0.ph.i41.i = phi i32 [ %call16.i.i, %if.end12.i.i.tsl2591_load_defaults.exit_crit_edge ], [ %call19.i.i, %if.end18.i.i.tsl2591_load_defaults.exit_crit_edge ]
  %dev25.i.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i.i, ptr noundef nonnull @.str.45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i41.i)
  %cmp63 = icmp slt i32 %retval.0.ph.i41.i, 0
  br i1 %cmp63, label %tsl2591_load_defaults.exit.do.end67_crit_edge, label %tsl2591_load_defaults.exit.if.end69_crit_edge

tsl2591_load_defaults.exit.if.end69_crit_edge:    ; preds = %tsl2591_load_defaults.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

tsl2591_load_defaults.exit.do.end67_crit_edge:    ; preds = %tsl2591_load_defaults.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

do.end67:                                         ; preds = %tsl2591_load_defaults.exit.do.end67_crit_edge, %tsl2591_set_als_lower_threshold.exit.i.do.end67_crit_edge, %tsl2591_set_als_persist_cycle.exit.i.do.end67_crit_edge, %tsl2591_set_als_gain_int_time.exit.i.do.end67_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end69:                                         ; preds = %tsl2591_load_defaults.exit.if.end69_crit_edge, %if.end18.i.i.if.end69_crit_edge
  %call70 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext -25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end75, label %if.end77

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end75, %do.end67, %devm_add_action_or_reset.exit.cleanup_crit_edge, %do.end49, %do.end27, %if.then14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %if.then14 ], [ %call23, %do.end27 ], [ -22, %do.end49 ], [ -22, %do.end67 ], [ -22, %do.end75 ], [ %call79, %if.end77 ], [ -95, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %devm_add_action_or_reset.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %events_enabled = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %events_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %events_enabled, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client1 = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1, align 4
  %call2 = tail call i64 @iio_get_time_ns(ptr noundef %private) #9
  %call3 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 25769803776, i64 noundef %call2) #9
  %call4 = tail call i32 @i2c_smbus_write_byte(ptr noundef %5, i8 noundef zeroext -25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsl2591_chip_off(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client1 = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !155
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !156
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %5 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1, align 4
  %call.i9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -96, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not.i = icmp eq i32 %call.i9, 0
  br i1 %tobool.not.i, label %pm_runtime_put_noidle.exit.tsl2591_set_power_state.exit_crit_edge, label %do.end.i

pm_runtime_put_noidle.exit.tsl2591_set_power_state.exit_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_set_power_state.exit

do.end.i:                                         ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef 0) #12
  br label %tsl2591_set_power_state.exit

tsl2591_set_power_state.exit:                     ; preds = %do.end.i, %pm_runtime_put_noidle.exit.tsl2591_set_power_state.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client1 = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %als_mutex = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %als_mutex, i32 noundef 0) #9
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.err_unlock_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 18, label %sw.bb16
    i32 4, label %sw.bb21
  ]

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp.not = icmp eq i32 %6, 7
  br i1 %cmp.not, label %if.end, label %sw.bb.err_unlock_crit_edge

sw.bb.err_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call fastcc i32 @tsl2591_read_channel_data(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  %spec.store.select = select i1 %cmp4, i32 %call3, i32 1
  br label %err_unlock

sw.bb7:                                           ; preds = %entry
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp9.not = icmp eq i32 %8, 6
  br i1 %cmp9.not, label %if.end11, label %sw.bb7.err_unlock_crit_edge

sw.bb7.err_unlock_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end11:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call fastcc i32 @tsl2591_read_channel_data(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %spec.store.select33 = select i1 %cmp13, i32 %call12, i32 2
  br label %err_unlock

sw.bb16:                                          ; preds = %entry
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp18.not = icmp eq i32 %10, 7
  br i1 %cmp18.not, label %if.end20, label %sw.bb16.err_unlock_crit_edge

sw.bb16.err_unlock_crit_edge:                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end20:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  %als_int_time = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %als_int_time to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %als_int_time, align 4
  %conv = zext i8 %12 to i32
  %add = add nuw nsw i32 %conv, 1
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %val, align 4
  br label %err_unlock

sw.bb21:                                          ; preds = %entry
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp23.not = icmp eq i32 %15, 7
  br i1 %cmp23.not, label %if.end26, label %sw.bb21.err_unlock_crit_edge

sw.bb21.err_unlock_crit_edge:                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end26:                                         ; preds = %sw.bb21
  %als_gain = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %als_gain to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %als_gain, align 2
  %conv.i = zext i8 %17 to i32
  %18 = tail call i32 @llvm.fshl.i32(i32 %conv.i, i32 %conv.i, i32 28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %switch.lookup, label %if.end26.tsl2591_gain_to_multiplier.exit_crit_edge

if.end26.tsl2591_gain_to_multiplier.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_gain_to_multiplier.exit

switch.lookup:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tsl2591_read_raw, i32 0, i32 %18
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tsl2591_gain_to_multiplier.exit

tsl2591_gain_to_multiplier.exit:                  ; preds = %switch.lookup, %if.end26.tsl2591_gain_to_multiplier.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %if.end26.tsl2591_gain_to_multiplier.exit_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %val, align 4
  br label %err_unlock

err_unlock:                                       ; preds = %tsl2591_gain_to_multiplier.exit, %sw.bb21.err_unlock_crit_edge, %if.end20, %sw.bb16.err_unlock_crit_edge, %if.end11, %sw.bb7.err_unlock_crit_edge, %if.end, %sw.bb.err_unlock_crit_edge, %entry.err_unlock_crit_edge
  %ret.0 = phi i32 [ 1, %tsl2591_gain_to_multiplier.exit ], [ 1, %if.end20 ], [ %spec.store.select33, %if.end11 ], [ %spec.store.select, %if.end ], [ -22, %sw.bb.err_unlock_crit_edge ], [ -22, %sw.bb7.err_unlock_crit_edge ], [ -22, %sw.bb16.err_unlock_crit_edge ], [ -22, %sw.bb21.err_unlock_crit_edge ], [ -22, %entry.err_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %als_mutex) #9
  %call.i53 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i53, ptr %last_busy.i, align 8
  %call.i54 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tsl2591_read_available(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 18, label %entry.return.sink.split_crit_edge
    i32 4, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 4, %sw.bb1 ], [ 6, %entry.return.sink.split_crit_edge ]
  %tsl2591_calibscale_available.sink = phi ptr [ @tsl2591_calibscale_available, %sw.bb1 ], [ @tsl2591_int_time_available, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %length, align 4
  %2 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tsl2591_calibscale_available.sink, ptr %vals, align 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %als_mutex = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %als_mutex, i32 noundef 0) #9
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %mask, label %entry.err_unlock_crit_edge [
    i32 18, label %sw.bb
    i32 4, label %sw.bb6
  ]

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

sw.bb:                                            ; preds = %entry
  %als_integration_time.off.i = add i32 %val, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %als_integration_time.off.i)
  %switch.i = icmp ult i32 %als_integration_time.off.i, 6
  %spec.select.i = select i1 %switch.i, i32 %als_integration_time.off.i, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp = icmp slt i32 %spec.select.i, 0
  %switch.i.not = xor i1 %switch.i, true
  %brmerge = or i1 %cmp, %switch.i.not
  %spec.select.i.mux = select i1 %cmp, i32 %spec.select.i, i32 -22
  br i1 %brmerge, label %sw.bb.err_unlock_crit_edge, label %if.end5

sw.bb.err_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %spec.select.i to i8
  %als_int_time = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %als_int_time to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %als_int_time, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %4 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %val, label %sw.bb6.err_unlock_crit_edge [
    i32 1, label %sw.bb6.if.end17_crit_edge
    i32 25, label %sw.bb1.i
    i32 428, label %sw.bb2.i
    i32 9876, label %sw.bb3.i
  ]

sw.bb6.if.end17_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

sw.bb6.err_unlock_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

sw.bb1.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

sw.bb2.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

sw.bb3.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb6.if.end17_crit_edge
  %retval.0.i.ph = phi i8 [ 0, %sw.bb6.if.end17_crit_edge ], [ 16, %sw.bb1.i ], [ 32, %sw.bb2.i ], [ 48, %sw.bb3.i ]
  %als_gain = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %als_gain to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %retval.0.i.ph, ptr %als_gain, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end17, %if.end5
  %als_settings.sroa.4.0.als_settings1.sroa_idx.i = getelementptr inbounds i8, ptr %1, i32 4
  %6 = ptrtoint ptr %als_settings.sroa.4.0.als_settings1.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %als_settings.sroa.4.0.copyload7.i = load i8, ptr %als_settings.sroa.4.0.als_settings1.sroa_idx.i, align 4
  %als_settings.sroa.59.0.als_settings1.sroa_idx.i = getelementptr inbounds i8, ptr %1, i32 6
  %7 = ptrtoint ptr %als_settings.sroa.59.0.als_settings1.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %als_settings.sroa.59.0.copyload10.i = load i8, ptr %als_settings.sroa.59.0.als_settings1.sroa_idx.i, align 2
  %client2.i = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client2.i, align 4
  %or13.i = or i8 %als_settings.sroa.59.0.copyload10.i, %als_settings.sroa.4.0.copyload7.i
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -95, i8 noundef zeroext %or13.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.epilog.err_unlock_crit_edge, label %do.end.i

sw.epilog.err_unlock_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #12
  br label %err_unlock

err_unlock:                                       ; preds = %do.end.i, %sw.epilog.err_unlock_crit_edge, %sw.bb6.err_unlock_crit_edge, %sw.bb.err_unlock_crit_edge, %entry.err_unlock_crit_edge
  %ret.0 = phi i32 [ %spec.select.i.mux, %sw.bb.err_unlock_crit_edge ], [ -22, %entry.err_unlock_crit_edge ], [ -22, %sw.bb6.err_unlock_crit_edge ], [ 0, %sw.epilog.err_unlock_crit_edge ], [ %call.i, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %als_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tsl2591_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %events_enabled = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %events_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %events_enabled, align 4, !range !153
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client1 = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %events_enabled7 = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %events_enabled7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %events_enabled7, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true6.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool8.not, label %if.then, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %events_enabled7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %events_enabled7, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  br label %if.end14

land.lhs.true6.critedge:                          ; preds = %entry
  br i1 %tobool8.not, label %land.lhs.true6.critedge.if.end14_crit_edge, label %if.then9

land.lhs.true6.critedge.if.end14_crit_edge:       ; preds = %land.lhs.true6.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true6.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %events_enabled7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %events_enabled7, align 4
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i22 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i22, ptr %last_busy.i, align 8
  %call.i23 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev11, i32 noundef 13) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true6.critedge.if.end14_crit_edge, %if.then, %land.lhs.true.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client1 = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %als_mutex = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %als_mutex, i32 noundef 0) #9
  %4 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %info, label %entry.err_unlock_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb6
  ]

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

sw.bb:                                            ; preds = %entry
  %5 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %dir, label %sw.bb.err_unlock_crit_edge [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb.sw.epilog_crit_edge
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.err_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %als_upper_thresh = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb.sw.epilog_crit_edge
  %storemerge.in.in = phi ptr [ %als_upper_thresh, %sw.bb2 ], [ %1, %sw.bb.sw.epilog_crit_edge ]
  %6 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %storemerge.in = load i16, ptr %storemerge.in.in, align 2
  %storemerge = zext i16 %storemerge.in to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %val, align 4
  br label %err_unlock

sw.bb6:                                           ; preds = %entry
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -84) #9
  %8 = add i32 %call7, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %8)
  %9 = icmp ult i32 %8, -15
  br i1 %9, label %sw.bb6.err_unlock_crit_edge, label %if.end

sw.bb6.err_unlock_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end:                                           ; preds = %sw.bb6
  %conv11 = trunc i32 %call7 to i8
  %switch.tableidx = add i8 %conv11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 15
  br i1 %10, label %switch.lookup, label %if.end.tsl2591_persist_cycle_to_lit.exit_crit_edge

if.end.tsl2591_persist_cycle_to_lit.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_persist_cycle_to_lit.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.tsl2591_read_event_value, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tsl2591_persist_cycle_to_lit.exit

tsl2591_persist_cycle_to_lit.exit:                ; preds = %switch.lookup, %if.end.tsl2591_persist_cycle_to_lit.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %if.end.tsl2591_persist_cycle_to_lit.exit_crit_edge ]
  %als_int_time = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %als_int_time to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %als_int_time, align 4
  %conv14 = zext i8 %14 to i32
  %15 = mul nuw nsw i32 %conv14, 100000
  %mul15 = add nuw nsw i32 %15, 100000
  %mul16 = mul nsw i32 %mul15, %retval.0.i
  %mul16.frozen = freeze i32 %mul16
  %div = sdiv i32 %mul16.frozen, 1000000
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %val, align 4
  %17 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %mul16.frozen, %17
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rem.decomposed, ptr %val2, align 4
  br label %err_unlock

err_unlock:                                       ; preds = %tsl2591_persist_cycle_to_lit.exit, %sw.bb6.err_unlock_crit_edge, %sw.epilog, %sw.bb.err_unlock_crit_edge, %entry.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call7, %sw.bb6.err_unlock_crit_edge ], [ 2, %tsl2591_persist_cycle_to_lit.exit ], [ 1, %sw.epilog ], [ -22, %sw.bb.err_unlock_crit_edge ], [ -22, %entry.err_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %als_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = or i32 %val2, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not = icmp sgt i32 %2, -1
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %als_mutex = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %als_mutex, i32 noundef 0) #9
  %3 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %info, label %if.end.err_unlock_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb18
  ]

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp2 = icmp ugt i32 %val, 65535
  br i1 %cmp2, label %sw.bb.err_unlock_crit_edge, label %if.end4

sw.bb.err_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end4:                                          ; preds = %sw.bb
  %4 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %dir, label %if.end4.err_unlock_crit_edge [
    i32 1, label %sw.bb5
    i32 2, label %sw.bb11
  ]

if.end4.err_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

sw.bb5:                                           ; preds = %if.end4
  %conv = trunc i32 %val to i16
  %client2.i = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client2.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %als_settings.sroa.0.0.copyload38.i = load i16, ptr %1, align 4
  %als_upper_thresh.i = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %als_upper_thresh.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %als_upper_thresh.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %als_settings.sroa.0.0.copyload38.i, i16 %conv)
  %cmp7.i = icmp ugt i16 %als_settings.sroa.0.0.copyload38.i, %conv
  br i1 %cmp7.i, label %if.then9.i, label %sw.bb5.if.end12.i_crit_edge

sw.bb5.if.end12.i_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then9.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i16 %conv, -1
  %call.i = tail call fastcc i32 @tsl2591_set_als_lower_threshold(ptr noundef %1, i16 noundef zeroext %sub.i) #13
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %sw.bb5.if.end12.i_crit_edge
  %conv13.i = trunc i32 %val to i8
  %call16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -90, i8 noundef zeroext %conv13.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.end18.i, label %if.end12.i.cleanup.sink.split.i_crit_edge

if.end12.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end12.i
  %9 = lshr i32 %val, 8
  %conv15.i = trunc i32 %9 to i8
  %call19.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -89, i8 noundef zeroext %conv15.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.err_unlock_crit_edge, label %if.end18.i.cleanup.sink.split.i_crit_edge

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end18.i.err_unlock_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

cleanup.sink.split.i:                             ; preds = %if.end18.i.cleanup.sink.split.i_crit_edge, %if.end12.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call16.i, %if.end12.i.cleanup.sink.split.i_crit_edge ], [ %call19.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.45) #12
  br label %err_unlock

sw.bb11:                                          ; preds = %if.end4
  %conv12 = trunc i32 %val to i16
  %als_settings.sroa.4.0.als_settings1.sroa_idx.i = getelementptr inbounds i8, ptr %1, i32 2
  %10 = ptrtoint ptr %als_settings.sroa.4.0.als_settings1.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %als_settings.sroa.4.0.copyload34.i = load i16, ptr %als_settings.sroa.4.0.als_settings1.sroa_idx.i, align 2
  %client2.i61 = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %client2.i61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client2.i61, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv12, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %als_settings.sroa.4.0.copyload34.i, i16 %conv12)
  %cmp.not.i = icmp ugt i16 %als_settings.sroa.4.0.copyload34.i, %conv12
  br i1 %cmp.not.i, label %sw.bb11.if.end.i_crit_edge, label %if.then.i

sw.bb11.if.end.i_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i16 %conv12, 1
  %call.i62 = tail call fastcc i32 @tsl2591_set_als_upper_threshold(ptr noundef %1, i16 noundef zeroext %add.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb11.if.end.i_crit_edge
  %conv8.i = trunc i32 %val to i8
  %call11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext -92, i8 noundef zeroext %conv8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i63 = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i63, label %if.end13.i, label %if.end.i.cleanup.sink.split.i65_crit_edge

if.end.i.cleanup.sink.split.i65_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i65

if.end13.i:                                       ; preds = %if.end.i
  %14 = lshr i32 %val, 8
  %conv10.i = trunc i32 %14 to i8
  %call14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext -91, i8 noundef zeroext %conv10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.err_unlock_crit_edge, label %if.end13.i.cleanup.sink.split.i65_crit_edge

if.end13.i.cleanup.sink.split.i65_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i65

if.end13.i.err_unlock_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

cleanup.sink.split.i65:                           ; preds = %if.end13.i.cleanup.sink.split.i65_crit_edge, %if.end.i.cleanup.sink.split.i65_crit_edge
  %retval.0.ph.i64 = phi i32 [ %call11.i, %if.end.i.cleanup.sink.split.i65_crit_edge ], [ %call14.i, %if.end13.i.cleanup.sink.split.i65_crit_edge ]
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.49) #12
  br label %err_unlock

sw.bb18:                                          ; preds = %if.end
  %als_int_time = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %als_int_time to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %als_int_time, align 4
  %conv19 = zext i8 %16 to i32
  %17 = mul nuw nsw i32 %conv19, 100
  %mul = add nuw nsw i32 %17, 100
  %mul20 = mul i32 %val, 1000
  %div74 = udiv i32 %val2, 1000
  %add21 = add i32 %div74, %mul20
  %div22 = sdiv i32 %add21, %mul
  %conv23 = trunc i32 %div22 to i8
  %18 = zext i8 %conv23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %conv23, label %sw.bb18.err_unlock_crit_edge [
    i8 1, label %sw.bb18.if.end33_crit_edge
    i8 2, label %sw.bb18.if.end33_crit_edge75
    i8 3, label %sw.bb18.if.end33_crit_edge76
    i8 5, label %sw.bb3.i
    i8 10, label %sw.bb4.i
    i8 15, label %sw.bb5.i
    i8 20, label %sw.bb6.i
    i8 25, label %sw.bb7.i
    i8 30, label %sw.bb8.i
    i8 35, label %sw.bb9.i
    i8 40, label %sw.bb10.i
    i8 45, label %sw.bb11.i
    i8 50, label %sw.bb12.i
    i8 55, label %sw.bb13.i
    i8 60, label %sw.bb14.i
  ]

sw.bb18.if.end33_crit_edge76:                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb18.if.end33_crit_edge75:                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb18.if.end33_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb18.err_unlock_crit_edge:                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

sw.bb3.i:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb4.i:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb5.i:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb6.i:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb7.i:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb8.i:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb9.i:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb10.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb11.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb12.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb13.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb14.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end33:                                         ; preds = %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb18.if.end33_crit_edge, %sw.bb18.if.end33_crit_edge75, %sw.bb18.if.end33_crit_edge76
  %retval.0.i67.ph = phi i8 [ %conv23, %sw.bb18.if.end33_crit_edge ], [ 4, %sw.bb3.i ], [ 5, %sw.bb4.i ], [ 6, %sw.bb5.i ], [ 7, %sw.bb6.i ], [ 8, %sw.bb7.i ], [ 9, %sw.bb8.i ], [ 10, %sw.bb9.i ], [ 11, %sw.bb10.i ], [ 12, %sw.bb11.i ], [ 13, %sw.bb12.i ], [ 14, %sw.bb13.i ], [ 15, %sw.bb14.i ], [ %conv23, %sw.bb18.if.end33_crit_edge75 ], [ %conv23, %sw.bb18.if.end33_crit_edge76 ]
  %client1.i = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client1.i, align 4
  %call.i68 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -84, i8 noundef zeroext %retval.0.i67.ph) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %if.end33.tsl2591_set_als_persist_cycle.exit_crit_edge, label %do.end.i

if.end33.tsl2591_set_als_persist_cycle.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_set_als_persist_cycle.exit

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53) #12
  br label %tsl2591_set_als_persist_cycle.exit

tsl2591_set_als_persist_cycle.exit:               ; preds = %do.end.i, %if.end33.tsl2591_set_als_persist_cycle.exit_crit_edge
  %als_persist2.i = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %als_persist2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %retval.0.i67.ph, ptr %als_persist2.i, align 1
  br label %err_unlock

err_unlock:                                       ; preds = %tsl2591_set_als_persist_cycle.exit, %sw.bb18.err_unlock_crit_edge, %cleanup.sink.split.i65, %if.end13.i.err_unlock_crit_edge, %cleanup.sink.split.i, %if.end18.i.err_unlock_crit_edge, %if.end4.err_unlock_crit_edge, %sw.bb.err_unlock_crit_edge, %if.end.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call.i68, %tsl2591_set_als_persist_cycle.exit ], [ -22, %sw.bb.err_unlock_crit_edge ], [ -22, %if.end4.err_unlock_crit_edge ], [ -22, %if.end.err_unlock_crit_edge ], [ 0, %if.end18.i.err_unlock_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ 0, %if.end13.i.err_unlock_crit_edge ], [ %retval.0.ph.i64, %cleanup.sink.split.i65 ], [ -22, %sw.bb18.err_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %als_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_in_illuminance_period_available_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %als_int_time = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %als_int_time to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %als_int_time, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [6 x ptr], ptr @tsl2591_als_period_list, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %5) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2591_read_channel_data(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) unnamed_addr #2 align 64 {
entry:
  %als_data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client1 = getelementptr inbounds %struct.tsl2591_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %als_data) #9
  %4 = getelementptr inbounds [4 x i8], ptr %als_data, i32 0, i32 2
  %settings.sroa.4.0.als_settings.sroa_idx.i = getelementptr inbounds i8, ptr %1, i32 4
  %5 = ptrtoint ptr %als_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %als_data, align 4
  %6 = ptrtoint ptr %settings.sroa.4.0.als_settings.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %settings.sroa.4.0.copyload50.i = load i8, ptr %settings.sroa.4.0.als_settings.sroa_idx.i, align 4
  %conv.i = zext i8 %settings.sroa.4.0.copyload50.i to i32
  %7 = mul nuw nsw i32 %conv.i, 100
  %mul.i = add nuw nsw i32 %7, 100
  tail call void @msleep(i32 noundef %mul.i) #9
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 409) #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then26.i, %entry
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %tsl2591_check_als_valid.exit.thread.i, label %tsl2591_check_als_valid.exit.i

tsl2591_check_als_valid.exit.thread.i:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.41) #12
  br label %land.lhs.true.i

tsl2591_check_als_valid.exit.i:                   ; preds = %for.cond.i
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp13.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp13.not.i, label %tsl2591_check_als_valid.exit.i.land.lhs.true.i_crit_edge, label %tsl2591_check_als_valid.exit.i.if.end_crit_edge

tsl2591_check_als_valid.exit.i.if.end_crit_edge:  ; preds = %tsl2591_check_als_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

tsl2591_check_als_valid.exit.i.land.lhs.true.i_crit_edge: ; preds = %tsl2591_check_als_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %tsl2591_check_als_valid.exit.i.land.lhs.true.i_crit_edge, %tsl2591_check_als_valid.exit.thread.i
  %call18.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call18.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then22.i, label %if.then26.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  %call.i54.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp.i55.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp.i55.i, label %tsl2591_check_als_valid.exit61.thread.i, label %tsl2591_check_als_valid.exit61.i

tsl2591_check_als_valid.exit61.thread.i:          ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.41) #12
  br label %do.end

tsl2591_check_als_valid.exit61.i:                 ; preds = %if.then22.i
  %and.i58.i = and i32 %call.i54.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58.i)
  %phi.cmp.not.i = icmp eq i32 %and.i58.i, 0
  br i1 %phi.cmp.not.i, label %tsl2591_check_als_valid.exit61.i.do.end_crit_edge, label %tsl2591_check_als_valid.exit61.i.if.end_crit_edge

tsl2591_check_als_valid.exit61.i.if.end_crit_edge: ; preds = %tsl2591_check_als_valid.exit61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

tsl2591_check_als_valid.exit61.i.do.end_crit_edge: ; preds = %tsl2591_check_als_valid.exit61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #9
  br label %for.cond.i

do.end:                                           ; preds = %tsl2591_check_als_valid.exit61.i.do.end_crit_edge, %tsl2591_check_als_valid.exit61.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.39) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef -110) #12
  br label %cleanup

if.end:                                           ; preds = %tsl2591_check_als_valid.exit61.i.if.end_crit_edge, %tsl2591_check_als_valid.exit.i.if.end_crit_edge
  %call3 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext -76, i8 noundef zeroext 4, ptr noundef nonnull %als_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %8 = ptrtoint ptr %als_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %als_data, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %9) #9
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %4, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12) #9
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %15, label %if.end10.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 6, label %sw.bb24
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %17 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel2, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %18, label %sw.bb.cleanup_crit_edge [
    i32 12, label %if.then15
    i32 13, label %if.then19
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %10 to i32
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

if.then19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv20 = zext i16 %13 to i32
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv20, ptr %val, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end10
  %als_gain = getelementptr inbounds %struct.tsl2591_als_settings, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %als_gain to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %als_gain, align 2
  %conv.i114 = zext i8 %23 to i32
  %24 = call i32 @llvm.fshl.i32(i32 %conv.i114, i32 %conv.i114, i32 28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %switch.lookup, label %do.end31

do.end31:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.35) #12
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tsl2591_read_channel_data, i32 0, i32 %24
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  %27 = ptrtoint ptr %settings.sroa.4.0.als_settings.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %settings.sroa.4.0.als_settings.sroa_idx.i, align 2
  %conv34 = zext i8 %28 to i32
  %29 = mul nuw nsw i32 %conv34, 100
  %mul = add nuw nsw i32 %29, 100
  %mul35 = mul nuw nsw i32 %mul, %switch.load
  %div123 = udiv i32 %mul35, 408
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsl2591_read_channel_data.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsl2591_read_channel_data, %if.then40)) #9
          to label %do.end44 [label %if.then40], !srcloc !157

if.then40:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsl2591_read_channel_data.__UNIQUE_ID_ddebug294, ptr noundef %dev.i.i, ptr noundef nonnull @.str.37, i32 noundef %div123) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %switch.lookup
  %conv45 = zext i16 %10 to i32
  %conv46 = zext i16 %13 to i32
  %sub = sub nsw i32 %conv45, %conv46
  %mul48 = mul nuw nsw i32 %conv46, 1000
  %div50 = udiv i32 %mul48, %conv45
  %sub51 = sub nsw i32 1000, %div50
  %mul52 = mul i32 %sub51, %sub
  %div53 = sdiv i32 %mul52, %div123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsl2591_read_channel_data.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsl2591_read_channel_data, %if.then66)) #9
          to label %do.end70 [label %if.then66], !srcloc !157

if.then66:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsl2591_read_channel_data.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, i32 noundef %div53) #9
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.end44
  %div71 = sdiv i32 %div53, 1000
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div71, ptr %val, align 4
  %mul72.neg = mul nsw i32 %div71, -1000
  %sub73 = add i32 %mul72.neg, %div53
  %mul74 = mul i32 %sub73, 1000
  %31 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul74, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %do.end31, %if.then19, %if.then15, %sw.bb.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ %call3, %do.end8 ], [ -22, %do.end31 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.then19 ], [ 0, %do.end70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %als_data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2591_set_als_upper_threshold(ptr nocapture noundef %chip, i16 noundef zeroext %als_upper_threshold) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client2 = getelementptr inbounds %struct.tsl2591_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client2, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load2_noabort(i32 %2)
  %als_settings.sroa.0.0.copyload38 = load i16, ptr %chip, align 4
  %als_upper_thresh = getelementptr inbounds %struct.tsl2591_als_settings, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %als_upper_thresh to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %als_upper_threshold, ptr %als_upper_thresh, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %als_settings.sroa.0.0.copyload38, i16 %als_upper_threshold)
  %cmp7 = icmp ugt i16 %als_settings.sroa.0.0.copyload38, %als_upper_threshold
  br i1 %cmp7, label %if.then9, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i16 %als_upper_threshold, -1
  %call = tail call fastcc i32 @tsl2591_set_als_lower_threshold(ptr noundef %chip, i16 noundef zeroext %sub)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %entry.if.end12_crit_edge
  %conv13 = trunc i16 %als_upper_threshold to i8
  %call16 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -90, i8 noundef zeroext %conv13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end12
  %4 = lshr i16 %als_upper_threshold, 8
  %conv15 = trunc i16 %4 to i8
  %call19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -89, i8 noundef zeroext %conv15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end18.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call16, %if.end12.cleanup.sink.split_crit_edge ], [ %call19, %if.end18.cleanup.sink.split_crit_edge ]
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.45) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2591_set_als_lower_threshold(ptr nocapture noundef %chip, i16 noundef zeroext %als_lower_threshold) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %als_settings.sroa.4.0.als_settings1.sroa_idx = getelementptr inbounds i8, ptr %chip, i32 2
  %0 = ptrtoint ptr %als_settings.sroa.4.0.als_settings1.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %als_settings.sroa.4.0.copyload34 = load i16, ptr %als_settings.sroa.4.0.als_settings1.sroa_idx, align 2
  %client2 = getelementptr inbounds %struct.tsl2591_chip, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client2, align 4
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %als_lower_threshold, ptr %chip, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %als_settings.sroa.4.0.copyload34, i16 %als_lower_threshold)
  %cmp.not = icmp ugt i16 %als_settings.sroa.4.0.copyload34, %als_lower_threshold
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i16 %als_lower_threshold, 1
  %call = tail call fastcc i32 @tsl2591_set_als_upper_threshold(ptr noundef %chip, i16 noundef zeroext %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv8 = trunc i16 %als_lower_threshold to i8
  %call11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -92, i8 noundef zeroext %conv8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end
  %4 = lshr i16 %als_lower_threshold, 8
  %conv10 = trunc i16 %4 to i8
  %call14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -91, i8 noundef zeroext %conv10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end13.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call11, %if.end.cleanup.sink.split_crit_edge ], [ %call14, %if.end13.cleanup.sink.split_crit_edge ]
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.49) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %als_mutex = getelementptr inbounds %struct.tsl2591_chip, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %als_mutex, i32 noundef 0) #9
  %client1.i = getelementptr inbounds %struct.tsl2591_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -96, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.tsl2591_set_power_state.exit_crit_edge, label %do.end.i

entry.tsl2591_set_power_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_set_power_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef 0) #12
  br label %tsl2591_set_power_state.exit

tsl2591_set_power_state.exit:                     ; preds = %do.end.i, %entry.tsl2591_set_power_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %als_mutex) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2591_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %events_enabled = getelementptr inbounds %struct.tsl2591_chip, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %events_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %events_enabled, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i8 3, i8 19
  %als_mutex = getelementptr inbounds %struct.tsl2591_chip, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %als_mutex, i32 noundef 0) #9
  %client1.i = getelementptr inbounds %struct.tsl2591_chip, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -96, i8 noundef zeroext %spec.select) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.tsl2591_set_power_state.exit_crit_edge, label %do.end.i

entry.tsl2591_set_power_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2591_set_power_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %conv.i = zext i8 %spec.select to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef %conv.i) #12
  br label %tsl2591_set_power_state.exit

tsl2591_set_power_state.exit:                     ; preds = %do.end.i, %entry.tsl2591_set_power_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %als_mutex) #9
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind "function-inline-cost-multiplier"="2" }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !126, !127, !128, !129, !131, !133, !135, !137, !138, !139, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_tsl2591__301_1221_tsl2591_driver_init6, !1, !"__initcall__kmod_tsl2591__301_1221_tsl2591_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/tsl2591.c", i32 1221, i32 1}
!2 = !{ptr @__exitcall_tsl2591_driver_exit, !1, !"__exitcall_tsl2591_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/tsl2591.c", i32 1223, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/tsl2591.c", i32 1224, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/tsl2591.c", i32 1225, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/tsl2591.c", i32 1215, i32 11}
!12 = !{ptr @tsl2591_driver, !13, !"tsl2591_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/tsl2591.c", i32 1213, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/tsl2591.c", i32 1126, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tsl2591_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tsl2591_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/light/tsl2591.c", i32 1143, i32 7}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/light/tsl2591.c", i32 1145, i32 37}
!26 = !{ptr @tsl2591_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/iio/light/tsl2591.c", i32 1153, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/tsl2591.c", i32 1158, i32 3}
!31 = !{ptr @tsl2591_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tsl2591_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/tsl2591.c", i32 1164, i32 3}
!35 = !{ptr @tsl2591_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tsl2591_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/tsl2591.c", i32 1194, i32 3}
!39 = !{ptr @tsl2591_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tsl2591_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/light/tsl2591.c", i32 1200, i32 3}
!43 = !{ptr @tsl2591_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tsl2591_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @tsl2591_info, !46, !"tsl2591_info", i1 false, i1 false}
!46 = !{!"../drivers/iio/light/tsl2591.c", i32 1005, i32 30}
!47 = !{ptr @tsl2591_event_attribute_group, !48, !"tsl2591_event_attribute_group", i1 false, i1 false}
!48 = !{!"../drivers/iio/light/tsl2591.c", i32 658, i32 37}
!49 = !{ptr @tsl2591_event_attrs_ctrl, !50, !"tsl2591_event_attrs_ctrl", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/tsl2591.c", i32 653, i32 26}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/light/tsl2591.c", i32 651, i32 8}
!53 = !{ptr @iio_dev_attr_tsl2591_in_illuminance_period_available, !52, !"iio_dev_attr_tsl2591_in_illuminance_period_available", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/tsl2591.c", i32 647, i32 25}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/tsl2591.c", i32 179, i32 2}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/tsl2591.c", i32 180, i32 2}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/tsl2591.c", i32 181, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/tsl2591.c", i32 182, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/light/tsl2591.c", i32 183, i32 2}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/tsl2591.c", i32 184, i32 2}
!68 = !{ptr @tsl2591_als_period_list, !69, !"tsl2591_als_period_list", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/tsl2591.c", i32 178, i32 27}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/tsl2591.c", i32 445, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tsl2591_read_channel_data._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @tsl2591_read_channel_data._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/light/tsl2591.c", i32 453, i32 3}
!77 = !{ptr @tsl2591_read_channel_data._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tsl2591_read_channel_data._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/light/tsl2591.c", i32 472, i32 4}
!81 = !{ptr @tsl2591_read_channel_data._entry.34, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tsl2591_read_channel_data._entry_ptr.36, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/light/tsl2591.c", i32 480, i32 3}
!85 = !{ptr @tsl2591_read_channel_data.__UNIQUE_ID_ddebug294, !84, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/light/tsl2591.c", i32 486, i32 3}
!88 = !{ptr @tsl2591_read_channel_data.__UNIQUE_ID_ddebug295, !87, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/light/tsl2591.c", i32 411, i32 3}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tsl2591_wait_adc_complete._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @tsl2591_wait_adc_complete._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/light/tsl2591.c", i32 380, i32 3}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tsl2591_check_als_valid._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @tsl2591_check_als_valid._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @tsl2591_int_time_available, !100, !"tsl2591_int_time_available", i1 false, i1 false}
!100 = !{!"../drivers/iio/light/tsl2591.c", i32 187, i32 18}
!101 = !{ptr @tsl2591_calibscale_available, !102, !"tsl2591_calibscale_available", i1 false, i1 false}
!102 = !{!"../drivers/iio/light/tsl2591.c", i32 191, i32 18}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/light/tsl2591.c", i32 512, i32 3}
!105 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @tsl2591_set_als_gain_int_time._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @tsl2591_set_als_gain_int_time._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/light/tsl2591.c", i32 593, i32 3}
!110 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @tsl2591_set_als_upper_threshold._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @tsl2591_set_als_upper_threshold._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @tsl2591_set_als_upper_threshold._entry.47, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/iio/light/tsl2591.c", i32 601, i32 3}
!115 = !{ptr @tsl2591_set_als_upper_threshold._entry_ptr.48, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/light/tsl2591.c", i32 546, i32 3}
!118 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @tsl2591_set_als_lower_threshold._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @tsl2591_set_als_lower_threshold._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @tsl2591_set_als_lower_threshold._entry.51, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/iio/light/tsl2591.c", i32 554, i32 3}
!123 = !{ptr @tsl2591_set_als_lower_threshold._entry_ptr.52, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/light/tsl2591.c", i32 618, i32 3}
!126 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @tsl2591_set_als_persist_cycle._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @tsl2591_set_als_persist_cycle._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @tsl2591_info_no_irq, !130, !"tsl2591_info_no_irq", i1 false, i1 false}
!130 = !{!"../drivers/iio/light/tsl2591.c", i32 1016, i32 30}
!131 = !{ptr @tsl2591_channels, !132, !"tsl2591_channels", i1 false, i1 false}
!132 = !{!"../drivers/iio/light/tsl2591.c", i32 679, i32 35}
!133 = !{ptr @tsl2591_events, !134, !"tsl2591_events", i1 false, i1 false}
!134 = !{!"../drivers/iio/light/tsl2591.c", i32 662, i32 36}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/light/tsl2591.c", i32 634, i32 3}
!137 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @tsl2591_set_power_state._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @tsl2591_set_power_state._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @tsl2591_of_match, !141, !"tsl2591_of_match", i1 false, i1 false}
!141 = !{!"../drivers/iio/light/tsl2591.c", i32 1207, i32 34}
!142 = !{ptr @tsl2591_pm_ops, !143, !"tsl2591_pm_ops", i1 false, i1 false}
!143 = !{!"../drivers/iio/light/tsl2591.c", i32 1052, i32 32}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i8 0, i8 2}
!154 = !{i64 2148738644}
!155 = !{i64 1225244, i64 1225269, i64 1225291, i64 1225307, i64 1225319, i64 1225339, i64 1225363, i64 1225379, i64 1225391}
!156 = !{i64 2148738832}
!157 = !{i64 2148563823, i64 2148563828, i64 2148563841, i64 2148563885, i64 2148563919, i64 2148563940}
