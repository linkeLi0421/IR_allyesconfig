; ModuleID = '/llk/IR_all_yes/drivers/iio/light/cm36651.c_pt.bc'
source_filename = "../drivers/iio/light/cm36651.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
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
%struct.cm36651_data = type { ptr, ptr, ptr, ptr, %struct.mutex, ptr, i32, [4 x i32], i32, [2 x i8], [4 x i8], [4 x i16] }

@__initcall__kmod_cm36651__288_740_cm36651_driver_init6 = internal global ptr @cm36651_driver_init, section ".initcall6.init", align 4
@cm36651_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cm36651_probe, ptr @cm36651_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cm36651_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cm36651_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cm36651_driver_exit = internal global ptr @cm36651_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"cm36651.author=Beomho Seo <beomho.seo@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [66 x i8] c"cm36651.description=CM36651 proximity/ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"cm36651.file=drivers/iio/light/cm36651\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"cm36651.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cm36651\00", [24 x i8] zeroinitializer }, align 32
@cm36651_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"capella,cm36651\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cm36651_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cm36651\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vled\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"get regulator vled failed\0A\00", [37 x i8] zeroinitializer }, align 32
@cm36651_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 641, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enable regulator vled failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cm36651_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/cm36651.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cm36651_probe._entry_ptr = internal global ptr @cm36651_probe._entry, section ".printk_index", align 4
@cm36651_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 651, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: new i2c device failed\0A\00", [37 x i8] zeroinitializer }, align 32
@cm36651_probe._entry_ptr.10 = internal global ptr @cm36651_probe._entry.8, section ".printk_index", align 4
@cm36651_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 658, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cm36651_probe._entry_ptr.12 = internal global ptr @cm36651_probe._entry.11, section ".printk_index", align 4
@cm36651_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cm36651->lock\00", [17 x i8] zeroinitializer }, align 32
@cm36651_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @cm36651_event_spec, i32 1, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 6, i32 0, i32 17, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 6, i32 0, i32 18, i32 1, i32 0, %struct.anon.86 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 6, i32 0, i32 19, i32 2, i32 0, %struct.anon.86 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 6, i32 0, i32 16, i32 3, i32 0, %struct.anon.86 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [104 x i8] zeroinitializer }, align 32
@cm36651_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @cm36651_attribute_group, ptr @cm36651_read_raw, ptr null, ptr null, ptr @cm36651_write_raw, ptr null, ptr null, ptr @cm36651_read_prox_event_config, ptr @cm36651_write_prox_event_config, ptr @cm36651_read_prox_thresh, ptr @cm36651_write_prox_thresh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cm36651_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 672, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: register setup failed\0A\00", [37 x i8] zeroinitializer }, align 32
@cm36651_probe._entry_ptr.16 = internal global ptr @cm36651_probe._entry.14, section ".printk_index", align 4
@cm36651_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 680, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: request irq failed\0A\00", [40 x i8] zeroinitializer }, align 32
@cm36651_probe._entry_ptr.19 = internal global ptr @cm36651_probe._entry.17, section ".printk_index", align 4
@cm36651_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 686, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: regist device failed\0A\00", [38 x i8] zeroinitializer }, align 32
@cm36651_probe._entry_ptr.22 = internal global ptr @cm36651_probe._entry.20, section ".printk_index", align 4
@cm36651_event_spec = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 0, i32 3, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@cm36651_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cm36651_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@cm36651_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_integration_time_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_proximity_integration_time_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.23, %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_proximity_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.25, %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.08 0.16 0.32 0.64\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"in_illuminance_integration_time_available\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"0.000320 0.000420 0.000520 0.000640\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"in_proximity_integration_time_available\00", [56 x i8] zeroinitializer }, align 32
@cm36651_read_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 341, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CM36651 set operation mode failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cm36651_read_channel\00", [43 x i8] zeroinitializer }, align 32
@cm36651_read_channel._entry_ptr = internal global ptr @cm36651_read_channel._entry, section ".printk_index", align 4
@cm36651_read_channel._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.5, i32 348, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CM36651 read output failed\0A\00", [36 x i8] zeroinitializer }, align 32
@cm36651_read_channel._entry_ptr.31 = internal global ptr @cm36651_read_channel._entry.29, section ".printk_index", align 4
@cm36651_set_operation_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 294, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Already proximity event enable state\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cm36651_set_operation_mode\00", [37 x i8] zeroinitializer }, align 32
@cm36651_set_operation_mode._entry_ptr = internal global ptr @cm36651_set_operation_mode._entry, section ".printk_index", align 4
@cm36651_set_operation_mode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 304, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Proximity enable event failed\0A\00", [33 x i8] zeroinitializer }, align 32
@cm36651_set_operation_mode._entry_ptr.36 = internal global ptr @cm36651_set_operation_mode._entry.34, section ".printk_index", align 4
@cm36651_set_operation_mode._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.5, i32 311, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Already proximity event disable state\0A\00", [57 x i8] zeroinitializer }, align 32
@cm36651_set_operation_mode._entry_ptr.39 = internal global ptr @cm36651_set_operation_mode._entry.37, section ".printk_index", align 4
@cm36651_set_operation_mode._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.5, i32 321, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Write register failed\0A\00", [41 x i8] zeroinitializer }, align 32
@cm36651_set_operation_mode._entry_ptr.42 = internal global ptr @cm36651_set_operation_mode._entry.40, section ".printk_index", align 4
@cm36651_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 482, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Integration time write failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cm36651_write_raw\00", [46 x i8] zeroinitializer }, align 32
@cm36651_write_raw._entry_ptr = internal global ptr @cm36651_write_raw._entry, section ".printk_index", align 4
@cm36651_write_int_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CS integration time write failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cm36651_write_int_time\00", [41 x i8] zeroinitializer }, align 32
@cm36651_write_int_time._entry_ptr = internal global ptr @cm36651_write_int_time._entry, section ".printk_index", align 4
@cm36651_write_int_time._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 433, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PS integration time write failed\0A\00", [62 x i8] zeroinitializer }, align 32
@cm36651_write_int_time._entry_ptr.49 = internal global ptr @cm36651_write_int_time._entry.47, section ".printk_index", align 4
@cm36651_write_prox_thresh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 521, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PS threshold write failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cm36651_write_prox_thresh\00", [38 x i8] zeroinitializer }, align 32
@cm36651_write_prox_thresh._entry_ptr = internal global ptr @cm36651_write_prox_thresh._entry, section ".printk_index", align 4
@cm36651_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 248, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Data read failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cm36651_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@cm36651_irq_handler._entry_ptr = internal global ptr @cm36651_irq_handler._entry, section ".printk_index", align 4
@cm36651_irq_handler._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.5, i32 260, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Data read wrong: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cm36651_irq_handler._entry_ptr.56 = internal global ptr @cm36651_irq_handler._entry.54, section ".printk_index", align 4
@switch.table.cm36651_read_raw = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 80000, i32 160000, i32 320000, i32 640000], [16 x i8] zeroinitializer }, align 32
@switch.table.cm36651_read_raw.57 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 320, i32 420, i32 520, i32 640], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 50, i64 51]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 80000, i64 160000, i64 320000, i64 640000]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 320, i64 420, i64 520, i64 640]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"cm36651_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 730, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 732, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"cm36651_of_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 724, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"cm36651_id\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 717, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 634, i32 55 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 637, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 641, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 651, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 658, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 663, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"cm36651_channels\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 582, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [13 x i8] c"cm36651_info\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 611, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 672, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 680, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 686, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"cm36651_event_spec\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 573, i32 36 }
@___asan_gen_.144 = private unnamed_addr constant [24 x i8] c"cm36651_attribute_group\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 607, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c"cm36651_attributes\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 601, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant [57 x i8] c"iio_const_attr_in_illuminance_integration_time_available\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [55 x i8] c"iio_const_attr_in_proximity_integration_time_available\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 596, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 598, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 341, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 348, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 293, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 304, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 310, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 321, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 482, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 413, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 433, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 521, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 247, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [31 x i8] c"../drivers/iio/light/cm36651.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 259, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [30 x i8] c"switch.table.cm36651_read_raw\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [33 x i8] c"switch.table.cm36651_read_raw.57\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cm36651_driver_exit, ptr @__initcall__kmod_cm36651__288_740_cm36651_driver_init6, ptr @cm36651_driver_exit, ptr @cm36651_irq_handler._entry, ptr @cm36651_irq_handler._entry.54, ptr @cm36651_irq_handler._entry_ptr, ptr @cm36651_irq_handler._entry_ptr.56, ptr @cm36651_probe._entry, ptr @cm36651_probe._entry.11, ptr @cm36651_probe._entry.14, ptr @cm36651_probe._entry.17, ptr @cm36651_probe._entry.20, ptr @cm36651_probe._entry.8, ptr @cm36651_probe._entry_ptr, ptr @cm36651_probe._entry_ptr.10, ptr @cm36651_probe._entry_ptr.12, ptr @cm36651_probe._entry_ptr.16, ptr @cm36651_probe._entry_ptr.19, ptr @cm36651_probe._entry_ptr.22, ptr @cm36651_read_channel._entry, ptr @cm36651_read_channel._entry.29, ptr @cm36651_read_channel._entry_ptr, ptr @cm36651_read_channel._entry_ptr.31, ptr @cm36651_set_operation_mode._entry, ptr @cm36651_set_operation_mode._entry.34, ptr @cm36651_set_operation_mode._entry.37, ptr @cm36651_set_operation_mode._entry.40, ptr @cm36651_set_operation_mode._entry_ptr, ptr @cm36651_set_operation_mode._entry_ptr.36, ptr @cm36651_set_operation_mode._entry_ptr.39, ptr @cm36651_set_operation_mode._entry_ptr.42, ptr @cm36651_write_int_time._entry, ptr @cm36651_write_int_time._entry.47, ptr @cm36651_write_int_time._entry_ptr, ptr @cm36651_write_int_time._entry_ptr.49, ptr @cm36651_write_prox_thresh._entry, ptr @cm36651_write_prox_thresh._entry_ptr, ptr @cm36651_write_raw._entry, ptr @cm36651_write_raw._entry_ptr, ptr @cm36651_driver, ptr @.str, ptr @cm36651_of_match, ptr @cm36651_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @cm36651_probe.__key, ptr @.str.13, ptr @cm36651_channels, ptr @cm36651_info, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @cm36651_event_spec, ptr @cm36651_attribute_group, ptr @cm36651_attributes, ptr @iio_const_attr_in_illuminance_integration_time_available, ptr @iio_const_attr_in_proximity_integration_time_available, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @switch.table.cm36651_read_raw, ptr @switch.table.cm36651_read_raw.57], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_event_spec to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_proximity_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_read_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_read_channel._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_set_operation_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_set_operation_mode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_set_operation_mode._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_set_operation_mode._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_write_int_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_write_int_time._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_write_prox_thresh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm36651_irq_handler._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cm36651_read_raw to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cm36651_read_raw.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cm36651_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cm36651_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cm36651_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @cm36651_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm36651_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 152) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %vled_reg = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vled_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %vled_reg, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call3 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @regulator_enable(ptr noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %client18 = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %client18, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %call19 = tail call ptr @i2c_new_dummy_device(ptr noundef %7, i16 noundef zeroext 25) #6
  %ps_client = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ps_client to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call19, ptr %ps_client, align 4
  %cmp.i122 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %do.end25, label %if.end29

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #9
  %9 = ptrtoint ptr %ps_client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps_client, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %error_disable_reg

if.end29:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call31 = tail call ptr @i2c_new_dummy_device(ptr noundef %13, i16 noundef zeroext 12) #6
  %ara_client = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ara_client to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call31, ptr %ara_client, align 4
  %cmp.i123 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %do.end37, label %do.body42

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #9
  %15 = ptrtoint ptr %ara_client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ara_client, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %error_i2c_unregister_ps

do.body42:                                        ; preds = %if.end29
  %lock = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @cm36651_probe.__key) #6
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cm36651_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %19 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cm36651_info, ptr %info, align 8
  %name45 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %21 = ptrtoint ptr %name45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %id, ptr %name45, align 8
  %22 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %call, align 8
  %23 = ptrtoint ptr %client18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client18, align 4
  %25 = ptrtoint ptr %ps_client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ps_client, align 4
  %cs_ctrl_regs.i = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %cs_ctrl_regs.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %cs_ctrl_regs.i, align 4
  %arrayidx4.i = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %arrayidx4.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %do.body42.do.end51_crit_edge, label %for.cond.i

do.body42.do.end51_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

for.cond.i:                                       ; preds = %do.body42
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i, align 1
  %call.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 1, i8 noundef zeroext %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp8.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp8.1.i, label %for.cond.i.do.end51_crit_edge, label %for.cond.1.i

for.cond.i.do.end51_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

for.cond.1.i:                                     ; preds = %for.cond.i
  %ps_ctrl_regs.i = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %ps_ctrl_regs.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 16, ptr %ps_ctrl_regs.i, align 2
  %arrayidx11.i = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %arrayidx11.i, align 1
  %arrayidx13.i = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 10, i32 2
  %33 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx13.i, align 2
  %arrayidx15.i = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 10, i32 3
  %34 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 7, ptr %arrayidx15.i, align 1
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 0, i8 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %for.cond.1.i.do.end51_crit_edge, label %for.cond16.i

for.cond.1.i.do.end51_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

for.cond16.i:                                     ; preds = %for.cond.1.i
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx11.i, align 1
  %call22.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 1, i8 noundef zeroext %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.1.i)
  %cmp23.1.i = icmp slt i32 %call22.1.i, 0
  br i1 %cmp23.1.i, label %for.cond16.i.do.end51_crit_edge, label %for.cond16.1.i

for.cond16.i.do.end51_crit_edge:                  ; preds = %for.cond16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

for.cond16.1.i:                                   ; preds = %for.cond16.i
  %37 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx13.i, align 1
  %call22.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 2, i8 noundef zeroext %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.2.i)
  %cmp23.2.i = icmp slt i32 %call22.2.i, 0
  br i1 %cmp23.2.i, label %for.cond16.1.i.do.end51_crit_edge, label %for.cond16.2.i

for.cond16.1.i.do.end51_crit_edge:                ; preds = %for.cond16.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

for.cond16.2.i:                                   ; preds = %for.cond16.1.i
  %39 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx15.i, align 1
  %call22.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 3, i8 noundef zeroext %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.3.i)
  %cmp23.3.i = icmp slt i32 %call22.3.i, 0
  br i1 %cmp23.3.i, label %for.cond16.2.i.do.end51_crit_edge, label %for.cond16.3.i

for.cond16.2.i.do.end51_crit_edge:                ; preds = %for.cond16.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

for.cond16.3.i:                                   ; preds = %for.cond16.2.i
  %call29.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %for.cond16.3.i.do.end51_crit_edge, label %cm36651_setup_reg.exit

for.cond16.3.i.do.end51_crit_edge:                ; preds = %for.cond16.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

cm36651_setup_reg.exit:                           ; preds = %for.cond16.3.i
  %41 = ptrtoint ptr %ps_client to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ps_client, align 4
  %call34.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %43 = tail call i32 @llvm.smin.i32(i32 %call34.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call34.i)
  %tobool47.not = icmp sgt i32 %call34.i, -1
  br i1 %tobool47.not, label %if.end53, label %cm36651_setup_reg.exit.do.end51_crit_edge

cm36651_setup_reg.exit.do.end51_crit_edge:        ; preds = %cm36651_setup_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

do.end51:                                         ; preds = %cm36651_setup_reg.exit.do.end51_crit_edge, %for.cond16.3.i.do.end51_crit_edge, %for.cond16.2.i.do.end51_crit_edge, %for.cond16.1.i.do.end51_crit_edge, %for.cond16.i.do.end51_crit_edge, %for.cond.1.i.do.end51_crit_edge, %for.cond.i.do.end51_crit_edge, %do.body42.do.end51_crit_edge
  %retval.0.i126 = phi i32 [ %43, %cm36651_setup_reg.exit.do.end51_crit_edge ], [ %call.1.i, %for.cond.i.do.end51_crit_edge ], [ %call.i, %do.body42.do.end51_crit_edge ], [ %call22.3.i, %for.cond16.2.i.do.end51_crit_edge ], [ %call22.2.i, %for.cond16.1.i.do.end51_crit_edge ], [ %call22.1.i, %for.cond16.i.do.end51_crit_edge ], [ %call22.i, %for.cond.1.i.do.end51_crit_edge ], [ %call29.i, %for.cond16.3.i.do.end51_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4) #9
  br label %error_i2c_unregister_ara

if.end53:                                         ; preds = %cm36651_setup_reg.exit
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %call54 = tail call i32 @request_threaded_irq(i32 noundef %45, ptr noundef null, ptr noundef nonnull @cm36651_irq_handler, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4) #9
  br label %error_i2c_unregister_ara

if.end61:                                         ; preds = %if.end53
  %call62 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %do.end67

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.4) #9
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  %call71 = tail call ptr @free_irq(i32 noundef %47, ptr noundef nonnull %call) #6
  br label %error_i2c_unregister_ara

error_i2c_unregister_ara:                         ; preds = %do.end67, %do.end59, %do.end51
  %ret.0 = phi i32 [ %retval.0.i126, %do.end51 ], [ %call54, %do.end59 ], [ %call62, %do.end67 ]
  %48 = ptrtoint ptr %ara_client to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ara_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %49) #6
  br label %error_i2c_unregister_ps

error_i2c_unregister_ps:                          ; preds = %error_i2c_unregister_ara, %do.end37
  %ret.1 = phi i32 [ %17, %do.end37 ], [ %ret.0, %error_i2c_unregister_ara ]
  %50 = ptrtoint ptr %ps_client to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ps_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %51) #6
  br label %error_disable_reg

error_disable_reg:                                ; preds = %error_i2c_unregister_ps, %do.end25
  %ret.2 = phi i32 [ %11, %do.end25 ], [ %ret.1, %error_i2c_unregister_ps ]
  %52 = ptrtoint ptr %vled_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vled_reg, align 4
  %call75 = tail call i32 @regulator_disable(ptr noundef %53) #6
  br label %cleanup

cleanup:                                          ; preds = %error_disable_reg, %if.end61.cleanup_crit_edge, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then6 ], [ %call13, %do.end ], [ %ret.2, %error_disable_reg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm36651_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %vled_reg = getelementptr inbounds %struct.cm36651_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vled_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vled_reg, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #6
  %ps_client = getelementptr inbounds %struct.cm36651_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %ps_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #6
  %ara_client = getelementptr inbounds %struct.cm36651_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %ara_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ara_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm36651_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client1 = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %ara_client = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ara_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ara_client, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %do.end6 [
    i32 50, label %if.end.sw.epilog_crit_edge
    i32 51, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %call2) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %ev_dir.0 = phi i32 [ 2, %sw.bb3 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %7 = zext i32 %ev_dir.0 to i64
  %shl = shl nuw nsw i64 %7, 48
  %or12 = or i64 %shl, 34359738369
  %call13 = tail call i64 @iio_get_time_ns(ptr noundef %data) #6
  %call14 = tail call i32 @iio_push_event(ptr noundef %data, i64 noundef %or12, i64 noundef %call13) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end6, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm36651_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 18, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %client1.i = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client1.i, align 4
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %6, label %sw.bb.sw.epilog_crit_edge [
    i32 6, label %sw.bb.if.end6.i_crit_edge
    i32 8, label %if.then4.i
  ]

sw.bb.if.end6.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then4.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %sw.bb.if.end6.i_crit_edge
  %cmd.0.i = phi i32 [ 1, %if.then4.i ], [ 0, %sw.bb.if.end6.i_crit_edge ]
  %call.i = tail call fastcc i32 @cm36651_set_operation_mode(ptr noundef %1, i32 noundef %cmd.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %if.end6.i.cleanup.sink.split.i_crit_edge, label %if.end9.i

if.end6.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end6.i
  tail call void @msleep(i32 noundef 50) #6
  %8 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client1.i, align 4
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %11, label %if.end9.i.cleanup.sink.split.i_crit_edge [
    i32 6, label %sw.bb.i.i
    i32 8, label %sw.bb8.i.i
  ]

if.end9.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

sw.bb.i.i:                                        ; preds = %if.end9.i
  %address.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %13 = ptrtoint ptr %address.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address.i.i, align 4
  %conv.i.i = trunc i32 %14 to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %9, i8 noundef zeroext %conv.i.i) #6
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.i.i.cleanup.sink.split.i_crit_edge, label %if.end.i.i

sw.bb.i.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i.i:                                       ; preds = %sw.bb.i.i
  %call3.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

sw.bb8.i.i:                                       ; preds = %if.end9.i
  %ps_client.i.i = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %ps_client.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ps_client.i.i, align 4
  %call9.i.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %17) #6
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call9.i.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %sw.bb8.i.i.cleanup.sink.split.i_crit_edge, label %if.end13.i.i

sw.bb8.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end13.i.i:                                     ; preds = %sw.bb8.i.i
  %flags.i.i = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.then15.i.i, label %if.end13.i.i.sw.epilog_crit_edge

if.end13.i.i.sw.epilog_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then15.i.i:                                    ; preds = %if.end13.i.i
  %22 = ptrtoint ptr %ps_client.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ps_client.i.i, align 4
  %call17.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %cmp18.i.i = icmp slt i32 %call17.i.i, 0
  br i1 %cmp18.i.i, label %if.then15.i.i.cleanup.sink.split.i_crit_edge, label %if.then15.i.i.sw.epilog_crit_edge

if.then15.i.i.sw.epilog_crit_edge:                ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then15.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then15.i.i.cleanup.sink.split.i_crit_edge, %sw.bb8.i.i.cleanup.sink.split.i_crit_edge, %if.end.i.i.cleanup.sink.split.i_crit_edge, %sw.bb.i.i.cleanup.sink.split.i_crit_edge, %if.end9.i.cleanup.sink.split.i_crit_edge, %if.end6.i.cleanup.sink.split.i_crit_edge
  %.str.30.sink.i = phi ptr [ @.str.27, %if.end6.i.cleanup.sink.split.i_crit_edge ], [ @.str.30, %if.then15.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.30, %sw.bb8.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.30, %if.end.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.30, %sw.bb.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.30, %if.end9.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.end6.i.cleanup.sink.split.i_crit_edge ], [ %call17.i.i, %if.then15.i.i.cleanup.sink.split.i_crit_edge ], [ -22, %sw.bb8.i.i.cleanup.sink.split.i_crit_edge ], [ %call3.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ], [ -22, %sw.bb.i.i.cleanup.sink.split.i_crit_edge ], [ -22, %if.end9.i.cleanup.sink.split.i_crit_edge ]
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull %.str.30.sink.i) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %val, align 4
  %25 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chan, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %26, label %sw.bb2.sw.epilog_crit_edge [
    i32 6, label %sw.bb.i
    i32 8, label %sw.bb22.i
  ]

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb2
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %28 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address.i, align 4
  %arrayidx.i = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 7, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %switch.lookup, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb22.i:                                        ; preds = %sw.bb2
  %ps_int_time.i = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %ps_int_time.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ps_int_time.i, align 4
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %switch.lookup11, label %sw.bb22.i.sw.epilog_crit_edge

sw.bb22.i.sw.epilog_crit_edge:                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cm36651_read_raw, i32 0, i32 %32
  br label %return.sink.split.i

switch.lookup11:                                  ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep12 = getelementptr inbounds [4 x i32], ptr @switch.table.cm36651_read_raw.57, i32 0, i32 %36
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %switch.lookup11, %switch.lookup
  %switch.gep12.sink = phi ptr [ %switch.gep12, %switch.lookup11 ], [ %switch.gep, %switch.lookup ]
  %38 = ptrtoint ptr %switch.gep12.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load13 = load i32, ptr %switch.gep12.sink, align 4
  %39 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %switch.load13, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %return.sink.split.i, %sw.bb22.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %cleanup.sink.split.i, %if.then15.i.i.sw.epilog_crit_edge, %if.end13.i.i.sw.epilog_crit_edge, %if.end.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ 1, %if.end.i.i.sw.epilog_crit_edge ], [ 1, %if.then15.i.i.sw.epilog_crit_edge ], [ 1, %if.end13.i.i.sw.epilog_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -22, %sw.bb.i.sw.epilog_crit_edge ], [ -22, %sw.bb22.i.sw.epilog_crit_edge ], [ -22, %sw.bb2.sw.epilog_crit_edge ], [ 2, %return.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm36651_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client1 = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %mask)
  %cmp = icmp eq i32 %mask, 18
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %ps_client2.i = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ps_client2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_client2.i, align 4
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %7, label %if.then.do.end_crit_edge [
    i32 6, label %sw.bb.i
    i32 8, label %sw.bb20.i
  ]

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb.i:                                          ; preds = %if.then
  %9 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %val2, label %sw.bb.i.do.end_crit_edge [
    i32 80000, label %sw.bb.i.if.end14.i_crit_edge
    i32 160000, label %if.then4.i
    i32 320000, label %if.then7.i
    i32 640000, label %if.then10.i
  ]

sw.bb.i.if.end14.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

sw.bb.i.do.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then4.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then7.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then10.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.then7.i, %if.then4.i, %sw.bb.i.if.end14.i_crit_edge
  %int_time.0.i = phi i32 [ 64, %if.then4.i ], [ 128, %if.then7.i ], [ 192, %if.then10.i ], [ 0, %sw.bb.i.if.end14.i_crit_edge ]
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %10 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address.i, align 4
  %mul.i = shl i32 %11, 1
  %shr.i = lshr i32 %int_time.0.i, %mul.i
  %conv.i = trunc i32 %shr.i to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.i = icmp slt i32 %call.i, 0
  br i1 %cmp15.i, label %if.end14.i.do.end.sink.split_crit_edge, label %if.end18.i

if.end14.i.do.end.sink.split_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

if.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %address.i, align 4
  %arrayidx.i = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 7, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %int_time.0.i, ptr %arrayidx.i, align 4
  br label %if.end5

sw.bb20.i:                                        ; preds = %if.then
  %15 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %val2, label %sw.bb20.i.do.end_crit_edge [
    i32 320, label %sw.bb20.i.if.end40.i_crit_edge
    i32 420, label %if.then27.i
    i32 520, label %if.then31.i
    i32 640, label %if.then35.i
  ]

sw.bb20.i.if.end40.i_crit_edge:                   ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

sw.bb20.i.do.end_crit_edge:                       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then27.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then31.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then35.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %if.then31.i, %if.then27.i, %sw.bb20.i.if.end40.i_crit_edge
  %int_time.1.i = phi i32 [ 16, %if.then27.i ], [ 32, %if.then31.i ], [ 48, %if.then35.i ], [ 0, %sw.bb20.i.if.end40.i_crit_edge ]
  %conv41.i = trunc i32 %int_time.1.i to i8
  %call42.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %conv41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.i = icmp slt i32 %call42.i, 0
  br i1 %cmp43.i, label %if.end40.i.do.end.sink.split_crit_edge, label %if.end50.i

if.end40.i.do.end.sink.split_crit_edge:           ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

if.end50.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %ps_int_time.i = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %ps_int_time.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %int_time.1.i, ptr %ps_int_time.i, align 4
  br label %if.end5

do.end.sink.split:                                ; preds = %if.end40.i.do.end.sink.split_crit_edge, %if.end14.i.do.end.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.45, %if.end14.i.do.end.sink.split_crit_edge ], [ @.str.48, %if.end40.i.do.end.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ %call.i, %if.end14.i.do.end.sink.split_crit_edge ], [ %call42.i, %if.end40.i.do.end.sink.split_crit_edge ]
  %dev49.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49.i, ptr noundef nonnull %.str.48.sink) #9
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %sw.bb20.i.do.end_crit_edge, %sw.bb.i.do.end_crit_edge, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.then.do.end_crit_edge ], [ -22, %sw.bb20.i.do.end_crit_edge ], [ -22, %sw.bb.i.do.end_crit_edge ], [ %retval.0.i.ph.ph, %do.end.sink.split ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end50.i, %if.end18.i, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -22, %entry.if.end5_crit_edge ], [ %call42.i, %if.end50.i ], [ %call.i, %if.end18.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm36651_read_prox_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %flags = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %3, 2
  %and1.i = and i32 %shr.i, 1
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %and1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm36651_write_prox_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %cond = select i1 %tobool.not, i32 3, i32 2
  %call1 = tail call fastcc i32 @cm36651_set_operation_mode(ptr noundef %1, i32 noundef %cond)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cm36651_read_prox_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %arrayidx = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm36651_write_prox_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client1 = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %4 = add i32 %val, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -253, i32 %4)
  %5 = icmp ult i32 %4, -253
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %val to i8
  %arrayidx = getelementptr %struct.cm36651_data, ptr %1, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %ps_client = getelementptr inbounds %struct.cm36651_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %ps_client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ps_client, align 4
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cm36651_set_operation_mode(ptr noundef %cm36651, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.cm36651_data, ptr %cm36651, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %ps_client2 = getelementptr inbounds %struct.cm36651_data, ptr %cm36651, i32 0, i32 2
  %2 = ptrtoint ptr %ps_client2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_client2, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %cmd, label %entry.cleanup.sink.split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
    i32 3, label %sw.bb21
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cs_ctrl_regs = getelementptr inbounds %struct.cm36651_data, ptr %cm36651, i32 0, i32 9
  %5 = ptrtoint ptr %cs_ctrl_regs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cs_ctrl_regs, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %6) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.cm36651_data, ptr %cm36651, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %ps_ctrl_regs = getelementptr inbounds %struct.cm36651_data, ptr %cm36651, i32 0, i32 10
  %10 = ptrtoint ptr %ps_ctrl_regs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ps_ctrl_regs, align 2
  %call6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %11) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %flags8 = getelementptr inbounds %struct.cm36651_data, ptr %cm36651, i32 0, i32 6
  %12 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb7.cleanup.sink.split_crit_edge

sw.bb7.cleanup.sink.split_crit_edge:              ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end12:                                         ; preds = %sw.bb7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags8) #6
  %call14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end12.cleanup.sink.split_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %entry
  %flags22 = getelementptr inbounds %struct.cm36651_data, ptr %cm36651, i32 0, i32 6
  %15 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags22, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %sw.bb21.cleanup.sink.split_crit_edge, label %if.end30

sw.bb21.cleanup.sink.split_crit_edge:             ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end30:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags22) #6
  %call32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end30, %if.end, %sw.bb
  %ret.0 = phi i32 [ %call32, %if.end30 ], [ %call6, %if.end ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp33 = icmp slt i32 %ret.0, 0
  br i1 %cmp33, label %sw.epilog.cleanup.sink.split_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %sw.bb21.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %sw.bb7.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.32, %sw.bb7.cleanup.sink.split_crit_edge ], [ @.str.35, %if.end12.cleanup.sink.split_crit_edge ], [ @.str.38, %sw.bb21.cleanup.sink.split_crit_edge ], [ @.str.41, %entry.cleanup.sink.split_crit_edge ], [ @.str.41, %sw.epilog.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %sw.bb7.cleanup.sink.split_crit_edge ], [ %call14, %if.end12.cleanup.sink.split_crit_edge ], [ -22, %sw.bb21.cleanup.sink.split_crit_edge ], [ -22, %entry.cleanup.sink.split_crit_edge ], [ %ret.0, %sw.epilog.cleanup.sink.split_crit_edge ]
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull %.str.41.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb3.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_cm36651__288_740_cm36651_driver_init6, !1, !"__initcall__kmod_cm36651__288_740_cm36651_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/cm36651.c", i32 740, i32 1}
!2 = !{ptr @__exitcall_cm36651_driver_exit, !1, !"__exitcall_cm36651_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/cm36651.c", i32 742, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/cm36651.c", i32 743, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/cm36651.c", i32 744, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/cm36651.c", i32 732, i32 11}
!12 = !{ptr @cm36651_driver, !13, !"cm36651_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/cm36651.c", i32 730, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/cm36651.c", i32 634, i32 55}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/cm36651.c", i32 637, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/light/cm36651.c", i32 641, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cm36651_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @cm36651_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/light/cm36651.c", i32 651, i32 3}
!28 = !{ptr @cm36651_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cm36651_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @cm36651_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/cm36651.c", i32 658, i32 3}
!32 = !{ptr @cm36651_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @cm36651_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/cm36651.c", i32 663, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/cm36651.c", i32 672, i32 3}
!38 = !{ptr @cm36651_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cm36651_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/cm36651.c", i32 680, i32 3}
!42 = !{ptr @cm36651_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cm36651_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/cm36651.c", i32 686, i32 3}
!46 = !{ptr @cm36651_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cm36651_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @cm36651_channels, !49, !"cm36651_channels", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/cm36651.c", i32 582, i32 35}
!50 = !{ptr @cm36651_event_spec, !51, !"cm36651_event_spec", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/cm36651.c", i32 573, i32 36}
!52 = !{ptr @cm36651_info, !53, !"cm36651_info", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/cm36651.c", i32 611, i32 30}
!54 = !{ptr @cm36651_attribute_group, !55, !"cm36651_attribute_group", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/cm36651.c", i32 607, i32 37}
!56 = !{ptr @cm36651_attributes, !57, !"cm36651_attributes", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/cm36651.c", i32 601, i32 26}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/cm36651.c", i32 596, i32 8}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @iio_const_attr_in_illuminance_integration_time_available, !59, !"iio_const_attr_in_illuminance_integration_time_available", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/cm36651.c", i32 598, i32 8}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @iio_const_attr_in_proximity_integration_time_available, !63, !"iio_const_attr_in_proximity_integration_time_available", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/cm36651.c", i32 341, i32 3}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cm36651_read_channel._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @cm36651_read_channel._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/light/cm36651.c", i32 348, i32 3}
!73 = !{ptr @cm36651_read_channel._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @cm36651_read_channel._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/light/cm36651.c", i32 293, i32 4}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cm36651_set_operation_mode._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @cm36651_set_operation_mode._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/light/cm36651.c", i32 304, i32 4}
!82 = !{ptr @cm36651_set_operation_mode._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @cm36651_set_operation_mode._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/light/cm36651.c", i32 310, i32 4}
!86 = !{ptr @cm36651_set_operation_mode._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cm36651_set_operation_mode._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/light/cm36651.c", i32 321, i32 3}
!90 = !{ptr @cm36651_set_operation_mode._entry.40, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cm36651_set_operation_mode._entry_ptr.42, !89, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"cm36651_ps_reg", i1 false, i1 false}
!93 = !{!"../drivers/iio/light/cm36651.c", i32 121, i32 17}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/light/cm36651.c", i32 482, i32 4}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cm36651_write_raw._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @cm36651_write_raw._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/light/cm36651.c", i32 413, i32 4}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cm36651_write_int_time._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @cm36651_write_int_time._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/light/cm36651.c", i32 433, i32 4}
!106 = !{ptr @cm36651_write_int_time._entry.47, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cm36651_write_int_time._entry_ptr.49, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/light/cm36651.c", i32 521, i32 3}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cm36651_write_prox_thresh._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @cm36651_write_prox_thresh._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = distinct !{null, !114, !"cm36651_cs_reg", i1 false, i1 false}
!114 = !{!"../drivers/iio/light/cm36651.c", i32 116, i32 17}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/light/cm36651.c", i32 247, i32 3}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @cm36651_irq_handler._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @cm36651_irq_handler._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/light/cm36651.c", i32 259, i32 3}
!122 = !{ptr @cm36651_irq_handler._entry.54, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @cm36651_irq_handler._entry_ptr.56, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @cm36651_of_match, !125, !"cm36651_of_match", i1 false, i1 false}
!125 = !{!"../drivers/iio/light/cm36651.c", i32 724, i32 34}
!126 = !{ptr @cm36651_id, !127, !"cm36651_id", i1 false, i1 false}
!127 = !{!"../drivers/iio/light/cm36651.c", i32 717, i32 35}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
