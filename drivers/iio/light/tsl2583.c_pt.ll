; ModuleID = '/llk/IR_all_yes/drivers/iio/light/tsl2583.c_pt.bc'
source_filename = "../drivers/iio/light/tsl2583.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.gainadj = type { i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.tsl2583_lux = type { i32, i32, i32 }
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
%struct.tsl2583_chip = type { %struct.mutex, ptr, %struct.tsl2583_als_info, %struct.tsl2583_settings, i32, i32 }
%struct.tsl2583_als_info = type { i16, i16, i16 }
%struct.tsl2583_settings = type { i32, i32, i32, i32, [11 x %struct.tsl2583_lux] }

@__initcall__kmod_tsl2583__290_952_tsl2583_driver_init6 = internal global ptr @tsl2583_driver_init, section ".initcall6.init", align 4
@tsl2583_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tsl2583_probe, ptr @tsl2583_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tsl2583_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsl2583_pm_ops, ptr null, ptr null }, ptr @tsl2583_idtable, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tsl2583_driver_exit = internal global ptr @tsl2583_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [56 x i8] c"tsl2583.author=J. August Brenner <jbrenner@taosinc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [52 x i8] c"tsl2583.author=Brian Masney <masneyb@onstation.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [61 x i8] c"tsl2583.description=TAOS tsl2583 ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"tsl2583.file=drivers/iio/light/tsl2583\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"tsl2583.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsl2583\00", [24 x i8] zeroinitializer }, align 32
@tsl2583_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2580\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2581\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2583\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tsl2583_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsl2583_suspend, ptr @tsl2583_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tsl2583_idtable = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tsl2580\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tsl2581\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"tsl2583\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tsl2583_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 822, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: i2c smbus byte data functionality is unsupported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsl2583_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/tsl2583.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsl2583_probe._entry_ptr = internal global ptr @tsl2583_probe._entry, section ".printk_index", align 4
@tsl2583_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip->als_mutex\00", [47 x i8] zeroinitializer }, align 32
@tsl2583_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 840, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to read the chip ID register\0A\00", [55 x i8] zeroinitializer }, align 32
@tsl2583_probe._entry_ptr.9 = internal global ptr @tsl2583_probe._entry.7, section ".printk_index", align 4
@tsl2583_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 846, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: received an unknown chip ID %x\0A\00", [60 x i8] zeroinitializer }, align 32
@tsl2583_probe._entry_ptr.12 = internal global ptr @tsl2583_probe._entry.10, section ".printk_index", align 4
@tsl2583_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @tsl2583_attribute_group, ptr @tsl2583_read_raw, ptr null, ptr null, ptr @tsl2583_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tsl2583_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 13, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 6, i32 0, i32 12, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262194, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@tsl2583_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 864, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: iio registration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@tsl2583_probe._entry_ptr.15 = internal global ptr @tsl2583_probe._entry.13, section ".printk_index", align 4
@tsl2583_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 871, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Light sensor found.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsl2583_probe._entry_ptr.19 = internal global ptr @tsl2583_probe._entry.16, section ".printk_index", align 4
@tsl2583_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sysfs_attrs_ctrl, ptr null }, [44 x i8] zeroinitializer }, align 32
@sysfs_attrs_ctrl = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_calibscale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_integration_time_available, i64 4), ptr @iio_dev_attr_in_illuminance_input_target, ptr @iio_dev_attr_in_illuminance_calibrate, ptr @iio_dev_attr_in_illuminance_lux_table, ptr null], [40 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_calibscale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.20, %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.22, %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_illuminance_input_target = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_illuminance_input_target_show, ptr @in_illuminance_input_target_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_illuminance_calibrate = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @in_illuminance_calibrate_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_illuminance_lux_table = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_illuminance_lux_table_show, ptr @in_illuminance_lux_table_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1 8 16 111\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"in_illuminance_calibscale_available\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"0.050 0.100 0.150 0.200 0.250 0.300 0.350 0.400 0.450 0.500 0.550 0.600 0.650\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"in_illuminance_integration_time_available\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_illuminance_input_target\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_illuminance_calibrate\00", [39 x i8] zeroinitializer }, align 32
@tsl2583_als_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: failed to read from the CNTRL register\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tsl2583_als_calibrate\00", [42 x i8] zeroinitializer }, align 32
@tsl2583_als_calibrate._entry_ptr = internal global ptr @tsl2583_als_calibrate._entry, section ".printk_index", align 4
@tsl2583_als_calibrate._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Device is not powered on and/or ADC is not enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@tsl2583_als_calibrate._entry_ptr.31 = internal global ptr @tsl2583_als_calibrate._entry.29, section ".printk_index", align 4
@tsl2583_als_calibrate._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: The two ADC channels have not completed an integration cycle\0A\00", [62 x i8] zeroinitializer }, align 32
@tsl2583_als_calibrate._entry_ptr.34 = internal global ptr @tsl2583_als_calibrate._entry.32, section ".printk_index", align 4
@tsl2583_als_calibrate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: failed to get lux\0A\00", [41 x i8] zeroinitializer }, align 32
@tsl2583_als_calibrate._entry_ptr.37 = internal global ptr @tsl2583_als_calibrate._entry.35, section ".printk_index", align 4
@tsl2583_als_calibrate._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: lux_val of 0 will produce out of range trim_value\0A\00", [41 x i8] zeroinitializer }, align 32
@tsl2583_als_calibrate._entry_ptr.40 = internal global ptr @tsl2583_als_calibrate._entry.38, section ".printk_index", align 4
@tsl2583_als_calibrate._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: trim_val of %d is not within the range [250, 4000]\0A\00", [40 x i8] zeroinitializer }, align 32
@tsl2583_als_calibrate._entry_ptr.43 = internal global ptr @tsl2583_als_calibrate._entry.41, section ".printk_index", align 4
@tsl2583_get_lux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to read CMD_REG register\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tsl2583_get_lux\00", [16 x i8] zeroinitializer }, align 32
@tsl2583_get_lux._entry_ptr = internal global ptr @tsl2583_get_lux._entry, section ".printk_index", align 4
@tsl2583_get_lux._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: data not valid; returning last value\0A\00", [54 x i8] zeroinitializer }, align 32
@tsl2583_get_lux._entry_ptr.48 = internal global ptr @tsl2583_get_lux._entry.46, section ".printk_index", align 4
@tsl2583_get_lux._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to read register %x\0A\00", [32 x i8] zeroinitializer }, align 32
@tsl2583_get_lux._entry_ptr.51 = internal global ptr @tsl2583_get_lux._entry.49, section ".printk_index", align 4
@tsl2583_get_lux._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to clear the interrupt bit\0A\00", [57 x i8] zeroinitializer }, align 32
@tsl2583_get_lux._entry_ptr.54 = internal global ptr @tsl2583_get_lux._entry.52, section ".printk_index", align 4
@gainadj = internal constant { [4 x %struct.gainadj], [40 x i8] } { [4 x %struct.gainadj] [%struct.gainadj { i16 1, i16 1, i16 1 }, %struct.gainadj { i16 8, i16 8, i16 8 }, %struct.gainadj { i16 16, i16 16, i16 16 }, %struct.gainadj { i16 107, i16 115, i16 111 }], [40 x i8] zeroinitializer }, align 32
@tsl2583_get_lux.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.55, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: No Data - Returning 0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_illuminance_lux_table\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%u,%u,%u,\00", [22 x i8] zeroinitializer }, align 32
@in_illuminance_lux_table_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"%s: The number of entries in the lux table must be a multiple of 3 and within the range [6, %d]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"in_illuminance_lux_table_store\00", [33 x i8] zeroinitializer }, align 32
@in_illuminance_lux_table_store._entry_ptr = internal global ptr @in_illuminance_lux_table_store._entry, section ".printk_index", align 4
@in_illuminance_lux_table_store._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: The last 3 entries in the lux table must be zeros.\0A\00", [40 x i8] zeroinitializer }, align 32
@in_illuminance_lux_table_store._entry_ptr.63 = internal global ptr @in_illuminance_lux_table_store._entry.61, section ".printk_index", align 4
@tsl2583_set_als_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: failed to set the gain to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsl2583_set_als_gain\00", [43 x i8] zeroinitializer }, align 32
@tsl2583_set_als_gain._entry_ptr = internal global ptr @tsl2583_set_als_gain._entry, section ".printk_index", align 4
@tsl2583_set_als_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to set the als time to %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsl2583_set_als_time\00", [43 x i8] zeroinitializer }, align 32
@tsl2583_set_als_time._entry_ptr = internal global ptr @tsl2583_set_als_time._entry, section ".printk_index", align 4
@tsl2583_default_lux = internal constant { [5 x %struct.tsl2583_lux], [36 x i8] } { [5 x %struct.tsl2583_lux] [%struct.tsl2583_lux { i32 9830, i32 8520, i32 15729 }, %struct.tsl2583_lux { i32 12452, i32 10807, i32 23344 }, %struct.tsl2583_lux { i32 14746, i32 6383, i32 11705 }, %struct.tsl2583_lux { i32 17695, i32 4063, i32 6554 }, %struct.tsl2583_lux zeroinitializer], [36 x i8] zeroinitializer }, align 32
@tsl2583_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to set the power state to %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tsl2583_set_power_state\00", [40 x i8] zeroinitializer }, align 32
@tsl2583_set_power_state._entry_ptr = internal global ptr @tsl2583_set_power_state._entry, section ".printk_index", align 4
@tsl2583_chip_init_and_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: failed to disable interrupts\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tsl2583_chip_init_and_power_on\00", [33 x i8] zeroinitializer }, align 32
@tsl2583_chip_init_and_power_on._entry_ptr = internal global ptr @tsl2583_chip_init_and_power_on._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 5, i64 18]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 18]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 16, i64 111]
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"tsl2583_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 942, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 944, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"tsl2583_of_match\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 933, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"tsl2583_pm_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 919, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"tsl2583_idtable\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 925, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 821, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 834, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 839, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 845, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"tsl2583_info\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 806, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"tsl2583_channels\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 620, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 863, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 871, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [24 x i8] c"tsl2583_attribute_group\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 616, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"sysfs_attrs_ctrl\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 607, i32 26 }
@___asan_gen_.152 = private unnamed_addr constant [51 x i8] c"iio_const_attr_in_illuminance_calibscale_available\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [57 x i8] c"iio_const_attr_in_illuminance_integration_time_available\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_illuminance_input_target\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [38 x i8] c"iio_dev_attr_in_illuminance_calibrate\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [38 x i8] c"iio_dev_attr_in_illuminance_lux_table\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 600, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 601, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 603, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 478, i32 21 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 604, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 318, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 326, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 331, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 339, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 346, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 355, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 176, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 183, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 194, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 210, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [8 x i8] c"gainadj\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 114, i32 29 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 258, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 605, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 536, i32 35 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 578, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 584, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 405, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 384, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c"tsl2583_default_lux\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 74, i32 33 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 419, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.318 = private constant [31 x i8] c"../drivers/iio/light/tsl2583.c\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 444, i32 3 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_tsl2583_driver_exit, ptr @__initcall__kmod_tsl2583__290_952_tsl2583_driver_init6, ptr @in_illuminance_lux_table_store._entry, ptr @in_illuminance_lux_table_store._entry.61, ptr @in_illuminance_lux_table_store._entry_ptr, ptr @in_illuminance_lux_table_store._entry_ptr.63, ptr @tsl2583_als_calibrate._entry, ptr @tsl2583_als_calibrate._entry.29, ptr @tsl2583_als_calibrate._entry.32, ptr @tsl2583_als_calibrate._entry.35, ptr @tsl2583_als_calibrate._entry.38, ptr @tsl2583_als_calibrate._entry.41, ptr @tsl2583_als_calibrate._entry_ptr, ptr @tsl2583_als_calibrate._entry_ptr.31, ptr @tsl2583_als_calibrate._entry_ptr.34, ptr @tsl2583_als_calibrate._entry_ptr.37, ptr @tsl2583_als_calibrate._entry_ptr.40, ptr @tsl2583_als_calibrate._entry_ptr.43, ptr @tsl2583_chip_init_and_power_on._entry, ptr @tsl2583_chip_init_and_power_on._entry_ptr, ptr @tsl2583_driver_exit, ptr @tsl2583_get_lux._entry, ptr @tsl2583_get_lux._entry.46, ptr @tsl2583_get_lux._entry.49, ptr @tsl2583_get_lux._entry.52, ptr @tsl2583_get_lux._entry_ptr, ptr @tsl2583_get_lux._entry_ptr.48, ptr @tsl2583_get_lux._entry_ptr.51, ptr @tsl2583_get_lux._entry_ptr.54, ptr @tsl2583_probe._entry, ptr @tsl2583_probe._entry.10, ptr @tsl2583_probe._entry.13, ptr @tsl2583_probe._entry.16, ptr @tsl2583_probe._entry.7, ptr @tsl2583_probe._entry_ptr, ptr @tsl2583_probe._entry_ptr.12, ptr @tsl2583_probe._entry_ptr.15, ptr @tsl2583_probe._entry_ptr.19, ptr @tsl2583_probe._entry_ptr.9, ptr @tsl2583_set_als_gain._entry, ptr @tsl2583_set_als_gain._entry_ptr, ptr @tsl2583_set_als_time._entry, ptr @tsl2583_set_als_time._entry_ptr, ptr @tsl2583_set_power_state._entry, ptr @tsl2583_set_power_state._entry_ptr, ptr @tsl2583_driver, ptr @.str, ptr @tsl2583_of_match, ptr @tsl2583_pm_ops, ptr @tsl2583_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tsl2583_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @tsl2583_info, ptr @tsl2583_channels, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @tsl2583_attribute_group, ptr @sysfs_attrs_ctrl, ptr @iio_const_attr_in_illuminance_calibscale_available, ptr @iio_const_attr_in_illuminance_integration_time_available, ptr @iio_dev_attr_in_illuminance_input_target, ptr @iio_dev_attr_in_illuminance_calibrate, ptr @iio_dev_attr_in_illuminance_lux_table, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @gainadj, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @tsl2583_default_lux, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_idtable to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_attrs_ctrl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_calibscale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_illuminance_input_target to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_illuminance_calibrate to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_illuminance_lux_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_als_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_als_calibrate._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_als_calibrate._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_als_calibrate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_als_calibrate._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_als_calibrate._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_get_lux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_get_lux._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_get_lux._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_get_lux._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gainadj to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_illuminance_lux_table_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_illuminance_lux_table_store._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_set_als_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_set_als_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_default_lux to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2583_chip_init_and_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2583_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tsl2583_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsl2583_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @tsl2583_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2583_probe(ptr noundef %clientp, ptr nocapture noundef readnone %idp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %clientp, i32 0, i32 3
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
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %clientp, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 260) #9
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
  %client = getelementptr inbounds %struct.tsl2583_chip, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %clientp, ptr %client, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %clientp, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %driver_data.i.i, align 4
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @tsl2583_probe.__key) #9
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %clientp, i8 noundef zeroext -110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %and = and i32 %call10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %and)
  %cmp17.not = icmp eq i32 %and, 144
  br i1 %cmp17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef %call10) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tsl2583_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tsl2583_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %num_channels, align 4
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call2, align 8
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 2
  %name25 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %16 = ptrtoint ptr %name25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %name, ptr %name25, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  %call30 = tail call i32 @__devm_iio_device_register(ptr noundef %18, ptr noundef nonnull %call2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %als_settings.i = getelementptr inbounds %struct.tsl2583_chip, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %als_settings.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 100, ptr %als_settings.i, align 4
  %als_gain.i = getelementptr inbounds %struct.tsl2583_chip, ptr %7, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %als_gain.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %als_gain.i, align 4
  %als_gain_trim.i = getelementptr inbounds %struct.tsl2583_chip, ptr %7, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %als_gain_trim.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1000, ptr %als_gain_trim.i, align 4
  %als_cal_target.i = getelementptr inbounds %struct.tsl2583_chip, ptr %7, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %als_cal_target.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 130, ptr %als_cal_target.i, align 4
  %als_device_lux.i = getelementptr inbounds %struct.tsl2583_chip, ptr %7, i32 0, i32 3, i32 4
  %23 = call ptr @memcpy(ptr %als_device_lux.i, ptr @tsl2583_default_lux, i32 60)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end35, %do.end21, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call10, %do.end14 ], [ -22, %do.end21 ], [ %call30, %do.end35 ], [ 0, %if.end37 ], [ -95, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2583_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  %client.i = getelementptr inbounds %struct.tsl2583_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.i8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp.i = icmp slt i32 %call.i8, 0
  br i1 %cmp.i, label %do.end.i, label %entry.tsl2583_set_power_state.exit_crit_edge

entry.tsl2583_set_power_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2583_set_power_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 0) #12
  br label %tsl2583_set_power_state.exit

tsl2583_set_power_state.exit:                     ; preds = %do.end.i, %entry.tsl2583_set_power_state.exit_crit_edge
  ret i32 %call.i8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2583_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #9, !srcloc !169
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !170
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.if.then49_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 5, label %sw.bb25
    i32 4, label %sw.bb31
    i32 18, label %sw.bb39
  ]

if.end.if.then49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp2 = icmp eq i32 %7, 6
  br i1 %cmp2, label %if.then3, label %sw.bb.if.then49_crit_edge

sw.bb.if.then49_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then3:                                         ; preds = %sw.bb
  %call4 = tail call fastcc i32 @tsl2583_get_lux(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.if.then49_crit_edge, label %if.end7

if.then3.if.then49_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp8 = icmp eq i32 %9, 12
  %als_ch1 = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 2, i32 1
  %als_cur_info = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 2
  %storemerge.in.in = select i1 %cmp8, ptr %als_cur_info, ptr %als_ch1
  %10 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load2_noabort(i32 %10)
  %storemerge.in = load i16, ptr %storemerge.in.in, align 2
  %storemerge = zext i16 %storemerge.in to i32
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %val, align 4
  br label %if.end51

sw.bb14:                                          ; preds = %if.end
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp16 = icmp eq i32 %13, 6
  br i1 %cmp16, label %if.then18, label %sw.bb14.if.then49_crit_edge

sw.bb14.if.then49_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then18:                                        ; preds = %sw.bb14
  %call19 = tail call fastcc i32 @tsl2583_get_lux(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then18.if.then49_crit_edge, label %if.end23

if.then18.if.then49_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.end23:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call19, ptr %val, align 4
  br label %if.end51

sw.bb25:                                          ; preds = %if.end
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp27 = icmp eq i32 %16, 6
  br i1 %cmp27, label %if.then29, label %sw.bb25.if.then49_crit_edge

sw.bb25.if.then49_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then29:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  %als_gain_trim = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %als_gain_trim to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %als_gain_trim, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %if.end51

sw.bb31:                                          ; preds = %if.end
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp33 = icmp eq i32 %21, 6
  br i1 %cmp33, label %if.then35, label %sw.bb31.if.then49_crit_edge

sw.bb31.if.then49_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then35:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  %als_gain = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %als_gain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %als_gain, align 4
  %mean = getelementptr [4 x %struct.gainadj], ptr @gainadj, i32 0, i32 %23, i32 2
  %24 = ptrtoint ptr %mean to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mean, align 2
  %conv37 = sext i16 %25 to i32
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv37, ptr %val, align 4
  br label %if.end51

sw.bb39:                                          ; preds = %if.end
  %27 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp41 = icmp eq i32 %28, 6
  br i1 %cmp41, label %if.then43, label %sw.bb39.if.then49_crit_edge

sw.bb39.if.then49_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then43:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %val, align 4
  %als_settings44 = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %als_settings44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %als_settings44, align 4
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val2, align 4
  br label %if.end51

if.then49:                                        ; preds = %sw.bb39.if.then49_crit_edge, %sw.bb31.if.then49_crit_edge, %sw.bb25.if.then49_crit_edge, %if.then18.if.then49_crit_edge, %sw.bb14.if.then49_crit_edge, %if.then3.if.then49_crit_edge, %sw.bb.if.then49_crit_edge, %if.end.if.then49_crit_edge
  %ret.0.ph = phi i32 [ -22, %sw.bb.if.then49_crit_edge ], [ %call4, %if.then3.if.then49_crit_edge ], [ -22, %sw.bb14.if.then49_crit_edge ], [ %call19, %if.then18.if.then49_crit_edge ], [ -22, %sw.bb25.if.then49_crit_edge ], [ -22, %sw.bb31.if.then49_crit_edge ], [ -22, %sw.bb39.if.then49_crit_edge ], [ -22, %if.end.if.then49_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #9
  %33 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client.i, align 4
  %call.i8.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4, i32 12, i32 22
  %35 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %call.i8.i, ptr %last_busy.i.i, align 8
  %36 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client.i, align 4
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  %call.i9.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4.i, i32 noundef 13) #9
  br label %cleanup

if.end51:                                         ; preds = %if.then43, %if.then35, %if.then29, %if.end23, %if.end7
  %ret.0 = phi i32 [ 2, %if.then43 ], [ 1, %if.then35 ], [ 1, %if.then29 ], [ 1, %if.end23 ], [ 1, %if.end7 ]
  tail call void @mutex_unlock(ptr noundef %1) #9
  %38 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client.i, align 4
  %call.i8.i91 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i92 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4, i32 12, i32 22
  %40 = ptrtoint ptr %last_busy.i.i92 to i32
  call void @__asan_store8_noabort(i32 %40)
  store volatile i64 %call.i8.i91, ptr %last_busy.i.i92, align 8
  %41 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client.i, align 4
  %dev4.i93 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %call.i9.i94 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4.i93, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i94)
  %cmp53 = icmp slt i32 %call.i9.i94, 0
  %call52.ret.0 = select i1 %cmp53, i32 %call.i9.i94, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then49, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.ph, %if.then49 ], [ %call52.ret.0, %if.end51 ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2583_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #9, !srcloc !169
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !170
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %mask, label %if.end.if.then36_crit_edge [
    i32 5, label %sw.bb
    i32 4, label %sw.bb5
    i32 18, label %sw.bb17
  ]

if.end.if.then36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp2 = icmp eq i32 %7, 6
  br i1 %cmp2, label %if.then3, label %sw.bb.if.then36_crit_edge

sw.bb.if.then36_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %als_gain_trim = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %als_gain_trim to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val, ptr %als_gain_trim, align 4
  br label %if.end38

sw.bb5:                                           ; preds = %if.end
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp7 = icmp eq i32 %10, 6
  br i1 %cmp7, label %for.body.preheader, label %sw.bb5.if.then36_crit_edge

sw.bb5.if.then36_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

for.body.preheader:                               ; preds = %sw.bb5
  %11 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %val, label %for.body.preheader.if.then36_crit_edge [
    i32 1, label %for.body.preheader.if.then12_crit_edge
    i32 8, label %if.then12.fold.split
    i32 16, label %if.then12.fold.split101
    i32 111, label %if.then12.fold.split102
  ]

for.body.preheader.if.then12_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

for.body.preheader.if.then36_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then12.fold.split:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12.fold.split101:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12.fold.split102:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %if.then12.fold.split102, %if.then12.fold.split101, %if.then12.fold.split, %for.body.preheader.if.then12_crit_edge
  %i.099.lcssa = phi i32 [ 0, %for.body.preheader.if.then12_crit_edge ], [ 1, %if.then12.fold.split ], [ 2, %if.then12.fold.split101 ], [ 3, %if.then12.fold.split102 ]
  %als_gain = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %als_gain to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.099.lcssa, ptr %als_gain, align 4
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %conv.i = trunc i32 %i.099.lcssa to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext -121, i8 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then12.if.end38_crit_edge

if.then12.if.end38_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %dev.i74 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %als_gain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %als_gain, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i74, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %18) #12
  br label %if.then36

sw.bb17:                                          ; preds = %if.end
  %19 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp19 = icmp eq i32 %20, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %or.cond = and i1 %tobool.not, %cmp19
  %21 = add i32 %val2, -50
  call void @__sanitizer_cov_trace_const_cmp4(i32 601, i32 %21)
  %22 = icmp ult i32 %21, 601
  %23 = and i1 %22, %or.cond
  %rem = srem i32 %val2, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool28.not = icmp eq i32 %rem, 0
  %or.cond72 = and i1 %tobool28.not, %23
  br i1 %or.cond72, label %if.then29, label %sw.bb17.if.then36_crit_edge

sw.bb17.if.then36_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then29:                                        ; preds = %sw.bb17
  %als_settings30 = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %als_settings30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %val2, ptr %als_settings30, align 4
  %25 = trunc i32 %val2 to i16
  %26 = mul nuw i16 %25, 100
  %cond.i93.lhs.trunc = add nuw i16 %26, 135
  %cond.i9394 = udiv i16 %cond.i93.lhs.trunc, 270
  %27 = trunc i16 %cond.i9394 to i8
  %conv30.i = sub i8 0, %27
  %28 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client.i, align 4
  %call.i77 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -127, i8 noundef zeroext %conv30.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp31.i = icmp slt i32 %call.i77, 0
  br i1 %cmp31.i, label %do.end.i79, label %if.end36.i

do.end.i79:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client.i, align 4
  %dev.i78 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  %conv35.i = zext i8 %conv30.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i78, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %conv35.i) #12
  br label %if.then36

if.end36.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %cond.i93.zext = zext i16 %cond.i9394 to i32
  %mul10.i = mul nuw nsw i16 %cond.i9394, 27
  %cond28.in.i = add nuw nsw i16 %mul10.i, 5
  %cond28.i9596 = udiv i16 %cond28.in.i, 10
  %mul37.i = mul nuw nsw i32 %cond.i93.zext, 922
  %als_saturation.i = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %als_saturation.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul37.i, ptr %als_saturation.i, align 4
  %narrow = add nuw nsw i16 %cond28.i9596, 25
  %cond56.i97 = udiv i16 %narrow, 50
  %cond56.i.sext = zext i16 %cond56.i97 to i32
  %als_time_scale.i = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %als_time_scale.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond56.i.sext, ptr %als_time_scale.i, align 4
  br label %if.end38

if.then36:                                        ; preds = %do.end.i79, %sw.bb17.if.then36_crit_edge, %do.end.i, %for.body.preheader.if.then36_crit_edge, %sw.bb5.if.then36_crit_edge, %sw.bb.if.then36_crit_edge, %if.end.if.then36_crit_edge
  %ret.1.ph = phi i32 [ %call.i77, %do.end.i79 ], [ %call.i, %do.end.i ], [ -22, %sw.bb.if.then36_crit_edge ], [ -22, %sw.bb5.if.then36_crit_edge ], [ -22, %sw.bb17.if.then36_crit_edge ], [ -22, %if.end.if.then36_crit_edge ], [ -22, %for.body.preheader.if.then36_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #9
  %34 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client.i, align 4
  %call.i8.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4, i32 12, i32 22
  %36 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store volatile i64 %call.i8.i, ptr %last_busy.i.i, align 8
  %37 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client.i, align 4
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %call.i9.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4.i, i32 noundef 13) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end36.i, %if.then12.if.end38_crit_edge, %if.then3
  tail call void @mutex_unlock(ptr noundef %1) #9
  %39 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i, align 4
  %call.i8.i83 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i84 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4, i32 12, i32 22
  %41 = ptrtoint ptr %last_busy.i.i84 to i32
  call void @__asan_store8_noabort(i32 %41)
  store volatile i64 %call.i8.i83, ptr %last_busy.i.i84, align 8
  %42 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client.i, align 4
  %dev4.i85 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  %call.i9.i86 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4.i85, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then36, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1.ph, %if.then36 ], [ %call.i9.i86, %if.end38 ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance_input_target_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %als_cal_target = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %als_cal_target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %als_cal_target, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef %1) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance_input_target_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !171
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %als_cal_target = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %als_cal_target to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %als_cal_target, align 4
  call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance_calibrate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !171
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.tsl2583_chip, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %call1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  br label %28

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %call1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp3.not.i = icmp eq i32 %and.i, 3
  br i1 %cmp3.not.i, label %if.else.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #12
  br label %28

if.else.i:                                        ; preds = %if.end.i
  %and10.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %cmp11.not.not.i = icmp eq i32 %and10.i, 0
  br i1 %cmp11.not.not.i, label %do.end15.i, label %if.end19.i

do.end15.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28) #12
  br label %28

if.end19.i:                                       ; preds = %if.else.i
  %call20.i = call fastcc i32 @tsl2583_get_lux(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %do.end25.i, label %if.end28.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %dev27.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.28) #12
  br label %28

if.end28.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp29.i = icmp eq i32 %call20.i, 0
  br i1 %cmp29.i, label %do.end33.i, label %if.end36.i

do.end33.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 4
  %dev35.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.28) #12
  br label %28

if.end36.i:                                       ; preds = %if.end28.i
  %als_cal_target.i = getelementptr inbounds %struct.tsl2583_chip, ptr %6, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %als_cal_target.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %als_cal_target.i, align 4
  %als_gain_trim.i = getelementptr inbounds %struct.tsl2583_chip, ptr %6, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %als_gain_trim.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %als_gain_trim.i, align 4
  %mul.i = mul i32 %22, %20
  %div.i = sdiv i32 %mul.i, %call20.i
  %23 = add i32 %div.i, -4001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3751, i32 %23)
  %24 = icmp ult i32 %23, -3751
  br i1 %24, label %do.end43.i, label %tsl2583_als_calibrate.exit

do.end43.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client.i, align 4
  %dev45.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.28, i32 noundef %div.i) #12
  br label %28

tsl2583_als_calibrate.exit:                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %als_gain_trim.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div.i, ptr %als_gain_trim.i, align 4
  br label %28

28:                                               ; preds = %tsl2583_als_calibrate.exit, %do.end43.i, %do.end33.i, %do.end25.i, %do.end15.i, %do.end7.i, %do.end.i
  %29 = phi i32 [ %len, %tsl2583_als_calibrate.exit ], [ -61, %do.end43.i ], [ -61, %do.end33.i ], [ %call20.i, %do.end25.i ], [ -61, %do.end15.i ], [ -22, %do.end7.i ], [ %call1.i, %do.end.i ]
  call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %28, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %28 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2583_get_lux(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #12
  br label %cleanup151

if.end:                                           ; preds = %entry
  %and = and i32 %call1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  br i1 %tobool.not, label %do.end6, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %call15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext -108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %for.body.preheader.cleanup_crit_edge, label %for.inc

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45) #12
  %lux9 = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %lux9 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lux9, align 4
  %conv = zext i16 %9 to i32
  br label %cleanup151

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge
  %or.lcssa = phi i32 [ 148, %for.body.preheader.cleanup_crit_edge ], [ 149, %for.inc.cleanup_crit_edge ], [ 150, %for.inc.1.cleanup_crit_edge ], [ 151, %for.inc.2.cleanup_crit_edge ]
  %call15.lcssa = phi i32 [ %call15, %for.body.preheader.cleanup_crit_edge ], [ %call15.1, %for.inc.cleanup_crit_edge ], [ %call15.2, %for.inc.1.cleanup_crit_edge ], [ %call15.3, %for.inc.2.cleanup_crit_edge ]
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.45, i32 noundef %or.lcssa) #12
  br label %cleanup151

for.inc:                                          ; preds = %for.body.preheader
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %call15.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext -107) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %cmp16.1 = icmp slt i32 %call15.1, 0
  br i1 %cmp16.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %call15.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext -106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %cmp16.2 = icmp slt i32 %call15.2, 0
  br i1 %cmp16.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %call15.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext -105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.3)
  %cmp16.3 = icmp slt i32 %call15.3, 0
  br i1 %cmp16.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %call27 = tail call i32 @i2c_smbus_write_byte(ptr noundef %19, i8 noundef zeroext -31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end33, label %if.end36

do.end33:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client, align 4
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.45) #12
  br label %cleanup151

if.end36:                                         ; preds = %for.inc.3
  %22 = trunc i32 %call15.1 to i16
  %buf.sroa.0.sroa.5.0.insert.ext = and i16 %22, 255
  %23 = trunc i32 %call15 to i16
  %buf.sroa.0.sroa.0.0.insert.shift = shl i16 %23, 8
  %buf.sroa.0.sroa.0.0.insert.insert = or i16 %buf.sroa.0.sroa.5.0.insert.ext, %buf.sroa.0.sroa.0.0.insert.shift
  %24 = tail call i16 @llvm.bswap.i16(i16 %buf.sroa.0.sroa.0.0.insert.insert) #9
  %25 = trunc i32 %call15.3 to i16
  %buf.sroa.7.sroa.5.0.insert.ext = and i16 %25, 255
  %26 = trunc i32 %call15.2 to i16
  %buf.sroa.7.sroa.0.0.insert.shift = shl i16 %26, 8
  %buf.sroa.7.sroa.0.0.insert.insert = or i16 %buf.sroa.7.sroa.5.0.insert.ext, %buf.sroa.7.sroa.0.0.insert.shift
  %27 = tail call i16 @llvm.bswap.i16(i16 %buf.sroa.7.sroa.0.0.insert.insert) #9
  %als_cur_info41 = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %als_cur_info41 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %24, ptr %als_cur_info41, align 4
  %als_ch1 = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %als_ch1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %27, ptr %als_ch1, align 2
  %conv43 = zext i16 %24 to i32
  %als_saturation = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %als_saturation to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %als_saturation, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv43)
  %cmp44.not = icmp sgt i32 %31, %conv43
  br i1 %cmp44.not, label %lor.lhs.false, label %if.end36.return_max_crit_edge

if.end36.return_max_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %return_max

lor.lhs.false:                                    ; preds = %if.end36
  %conv46 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv46)
  %cmp48.not = icmp sgt i32 %31, %conv46
  br i1 %cmp48.not, label %if.end51, label %lor.lhs.false.return_max_crit_edge

lor.lhs.false.return_max_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return_max

if.end51:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buf.sroa.0.sroa.0.0.insert.insert)
  %tobool52.not = icmp eq i16 %buf.sroa.0.sroa.0.0.insert.insert, 0
  br i1 %tobool52.not, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %lux55 = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %lux55 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %lux55, align 4
  br label %cleanup151

if.end56:                                         ; preds = %if.end51
  %shl = shl nuw nsw i32 %conv46, 15
  %div = udiv i32 %shl, %conv43
  %als_device_lux = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.cond59.for.cond59_crit_edge, %if.end56
  %p.0 = phi ptr [ %als_device_lux, %if.end56 ], [ %incdec.ptr, %for.cond59.for.cond59_crit_edge ]
  %33 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp61.not = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %div)
  %cmp64 = icmp ult i32 %34, %div
  %or.cond = select i1 %cmp61.not, i1 %cmp64, i1 false
  %incdec.ptr = getelementptr %struct.tsl2583_lux, ptr %p.0, i32 1
  br i1 %or.cond, label %for.cond59.for.cond59_crit_edge, label %for.end68

for.cond59.for.cond59_crit_edge:                  ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond59

for.end68:                                        ; preds = %for.cond59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp70 = icmp eq i32 %34, 0
  br i1 %cmp70, label %for.end68.if.end123_crit_edge, label %if.else

for.end68.if.end123_crit_edge:                    ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.else:                                          ; preds = %for.end68
  %ch074 = getelementptr inbounds %struct.tsl2583_lux, ptr %p.0, i32 0, i32 1
  %35 = ptrtoint ptr %ch074 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ch074, align 4
  %mul = mul i32 %36, %conv43
  %als_gain = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %als_gain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %als_gain, align 4
  %arrayidx76 = getelementptr [4 x %struct.gainadj], ptr @gainadj, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx76, align 2
  %conv78 = sext i16 %40 to i32
  %shr = ashr i32 %conv78, 1
  %add79 = add i32 %shr, %mul
  %div85 = udiv i32 %add79, %conv78
  %ch187 = getelementptr inbounds %struct.tsl2583_lux, ptr %p.0, i32 0, i32 2
  %41 = ptrtoint ptr %ch187 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ch187, align 4
  %mul88 = mul i32 %42, %conv46
  %ch192 = getelementptr [4 x %struct.gainadj], ptr @gainadj, i32 0, i32 %38, i32 1
  %43 = ptrtoint ptr %ch192 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ch192, align 2
  %conv93 = sext i16 %44 to i32
  %shr94 = ashr i32 %conv93, 1
  %add95 = add i32 %shr94, %mul88
  %div101 = udiv i32 %add95, %conv93
  call void @__sanitizer_cov_trace_cmp4(i32 %div85, i32 %div101)
  %cmp102 = icmp ult i32 %div85, %div101
  br i1 %cmp102, label %do.body105, label %cleanup119.thread

do.body105:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsl2583_get_lux.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsl2583_get_lux, %if.then110)) #9
          to label %cleanup119 [label %if.then110], !srcloc !172

if.then110:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client, align 4
  %dev112 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsl2583_get_lux.__UNIQUE_ID_ddebug289, ptr noundef %dev112, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.45) #9
  br label %cleanup119

cleanup119.thread:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %div85, %div101
  br label %if.end123

cleanup119:                                       ; preds = %if.then110, %do.body105
  %lux117 = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %lux117 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %lux117, align 4
  br label %cleanup151

if.end123:                                        ; preds = %cleanup119.thread, %for.end68.if.end123_crit_edge
  %lux.1 = phi i32 [ 0, %for.end68.if.end123_crit_edge ], [ %sub, %cleanup119.thread ]
  %als_time_scale = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %als_time_scale to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %als_time_scale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp124 = icmp eq i32 %49, 0
  br i1 %cmp124, label %if.end123.if.end133_crit_edge, label %if.else127

if.end123.if.end133_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.else127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %shr129 = ashr i32 %49, 1
  %add130 = add i32 %shr129, %lux.1
  %div132 = udiv i32 %add130, %49
  br label %if.end133

if.end133:                                        ; preds = %if.else127, %if.end123.if.end133_crit_edge
  %lux.2 = phi i32 [ %div132, %if.else127 ], [ 0, %if.end123.if.end133_crit_edge ]
  %conv134 = zext i32 %lux.2 to i64
  %als_gain_trim = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %als_gain_trim to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %als_gain_trim, align 4
  %conv136 = sext i32 %51 to i64
  %mul137 = mul nsw i64 %conv136, %conv134
  %shr138 = lshr i64 %mul137, 13
  %conv139 = trunc i64 %shr138 to i32
  %add142 = add i32 %conv139, 500
  %div143 = udiv i32 %add142, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535999, i32 %add142)
  %cmp144 = icmp ugt i32 %add142, 65535999
  br i1 %cmp144, label %if.end133.return_max_crit_edge, label %if.end133.if.end147_crit_edge

if.end133.if.end147_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.end133.return_max_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %return_max

return_max:                                       ; preds = %if.end133.return_max_crit_edge, %lor.lhs.false.return_max_crit_edge, %if.end36.return_max_crit_edge
  br label %if.end147

if.end147:                                        ; preds = %return_max, %if.end133.if.end147_crit_edge
  %lux.3 = phi i32 [ 65535, %return_max ], [ %div143, %if.end133.if.end147_crit_edge ]
  %conv148 = trunc i32 %lux.3 to i16
  %lux150 = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %lux150 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv148, ptr %lux150, align 4
  br label %cleanup151

cleanup151:                                       ; preds = %if.end147, %cleanup119, %if.then53, %do.end33, %cleanup, %do.end6, %do.end
  %ret.1 = phi i32 [ %call1, %do.end ], [ %call15.lcssa, %cleanup ], [ %call27, %do.end33 ], [ %lux.3, %if.end147 ], [ 0, %cleanup119 ], [ 0, %if.then53 ], [ %conv, %do.end6 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance_lux_table_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %offset.033 = phi i32 [ 0, %entry ], [ %add, %for.cond.for.body_crit_edge ]
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %offset.033
  %arrayidx = getelementptr %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 4, i32 %i.032
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %ch0 = getelementptr %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 4, i32 %i.032, i32 1
  %4 = ptrtoint ptr %ch0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch0, align 4
  %ch1 = getelementptr %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 4, i32 %i.032, i32 2
  %6 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch1, align 4
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.57, i32 noundef %3, i32 noundef %5, i32 noundef %7)
  %add = add i32 %call8, %offset.033
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %add, -1
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %offset.1 = phi i32 [ %dec, %if.then ], [ %add, %for.cond.for.end_crit_edge ]
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %offset.1
  %10 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 2560, ptr %add.ptr14, align 1
  %add16 = add i32 %offset.1, 1
  ret i32 %add16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance_lux_table_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca [34 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %value) #9
  %2 = call ptr @memset(ptr %value, i32 255, i32 136)
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %call2 = call ptr @get_options(ptr noundef %buf, i32 noundef 34, ptr noundef nonnull %value) #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %rem = urem i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp ne i32 %rem, 0
  %5 = add i32 %4, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %5)
  %6 = icmp ult i32 %5, -28
  %7 = or i1 %6, %tobool.not
  br i1 %7, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 33) #12
  br label %done

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %4, -2
  %arrayidx5 = getelementptr [34 x i32], ptr %value, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %sub6 = add nsw i32 %4, -1
  %arrayidx7 = getelementptr [34 x i32], ptr %value, i32 0, i32 %sub6
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %or = or i32 %11, %9
  %arrayidx8 = getelementptr [34 x i32], ptr %value, i32 0, i32 %4
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %or9 = or i32 %or, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9)
  %cmp10.not = icmp eq i32 %or9, 0
  br i1 %cmp10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60) #12
  br label %done

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %als_device_lux = getelementptr inbounds %struct.tsl2583_chip, ptr %1, i32 0, i32 3, i32 4
  %arrayidx17 = getelementptr inbounds [34 x i32], ptr %value, i32 0, i32 1
  %mul = shl nuw nsw i32 %4, 2
  %14 = call ptr @memcpy(ptr %als_device_lux, ptr %arrayidx17, i32 %mul)
  br label %done

done:                                             ; preds = %if.end15, %do.end14, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ -22, %do.end14 ], [ %len, %if.end15 ]
  call void @mutex_unlock(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %value) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

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
define internal i32 @tsl2583_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %client.i = getelementptr inbounds %struct.tsl2583_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.tsl2583_set_power_state.exit_crit_edge

entry.tsl2583_set_power_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2583_set_power_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 0) #12
  br label %tsl2583_set_power_state.exit

tsl2583_set_power_state.exit:                     ; preds = %do.end.i, %entry.tsl2583_set_power_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2583_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %client.i.i = getelementptr inbounds %struct.tsl2583_chip, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -128, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %8 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i.i, align 4
  br i1 %cmp.i.i, label %tsl2583_set_power_state.exit.thread.i, label %if.end.i

tsl2583_set_power_state.exit.thread.i:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 1) #12
  br label %tsl2583_chip_init_and_power_on.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -126, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #12
  br label %tsl2583_chip_init_and_power_on.exit

if.end6.i:                                        ; preds = %if.end.i
  %als_settings.i.i = getelementptr inbounds %struct.tsl2583_chip, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %als_settings.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %als_settings.i.i, align 4
  %mul.i.i = mul i32 %13, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp.i35.i = icmp sgt i32 %mul.i.i, 0
  %cond.in.v.i.i = select i1 %cmp.i35.i, i32 135, i32 -135
  %cond.in.i.i = add i32 %cond.in.v.i.i, %mul.i.i
  %cond.i.i = sdiv i32 %cond.in.i.i, 270
  %cond.in.off.i.i = add i32 %cond.in.i.i, 269
  call void @__sanitizer_cov_trace_const_cmp4(i32 539, i32 %cond.in.off.i.i)
  %14 = icmp ult i32 %cond.in.off.i.i, 539
  %spec.store.select.i.i = select i1 %14, i32 1, i32 %cond.i.i
  %15 = trunc i32 %spec.store.select.i.i to i8
  %conv30.i.i = sub i8 0, %15
  %16 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i.i, align 4
  %call.i37.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -127, i8 noundef zeroext %conv30.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %cmp31.i.i = icmp slt i32 %call.i37.i, 0
  br i1 %cmp31.i.i, label %tsl2583_set_als_time.exit.thread.i, label %if.end10.i

tsl2583_set_als_time.exit.thread.i:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i.i, align 4
  %dev.i38.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %conv35.i.i = zext i8 %conv30.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %conv35.i.i) #12
  br label %tsl2583_chip_init_and_power_on.exit

if.end10.i:                                       ; preds = %if.end6.i
  %mul10.i.i = mul nsw i32 %spec.store.select.i.i, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %cmp13.i.i = icmp sgt i32 %spec.store.select.i.i, 0
  %cond28.in.v.i.i = select i1 %cmp13.i.i, i32 5, i32 -5
  %cond28.in.i.i = add nsw i32 %cond28.in.v.i.i, %mul10.i.i
  %cond28.i.i = sdiv i32 %cond28.in.i.i, 10
  %mul37.i.i = mul i32 %spec.store.select.i.i, 922
  %als_saturation.i.i = getelementptr inbounds %struct.tsl2583_chip, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %als_saturation.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul37.i.i, ptr %als_saturation.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %cond28.in.i.i)
  %cmp41.i.i = icmp sgt i32 %cond28.in.i.i, 9
  %cond56.in.v.i.i = select i1 %cmp41.i.i, i32 25, i32 -25
  %cond56.in.i.i = add nsw i32 %cond56.in.v.i.i, %cond28.i.i
  %cond56.i.i = sdiv i32 %cond56.in.i.i, 50
  %als_time_scale.i.i = getelementptr inbounds %struct.tsl2583_chip, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %als_time_scale.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond56.i.i, ptr %als_time_scale.i.i, align 4
  %22 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i.i, align 4
  %als_gain.i.i = getelementptr inbounds %struct.tsl2583_chip, ptr %5, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %als_gain.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %als_gain.i.i, align 4
  %conv.i.i = trunc i32 %25 to i8
  %call.i41.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -121, i8 noundef zeroext %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp.i42.i = icmp slt i32 %call.i41.i, 0
  br i1 %cmp.i42.i, label %tsl2583_set_als_gain.exit.thread.i, label %if.end14.i

tsl2583_set_als_gain.exit.thread.i:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i.i, align 4
  %dev.i43.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %als_gain.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %als_gain.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i43.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %29) #12
  br label %tsl2583_chip_init_and_power_on.exit

if.end14.i:                                       ; preds = %if.end10.i
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3500, i32 noundef 2) #9
  %30 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client.i.i, align 4
  %call.i46.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -128, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %cmp.i47.i = icmp slt i32 %call.i46.i, 0
  br i1 %cmp.i47.i, label %do.end.i49.i, label %if.end14.i.tsl2583_chip_init_and_power_on.exit_crit_edge

if.end14.i.tsl2583_chip_init_and_power_on.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsl2583_chip_init_and_power_on.exit

do.end.i49.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client.i.i, align 4
  %dev.i48.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i48.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 3) #12
  br label %tsl2583_chip_init_and_power_on.exit

tsl2583_chip_init_and_power_on.exit:              ; preds = %do.end.i49.i, %if.end14.i.tsl2583_chip_init_and_power_on.exit_crit_edge, %tsl2583_set_als_gain.exit.thread.i, %tsl2583_set_als_time.exit.thread.i, %do.end.i, %tsl2583_set_power_state.exit.thread.i
  %retval.0.i = phi i32 [ %call2.i, %do.end.i ], [ %call.i.i, %tsl2583_set_power_state.exit.thread.i ], [ %call.i37.i, %tsl2583_set_als_time.exit.thread.i ], [ %call.i41.i, %tsl2583_set_als_gain.exit.thread.i ], [ %call.i46.i, %if.end14.i.tsl2583_chip_init_and_power_on.exit_crit_edge ], [ %call.i46.i, %do.end.i49.i ]
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !115, !116, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !146, !147, !148, !150, !152, !154, !155, !156, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__initcall__kmod_tsl2583__290_952_tsl2583_driver_init6, !1, !"__initcall__kmod_tsl2583__290_952_tsl2583_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/tsl2583.c", i32 952, i32 1}
!2 = !{ptr @__exitcall_tsl2583_driver_exit, !1, !"__exitcall_tsl2583_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/tsl2583.c", i32 954, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/tsl2583.c", i32 955, i32 1}
!7 = !{ptr @__UNIQUE_ID_description293, !8, !"__UNIQUE_ID_description293", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/tsl2583.c", i32 956, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/iio/light/tsl2583.c", i32 957, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/tsl2583.c", i32 944, i32 11}
!14 = !{ptr @tsl2583_driver, !15, !"tsl2583_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/tsl2583.c", i32 942, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/tsl2583.c", i32 821, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tsl2583_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tsl2583_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tsl2583_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/light/tsl2583.c", i32 834, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/tsl2583.c", i32 839, i32 3}
!29 = !{ptr @tsl2583_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tsl2583_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/tsl2583.c", i32 845, i32 3}
!33 = !{ptr @tsl2583_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tsl2583_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/tsl2583.c", i32 863, i32 3}
!37 = !{ptr @tsl2583_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tsl2583_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/tsl2583.c", i32 871, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tsl2583_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @tsl2583_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @tsl2583_info, !45, !"tsl2583_info", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/tsl2583.c", i32 806, i32 30}
!46 = !{ptr @tsl2583_attribute_group, !47, !"tsl2583_attribute_group", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/tsl2583.c", i32 616, i32 37}
!48 = !{ptr @sysfs_attrs_ctrl, !49, !"sysfs_attrs_ctrl", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/tsl2583.c", i32 607, i32 26}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/tsl2583.c", i32 600, i32 8}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @iio_const_attr_in_illuminance_calibscale_available, !51, !"iio_const_attr_in_illuminance_calibscale_available", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/tsl2583.c", i32 601, i32 8}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @iio_const_attr_in_illuminance_integration_time_available, !55, !"iio_const_attr_in_illuminance_integration_time_available", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/tsl2583.c", i32 603, i32 8}
!60 = !{ptr @iio_dev_attr_in_illuminance_input_target, !59, !"iio_dev_attr_in_illuminance_input_target", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/light/tsl2583.c", i32 478, i32 21}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/light/tsl2583.c", i32 604, i32 8}
!65 = !{ptr @iio_dev_attr_in_illuminance_calibrate, !64, !"iio_dev_attr_in_illuminance_calibrate", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/tsl2583.c", i32 318, i32 3}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tsl2583_als_calibrate._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @tsl2583_als_calibrate._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/light/tsl2583.c", i32 326, i32 3}
!73 = !{ptr @tsl2583_als_calibrate._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @tsl2583_als_calibrate._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/light/tsl2583.c", i32 331, i32 3}
!77 = !{ptr @tsl2583_als_calibrate._entry.32, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tsl2583_als_calibrate._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/light/tsl2583.c", i32 339, i32 3}
!81 = !{ptr @tsl2583_als_calibrate._entry.35, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tsl2583_als_calibrate._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/light/tsl2583.c", i32 346, i32 3}
!85 = !{ptr @tsl2583_als_calibrate._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tsl2583_als_calibrate._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/light/tsl2583.c", i32 355, i32 3}
!89 = !{ptr @tsl2583_als_calibrate._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tsl2583_als_calibrate._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/light/tsl2583.c", i32 176, i32 3}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @tsl2583_get_lux._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @tsl2583_get_lux._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/light/tsl2583.c", i32 183, i32 3}
!98 = !{ptr @tsl2583_get_lux._entry.46, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tsl2583_get_lux._entry_ptr.48, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/light/tsl2583.c", i32 194, i32 4}
!102 = !{ptr @tsl2583_get_lux._entry.49, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @tsl2583_get_lux._entry_ptr.51, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/light/tsl2583.c", i32 210, i32 3}
!106 = !{ptr @tsl2583_get_lux._entry.52, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tsl2583_get_lux._entry_ptr.54, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/light/tsl2583.c", i32 258, i32 4}
!110 = !{ptr @tsl2583_get_lux.__UNIQUE_ID_ddebug289, !109, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!111 = !{ptr @gainadj, !112, !"gainadj", i1 false, i1 false}
!112 = !{!"../drivers/iio/light/tsl2583.c", i32 114, i32 29}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/light/tsl2583.c", i32 605, i32 8}
!115 = !{ptr @iio_dev_attr_in_illuminance_lux_table, !114, !"iio_dev_attr_in_illuminance_lux_table", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/light/tsl2583.c", i32 536, i32 35}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/light/tsl2583.c", i32 550, i32 34}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/light/tsl2583.c", i32 578, i32 3}
!122 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @in_illuminance_lux_table_store._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @in_illuminance_lux_table_store._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/light/tsl2583.c", i32 584, i32 3}
!127 = !{ptr @in_illuminance_lux_table_store._entry.61, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @in_illuminance_lux_table_store._entry_ptr.63, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/light/tsl2583.c", i32 405, i32 3}
!131 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @tsl2583_set_als_gain._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @tsl2583_set_als_gain._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/light/tsl2583.c", i32 384, i32 3}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @tsl2583_set_als_time._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @tsl2583_set_als_time._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @tsl2583_channels, !140, !"tsl2583_channels", i1 false, i1 false}
!140 = !{!"../drivers/iio/light/tsl2583.c", i32 620, i32 35}
!141 = !{ptr @tsl2583_default_lux, !142, !"tsl2583_default_lux", i1 false, i1 false}
!142 = !{!"../drivers/iio/light/tsl2583.c", i32 74, i32 33}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/light/tsl2583.c", i32 419, i32 3}
!145 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @tsl2583_set_power_state._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @tsl2583_set_power_state._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @tsl2583_of_match, !149, !"tsl2583_of_match", i1 false, i1 false}
!149 = !{!"../drivers/iio/light/tsl2583.c", i32 933, i32 34}
!150 = !{ptr @tsl2583_pm_ops, !151, !"tsl2583_pm_ops", i1 false, i1 false}
!151 = !{!"../drivers/iio/light/tsl2583.c", i32 919, i32 32}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/iio/light/tsl2583.c", i32 444, i32 3}
!154 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @tsl2583_chip_init_and_power_on._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @tsl2583_chip_init_and_power_on._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @tsl2583_idtable, !158, !"tsl2583_idtable", i1 false, i1 false}
!158 = !{!"../drivers/iio/light/tsl2583.c", i32 925, i32 35}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2148231489}
!169 = !{i64 716312, i64 716337, i64 716359, i64 716375, i64 716387, i64 716407, i64 716431, i64 716447, i64 716459}
!170 = !{i64 2148231677}
!171 = !{!"auto-init"}
!172 = !{i64 2148713885, i64 2148713890, i64 2148713903, i64 2148713947, i64 2148713981, i64 2148714002}
