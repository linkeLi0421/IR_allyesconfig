; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/kmx61.c_pt.bc'
source_filename = "../drivers/iio/imu/kmx61.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.87 = type { i32, i32 }
%struct.anon.88 = type { i32, i32, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
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
%struct.kmx61_data = type { ptr, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, i8 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_kmx61__289_1531_kmx61_driver_init6 = internal global ptr @kmx61_driver_init, section ".initcall6.init", align 4
@kmx61_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @kmx61_probe, ptr @kmx61_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmx61_pm_ops, ptr null, ptr null }, ptr @kmx61_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_kmx61_driver_exit = internal global ptr @kmx61_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [53 x i8] c"kmx61.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [58 x i8] c"kmx61.description=KMX61 accelerometer/magnetometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [33 x i8] c"kmx61.file=drivers/iio/imu/kmx61\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"kmx61.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kmx61\00", [26 x i8] zeroinitializer }, align 32
@kmx61_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @kmx61_suspend, ptr @kmx61_resume, ptr @kmx61_suspend, ptr @kmx61_resume, ptr @kmx61_suspend, ptr @kmx61_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmx61_runtime_suspend, ptr @kmx61_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmx61_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"kmx611021\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@kmx61_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@kmx61_acc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @kmx61_acc_attribute_group, ptr @kmx61_read_raw, ptr null, ptr null, ptr @kmx61_write_raw, ptr null, ptr null, ptr @kmx61_read_event_config, ptr @kmx61_write_event_config, ptr @kmx61_read_event, ptr @kmx61_write_event, ptr @kmx61_acc_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmx61_acc_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 1, i32 0, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @kmx61_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 1, i32 1, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @kmx61_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 1, i32 2, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @kmx61_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }], [88 x i8] zeroinitializer }, align 32
@kmx61_mag_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @kmx61_mag_attribute_group, ptr @kmx61_read_raw, ptr null, ptr null, ptr @kmx61_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmx61_mag_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmx61_mag_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 2, i32 0, %struct.anon.86 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 2, i32 1, %struct.anon.86 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 2, i32 2, %struct.anon.86 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [88 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kmx61_event\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dready\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"any-motion\00", [21 x i8] zeroinitializer }, align 32
@kmx61_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1362, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to setup acc triggered buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kmx61_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/iio/imu/kmx61.c\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kmx61_probe._entry_ptr = internal global ptr @kmx61_probe._entry, section ".printk_index", align 4
@kmx61_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1372, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to setup mag triggered buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@kmx61_probe._entry_ptr.12 = internal global ptr @kmx61_probe._entry.10, section ".printk_index", align 4
@kmx61_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 1387, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register acc iio device\0A\00", [61 x i8] zeroinitializer }, align 32
@kmx61_probe._entry_ptr.15 = internal global ptr @kmx61_probe._entry.13, section ".printk_index", align 4
@kmx61_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 1393, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register mag iio device\0A\00", [61 x i8] zeroinitializer }, align 32
@kmx61_probe._entry_ptr.18 = internal global ptr @kmx61_probe._entry.16, section ".printk_index", align 4
@kmx61_acc_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @kmx61_acc_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmx61_acc_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_accel_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_accel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.19, %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.21, %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0.009582 0.019163 0.038326\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"accel_scale_available\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"0.781000 1.563000 3.125000 6.250000 12.500000 25 50 100 200 400 800\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@kmx61_uscale_table = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 9582, i16 19163, i16 -27210], [26 x i8] zeroinitializer }, align 32
@kmx61_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 761, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed: kmx61_set_power_state for %d, ret %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmx61_set_power_state\00", [42 x i8] zeroinitializer }, align 32
@kmx61_set_power_state._entry_ptr = internal global ptr @kmx61_set_power_state._entry, section ".printk_index", align 4
@kmx61_read_measurement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 776, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read reg at %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kmx61_read_measurement\00", [41 x i8] zeroinitializer }, align 32
@kmx61_read_measurement._entry_ptr = internal global ptr @kmx61_read_measurement._entry, section ".printk_index", align 4
@kmx61_samp_freq_table = internal constant { [12 x %struct.anon.87], [32 x i8] } { [12 x %struct.anon.87] [%struct.anon.87 { i32 12, i32 500000 }, %struct.anon.87 { i32 25, i32 0 }, %struct.anon.87 { i32 50, i32 0 }, %struct.anon.87 { i32 100, i32 0 }, %struct.anon.87 { i32 200, i32 0 }, %struct.anon.87 { i32 400, i32 0 }, %struct.anon.87 { i32 800, i32 0 }, %struct.anon.87 { i32 1600, i32 0 }, %struct.anon.87 { i32 0, i32 781000 }, %struct.anon.87 { i32 1, i32 563000 }, %struct.anon.87 { i32 3, i32 125000 }, %struct.anon.87 { i32 6, i32 250000 }], [32 x i8] zeroinitializer }, align 32
@kmx61_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.7, i32 379, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading reg_stby\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kmx61_get_mode\00", [17 x i8] zeroinitializer }, align 32
@kmx61_get_mode._entry_ptr = internal global ptr @kmx61_get_mode._entry, section ".printk_index", align 4
@kmx61_set_wake_up_odr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 412, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error writing reg_ctrl2\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmx61_set_wake_up_odr\00", [42 x i8] zeroinitializer }, align 32
@kmx61_set_wake_up_odr._entry_ptr = internal global ptr @kmx61_set_wake_up_odr._entry, section ".printk_index", align 4
@kmx61_wake_up_odr_table = internal constant { [12 x %struct.anon.88], [48 x i8] } { [12 x %struct.anon.88] [%struct.anon.88 { i32 0, i32 781000, i32 0 }, %struct.anon.88 { i32 1, i32 563000, i32 1 }, %struct.anon.88 { i32 3, i32 125000, i32 2 }, %struct.anon.88 { i32 6, i32 250000, i32 3 }, %struct.anon.88 { i32 12, i32 500000, i32 4 }, %struct.anon.88 { i32 25, i32 0, i32 5 }, %struct.anon.88 { i32 50, i32 0, i32 6 }, %struct.anon.88 { i32 100, i32 0, i32 6 }, %struct.anon.88 { i32 200, i32 0, i32 6 }, %struct.anon.88 { i32 400, i32 0, i32 6 }, %struct.anon.88 { i32 800, i32 0, i32 6 }, %struct.anon.88 { i32 1600, i32 0, i32 6 }], [48 x i8] zeroinitializer }, align 32
@kmx61_set_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 487, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error reading reg_ctrl1\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kmx61_set_range\00", [16 x i8] zeroinitializer }, align 32
@kmx61_set_range._entry_ptr = internal global ptr @kmx61_set_range._entry, section ".printk_index", align 4
@kmx61_set_range._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.7, i32 496, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error writing reg_ctrl1\0A\00", [39 x i8] zeroinitializer }, align 32
@kmx61_set_range._entry_ptr.35 = internal global ptr @kmx61_set_range._entry.33, section ".printk_index", align 4
@kmx61_setup_any_motion_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 685, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading reg_inc1\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"kmx61_setup_any_motion_interrupt\00", [63 x i8] zeroinitializer }, align 32
@kmx61_setup_any_motion_interrupt._entry_ptr = internal global ptr @kmx61_setup_any_motion_interrupt._entry, section ".printk_index", align 4
@kmx61_setup_any_motion_interrupt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.7, i32 695, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing reg_inc1\0A\00", [40 x i8] zeroinitializer }, align 32
@kmx61_setup_any_motion_interrupt._entry_ptr.40 = internal global ptr @kmx61_setup_any_motion_interrupt._entry.38, section ".printk_index", align 4
@kmx61_setup_any_motion_interrupt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.37, ptr @.str.7, i32 701, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@kmx61_setup_any_motion_interrupt._entry_ptr.42 = internal global ptr @kmx61_setup_any_motion_interrupt._entry.41, section ".printk_index", align 4
@kmx61_setup_any_motion_interrupt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.37, ptr @.str.7, i32 712, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@kmx61_setup_any_motion_interrupt._entry_ptr.44 = internal global ptr @kmx61_setup_any_motion_interrupt._entry.43, section ".printk_index", align 4
@kmx61_chip_update_thresholds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.7, i32 652, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Errow writing reg_wuf_timer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kmx61_chip_update_thresholds\00", [35 x i8] zeroinitializer }, align 32
@kmx61_chip_update_thresholds._entry_ptr = internal global ptr @kmx61_chip_update_thresholds._entry, section ".printk_index", align 4
@kmx61_chip_update_thresholds._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.7, i32 660, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error writing reg_wuf_thresh\0A\00", [34 x i8] zeroinitializer }, align 32
@kmx61_chip_update_thresholds._entry_ptr.49 = internal global ptr @kmx61_chip_update_thresholds._entry.47, section ".printk_index", align 4
@kmx61_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 0, i32 0, i32 11, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@kmx61_mag_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @kmx61_mag_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmx61_mag_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_magn_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_magn_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.50, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.001465\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"magn_scale_available\00", [43 x i8] zeroinitializer }, align 32
@kmx61_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.7, i32 539, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading who_am_i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kmx61_chip_init\00", [16 x i8] zeroinitializer }, align 32
@kmx61_chip_init._entry_ptr = internal global ptr @kmx61_chip_init._entry, section ".printk_index", align 4
@kmx61_chip_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.7, i32 546, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Wrong chip id, got %x expected %x\0A\00", [61 x i8] zeroinitializer }, align 32
@kmx61_chip_init._entry_ptr.56 = internal global ptr @kmx61_chip_init._entry.54, section ".printk_index", align 4
@kmx61_chip_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.7, i32 557, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error reading reg_odcntl\0A\00", [38 x i8] zeroinitializer }, align 32
@kmx61_chip_init._entry_ptr.59 = internal global ptr @kmx61_chip_init._entry.57, section ".printk_index", align 4
@kmx61_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.7, i32 1088, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading reg_ins1\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kmx61_event_handler\00", [44 x i8] zeroinitializer }, align 32
@kmx61_event_handler._entry_ptr = internal global ptr @kmx61_event_handler._entry, section ".printk_index", align 4
@kmx61_event_handler._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.7, i32 1095, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading reg_ins2\0A\00", [40 x i8] zeroinitializer }, align 32
@kmx61_event_handler._entry_ptr.64 = internal global ptr @kmx61_event_handler._entry.62, section ".printk_index", align 4
@kmx61_event_handler._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.61, ptr @.str.7, i32 1157, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@kmx61_event_handler._entry_ptr.66 = internal global ptr @kmx61_event_handler._entry.65, section ".printk_index", align 4
@kmx61_event_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.61, ptr @.str.7, i32 1162, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@kmx61_event_handler._entry_ptr.68 = internal global ptr @kmx61_event_handler._entry.67, section ".printk_index", align 4
@kmx61_event_handler._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.61, ptr @.str.7, i32 1166, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading reg_inl\0A\00", [41 x i8] zeroinitializer }, align 32
@kmx61_event_handler._entry_ptr.71 = internal global ptr @kmx61_event_handler._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s-%s-dev%d\00", [20 x i8] zeroinitializer }, align 32
@kmx61_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @kmx61_data_rdy_trigger_set_state, ptr @kmx61_trig_reenable, ptr null }, [20 x i8] zeroinitializer }, align 32
@kmx61_setup_new_data_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.73, ptr @.str.7, i32 601, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kmx61_setup_new_data_interrupt\00", [33 x i8] zeroinitializer }, align 32
@kmx61_setup_new_data_interrupt._entry_ptr = internal global ptr @kmx61_setup_new_data_interrupt._entry, section ".printk_index", align 4
@kmx61_setup_new_data_interrupt._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.7, i32 620, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error writing reg_int_ctrl1\0A\00", [35 x i8] zeroinitializer }, align 32
@kmx61_setup_new_data_interrupt._entry_ptr.76 = internal global ptr @kmx61_setup_new_data_interrupt._entry.74, section ".printk_index", align 4
@kmx61_setup_new_data_interrupt._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.73, ptr @.str.7, i32 626, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@kmx61_setup_new_data_interrupt._entry_ptr.78 = internal global ptr @kmx61_setup_new_data_interrupt._entry.77, section ".printk_index", align 4
@kmx61_setup_new_data_interrupt._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.73, ptr @.str.7, i32 637, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@kmx61_setup_new_data_interrupt._entry_ptr.80 = internal global ptr @kmx61_setup_new_data_interrupt._entry.79, section ".printk_index", align 4
@kmx61_trig_reenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.81, ptr @.str.7, i32 1072, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kmx61_trig_reenable\00", [44 x i8] zeroinitializer }, align 32
@kmx61_trig_reenable._entry_ptr = internal global ptr @kmx61_trig_reenable._entry, section ".printk_index", align 4
@kmx61_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.82, ptr @.str.7, i32 333, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kmx61_set_mode\00", [17 x i8] zeroinitializer }, align 32
@kmx61_set_mode._entry_ptr = internal global ptr @kmx61_set_mode._entry, section ".printk_index", align 4
@kmx61_set_mode._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.7, i32 361, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing reg_stby\0A\00", [40 x i8] zeroinitializer }, align 32
@kmx61_set_mode._entry_ptr.85 = internal global ptr @kmx61_set_mode._entry.83, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.91 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 3, i64 6, i64 12, i64 25, i64 50, i64 100, i64 200, i64 400, i64 800, i64 1600]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 16, i64 9582, i64 19163, i64 38326]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 3, i64 6, i64 12, i64 25, i64 50, i64 100, i64 200, i64 400, i64 800, i64 1600]
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"kmx61_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1520, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1522, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"kmx61_pm_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1501, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant [9 x i8] c"kmx61_id\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1513, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1293, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"kmx61_acc_info\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 999, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"kmx61_acc_channels\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 267, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"kmx61_mag_info\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1010, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"kmx61_mag_channels\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 273, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1327, i32 7 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1334, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1350, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1361, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1371, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1387, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1393, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [26 x i8] c"kmx61_acc_attribute_group\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 213, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant [21 x i8] c"kmx61_acc_attributes\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 201, i32 26 }
@___asan_gen_.177 = private unnamed_addr constant [37 x i8] c"iio_const_attr_accel_scale_available\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 196, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 198, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant [19 x i8] c"kmx61_uscale_table\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 161, i32 18 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 759, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 776, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [22 x i8] c"kmx61_samp_freq_table\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 166, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 379, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 412, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [24 x i8] c"kmx61_wake_up_odr_table\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 183, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 487, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 496, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 685, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 695, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 701, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 712, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 652, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 660, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [12 x i8] c"kmx61_event\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 221, i32 36 }
@___asan_gen_.294 = private unnamed_addr constant [26 x i8] c"kmx61_mag_attribute_group\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 217, i32 37 }
@___asan_gen_.297 = private unnamed_addr constant [21 x i8] c"kmx61_mag_attributes\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 207, i32 26 }
@___asan_gen_.300 = private unnamed_addr constant [36 x i8] c"iio_const_attr_magn_scale_available\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 197, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 539, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 544, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 557, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1088, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1095, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1157, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1162, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1166, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1262, i32 11 }
@___asan_gen_.360 = private unnamed_addr constant [18 x i8] c"kmx61_trigger_ops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1075, i32 37 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 601, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 620, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 626, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 637, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1072, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 333, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.397 = private constant [27 x i8] c"../drivers/iio/imu/kmx61.c\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 361, i32 3 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_kmx61_driver_exit, ptr @__initcall__kmod_kmx61__289_1531_kmx61_driver_init6, ptr @kmx61_chip_init._entry, ptr @kmx61_chip_init._entry.54, ptr @kmx61_chip_init._entry.57, ptr @kmx61_chip_init._entry_ptr, ptr @kmx61_chip_init._entry_ptr.56, ptr @kmx61_chip_init._entry_ptr.59, ptr @kmx61_chip_update_thresholds._entry, ptr @kmx61_chip_update_thresholds._entry.47, ptr @kmx61_chip_update_thresholds._entry_ptr, ptr @kmx61_chip_update_thresholds._entry_ptr.49, ptr @kmx61_driver_exit, ptr @kmx61_event_handler._entry, ptr @kmx61_event_handler._entry.62, ptr @kmx61_event_handler._entry.65, ptr @kmx61_event_handler._entry.67, ptr @kmx61_event_handler._entry.69, ptr @kmx61_event_handler._entry_ptr, ptr @kmx61_event_handler._entry_ptr.64, ptr @kmx61_event_handler._entry_ptr.66, ptr @kmx61_event_handler._entry_ptr.68, ptr @kmx61_event_handler._entry_ptr.71, ptr @kmx61_get_mode._entry, ptr @kmx61_get_mode._entry_ptr, ptr @kmx61_probe._entry, ptr @kmx61_probe._entry.10, ptr @kmx61_probe._entry.13, ptr @kmx61_probe._entry.16, ptr @kmx61_probe._entry_ptr, ptr @kmx61_probe._entry_ptr.12, ptr @kmx61_probe._entry_ptr.15, ptr @kmx61_probe._entry_ptr.18, ptr @kmx61_read_measurement._entry, ptr @kmx61_read_measurement._entry_ptr, ptr @kmx61_set_mode._entry, ptr @kmx61_set_mode._entry.83, ptr @kmx61_set_mode._entry_ptr, ptr @kmx61_set_mode._entry_ptr.85, ptr @kmx61_set_power_state._entry, ptr @kmx61_set_power_state._entry_ptr, ptr @kmx61_set_range._entry, ptr @kmx61_set_range._entry.33, ptr @kmx61_set_range._entry_ptr, ptr @kmx61_set_range._entry_ptr.35, ptr @kmx61_set_wake_up_odr._entry, ptr @kmx61_set_wake_up_odr._entry_ptr, ptr @kmx61_setup_any_motion_interrupt._entry, ptr @kmx61_setup_any_motion_interrupt._entry.38, ptr @kmx61_setup_any_motion_interrupt._entry.41, ptr @kmx61_setup_any_motion_interrupt._entry.43, ptr @kmx61_setup_any_motion_interrupt._entry_ptr, ptr @kmx61_setup_any_motion_interrupt._entry_ptr.40, ptr @kmx61_setup_any_motion_interrupt._entry_ptr.42, ptr @kmx61_setup_any_motion_interrupt._entry_ptr.44, ptr @kmx61_setup_new_data_interrupt._entry, ptr @kmx61_setup_new_data_interrupt._entry.74, ptr @kmx61_setup_new_data_interrupt._entry.77, ptr @kmx61_setup_new_data_interrupt._entry.79, ptr @kmx61_setup_new_data_interrupt._entry_ptr, ptr @kmx61_setup_new_data_interrupt._entry_ptr.76, ptr @kmx61_setup_new_data_interrupt._entry_ptr.78, ptr @kmx61_setup_new_data_interrupt._entry_ptr.80, ptr @kmx61_trig_reenable._entry, ptr @kmx61_trig_reenable._entry_ptr, ptr @kmx61_driver, ptr @.str, ptr @kmx61_pm_ops, ptr @kmx61_id, ptr @kmx61_probe.__key, ptr @.str.1, ptr @kmx61_acc_info, ptr @kmx61_acc_channels, ptr @kmx61_mag_info, ptr @kmx61_mag_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @kmx61_acc_attribute_group, ptr @kmx61_acc_attributes, ptr @iio_const_attr_accel_scale_available, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @kmx61_uscale_table, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @kmx61_samp_freq_table, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @kmx61_wake_up_odr_table, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @kmx61_event, ptr @kmx61_mag_attribute_group, ptr @kmx61_mag_attributes, ptr @iio_const_attr_magn_scale_available, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.70, ptr @.str.72, ptr @kmx61_trigger_ops, ptr @.str.73, ptr @.str.75, ptr @.str.81, ptr @.str.82, ptr @.str.84], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_acc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_acc_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_mag_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_mag_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_acc_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_acc_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_accel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_uscale_table to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_read_measurement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_samp_freq_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_set_wake_up_odr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_wake_up_odr_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_set_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_set_range._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_setup_any_motion_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_setup_any_motion_interrupt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_setup_any_motion_interrupt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_setup_any_motion_interrupt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_chip_update_thresholds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_chip_update_thresholds._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_mag_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_mag_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_magn_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_chip_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_chip_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_event_handler._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_event_handler._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_event_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_event_handler._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_setup_new_data_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_setup_new_data_interrupt._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_setup_new_data_interrupt._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_setup_new_data_interrupt._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_trig_reenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmx61_set_mode._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @kmx61_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kmx61_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @kmx61_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 132, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @kmx61_probe.__key) #8
  %tobool2.not = icmp eq ptr %id, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i192 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev.i, i32 noundef 4) #8
  %tobool.not.i = icmp eq ptr %call.i192, null
  br i1 %tobool.not.i, label %kmx61_indiodev_setup.exit.thread, label %kmx61_indiodev_setup.exit

kmx61_indiodev_setup.exit.thread:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %acc_indio_dev222 = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %acc_indio_dev222 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -12 to ptr), ptr %acc_indio_dev222, align 4
  br label %if.then14

kmx61_indiodev_setup.exit:                        ; preds = %if.then3
  %priv.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %call.i192, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %6, align 4
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i192, i32 0, i32 13
  %8 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kmx61_acc_channels, ptr %channels.i, align 8
  %num_channels2.i = getelementptr inbounds %struct.iio_dev, ptr %call.i192, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %num_channels2.i, align 4
  %name3.i = getelementptr inbounds %struct.iio_dev, ptr %call.i192, i32 0, i32 15
  %10 = ptrtoint ptr %name3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %id, ptr %name3.i, align 8
  %11 = ptrtoint ptr %call.i192 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call.i192, align 8
  %info4.i = getelementptr inbounds %struct.iio_dev, ptr %call.i192, i32 0, i32 17
  %12 = ptrtoint ptr %info4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kmx61_acc_info, ptr %info4.i, align 8
  %acc_indio_dev = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i192, ptr %acc_indio_dev, align 4
  %cmp.i = icmp ugt ptr %call.i192, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %kmx61_indiodev_setup.exit.if.then14_crit_edge, label %if.end17

kmx61_indiodev_setup.exit.if.then14_crit_edge:    ; preds = %kmx61_indiodev_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %kmx61_indiodev_setup.exit.if.then14_crit_edge, %kmx61_indiodev_setup.exit.thread
  %retval.0.i224 = phi ptr [ inttoptr (i32 -12 to ptr), %kmx61_indiodev_setup.exit.thread ], [ %call.i192, %kmx61_indiodev_setup.exit.if.then14_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i224 to i32
  br label %cleanup

if.end17:                                         ; preds = %kmx61_indiodev_setup.exit
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %dev.i193 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %call.i194 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev.i193, i32 noundef 4) #8
  %tobool.not.i195 = icmp eq ptr %call.i194, null
  br i1 %tobool.not.i195, label %kmx61_indiodev_setup.exit203.thread, label %kmx61_indiodev_setup.exit203

kmx61_indiodev_setup.exit203.thread:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %mag_indio_dev228 = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 16
  %17 = ptrtoint ptr %mag_indio_dev228 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -12 to ptr), ptr %mag_indio_dev228, align 4
  br label %if.then21

kmx61_indiodev_setup.exit203:                     ; preds = %if.end17
  %priv.i.i.i196 = getelementptr inbounds %struct.iio_dev, ptr %call.i194, i32 0, i32 19
  %18 = ptrtoint ptr %priv.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i.i.i196, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %19, align 4
  %channels.i197 = getelementptr inbounds %struct.iio_dev, ptr %call.i194, i32 0, i32 13
  %21 = ptrtoint ptr %channels.i197 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @kmx61_mag_channels, ptr %channels.i197, align 8
  %num_channels2.i198 = getelementptr inbounds %struct.iio_dev, ptr %call.i194, i32 0, i32 14
  %22 = ptrtoint ptr %num_channels2.i198 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %num_channels2.i198, align 4
  %name3.i199 = getelementptr inbounds %struct.iio_dev, ptr %call.i194, i32 0, i32 15
  %23 = ptrtoint ptr %name3.i199 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %id, ptr %name3.i199, align 8
  %24 = ptrtoint ptr %call.i194 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %call.i194, align 8
  %info4.i200 = getelementptr inbounds %struct.iio_dev, ptr %call.i194, i32 0, i32 17
  %25 = ptrtoint ptr %info4.i200 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @kmx61_mag_info, ptr %info4.i200, align 8
  %mag_indio_dev = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 16
  %26 = ptrtoint ptr %mag_indio_dev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i194, ptr %mag_indio_dev, align 4
  %cmp.i204 = icmp ugt ptr %call.i194, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %kmx61_indiodev_setup.exit203.if.then21_crit_edge, label %if.end24

kmx61_indiodev_setup.exit203.if.then21_crit_edge: ; preds = %kmx61_indiodev_setup.exit203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then21:                                        ; preds = %kmx61_indiodev_setup.exit203.if.then21_crit_edge, %kmx61_indiodev_setup.exit203.thread
  %retval.0.i202230 = phi ptr [ inttoptr (i32 -12 to ptr), %kmx61_indiodev_setup.exit203.thread ], [ %call.i194, %kmx61_indiodev_setup.exit203.if.then21_crit_edge ]
  %27 = ptrtoint ptr %retval.0.i202230 to i32
  br label %cleanup

if.end24:                                         ; preds = %kmx61_indiodev_setup.exit203
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call.i205 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp.i206 = icmp slt i32 %call.i205, 0
  br i1 %cmp.i206, label %do.end.i, label %if.end.i208

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %dev.i207 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i207, ptr noundef nonnull @.str.52) #11
  br label %cleanup

if.end.i208:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call.i205)
  %cmp2.not.i = icmp eq i32 %call.i205, 18
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  br i1 %cmp2.not.i, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #10
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.55, i32 noundef %call.i205, i32 noundef 18) #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i208
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end9.i
  %36 = trunc i32 %call.i.i to i8
  %37 = and i8 %36, -4
  %conv4.i.i = or i8 %37, 1
  %call5.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 42, i8 noundef zeroext %conv4.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %do.end11.i.i, label %if.end13.i

do.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %dev13.i.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.34) #11
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i.i
  %range15.i.i = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %range15.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %range15.i.i, align 4
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %call15.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end20.i, label %if.end23.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.58) #11
  br label %cleanup

if.end23.i:                                       ; preds = %if.end13.i
  %conv.i = trunc i32 %call15.i to i8
  %odr_bits.i = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 7
  %45 = ptrtoint ptr %odr_bits.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i, ptr %odr_bits.i, align 1
  %46 = and i8 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %46)
  %cmp.i66.i = icmp ugt i8 %46, 11
  br i1 %cmp.i66.i, label %if.end23.i.cleanup_crit_edge, label %if.end28.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.i:                                       ; preds = %if.end23.i
  %and2.i.i = zext i8 %46 to i32
  %arrayidx.i.i = getelementptr [12 x %struct.anon.87], ptr @kmx61_samp_freq_table, i32 0, i32 %and2.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i, align 4
  %val222.i.i = getelementptr [12 x %struct.anon.87], ptr @kmx61_samp_freq_table, i32 0, i32 %and2.i.i, i32 1
  %49 = ptrtoint ptr %val222.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val222.i.i, align 4
  %call29.i = tail call fastcc i32 @kmx61_set_wake_up_odr(ptr noundef nonnull %call.i, i32 noundef %48, i32 noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end28.i.cleanup_crit_edge, label %if.end33.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33.i:                                       ; preds = %if.end28.i
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %call.i69.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %52, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %cmp.i70.i = icmp slt i32 %call.i69.i, 0
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i70.i, label %do.end.i72.i, label %if.end.i73.i

do.end.i72.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i71.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i71.i, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end.i73.i:                                     ; preds = %if.end33.i
  %55 = trunc i32 %call.i69.i to i8
  %conv30.i.i = and i8 %55, -4
  %call31.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %cmp32.i.i = icmp slt i32 %call31.i.i, 0
  br i1 %cmp32.i.i, label %do.end37.i.i, label %if.end27

do.end37.i.i:                                     ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %dev39.i.i = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i.i, ptr noundef nonnull @.str.84) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end.i73.i
  %acc_stby47.i.i = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 2
  %58 = ptrtoint ptr %acc_stby47.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %acc_stby47.i.i, align 4
  %mag_stby57.i.i = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 3
  %59 = ptrtoint ptr %mag_stby57.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %mag_stby57.i.i, align 1
  %wake_thresh.i = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 8
  %60 = ptrtoint ptr %wake_thresh.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %wake_thresh.i, align 2
  %wake_duration.i = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 9
  %61 = ptrtoint ptr %wake_duration.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %wake_duration.i, align 1
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp28 = icmp sgt i32 %63, 0
  br i1 %cmp28, label %if.then29, label %if.end27.if.end80_crit_edge

if.end27.if.end80_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then29:                                        ; preds = %if.end27
  %call32 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %63, ptr noundef nonnull @kmx61_data_rdy_trig_poll, ptr noundef nonnull @kmx61_event_handler, i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then29.err_chip_uninit_crit_edge

if.then29.err_chip_uninit_crit_edge:              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_chip_uninit

if.end35:                                         ; preds = %if.then29
  %64 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %acc_indio_dev, align 4
  %call37 = tail call fastcc ptr @kmx61_trigger_setup(ptr noundef nonnull %call.i, ptr noundef %65, ptr noundef nonnull @.str.3)
  %acc_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 11
  %66 = ptrtoint ptr %acc_dready_trig to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call37, ptr %acc_dready_trig, align 4
  %cmp.i210 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %call37 to i32
  br label %err_chip_uninit

if.end43:                                         ; preds = %if.end35
  %68 = ptrtoint ptr %mag_indio_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mag_indio_dev, align 4
  %call45 = tail call fastcc ptr @kmx61_trigger_setup(ptr noundef nonnull %call.i, ptr noundef %69, ptr noundef nonnull @.str.3)
  %mag_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 17
  %70 = ptrtoint ptr %mag_dready_trig to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call45, ptr %mag_dready_trig, align 4
  %cmp.i211 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %call45 to i32
  br label %err_trigger_unregister_acc_dready

if.end51:                                         ; preds = %if.end43
  %72 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %acc_indio_dev, align 4
  %call53 = tail call fastcc ptr @kmx61_trigger_setup(ptr noundef nonnull %call.i, ptr noundef %73, ptr noundef nonnull @.str.4)
  %motion_trig = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 12
  %74 = ptrtoint ptr %motion_trig to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call53, ptr %motion_trig, align 4
  %cmp.i212 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %call53 to i32
  br label %err_trigger_unregister_mag_dready

if.end59:                                         ; preds = %if.end51
  %76 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %acc_indio_dev, align 4
  %call61 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %77, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @kmx61_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.end66, label %if.end69

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %dev68 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.5) #11
  br label %err_trigger_unregister_motion

if.end69:                                         ; preds = %if.end59
  %80 = ptrtoint ptr %mag_indio_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mag_indio_dev, align 4
  %call71 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %81, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @kmx61_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end76, label %if.end69.if.end80_crit_edge

if.end69.if.end80_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 4
  %dev78 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.11) #11
  br label %err_buffer_cleanup_acc

if.end80:                                         ; preds = %if.end69.if.end80_crit_edge, %if.end27.if.end80_crit_edge
  %call.i213 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %cmp83 = icmp slt i32 %call.i213, 0
  br i1 %cmp83, label %if.end80.err_buffer_cleanup_mag_crit_edge, label %if.end85

if.end80.err_buffer_cleanup_mag_crit_edge:        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_buffer_cleanup_mag

if.end85:                                         ; preds = %if.end80
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %84 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %acc_indio_dev, align 4
  %call90 = tail call i32 @__iio_device_register(ptr noundef %85, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %do.end95, label %if.end97

do.end95:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %err_pm_cleanup

if.end97:                                         ; preds = %if.end85
  %86 = ptrtoint ptr %mag_indio_dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mag_indio_dev, align 4
  %call99 = tail call i32 @__iio_device_register(ptr noundef %87, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %do.end104, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end104:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  %88 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %acc_indio_dev, align 4
  tail call void @iio_device_unregister(ptr noundef %89) #8
  br label %err_pm_cleanup

err_pm_cleanup:                                   ; preds = %do.end104, %do.end95
  %ret.0 = phi i32 [ %call90, %do.end95 ], [ %call99, %do.end104 ]
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %err_buffer_cleanup_mag

err_buffer_cleanup_mag:                           ; preds = %err_pm_cleanup, %if.end80.err_buffer_cleanup_mag_crit_edge
  %ret.1 = phi i32 [ %call.i213, %if.end80.err_buffer_cleanup_mag_crit_edge ], [ %ret.0, %err_pm_cleanup ]
  %90 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp111 = icmp sgt i32 %91, 0
  br i1 %cmp111, label %if.then112, label %err_buffer_cleanup_mag.err_trigger_unregister_motion_crit_edge

err_buffer_cleanup_mag.err_trigger_unregister_motion_crit_edge: ; preds = %err_buffer_cleanup_mag
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_trigger_unregister_motion

if.then112:                                       ; preds = %err_buffer_cleanup_mag
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %mag_indio_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mag_indio_dev, align 4
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %93) #8
  br label %err_buffer_cleanup_acc

err_buffer_cleanup_acc:                           ; preds = %if.then112, %do.end76
  %ret.2.ph = phi i32 [ %ret.1, %if.then112 ], [ %call71, %do.end76 ]
  %94 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp116 = icmp sgt i32 %.pr, 0
  br i1 %cmp116, label %if.then117, label %err_buffer_cleanup_acc.err_trigger_unregister_motion_crit_edge

err_buffer_cleanup_acc.err_trigger_unregister_motion_crit_edge: ; preds = %err_buffer_cleanup_acc
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_trigger_unregister_motion

if.then117:                                       ; preds = %err_buffer_cleanup_acc
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %acc_indio_dev, align 4
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %96) #8
  br label %err_trigger_unregister_motion

err_trigger_unregister_motion:                    ; preds = %if.then117, %err_buffer_cleanup_acc.err_trigger_unregister_motion_crit_edge, %err_buffer_cleanup_mag.err_trigger_unregister_motion_crit_edge, %do.end66
  %ret.3 = phi i32 [ %call61, %do.end66 ], [ %ret.2.ph, %if.then117 ], [ %ret.2.ph, %err_buffer_cleanup_acc.err_trigger_unregister_motion_crit_edge ], [ %ret.1, %err_buffer_cleanup_mag.err_trigger_unregister_motion_crit_edge ]
  %motion_trig120 = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 12
  %97 = ptrtoint ptr %motion_trig120 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %motion_trig120, align 4
  tail call void @iio_trigger_unregister(ptr noundef %98) #8
  br label %err_trigger_unregister_mag_dready

err_trigger_unregister_mag_dready:                ; preds = %err_trigger_unregister_motion, %if.then56
  %ret.4 = phi i32 [ %75, %if.then56 ], [ %ret.3, %err_trigger_unregister_motion ]
  %mag_dready_trig121 = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 17
  %99 = ptrtoint ptr %mag_dready_trig121 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mag_dready_trig121, align 4
  tail call void @iio_trigger_unregister(ptr noundef %100) #8
  br label %err_trigger_unregister_acc_dready

err_trigger_unregister_acc_dready:                ; preds = %err_trigger_unregister_mag_dready, %if.then48
  %ret.5 = phi i32 [ %71, %if.then48 ], [ %ret.4, %err_trigger_unregister_mag_dready ]
  %acc_dready_trig122 = getelementptr inbounds %struct.kmx61_data, ptr %call.i, i32 0, i32 11
  %101 = ptrtoint ptr %acc_dready_trig122 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %acc_dready_trig122, align 4
  tail call void @iio_trigger_unregister(ptr noundef %102) #8
  br label %err_chip_uninit

err_chip_uninit:                                  ; preds = %err_trigger_unregister_acc_dready, %if.then40, %if.then29.err_chip_uninit_crit_edge
  %ret.6 = phi i32 [ %call32, %if.then29.err_chip_uninit_crit_edge ], [ %67, %if.then40 ], [ %ret.5, %err_trigger_unregister_acc_dready ]
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call.i, align 4
  %call.i214 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %104, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %cmp.i215 = icmp slt i32 %call.i214, 0
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i215, label %do.end.i217, label %if.end.i218

do.end.i217:                                      ; preds = %err_chip_uninit
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i216 = getelementptr inbounds %struct.i2c_client, ptr %106, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i216, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end.i218:                                      ; preds = %err_chip_uninit
  %107 = trunc i32 %call.i214 to i8
  %conv30.i = or i8 %107, 3
  %call31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %106, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end37.i, label %if.end40.i

do.end37.i:                                       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 4
  %dev39.i = getelementptr inbounds %struct.i2c_client, ptr %109, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i, ptr noundef nonnull @.str.84) #11
  br label %cleanup

if.end40.i:                                       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %acc_stby47.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %acc_stby47.i.i, align 4
  %111 = ptrtoint ptr %mag_stby57.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %mag_stby57.i.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end40.i, %do.end37.i, %do.end.i217, %if.end97.cleanup_crit_edge, %do.end37.i.i, %do.end.i72.i, %if.end28.i.cleanup_crit_edge, %if.end23.i.cleanup_crit_edge, %do.end20.i, %do.end11.i.i, %do.end.i.i, %do.end6.i, %do.end.i, %if.then21, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then14 ], [ %27, %if.then21 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ], [ %ret.6, %do.end.i217 ], [ %ret.6, %do.end37.i ], [ %ret.6, %if.end40.i ], [ %call.i69.i, %do.end.i72.i ], [ %call31.i.i, %do.end37.i.i ], [ -22, %if.end23.i.cleanup_crit_edge ], [ %call.i.i, %do.end.i.i ], [ %call5.i.i, %do.end11.i.i ], [ %call29.i, %if.end28.i.cleanup_crit_edge ], [ %call15.i, %do.end20.i ], [ -22, %do.end6.i ], [ %call.i205, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %acc_indio_dev = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acc_indio_dev, align 4
  tail call void @iio_device_unregister(ptr noundef %3) #8
  %mag_indio_dev = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %mag_indio_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mag_indio_dev, align 4
  tail call void @iio_device_unregister(ptr noundef %5) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acc_indio_dev, align 4
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %9) #8
  %10 = ptrtoint ptr %mag_indio_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mag_indio_dev, align 4
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %11) #8
  %acc_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %acc_dready_trig to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acc_dready_trig, align 4
  tail call void @iio_trigger_unregister(ptr noundef %13) #8
  %mag_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %mag_dready_trig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mag_dready_trig, align 4
  tail call void @iio_trigger_unregister(ptr noundef %15) #8
  %motion_trig = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %motion_trig, align 4
  tail call void @iio_trigger_unregister(ptr noundef %17) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp.i = icmp slt i32 %call.i19, 0
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27) #11
  br label %kmx61_set_mode.exit

if.end.i:                                         ; preds = %if.end
  %22 = trunc i32 %call.i19 to i8
  %conv30.i = or i8 %22, 3
  %call31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end37.i, label %if.end40.i

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %dev39.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i, ptr noundef nonnull @.str.84) #11
  br label %kmx61_set_mode.exit

if.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %acc_stby47.i = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %acc_stby47.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %acc_stby47.i, align 4
  %mag_stby57.i = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %mag_stby57.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %mag_stby57.i, align 1
  br label %kmx61_set_mode.exit

kmx61_set_mode.exit:                              ; preds = %if.end40.i, %do.end37.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_data_rdy_trig_poll(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acc_dready_trig_on = getelementptr inbounds %struct.kmx61_data, ptr %private, i32 0, i32 13
  %0 = ptrtoint ptr %acc_dready_trig_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %acc_dready_trig_on, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %acc_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %private, i32 0, i32 11
  %2 = ptrtoint ptr %acc_dready_trig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acc_dready_trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mag_dready_trig_on = getelementptr inbounds %struct.kmx61_data, ptr %private, i32 0, i32 18
  %4 = ptrtoint ptr %mag_dready_trig_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mag_dready_trig_on, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mag_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %private, i32 0, i32 17
  %6 = ptrtoint ptr %mag_dready_trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mag_dready_trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %7) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %motion_trig_on = getelementptr inbounds %struct.kmx61_data, ptr %private, i32 0, i32 14
  %8 = ptrtoint ptr %motion_trig_on to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %motion_trig_on, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %motion_trig = getelementptr inbounds %struct.kmx61_data, ptr %private, i32 0, i32 12
  %10 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %motion_trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %11) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %ev_enable_state = getelementptr inbounds %struct.kmx61_data, ptr %private, i32 0, i32 15
  %12 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ev_enable_state, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  %. = select i1 %tobool7.not, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_event_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acc_indio_dev = getelementptr inbounds %struct.kmx61_data, ptr %private, i32 0, i32 10
  %0 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acc_indio_dev, align 4
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #11
  br label %ack_intr

if.end:                                           ; preds = %entry
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.ack_intr_crit_edge, label %if.then2

if.end.ack_intr_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ack_intr

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private, align 4
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.63) #11
  br label %ack_intr

if.end12:                                         ; preds = %if.then2
  %and13 = and i32 %call4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef 564062349950976, i64 noundef 0) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %and18 = and i32 %call4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef 282587373240320, i64 noundef 0) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %and23 = and i32 %call4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef 565161861578752, i64 noundef 0) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %and28 = and i32 %call4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end32_crit_edge, label %if.then30

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef 283686884868096, i64 noundef 0) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %and33 = and i32 %call4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end37_crit_edge, label %if.then35

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef 566261373206528, i64 noundef 0) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %and38 = and i32 %call4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.ack_intr_crit_edge, label %if.then40

if.end37.ack_intr_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %ack_intr

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef 284786396495872, i64 noundef 0) #8
  br label %ack_intr

ack_intr:                                         ; preds = %if.then40, %if.end37.ack_intr_crit_edge, %do.end9, %if.end.ack_intr_crit_edge, %do.end
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private, align 4
  %call45 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end50, label %ack_intr.if.end53_crit_edge

ack_intr.if.end53_crit_edge:                      ; preds = %ack_intr
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end50:                                         ; preds = %ack_intr
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 4
  %dev52 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.31) #11
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %ack_intr.if.end53_crit_edge
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private, align 4
  %16 = trunc i32 %call45 to i8
  %conv = or i8 %16, 16
  %call55 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 42, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end61, label %if.end53.if.end64_crit_edge

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  %dev63 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.34) #11
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.end53.if.end64_crit_edge
  %19 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private, align 4
  %call66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end72, label %if.end64.if.end75_crit_edge

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private, align 4
  %dev74 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.70) #11
  br label %if.end75

if.end75:                                         ; preds = %do.end72, %if.end64.if.end75_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmx61_trigger_setup(ptr nocapture noundef readonly %data, ptr noundef %indio_dev, ptr noundef %tag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %call = tail call i32 @iio_device_id(ptr noundef %indio_dev) #8
  %call1 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.72, ptr noundef %3, ptr noundef %tag, i32 noundef %call) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @kmx61_trigger_ops, ptr %call1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call1, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %indio_dev, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @__iio_trigger_register(ptr noundef nonnull %call1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %6 = inttoptr i32 %call3 to ptr
  %spec.select = select i1 %tobool4.not, ptr %call1, ptr %6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %buffer = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #8
  %acc_indio_dev = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 10
  %6 = call ptr @memset(ptr %buffer, i32 255, i32 16)
  %7 = ptrtoint ptr %acc_indio_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acc_indio_dev, align 4
  %cmp = icmp eq ptr %1, %8
  %. = select i1 %cmp, i8 10, i8 18
  %lock = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %10, i32 noundef %12, i32 noundef 0) #8
  %13 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %14)
  %cmp432 = icmp ult i32 %call2, %14
  br i1 %cmp432, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bit.033 = phi i32 [ %call14, %if.end10.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %conv = trunc i32 %bit.033 to i8
  %mul.i = shl i8 %conv, 1
  %add.i = add i8 %mul.i, %.
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %16, i8 noundef zeroext %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %conv5.i = zext i8 %add.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %conv5.i) #11
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %err

if.end10:                                         ; preds = %for.body
  %conv11 = trunc i32 %call.i to i16
  %inc = add i32 %i.034, 1
  %arrayidx = getelementptr [8 x i16], ptr %buffer, i32 0, i32 %i.034
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv11, ptr %arrayidx, align 2
  %20 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active_scan_mask, align 4
  %22 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.033, 1
  %call14 = tail call i32 @_find_next_bit_be(ptr noundef %21, i32 noundef %23, i32 noundef %add) #8
  %24 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %masklength, align 8
  %cmp4 = icmp ult i32 %call14, %25
  br i1 %cmp4, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %call16 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %buffer) #8
  br label %err

err:                                              ; preds = %for.end, %if.then8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %27) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmx61_set_mode(ptr nocapture noundef %data, i8 noundef zeroext %mode, i8 noundef zeroext %device, i1 noundef zeroext %update) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %device to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %4 = and i8 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %call, 1
  br label %if.end9

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %and7 = and i32 %call, -2
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6, %if.end.if.end9_crit_edge
  %ret.0 = phi i32 [ %or, %if.then6 ], [ %and7, %if.else ], [ %call, %if.end.if.end9_crit_edge ]
  %tobool46 = phi i1 [ true, %if.then6 ], [ false, %if.else ], [ true, %if.end.if.end9_crit_edge ]
  %and11 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end22_crit_edge, label %if.then13

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then13:                                        ; preds = %if.end9
  %5 = and i8 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool16.not = icmp eq i8 %5, 0
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %or18 = or i32 %ret.0, 2
  br label %if.end22

if.else19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %and20 = and i32 %ret.0, -3
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then17, %if.end9.if.end22_crit_edge
  %ret.1 = phi i32 [ %or18, %if.then17 ], [ %and20, %if.else19 ], [ %ret.0, %if.end9.if.end22_crit_edge ]
  %tobool56 = phi i1 [ true, %if.then17 ], [ false, %if.else19 ], [ true, %if.end9.if.end22_crit_edge ]
  %or27 = or i32 %ret.1, 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %tobool25.not84 = icmp slt i8 %mode, 0
  %spec.select = select i1 %tobool25.not84, i32 %or27, i32 %ret.1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %conv30 = trunc i32 %spec.select to i8
  %call31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 41, i8 noundef zeroext %conv30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %dev39 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.84) #11
  br label %cleanup

if.end40:                                         ; preds = %if.end22
  %update.not = xor i1 %update, true
  %brmerge = or i1 %tobool.not, %update.not
  br i1 %brmerge, label %if.end40.if.end49_crit_edge, label %if.then45

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %acc_stby47 = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 2
  %frombool48 = zext i1 %tobool46 to i8
  %10 = ptrtoint ptr %acc_stby47 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool48, ptr %acc_stby47, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end40.if.end49_crit_edge
  %brmerge83 = or i1 %tobool12.not, %update.not
  br i1 %brmerge83, label %if.end49.cleanup_crit_edge, label %if.then55

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %mag_stby57 = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 3
  %frombool58 = zext i1 %tobool56 to i8
  %11 = ptrtoint ptr %mag_stby57 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool58, ptr %mag_stby57, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end49.cleanup_crit_edge, %do.end37, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call31, %do.end37 ], [ 0, %if.end49.cleanup_crit_edge ], [ 0, %if.then55 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb25
    i32 12, label %sw.bb31
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 3, label %sw.bb.sw.epilog_crit_edge
    i32 5, label %sw.bb2
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb.sw.epilog_crit_edge
  %base_reg.0 = phi i8 [ 18, %sw.bb2 ], [ 10, %sw.bb.sw.epilog_crit_edge ]
  %lock = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address, align 4
  %conv = trunc i32 %9 to i8
  %call3 = tail call fastcc i32 @kmx61_set_power_state(ptr noundef %3, i1 noundef zeroext true, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %10 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_index, align 4
  %conv5 = trunc i32 %11 to i8
  %mul.i = shl i8 %conv5, 1
  %add.i = add i8 %mul.i, %base_reg.0
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %13, i8 noundef zeroext %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %conv5.i = zext i8 %add.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %conv5.i) #11
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then8.if.end13.i_crit_edge, label %if.then.i

if.then8.if.end13.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %acc_ps11.i = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %acc_ps11.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %acc_ps11.i, align 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i, %if.then8.if.end13.i_crit_edge
  %and15.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end34.i_crit_edge, label %if.then17.i

if.end13.i.if.end34.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %mag_ps32.i = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %mag_ps32.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %mag_ps32.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end34.i_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %call.i92.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i92.i, ptr %last_busy.i.i, align 8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %dev41.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  %call.i93.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev41.i, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %cmp44.i = icmp slt i32 %call.i93.i, 0
  br i1 %cmp44.i, label %do.end.i85, label %if.end34.i.kmx61_set_power_state.exit_crit_edge

if.end34.i.kmx61_set_power_state.exit_crit_edge:  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_set_power_state.exit

do.end.i85:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %dev48.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %call.i93.i) #11
  br label %kmx61_set_power_state.exit

kmx61_set_power_state.exit:                       ; preds = %do.end.i85, %if.end34.i.kmx61_set_power_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %shift, align 1
  %conv14 = zext i8 %28 to i32
  %shr115 = lshr i32 %call.i, %conv14
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %realbits, align 1
  %31 = sub i8 32, %30
  %conv1.i = zext i8 %31 to i32
  %shl.i = shl i32 %shr115, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr.i, ptr %val, align 4
  %33 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %address, align 4
  %and.i87 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %if.end13.if.end13.i93_crit_edge, label %if.then.i89

if.end13.if.end13.i93_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i93

if.then.i89:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %acc_ps11.i90 = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %acc_ps11.i90 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %acc_ps11.i90, align 2
  br label %if.end13.i93

if.end13.i93:                                     ; preds = %if.then.i89, %if.end13.if.end13.i93_crit_edge
  %and15.i91 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i91)
  %tobool16.not.i92 = icmp eq i32 %and15.i91, 0
  br i1 %tobool16.not.i92, label %if.end13.i93.if.end34.i96_crit_edge, label %if.then17.i94

if.end13.i93.if.end34.i96_crit_edge:              ; preds = %if.end13.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i96

if.then17.i94:                                    ; preds = %if.end13.i93
  call void @__sanitizer_cov_trace_pc() #10
  %mag_ps32.i95 = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %mag_ps32.i95 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %mag_ps32.i95, align 1
  br label %if.end34.i96

if.end34.i96:                                     ; preds = %if.then17.i94, %if.end13.i93.if.end34.i96_crit_edge
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %call.i92.i97 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i98 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4, i32 12, i32 22
  %39 = ptrtoint ptr %last_busy.i.i98 to i32
  call void @__asan_store8_noabort(i32 %39)
  store volatile i64 %call.i92.i97, ptr %last_busy.i.i98, align 8
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %dev41.i99 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  %call.i93.i100 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev41.i99, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i100)
  %cmp44.i101 = icmp slt i32 %call.i93.i100, 0
  br i1 %cmp44.i101, label %kmx61_set_power_state.exit105, label %44

kmx61_set_power_state.exit105:                    ; preds = %if.end34.i96
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %dev48.i102 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i102, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %call.i93.i100) #11
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

44:                                               ; preds = %if.end34.i96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chan, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %46, label %sw.bb25.cleanup_crit_edge [
    i32 3, label %sw.bb27
    i32 5, label %sw.bb29
  ]

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb27:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %val, align 4
  %range = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 6
  %49 = ptrtoint ptr %range to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %range, align 4
  %idxprom = zext i8 %50 to i32
  %arrayidx = getelementptr [3 x i16], ptr @kmx61_uscale_table, i32 0, i32 %idxprom
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx, align 2
  %conv28 = zext i16 %52 to i32
  %53 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv28, ptr %val2, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %val, align 4
  %55 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1465, ptr %val2, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  %56 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chan, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %57, label %sw.bb31.cleanup_crit_edge [
    i32 3, label %sw.bb31.if.end39_crit_edge
    i32 5, label %sw.bb31.if.end39_crit_edge116
  ]

sw.bb31.if.end39_crit_edge116:                    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

sw.bb31.if.end39_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %sw.bb31.if.end39_crit_edge, %sw.bb31.if.end39_crit_edge116
  %lock40 = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock40, i32 noundef 0) #8
  %address41 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %59 = ptrtoint ptr %address41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %address41, align 4
  %and.i107 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i108 = icmp eq i32 %and.i107, 0
  br i1 %tobool.not.i108, label %if.else.i, label %if.end14.i

if.else.i:                                        ; preds = %if.end39
  %and5.i = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i.kmx61_get_odr.exit.thread_crit_edge, label %if.else.i._crit_edge

if.else.i._crit_edge:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %64

if.else.i.kmx61_get_odr.exit.thread_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_get_odr.exit.thread

if.end14.i:                                       ; preds = %if.end39
  %odr_bits.i = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 7
  %61 = ptrtoint ptr %odr_bits.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %odr_bits.i, align 1
  %63 = and i8 %62, 15
  %and2.i = zext i8 %63 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %63)
  %cmp.i109 = icmp ugt i8 %63, 11
  br i1 %cmp.i109, label %if.end14.i.kmx61_get_odr.exit.thread_crit_edge, label %if.end14.i._crit_edge

if.end14.i._crit_edge:                            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %64

if.end14.i.kmx61_get_odr.exit.thread_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_get_odr.exit.thread

kmx61_get_odr.exit.thread:                        ; preds = %if.end14.i.kmx61_get_odr.exit.thread_crit_edge, %if.else.i.kmx61_get_odr.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock40) #8
  br label %cleanup

64:                                               ; preds = %if.end14.i._crit_edge, %if.else.i._crit_edge
  %lodr_bits.029.i = phi i32 [ %and2.i, %if.end14.i._crit_edge ], [ 0, %if.else.i._crit_edge ]
  %arrayidx.i = getelementptr [12 x %struct.anon.87], ptr @kmx61_samp_freq_table, i32 0, i32 %lodr_bits.029.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %val, align 4
  %val222.i = getelementptr [12 x %struct.anon.87], ptr @kmx61_samp_freq_table, i32 0, i32 %lodr_bits.029.i, i32 1
  %68 = ptrtoint ptr %val222.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val222.i, align 4
  %70 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %val2, align 4
  tail call void @mutex_unlock(ptr noundef %lock40) #8
  br label %cleanup

cleanup:                                          ; preds = %64, %kmx61_get_odr.exit.thread, %sw.bb31.cleanup_crit_edge, %sw.bb29, %sw.bb27, %sw.bb25.cleanup_crit_edge, %44, %kmx61_set_power_state.exit105, %kmx61_set_power_state.exit, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb29 ], [ 2, %sw.bb27 ], [ %call3, %if.then ], [ %call.i, %kmx61_set_power_state.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ -22, %sw.bb31.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %44 ], [ %call.i93.i100, %kmx61_set_power_state.exit105 ], [ 2, %64 ], [ -22, %kmx61_get_odr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 3, label %sw.bb.if.end_crit_edge
    i32 5, label %sw.bb.if.end_crit_edge42
  ]

sw.bb.if.end_crit_edge42:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb.if.end_crit_edge, %sw.bb.if.end_crit_edge42
  %lock = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %kmx61_get_mode.exit.thread.i, label %if.end.i

kmx61_get_mode.exit.thread.i:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.27) #11
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end
  %14 = trunc i32 %call.i.i to i8
  %15 = and i8 %14, 3
  %16 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %val, label %if.end.i.cleanup.sink.split_crit_edge [
    i32 12, label %land.lhs.true.i.i
    i32 25, label %land.lhs.true.1.i.i
    i32 50, label %land.lhs.true.2.i.i
    i32 100, label %land.lhs.true.3.i.i
    i32 200, label %land.lhs.true.4.i.i
    i32 400, label %land.lhs.true.5.i.i
    i32 800, label %land.lhs.true.6.i.i
    i32 1600, label %land.lhs.true.7.i.i
    i32 0, label %land.lhs.true.8.i.i
    i32 1, label %land.lhs.true.9.i.i
    i32 3, label %land.lhs.true.10.i.i
    i32 6, label %land.lhs.true.11.i.i
  ]

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.i.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.if.end4.i_crit_edge, label %land.lhs.true.i.i.cleanup.sink.split_crit_edge

land.lhs.true.i.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.i.i.if.end4.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.1.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.1.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.1.i.i, label %land.lhs.true.1.i.i.if.end4.i_crit_edge, label %land.lhs.true.1.i.i.cleanup.sink.split_crit_edge

land.lhs.true.1.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.1.i.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.2.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.2.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.2.i.i, label %land.lhs.true.2.i.i.if.end4.i_crit_edge, label %land.lhs.true.2.i.i.cleanup.sink.split_crit_edge

land.lhs.true.2.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.2.i.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.3.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.3.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.3.i.i, label %land.lhs.true.3.i.i.if.end4.i_crit_edge, label %land.lhs.true.3.i.i.cleanup.sink.split_crit_edge

land.lhs.true.3.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.3.i.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.4.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.4.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.4.i.i, label %land.lhs.true.4.i.i.if.end4.i_crit_edge, label %land.lhs.true.4.i.i.cleanup.sink.split_crit_edge

land.lhs.true.4.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.4.i.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.5.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.5.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.5.i.i, label %land.lhs.true.5.i.i.if.end4.i_crit_edge, label %land.lhs.true.5.i.i.cleanup.sink.split_crit_edge

land.lhs.true.5.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.5.i.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.6.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.6.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.6.i.i, label %land.lhs.true.6.i.i.if.end4.i_crit_edge, label %land.lhs.true.6.i.i.cleanup.sink.split_crit_edge

land.lhs.true.6.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.6.i.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.7.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.7.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.7.i.i, label %land.lhs.true.7.i.i.if.end4.i_crit_edge, label %land.lhs.true.7.i.i.cleanup.sink.split_crit_edge

land.lhs.true.7.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.7.i.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.8.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 781000, i32 %val2)
  %cmp5.8.i.i = icmp eq i32 %val2, 781000
  br i1 %cmp5.8.i.i, label %land.lhs.true.8.i.i.if.end4.i_crit_edge, label %land.lhs.true.8.i.i.cleanup.sink.split_crit_edge

land.lhs.true.8.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.8.i.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.9.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 563000, i32 %val2)
  %cmp5.9.i.i = icmp eq i32 %val2, 563000
  br i1 %cmp5.9.i.i, label %land.lhs.true.9.i.i.if.end4.i_crit_edge, label %land.lhs.true.9.i.i.cleanup.sink.split_crit_edge

land.lhs.true.9.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.9.i.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.10.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %val2)
  %cmp5.10.i.i = icmp eq i32 %val2, 125000
  br i1 %cmp5.10.i.i, label %land.lhs.true.10.i.i.if.end4.i_crit_edge, label %land.lhs.true.10.i.i.cleanup.sink.split_crit_edge

land.lhs.true.10.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.10.i.i.if.end4.i_crit_edge:         ; preds = %land.lhs.true.10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

land.lhs.true.11.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.11.i.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.11.i.i, label %land.lhs.true.11.i.i.if.end4.i_crit_edge, label %land.lhs.true.11.i.i.cleanup.sink.split_crit_edge

land.lhs.true.11.i.i.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true.11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.11.i.i.if.end4.i_crit_edge:         ; preds = %land.lhs.true.11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %land.lhs.true.11.i.i.if.end4.i_crit_edge, %land.lhs.true.10.i.i.if.end4.i_crit_edge, %land.lhs.true.9.i.i.if.end4.i_crit_edge, %land.lhs.true.8.i.i.if.end4.i_crit_edge, %land.lhs.true.7.i.i.if.end4.i_crit_edge, %land.lhs.true.6.i.i.if.end4.i_crit_edge, %land.lhs.true.5.i.i.if.end4.i_crit_edge, %land.lhs.true.4.i.i.if.end4.i_crit_edge, %land.lhs.true.3.i.i.if.end4.i_crit_edge, %land.lhs.true.2.i.i.if.end4.i_crit_edge, %land.lhs.true.1.i.i.if.end4.i_crit_edge, %land.lhs.true.i.i.if.end4.i_crit_edge
  %retval.0.i61.ph.i = phi i32 [ 11, %land.lhs.true.11.i.i.if.end4.i_crit_edge ], [ 10, %land.lhs.true.10.i.i.if.end4.i_crit_edge ], [ 9, %land.lhs.true.9.i.i.if.end4.i_crit_edge ], [ 8, %land.lhs.true.8.i.i.if.end4.i_crit_edge ], [ 7, %land.lhs.true.7.i.i.if.end4.i_crit_edge ], [ 6, %land.lhs.true.6.i.i.if.end4.i_crit_edge ], [ 5, %land.lhs.true.5.i.i.if.end4.i_crit_edge ], [ 4, %land.lhs.true.4.i.i.if.end4.i_crit_edge ], [ 3, %land.lhs.true.3.i.i.if.end4.i_crit_edge ], [ 2, %land.lhs.true.2.i.i.if.end4.i_crit_edge ], [ 1, %land.lhs.true.1.i.i.if.end4.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.end4.i_crit_edge ]
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %call.i62.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %cmp.i63.i = icmp slt i32 %call.i62.i, 0
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  br i1 %cmp.i63.i, label %do.end.i65.i, label %if.end.i66.i

do.end.i65.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i64.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i64.i, ptr noundef nonnull @.str.27) #11
  br label %cleanup.sink.split

if.end.i66.i:                                     ; preds = %if.end4.i
  %21 = trunc i32 %call.i62.i to i8
  %conv30.i.i = or i8 %21, 3
  %call31.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %cmp32.i.i = icmp slt i32 %call31.i.i, 0
  br i1 %cmp32.i.i, label %do.end37.i.i, label %if.end8.i

do.end37.i.i:                                     ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dev39.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i.i, ptr noundef nonnull @.str.84) #11
  br label %cleanup.sink.split

if.end8.i:                                        ; preds = %if.end.i66.i
  %acc_stby47.i.i = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %acc_stby47.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %acc_stby47.i.i, align 4
  %mag_stby57.i.i = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %mag_stby57.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %mag_stby57.i.i, align 1
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %retval.0.i61.ph.i
  %and12.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %shl15.i = shl nuw nsw i32 %retval.0.i61.ph.i, 4
  %or16.i = select i1 %tobool13.not.i, i32 0, i32 %shl15.i
  %odr_bits.1.i = or i32 %or16.i, %spec.select.i
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %conv18.i = trunc i32 %odr_bits.1.i to i8
  %call19.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 44, i8 noundef zeroext %conv18.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end8.i.cleanup.sink.split_crit_edge, label %if.end23.i

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end23.i:                                       ; preds = %if.end8.i
  %odr_bits25.i = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %odr_bits25.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv18.i, ptr %odr_bits25.i, align 1
  br i1 %tobool.not.i, label %if.end23.i.if.end34.i_crit_edge, label %if.then29.i

if.end23.i.if.end34.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end23.i
  %call30.i = tail call fastcc i32 @kmx61_set_wake_up_odr(ptr noundef %3, i32 noundef %val, i32 noundef %val2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.if.end34.i_crit_edge, label %if.then29.i.cleanup.sink.split_crit_edge

if.then29.i.cleanup.sink.split_crit_edge:         ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then29.i.if.end34.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i.if.end34.i_crit_edge, %if.end23.i.if.end34.i_crit_edge
  %call35.i = tail call fastcc i32 @kmx61_set_mode(ptr noundef %3, i8 noundef zeroext %15, i8 noundef zeroext 3, i1 noundef zeroext true) #8
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  %29 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cond = icmp eq i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp8.not = icmp eq i32 %val, 0
  %or.cond = and i1 %cmp8.not, %cond
  br i1 %or.cond, label %if.end11, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %sw.bb5
  %lock12 = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock12, i32 noundef 0) #8
  %conv13 = trunc i32 %val2 to i16
  %31 = zext i16 %conv13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %conv13, label %if.end11.cleanup.sink.split_crit_edge [
    i16 9582, label %if.end11.if.then.i_crit_edge
    i16 19163, label %if.then.fold.split.i
    i16 -27210, label %if.then.fold.split55.i
  ]

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.fold.split.i:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split55.i:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split55.i, %if.then.fold.split.i, %if.end11.if.then.i_crit_edge
  %i.053.lcssa.i = phi i8 [ 0, %if.end11.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split55.i ]
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %call.i.i29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i.i30, label %kmx61_get_mode.exit.thread.i32, label %if.end.i33

kmx61_get_mode.exit.thread.i32:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %dev.i.i31 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i31, ptr noundef nonnull @.str.27) #11
  br label %cleanup.sink.split

if.end.i33:                                       ; preds = %if.then.i
  %36 = trunc i32 %call.i.i29 to i8
  %37 = and i8 %36, 3
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %call.i33.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %cmp.i34.i = icmp slt i32 %call.i33.i, 0
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  br i1 %cmp.i34.i, label %do.end.i36.i, label %if.end.i37.i

do.end.i36.i:                                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i35.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i35.i, ptr noundef nonnull @.str.27) #11
  br label %cleanup.sink.split

if.end.i37.i:                                     ; preds = %if.end.i33
  %42 = trunc i32 %call.i33.i to i8
  %conv30.i.i34 = or i8 %42, 3
  %call31.i.i35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i.i34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i35)
  %cmp32.i.i36 = icmp slt i32 %call31.i.i35, 0
  br i1 %cmp32.i.i36, label %do.end37.i.i38, label %if.end11.i

do.end37.i.i38:                                   ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %dev39.i.i37 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i.i37, ptr noundef nonnull @.str.84) #11
  br label %cleanup.sink.split

if.end11.i:                                       ; preds = %if.end.i37.i
  %acc_stby47.i.i39 = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %acc_stby47.i.i39 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %acc_stby47.i.i39, align 4
  %mag_stby57.i.i40 = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 3
  %46 = ptrtoint ptr %mag_stby57.i.i40 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %mag_stby57.i.i40, align 1
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %call.i39.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %48, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %cmp.i40.i = icmp slt i32 %call.i39.i, 0
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  br i1 %cmp.i40.i, label %do.end.i42.i, label %if.end.i43.i

do.end.i42.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i41.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i41.i, ptr noundef nonnull @.str.31) #11
  br label %cleanup.sink.split

if.end.i43.i:                                     ; preds = %if.end11.i
  %51 = trunc i32 %call.i39.i to i8
  %52 = and i8 %51, -4
  %conv4.i.i = or i8 %52, %i.053.lcssa.i
  %call5.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 42, i8 noundef zeroext %conv4.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %do.end11.i.i, label %if.end17.i

do.end11.i.i:                                     ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %dev13.i.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.34) #11
  br label %cleanup.sink.split

if.end17.i:                                       ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  %range15.i.i = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 6
  %55 = ptrtoint ptr %range15.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %i.053.lcssa.i, ptr %range15.i.i, align 4
  %call18.i = tail call fastcc i32 @kmx61_set_mode(ptr noundef %3, i8 noundef zeroext %37, i8 noundef zeroext 3, i1 noundef zeroext true) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17.i, %do.end11.i.i, %do.end.i42.i, %do.end37.i.i38, %do.end.i36.i, %kmx61_get_mode.exit.thread.i32, %if.end11.cleanup.sink.split_crit_edge, %if.end34.i, %if.then29.i.cleanup.sink.split_crit_edge, %if.end8.i.cleanup.sink.split_crit_edge, %do.end37.i.i, %do.end.i65.i, %land.lhs.true.11.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.10.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.9.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.8.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.7.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.6.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.5.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.4.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.3.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.2.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.1.i.i.cleanup.sink.split_crit_edge, %land.lhs.true.i.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %kmx61_get_mode.exit.thread.i
  %lock12.sink = phi ptr [ %lock, %kmx61_get_mode.exit.thread.i ], [ %lock, %if.end.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.1.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.2.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.3.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.4.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.5.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.6.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.7.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.8.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.9.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.10.i.i.cleanup.sink.split_crit_edge ], [ %lock, %land.lhs.true.11.i.i.cleanup.sink.split_crit_edge ], [ %lock, %do.end.i65.i ], [ %lock, %do.end37.i.i ], [ %lock, %if.end8.i.cleanup.sink.split_crit_edge ], [ %lock, %if.then29.i.cleanup.sink.split_crit_edge ], [ %lock, %if.end34.i ], [ %lock12, %if.end11.cleanup.sink.split_crit_edge ], [ %lock12, %kmx61_get_mode.exit.thread.i32 ], [ %lock12, %do.end.i36.i ], [ %lock12, %do.end37.i.i38 ], [ %lock12, %do.end.i42.i ], [ %lock12, %do.end11.i.i ], [ %lock12, %if.end17.i ]
  %retval.0.ph = phi i32 [ %call.i.i, %kmx61_get_mode.exit.thread.i ], [ -22, %if.end.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.1.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.2.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.3.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.4.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.5.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.6.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.7.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.8.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.9.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.10.i.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.11.i.i.cleanup.sink.split_crit_edge ], [ %call.i62.i, %do.end.i65.i ], [ %call31.i.i, %do.end37.i.i ], [ %call19.i, %if.end8.i.cleanup.sink.split_crit_edge ], [ %call30.i, %if.then29.i.cleanup.sink.split_crit_edge ], [ %call35.i, %if.end34.i ], [ -22, %if.end11.cleanup.sink.split_crit_edge ], [ %call.i.i29, %kmx61_get_mode.exit.thread.i32 ], [ %call.i33.i, %do.end.i36.i ], [ %call31.i.i35, %do.end37.i.i38 ], [ %call.i39.i, %do.end.i42.i ], [ %call5.i.i, %do.end11.i.i ], [ %call18.i, %if.end17.i ]
  tail call void @mutex_unlock(ptr noundef %lock12.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmx61_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ev_enable_state = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ev_enable_state, align 2, !range !207
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  br i1 %tobool, label %land.lhs.true, label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %ev_enable_state = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ev_enable_state, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.thread, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %lock36 = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock36, i32 noundef 0) #8
  br label %if.end7

land.lhs.true3:                                   ; preds = %entry
  %lock = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %motion_trig_on = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %motion_trig_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %motion_trig_on, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end7_crit_edge, label %if.then5

land.lhs.true3.if.end7_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %ev_enable_state6 = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %ev_enable_state6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ev_enable_state6, align 2
  br label %err_unlock

if.end7:                                          ; preds = %land.lhs.true3.if.end7_crit_edge, %if.end.thread
  %lock38 = phi ptr [ %lock36, %if.end.thread ], [ %lock, %land.lhs.true3.if.end7_crit_edge ]
  %call9 = tail call fastcc i32 @kmx61_set_power_state(ptr noundef %3, i1 noundef zeroext %tobool, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end7.err_unlock_crit_edge, label %if.end11

if.end7.err_unlock_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end11:                                         ; preds = %if.end7
  %call13 = tail call fastcc i32 @kmx61_setup_any_motion_interrupt(ptr noundef %3, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  %acc_ps11.i = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %acc_ps11.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %acc_ps11.i, align 2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i92.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i92.i, ptr %last_busy.i.i, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %dev41.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %call.i93.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev41.i, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %cmp44.i = icmp slt i32 %call.i93.i, 0
  br i1 %cmp44.i, label %do.end.i, label %if.then15.err_unlock_crit_edge

if.then15.err_unlock_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %dev48.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %call.i93.i) #11
  br label %err_unlock

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %ev_enable_state19 = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 15
  %frombool = zext i1 %tobool to i8
  %17 = ptrtoint ptr %ev_enable_state19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %ev_enable_state19, align 2
  br label %err_unlock

err_unlock:                                       ; preds = %if.end17, %do.end.i, %if.then15.err_unlock_crit_edge, %if.end7.err_unlock_crit_edge, %if.then5
  %lock37 = phi ptr [ %lock38, %if.end7.err_unlock_crit_edge ], [ %lock38, %if.end17 ], [ %lock, %if.then5 ], [ %lock38, %if.then15.err_unlock_crit_edge ], [ %lock38, %do.end.i ]
  %ret.0 = phi i32 [ %call9, %if.end7.err_unlock_crit_edge ], [ 0, %if.end17 ], [ 0, %if.then5 ], [ %call13, %if.then15.err_unlock_crit_edge ], [ %call13, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %lock37) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_unlock ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmx61_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val2, align 4
  %5 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wake_thresh = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 8
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wake_duration = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %sw.bb
  %.sink.in = phi ptr [ %wake_duration, %sw.bb1 ], [ %wake_thresh, %sw.bb ]
  %6 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %.sink = load i8, ptr %.sink.in, align 1
  %conv2 = zext i8 %.sink to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmx61_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ev_enable_state = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ev_enable_state, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %info, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %val to i8
  %wake_thresh = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %wake_thresh to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %wake_thresh, align 2
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv2 = trunc i32 %val to i8
  %wake_duration = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %wake_duration to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %wake_duration, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb1 ], [ 1, %sw.bb ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmx61_acc_validate_trigger(ptr nocapture noundef readonly %indio_dev, ptr noundef readnone %trig) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acc_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %acc_dready_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acc_dready_trig, align 4
  %cmp.not = icmp eq ptr %5, %trig
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %motion_trig = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %motion_trig, align 4
  %cmp1.not = icmp eq ptr %7, %trig
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmx61_set_power_state(ptr nocapture noundef %data, i1 noundef zeroext %on, i8 noundef zeroext %device) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %conv = zext i8 %device to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  br i1 %on, label %land.lhs.true, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then
  %acc_ps = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %acc_ps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %acc_ps, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true4:                                   ; preds = %land.lhs.true
  %mag_stby = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %mag_stby to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mag_stby, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true4.if.end9_crit_edge

land.lhs.true4.if.end9_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  %8 = trunc i32 %call.i to i8
  %conv30.i = and i8 %8, -2
  %call31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end37.i, label %kmx61_set_mode.exit

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %dev39.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i, ptr noundef nonnull @.str.84) #11
  br label %cleanup

kmx61_set_mode.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %acc_stby47.i = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %acc_stby47.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %acc_stby47.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %kmx61_set_mode.exit, %land.lhs.true4.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %acc_ps11 = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %acc_ps11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %acc_ps11, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %entry.if.end13_crit_edge
  %and15 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end34_crit_edge, label %if.then17

if.end13.if.end34_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then17:                                        ; preds = %if.end13
  br i1 %on, label %land.lhs.true20, label %if.then17.if.end30_crit_edge

if.then17.if.end30_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true20:                                  ; preds = %if.then17
  %mag_ps = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 5
  %13 = ptrtoint ptr %mag_ps to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mag_ps, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %land.lhs.true20.if.end30_crit_edge

land.lhs.true20.if.end30_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %acc_stby = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %acc_stby to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %acc_stby, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true22.if.end30_crit_edge

land.lhs.true22.if.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then24:                                        ; preds = %land.lhs.true22
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %call.i75 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp.i76 = icmp slt i32 %call.i75, 0
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  br i1 %cmp.i76, label %do.end.i78, label %if.end.i79

do.end.i78:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i77 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i77, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end.i79:                                       ; preds = %if.then24
  %21 = trunc i32 %call.i75 to i8
  %conv30.i81 = and i8 %21, -3
  %call31.i82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i82)
  %cmp32.i83 = icmp slt i32 %call31.i82, 0
  br i1 %cmp32.i83, label %do.end37.i85, label %kmx61_set_mode.exit88

do.end37.i85:                                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %dev39.i84 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i84, ptr noundef nonnull @.str.84) #11
  br label %cleanup

kmx61_set_mode.exit88:                            ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  %mag_stby57.i = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %mag_stby57.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %mag_stby57.i, align 1
  br label %if.end30

if.end30:                                         ; preds = %kmx61_set_mode.exit88, %land.lhs.true22.if.end30_crit_edge, %land.lhs.true20.if.end30_crit_edge, %if.then17.if.end30_crit_edge
  %mag_ps32 = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 5
  %25 = ptrtoint ptr %mag_ps32 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %mag_ps32, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.end13.if.end34_crit_edge
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  br i1 %on, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.end34
  %dev = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %call.i89 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i90 = icmp slt i32 %call.i89, 0
  br i1 %cmp.i90, label %if.then.i, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then36
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !209
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !210
  br label %do.end

if.end43:                                         ; preds = %if.end34
  %call.i92 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i92, ptr %last_busy.i, align 8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  %call.i93 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev41, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp44 = icmp slt i32 %call.i93, 0
  br i1 %cmp44, label %if.end43.do.end_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43.do.end_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end43.do.end_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %ret.0100 = phi i32 [ %call.i93, %if.end43.do.end_crit_edge ], [ %call.i89, %if.then.i.do.end_crit_edge ], [ %call.i89, %do.end11.i.i.i.i.i ]
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %dev48 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  %conv50 = zext i1 %on to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.23, i32 noundef %conv50, i32 noundef %ret.0100) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end43.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %do.end37.i85, %do.end.i78, %do.end37.i, %do.end.i
  %retval.0 = phi i32 [ %ret.0100, %do.end ], [ 0, %if.end43.cleanup_crit_edge ], [ %call31.i, %do.end37.i ], [ %call.i, %do.end.i ], [ %call31.i82, %do.end37.i85 ], [ %call.i75, %do.end.i78 ], [ 0, %if.then36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmx61_set_wake_up_odr(ptr nocapture noundef readonly %data, i32 noundef %val, i32 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %val, label %entry.cleanup_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.1.i
    i32 3, label %land.lhs.true.2.i
    i32 6, label %land.lhs.true.3.i
    i32 12, label %land.lhs.true.4.i
    i32 25, label %land.lhs.true.5.i
    i32 50, label %land.lhs.true.6.i
    i32 100, label %land.lhs.true.7.i
    i32 200, label %land.lhs.true.8.i
    i32 400, label %land.lhs.true.9.i
    i32 800, label %land.lhs.true.10.i
    i32 1600, label %land.lhs.true.11.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 781000, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 781000
  br i1 %cmp5.i, label %land.lhs.true.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.1.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 563000, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 563000
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.1.i.cleanup_crit_edge

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.2.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 125000
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.2.i.cleanup_crit_edge

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.2.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.3.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.3.i.cleanup_crit_edge

land.lhs.true.3.i.cleanup_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.3.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.4.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.4.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.4.i.cleanup_crit_edge

land.lhs.true.4.i.cleanup_crit_edge:              ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.4.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.5.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.5.i.cleanup_crit_edge

land.lhs.true.5.i.cleanup_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.5.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.6.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.6.i = icmp eq i32 %val2, 0
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.6.i.cleanup_crit_edge

land.lhs.true.6.i.cleanup_crit_edge:              ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.6.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.7.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.7.i = icmp eq i32 %val2, 0
  br i1 %cmp5.7.i, label %land.lhs.true.7.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.7.i.cleanup_crit_edge

land.lhs.true.7.i.cleanup_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.7.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.8.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.8.i = icmp eq i32 %val2, 0
  br i1 %cmp5.8.i, label %land.lhs.true.8.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.8.i.cleanup_crit_edge

land.lhs.true.8.i.cleanup_crit_edge:              ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.8.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.9.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.9.i = icmp eq i32 %val2, 0
  br i1 %cmp5.9.i, label %land.lhs.true.9.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.9.i.cleanup_crit_edge

land.lhs.true.9.i.cleanup_crit_edge:              ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.9.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.10.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.10.i = icmp eq i32 %val2, 0
  br i1 %cmp5.10.i, label %land.lhs.true.10.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.10.i.cleanup_crit_edge

land.lhs.true.10.i.cleanup_crit_edge:             ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.10.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

land.lhs.true.11.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.11.i = icmp eq i32 %val2, 0
  br i1 %cmp5.11.i, label %land.lhs.true.11.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, label %land.lhs.true.11.i.cleanup_crit_edge

land.lhs.true.11.i.cleanup_crit_edge:             ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.11.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge: ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_convert_wake_up_odr_to_bit.exit

kmx61_convert_wake_up_odr_to_bit.exit:            ; preds = %land.lhs.true.11.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.10.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.9.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.8.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.7.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.6.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.5.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.4.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.3.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.2.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.1.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge, %land.lhs.true.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge
  %i.012.lcssa.i = phi i32 [ 0, %land.lhs.true.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 1, %land.lhs.true.1.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 2, %land.lhs.true.2.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 3, %land.lhs.true.3.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 4, %land.lhs.true.4.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 5, %land.lhs.true.5.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 6, %land.lhs.true.6.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 7, %land.lhs.true.7.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 8, %land.lhs.true.8.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 9, %land.lhs.true.9.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 10, %land.lhs.true.10.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ], [ 11, %land.lhs.true.11.i.kmx61_convert_wake_up_odr_to_bit.exit_crit_edge ]
  %odr_bits.i = getelementptr [12 x %struct.anon.88], ptr @kmx61_wake_up_odr_table, i32 0, i32 %i.012.lcssa.i, i32 2
  %1 = ptrtoint ptr %odr_bits.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %odr_bits.i, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %conv = trunc i32 %2 to i8
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 43, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %kmx61_convert_wake_up_odr_to_bit.exit.cleanup_crit_edge

kmx61_convert_wake_up_odr_to_bit.exit.cleanup_crit_edge: ; preds = %kmx61_convert_wake_up_odr_to_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %kmx61_convert_wake_up_odr_to_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %kmx61_convert_wake_up_odr_to_bit.exit.cleanup_crit_edge, %land.lhs.true.11.i.cleanup_crit_edge, %land.lhs.true.10.i.cleanup_crit_edge, %land.lhs.true.9.i.cleanup_crit_edge, %land.lhs.true.8.i.cleanup_crit_edge, %land.lhs.true.7.i.cleanup_crit_edge, %land.lhs.true.6.i.cleanup_crit_edge, %land.lhs.true.5.i.cleanup_crit_edge, %land.lhs.true.4.i.cleanup_crit_edge, %land.lhs.true.3.i.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %land.lhs.true.1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call1, %kmx61_convert_wake_up_odr_to_bit.exit.cleanup_crit_edge ], [ -22, %land.lhs.true.11.i.cleanup_crit_edge ], [ -22, %land.lhs.true.10.i.cleanup_crit_edge ], [ -22, %land.lhs.true.9.i.cleanup_crit_edge ], [ -22, %land.lhs.true.8.i.cleanup_crit_edge ], [ -22, %land.lhs.true.7.i.cleanup_crit_edge ], [ -22, %land.lhs.true.6.i.cleanup_crit_edge ], [ -22, %land.lhs.true.5.i.cleanup_crit_edge ], [ -22, %land.lhs.true.4.i.cleanup_crit_edge ], [ -22, %land.lhs.true.3.i.cleanup_crit_edge ], [ -22, %land.lhs.true.2.i.cleanup_crit_edge ], [ -22, %land.lhs.true.1.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmx61_setup_any_motion_interrupt(ptr noundef %data, i1 noundef zeroext %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %kmx61_get_mode.exit.thread, label %if.end

kmx61_get_mode.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = trunc i32 %call.i to i8
  %5 = and i8 %4, 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call.i92 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp.i93 = icmp slt i32 %call.i92, 0
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  br i1 %cmp.i93, label %do.end.i95, label %if.end.i96

do.end.i95:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i94 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i94, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end.i96:                                       ; preds = %if.end
  %10 = trunc i32 %call.i92 to i8
  %conv30.i = or i8 %10, 3
  %call31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end37.i, label %if.end4

do.end37.i:                                       ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %dev39.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i, ptr noundef nonnull @.str.84) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end.i96
  %acc_stby47.i = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %acc_stby47.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %acc_stby47.i, align 4
  %mag_stby57.i = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %mag_stby57.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %mag_stby57.i, align 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %wake_duration.i = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 9
  %17 = ptrtoint ptr %wake_duration.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wake_duration.i, align 1
  %call.i98 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 62, i8 noundef zeroext %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp.i99 = icmp slt i32 %call.i98, 0
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  br i1 %cmp.i99, label %if.end4.kmx61_chip_update_thresholds.exit.thread_crit_edge, label %if.end.i100

if.end4.kmx61_chip_update_thresholds.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_chip_update_thresholds.exit.thread

if.end.i100:                                      ; preds = %if.end4
  %wake_thresh.i = getelementptr inbounds %struct.kmx61_data, ptr %data, i32 0, i32 8
  %21 = ptrtoint ptr %wake_thresh.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wake_thresh.i, align 2
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 61, i8 noundef zeroext %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  br i1 %cmp4.i, label %if.end.i100.kmx61_chip_update_thresholds.exit.thread_crit_edge, label %if.end8

if.end.i100.kmx61_chip_update_thresholds.exit.thread_crit_edge: ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_chip_update_thresholds.exit.thread

kmx61_chip_update_thresholds.exit.thread:         ; preds = %if.end.i100.kmx61_chip_update_thresholds.exit.thread_crit_edge, %if.end4.kmx61_chip_update_thresholds.exit.thread_crit_edge
  %.sink.i = phi ptr [ %20, %if.end4.kmx61_chip_update_thresholds.exit.thread_crit_edge ], [ %24, %if.end.i100.kmx61_chip_update_thresholds.exit.thread_crit_edge ]
  %.str.48.sink.i = phi ptr [ @.str.45, %if.end4.kmx61_chip_update_thresholds.exit.thread_crit_edge ], [ @.str.48, %if.end.i100.kmx61_chip_update_thresholds.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i98, %if.end4.kmx61_chip_update_thresholds.exit.thread_crit_edge ], [ %call3.i, %if.end.i100.kmx61_chip_update_thresholds.exit.thread_crit_edge ]
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %.sink.i, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull %.str.48.sink.i) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end.i100
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %and = and i32 %call9, 222
  %masksel = select i1 %status, i32 33, i32 0
  %ret.0 = or i32 %and, %masksel
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %conv = trunc i32 %ret.0 to i8
  %call17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 45, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  br i1 %cmp18, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end13
  %call28 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end37:                                         ; preds = %if.end26
  %and42 = and i32 %call28, 63
  %masksel109 = select i1 %status, i32 192, i32 0
  %ret.1 = or i32 %and42, %masksel109
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %conv45 = trunc i32 %ret.1 to i8
  %call46 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 42, i8 noundef zeroext %conv45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end52, label %if.end55

do.end52:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %dev54 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.34) #11
  br label %cleanup

if.end55:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %37 = or i8 %5, -128
  %call59 = tail call fastcc i32 @kmx61_set_mode(ptr noundef %data, i8 noundef zeroext %37, i8 noundef zeroext 3, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end52, %do.end34, %do.end23, %do.end, %kmx61_chip_update_thresholds.exit.thread, %do.end37.i, %do.end.i95, %kmx61_get_mode.exit.thread
  %retval.0 = phi i32 [ %call9, %do.end ], [ %call17, %do.end23 ], [ %call28, %do.end34 ], [ %call46, %do.end52 ], [ %call59, %if.end55 ], [ %call.i, %kmx61_get_mode.exit.thread ], [ %retval.0.ph.i, %kmx61_chip_update_thresholds.exit.thread ], [ %call31.i, %do.end37.i ], [ %call.i92, %do.end.i95 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmx61_mag_validate_trigger(ptr nocapture noundef readonly %indio_dev, ptr noundef readnone %trig) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mag_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %mag_dready_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mag_dready_trig, align 4
  %cmp.not = icmp eq ptr %5, %trig
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_data_rdy_trigger_set_state(ptr noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %state to i8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lock = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  br i1 %state, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ev_enable_state = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ev_enable_state, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %motion_trig_on = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %motion_trig_on to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %motion_trig_on, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %motion_trig_on to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %motion_trig_on, align 1
  br label %err_unlock

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %acc_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %acc_dready_trig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %acc_dready_trig, align 4
  %cmp = icmp eq ptr %12, %trig
  br i1 %cmp, label %if.end.if.end8_crit_edge, label %lor.lhs.false

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %motion_trig = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 12
  %13 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %motion_trig, align 4
  %cmp6 = icmp eq ptr %14, %trig
  %spec.select = select i1 %cmp6, i8 1, i8 2
  br label %if.end8

if.end8:                                          ; preds = %lor.lhs.false, %if.end.if.end8_crit_edge
  %device.0 = phi i8 [ 1, %if.end.if.end8_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %call10 = tail call fastcc i32 @kmx61_set_power_state(ptr noundef %5, i1 noundef zeroext %state, i8 noundef zeroext %device.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.err_unlock_crit_edge, label %if.end13

if.end8.err_unlock_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end13:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %acc_dready_trig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %acc_dready_trig, align 4
  %cmp15 = icmp eq ptr %16, %trig
  br i1 %cmp15, label %if.end13.if.then18_crit_edge, label %lor.lhs.false16

if.end13.if.then18_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

lor.lhs.false16:                                  ; preds = %if.end13
  %mag_dready_trig = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 17
  %17 = ptrtoint ptr %mag_dready_trig to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mag_dready_trig, align 4
  %cmp17 = icmp eq ptr %18, %trig
  br i1 %cmp17, label %lor.lhs.false16.if.then18_crit_edge, label %if.else21

lor.lhs.false16.if.then18_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false16.if.then18_crit_edge, %if.end13.if.then18_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then18.if.then26.sink.split.sink.split_crit_edge, label %if.end.i

if.then18.if.then26.sink.split.sink.split_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.sink.split.sink.split

if.end.i:                                         ; preds = %if.then18
  %21 = trunc i32 %call.i.i to i8
  %22 = and i8 %21, 3
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %call.i116.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %cmp.i117.i = icmp slt i32 %call.i116.i, 0
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  br i1 %cmp.i117.i, label %if.end.i.if.then26.sink.split_crit_edge, label %if.end.i120.i

if.end.i.if.then26.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.sink.split

if.end.i120.i:                                    ; preds = %if.end.i
  %27 = trunc i32 %call.i116.i to i8
  %conv30.i.i = or i8 %27, 3
  %call31.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %cmp32.i.i = icmp slt i32 %call31.i.i, 0
  br i1 %cmp32.i.i, label %if.end.i120.i.if.then26.sink.split.sink.split_crit_edge, label %if.end4.i

if.end.i120.i.if.then26.sink.split.sink.split_crit_edge: ; preds = %if.end.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.sink.split.sink.split

if.end4.i:                                        ; preds = %if.end.i120.i
  %acc_stby47.i.i = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %acc_stby47.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %acc_stby47.i.i, align 4
  %mag_stby57.i.i = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 3
  %29 = ptrtoint ptr %mag_stby57.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %mag_stby57.i.i, align 1
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.if.then26.sink.split.sink.split_crit_edge, label %if.end9.i

if.end4.i.if.then26.sink.split.sink.split_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.sink.split.sink.split

if.end9.i:                                        ; preds = %if.end4.i
  %conv.i = zext i8 %device.0 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %state, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select.v.i = select i1 %tobool11.not.i, i32 32, i32 36
  %and16.i = and i32 %conv.i, 2
  %spec.select.i = or i32 %spec.select.v.i, %and16.i
  %32 = or i32 %spec.select.i, %call5.i
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select113.v.i = select i1 %tobool11.not.i, i32 -33, i32 -37
  %spec.select113.i = and i32 %call5.i, %spec.select113.v.i
  %and29.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %and32.i = and i32 %spec.select113.i, -35
  %spec.select115.i = select i1 %tobool30.not.i, i32 %spec.select113.i, i32 %and32.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then10.i
  %ret.2.i = phi i32 [ %32, %if.then10.i ], [ %spec.select115.i, %if.else.i ]
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %conv36.i = trunc i32 %ret.2.i to i8
  %call37.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 45, i8 noundef zeroext %conv36.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  br i1 %cmp38.i, label %if.end34.i.if.then26.sink.split_crit_edge, label %if.end46.i

if.end34.i.if.then26.sink.split_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.sink.split

if.end46.i:                                       ; preds = %if.end34.i
  %call48.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %36, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.end46.i.if.then26.sink.split.sink.split_crit_edge, label %if.end57.i

if.end46.i.if.then26.sink.split.sink.split_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.sink.split.sink.split

if.end57.i:                                       ; preds = %if.end46.i
  %and62.i = and i32 %call48.i, 223
  %masksel.i = select i1 %state, i32 32, i32 0
  %ret.3.i = or i32 %and62.i, %masksel.i
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  %conv65.i = trunc i32 %ret.3.i to i8
  %call66.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 42, i8 noundef zeroext %conv65.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp slt i32 %call66.i, 0
  br i1 %cmp67.i, label %if.end57.i.if.then26.sink.split.sink.split_crit_edge, label %if.end75.i

if.end57.i.if.then26.sink.split.sink.split_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.sink.split.sink.split

if.end75.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  %call76.i = tail call fastcc i32 @kmx61_set_mode(ptr noundef %5, i8 noundef zeroext %22, i8 noundef zeroext 3, i1 noundef zeroext true) #8
  br label %if.end24

if.else21:                                        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call fastcc i32 @kmx61_setup_any_motion_interrupt(ptr noundef %5, i1 noundef zeroext %state)
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.end75.i
  %ret.0 = phi i32 [ %call23, %if.else21 ], [ %call76.i, %if.end75.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp25 = icmp slt i32 %ret.0, 0
  br i1 %cmp25, label %if.end24.if.then26_crit_edge, label %if.end28

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then26.sink.split.sink.split:                  ; preds = %if.end57.i.if.then26.sink.split.sink.split_crit_edge, %if.end46.i.if.then26.sink.split.sink.split_crit_edge, %if.end4.i.if.then26.sink.split.sink.split_crit_edge, %if.end.i120.i.if.then26.sink.split.sink.split_crit_edge, %if.then18.if.then26.sink.split.sink.split_crit_edge
  %.str.27.sink.ph = phi ptr [ @.str.27, %if.then18.if.then26.sink.split.sink.split_crit_edge ], [ @.str.84, %if.end.i120.i.if.then26.sink.split.sink.split_crit_edge ], [ @.str.31, %if.end4.i.if.then26.sink.split.sink.split_crit_edge ], [ @.str.31, %if.end46.i.if.then26.sink.split.sink.split_crit_edge ], [ @.str.34, %if.end57.i.if.then26.sink.split.sink.split_crit_edge ]
  %ret.088.ph.ph = phi i32 [ %call.i.i, %if.then18.if.then26.sink.split.sink.split_crit_edge ], [ %call31.i.i, %if.end.i120.i.if.then26.sink.split.sink.split_crit_edge ], [ %call5.i, %if.end4.i.if.then26.sink.split.sink.split_crit_edge ], [ %call48.i, %if.end46.i.if.then26.sink.split.sink.split_crit_edge ], [ %call66.i, %if.end57.i.if.then26.sink.split.sink.split_crit_edge ]
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  br label %if.then26.sink.split

if.then26.sink.split:                             ; preds = %if.then26.sink.split.sink.split, %if.end34.i.if.then26.sink.split_crit_edge, %if.end.i.if.then26.sink.split_crit_edge
  %.sink = phi ptr [ %26, %if.end.i.if.then26.sink.split_crit_edge ], [ %36, %if.end34.i.if.then26.sink.split_crit_edge ], [ %40, %if.then26.sink.split.sink.split ]
  %.str.27.sink = phi ptr [ @.str.27, %if.end.i.if.then26.sink.split_crit_edge ], [ @.str.75, %if.end34.i.if.then26.sink.split_crit_edge ], [ %.str.27.sink.ph, %if.then26.sink.split.sink.split ]
  %ret.088.ph = phi i32 [ %call.i116.i, %if.end.i.if.then26.sink.split_crit_edge ], [ %call37.i, %if.end34.i.if.then26.sink.split_crit_edge ], [ %ret.088.ph.ph, %if.then26.sink.split.sink.split ]
  %dev.i118.i = getelementptr inbounds %struct.i2c_client, ptr %.sink, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i118.i, ptr noundef nonnull %.str.27.sink) #11
  br label %if.then26

if.then26:                                        ; preds = %if.then26.sink.split, %if.end24.if.then26_crit_edge
  %ret.088 = phi i32 [ %ret.0, %if.end24.if.then26_crit_edge ], [ %ret.088.ph, %if.then26.sink.split ]
  %conv.i80 = zext i8 %device.0 to i32
  %and.i81 = and i32 %conv.i80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.not.i = icmp eq i32 %and.i81, 0
  br i1 %tobool.not.i, label %if.then26.if.end13.i_crit_edge, label %if.then.i

if.then26.if.end13.i_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %acc_ps11.i = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 4
  %41 = ptrtoint ptr %acc_ps11.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %acc_ps11.i, align 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i, %if.then26.if.end13.i_crit_edge
  %and15.i = and i32 %conv.i80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end34.i83_crit_edge, label %if.then17.i

if.end13.i.if.end34.i83_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i83

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %mag_ps32.i = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 5
  %42 = ptrtoint ptr %mag_ps32.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %mag_ps32.i, align 1
  br label %if.end34.i83

if.end34.i83:                                     ; preds = %if.then17.i, %if.end13.i.if.end34.i83_crit_edge
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 4
  %call.i92.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4, i32 12, i32 22
  %45 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store volatile i64 %call.i92.i, ptr %last_busy.i.i, align 8
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %5, align 4
  %dev41.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %call.i93.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev41.i, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %cmp44.i = icmp slt i32 %call.i93.i, 0
  br i1 %cmp44.i, label %do.end.i84, label %if.end34.i83.err_unlock_crit_edge

if.end34.i83.err_unlock_crit_edge:                ; preds = %if.end34.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

do.end.i84:                                       ; preds = %if.end34.i83
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 4
  %dev48.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %call.i93.i) #11
  br label %err_unlock

if.end28:                                         ; preds = %if.end24
  %50 = ptrtoint ptr %acc_dready_trig to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %acc_dready_trig, align 4
  %cmp30 = icmp eq ptr %51, %trig
  br i1 %cmp30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %acc_dready_trig_on = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 13
  %52 = ptrtoint ptr %acc_dready_trig_on to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool, ptr %acc_dready_trig_on, align 4
  br label %err_unlock

if.else34:                                        ; preds = %if.end28
  %mag_dready_trig35 = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 17
  %53 = ptrtoint ptr %mag_dready_trig35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mag_dready_trig35, align 4
  %cmp36 = icmp eq ptr %54, %trig
  br i1 %cmp36, label %if.then37, label %if.else40

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %mag_dready_trig_on = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 18
  %55 = ptrtoint ptr %mag_dready_trig_on to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool, ptr %mag_dready_trig_on, align 4
  br label %err_unlock

if.else40:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %motion_trig_on42 = getelementptr inbounds %struct.kmx61_data, ptr %5, i32 0, i32 14
  %56 = ptrtoint ptr %motion_trig_on42 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool, ptr %motion_trig_on42, align 1
  br label %err_unlock

err_unlock:                                       ; preds = %if.else40, %if.then37, %if.then31, %do.end.i84, %if.end34.i83.err_unlock_crit_edge, %if.end8.err_unlock_crit_edge, %if.then
  %ret.1 = phi i32 [ %call10, %if.end8.err_unlock_crit_edge ], [ %ret.0, %if.then31 ], [ %ret.0, %if.then37 ], [ %ret.0, %if.else40 ], [ 0, %if.then ], [ %ret.088, %if.end34.i83.err_unlock_crit_edge ], [ %ret.088, %do.end.i84 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmx61_trig_reenable(ptr nocapture noundef readonly %trig) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %cmp.i, label %entry.kmx61_set_mode.exit.sink.split_crit_edge, label %if.end.i

entry.kmx61_set_mode.exit.sink.split_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_set_mode.exit.sink.split

if.end.i:                                         ; preds = %entry
  %6 = trunc i32 %call.i to i8
  %conv30.i = or i8 %6, 3
  %call31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end37.i, label %if.end.i.kmx61_set_mode.exit_crit_edge

if.end.i.kmx61_set_mode.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmx61_set_mode.exit

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  br label %kmx61_set_mode.exit.sink.split

kmx61_set_mode.exit.sink.split:                   ; preds = %do.end37.i, %entry.kmx61_set_mode.exit.sink.split_crit_edge
  %.sink = phi ptr [ %8, %do.end37.i ], [ %5, %entry.kmx61_set_mode.exit.sink.split_crit_edge ]
  %.str.27.sink = phi ptr [ @.str.84, %do.end37.i ], [ @.str.27, %entry.kmx61_set_mode.exit.sink.split_crit_edge ]
  %retval.0.i.ph = phi i32 [ %call31.i, %do.end37.i ], [ %call.i, %entry.kmx61_set_mode.exit.sink.split_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %.sink, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.27.sink) #11
  br label %kmx61_set_mode.exit

kmx61_set_mode.exit:                              ; preds = %kmx61_set_mode.exit.sink.split, %if.end.i.kmx61_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i.kmx61_set_mode.exit_crit_edge ], [ %retval.0.i.ph, %kmx61_set_mode.exit.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %acc_stby = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %acc_stby to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %acc_stby, align 4, !range !207
  %mag_stby = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mag_stby to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mag_stby, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %6 = or i8 %3, 2
  %stby.1 = select i1 %tobool2.not, i8 %3, i8 %6
  %call8 = tail call fastcc i32 @kmx61_set_mode(ptr noundef %1, i8 noundef zeroext %stby.1, i8 noundef zeroext 3, i1 noundef zeroext true)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27) #11
  br label %kmx61_set_mode.exit

if.end.i:                                         ; preds = %entry
  %6 = trunc i32 %call.i to i8
  %conv30.i = or i8 %6, 3
  %call31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 41, i8 noundef zeroext %conv30.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end37.i, label %if.end40.i

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev39.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i, ptr noundef nonnull @.str.84) #11
  br label %kmx61_set_mode.exit

if.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %acc_stby47.i = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %acc_stby47.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %acc_stby47.i, align 4
  %mag_stby57.i = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %mag_stby57.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mag_stby57.i, align 1
  br label %kmx61_set_mode.exit

kmx61_set_mode.exit:                              ; preds = %if.end40.i, %do.end37.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call31.i, %do.end37.i ], [ 0, %if.end40.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmx61_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %acc_ps = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %acc_ps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %acc_ps, align 2, !range !207
  %4 = xor i8 %3, 1
  %mag_ps = getelementptr inbounds %struct.kmx61_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mag_ps to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mag_ps, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  %7 = or i8 %4, 2
  %stby.1 = select i1 %tobool2.not, i8 %7, i8 %4
  %call8 = tail call fastcc i32 @kmx61_set_mode(ptr noundef %1, i8 noundef zeroext %stby.1, i8 noundef zeroext 3, i1 noundef zeroext true)
  ret i32 %call8
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !120, !122, !124, !126, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__initcall__kmod_kmx61__289_1531_kmx61_driver_init6, !1, !"__initcall__kmod_kmx61__289_1531_kmx61_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/kmx61.c", i32 1531, i32 1}
!2 = !{ptr @__exitcall_kmx61_driver_exit, !1, !"__exitcall_kmx61_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/imu/kmx61.c", i32 1533, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/imu/kmx61.c", i32 1534, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/imu/kmx61.c", i32 1535, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/kmx61.c", i32 1522, i32 11}
!12 = !{ptr @kmx61_driver, !13, !"kmx61_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/kmx61.c", i32 1520, i32 26}
!14 = !{ptr @kmx61_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/imu/kmx61.c", i32 1293, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/imu/kmx61.c", i32 1327, i32 7}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/imu/kmx61.c", i32 1334, i32 10}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/imu/kmx61.c", i32 1350, i32 10}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/imu/kmx61.c", i32 1361, i32 4}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @kmx61_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @kmx61_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/imu/kmx61.c", i32 1371, i32 4}
!33 = !{ptr @kmx61_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @kmx61_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/imu/kmx61.c", i32 1387, i32 3}
!37 = !{ptr @kmx61_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @kmx61_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/imu/kmx61.c", i32 1393, i32 3}
!41 = !{ptr @kmx61_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @kmx61_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @kmx61_acc_info, !44, !"kmx61_acc_info", i1 false, i1 false}
!44 = !{!"../drivers/iio/imu/kmx61.c", i32 999, i32 30}
!45 = !{ptr @kmx61_acc_attribute_group, !46, !"kmx61_acc_attribute_group", i1 false, i1 false}
!46 = !{!"../drivers/iio/imu/kmx61.c", i32 213, i32 37}
!47 = !{ptr @kmx61_acc_attributes, !48, !"kmx61_acc_attributes", i1 false, i1 false}
!48 = !{!"../drivers/iio/imu/kmx61.c", i32 201, i32 26}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/imu/kmx61.c", i32 196, i32 8}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @iio_const_attr_accel_scale_available, !50, !"iio_const_attr_accel_scale_available", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/imu/kmx61.c", i32 198, i32 8}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @iio_const_attr_sampling_frequency_available, !54, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/imu/kmx61.c", i32 759, i32 3}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @kmx61_set_power_state._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @kmx61_set_power_state._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/imu/kmx61.c", i32 776, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @kmx61_read_measurement._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @kmx61_read_measurement._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @kmx61_uscale_table, !68, !"kmx61_uscale_table", i1 false, i1 false}
!68 = !{!"../drivers/iio/imu/kmx61.c", i32 161, i32 18}
!69 = !{ptr @kmx61_samp_freq_table, !70, !"kmx61_samp_freq_table", i1 false, i1 false}
!70 = !{!"../drivers/iio/imu/kmx61.c", i32 166, i32 3}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/imu/kmx61.c", i32 379, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @kmx61_get_mode._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @kmx61_get_mode._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/imu/kmx61.c", i32 412, i32 3}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @kmx61_set_wake_up_odr._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @kmx61_set_wake_up_odr._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @kmx61_wake_up_odr_table, !82, !"kmx61_wake_up_odr_table", i1 false, i1 false}
!82 = !{!"../drivers/iio/imu/kmx61.c", i32 183, i32 3}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/imu/kmx61.c", i32 487, i32 3}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @kmx61_set_range._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @kmx61_set_range._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/imu/kmx61.c", i32 496, i32 3}
!90 = !{ptr @kmx61_set_range._entry.33, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @kmx61_set_range._entry_ptr.35, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/imu/kmx61.c", i32 685, i32 3}
!94 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @kmx61_setup_any_motion_interrupt._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @kmx61_setup_any_motion_interrupt._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/imu/kmx61.c", i32 695, i32 3}
!99 = !{ptr @kmx61_setup_any_motion_interrupt._entry.38, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @kmx61_setup_any_motion_interrupt._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @kmx61_setup_any_motion_interrupt._entry.41, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/iio/imu/kmx61.c", i32 701, i32 3}
!103 = !{ptr @kmx61_setup_any_motion_interrupt._entry_ptr.42, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @kmx61_setup_any_motion_interrupt._entry.43, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/iio/imu/kmx61.c", i32 712, i32 3}
!106 = !{ptr @kmx61_setup_any_motion_interrupt._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/imu/kmx61.c", i32 652, i32 3}
!109 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @kmx61_chip_update_thresholds._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @kmx61_chip_update_thresholds._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/imu/kmx61.c", i32 660, i32 3}
!114 = !{ptr @kmx61_chip_update_thresholds._entry.47, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @kmx61_chip_update_thresholds._entry_ptr.49, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @kmx61_acc_channels, !117, !"kmx61_acc_channels", i1 false, i1 false}
!117 = !{!"../drivers/iio/imu/kmx61.c", i32 267, i32 35}
!118 = !{ptr @kmx61_event, !119, !"kmx61_event", i1 false, i1 false}
!119 = !{!"../drivers/iio/imu/kmx61.c", i32 221, i32 36}
!120 = !{ptr @kmx61_mag_info, !121, !"kmx61_mag_info", i1 false, i1 false}
!121 = !{!"../drivers/iio/imu/kmx61.c", i32 1010, i32 30}
!122 = !{ptr @kmx61_mag_attribute_group, !123, !"kmx61_mag_attribute_group", i1 false, i1 false}
!123 = !{!"../drivers/iio/imu/kmx61.c", i32 217, i32 37}
!124 = !{ptr @kmx61_mag_attributes, !125, !"kmx61_mag_attributes", i1 false, i1 false}
!125 = !{!"../drivers/iio/imu/kmx61.c", i32 207, i32 26}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/imu/kmx61.c", i32 197, i32 8}
!128 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @iio_const_attr_magn_scale_available, !127, !"iio_const_attr_magn_scale_available", i1 false, i1 false}
!130 = !{ptr @kmx61_mag_channels, !131, !"kmx61_mag_channels", i1 false, i1 false}
!131 = !{!"../drivers/iio/imu/kmx61.c", i32 273, i32 35}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/imu/kmx61.c", i32 539, i32 3}
!134 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @kmx61_chip_init._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @kmx61_chip_init._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/imu/kmx61.c", i32 544, i32 3}
!139 = !{ptr @kmx61_chip_init._entry.54, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @kmx61_chip_init._entry_ptr.56, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/imu/kmx61.c", i32 557, i32 3}
!143 = !{ptr @kmx61_chip_init._entry.57, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @kmx61_chip_init._entry_ptr.59, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/imu/kmx61.c", i32 1088, i32 3}
!147 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @kmx61_event_handler._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @kmx61_event_handler._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/imu/kmx61.c", i32 1095, i32 4}
!152 = !{ptr @kmx61_event_handler._entry.62, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @kmx61_event_handler._entry_ptr.64, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @kmx61_event_handler._entry.65, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/iio/imu/kmx61.c", i32 1157, i32 3}
!156 = !{ptr @kmx61_event_handler._entry_ptr.66, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @kmx61_event_handler._entry.67, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/iio/imu/kmx61.c", i32 1162, i32 3}
!159 = !{ptr @kmx61_event_handler._entry_ptr.68, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/iio/imu/kmx61.c", i32 1166, i32 3}
!162 = !{ptr @kmx61_event_handler._entry.69, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @kmx61_event_handler._entry_ptr.71, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/iio/imu/kmx61.c", i32 1262, i32 11}
!166 = !{ptr @kmx61_trigger_ops, !167, !"kmx61_trigger_ops", i1 false, i1 false}
!167 = !{!"../drivers/iio/imu/kmx61.c", i32 1075, i32 37}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/iio/imu/kmx61.c", i32 601, i32 3}
!170 = !{ptr @kmx61_setup_new_data_interrupt._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @kmx61_setup_new_data_interrupt._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/iio/imu/kmx61.c", i32 620, i32 3}
!174 = !{ptr @kmx61_setup_new_data_interrupt._entry.74, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @kmx61_setup_new_data_interrupt._entry_ptr.76, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @kmx61_setup_new_data_interrupt._entry.77, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/iio/imu/kmx61.c", i32 626, i32 3}
!178 = !{ptr @kmx61_setup_new_data_interrupt._entry_ptr.78, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @kmx61_setup_new_data_interrupt._entry.79, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/iio/imu/kmx61.c", i32 637, i32 3}
!181 = !{ptr @kmx61_setup_new_data_interrupt._entry_ptr.80, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/iio/imu/kmx61.c", i32 1072, i32 3}
!184 = !{ptr @kmx61_trig_reenable._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @kmx61_trig_reenable._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/imu/kmx61.c", i32 333, i32 3}
!188 = !{ptr @kmx61_set_mode._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @kmx61_set_mode._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/iio/imu/kmx61.c", i32 361, i32 3}
!192 = !{ptr @kmx61_set_mode._entry.83, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @kmx61_set_mode._entry_ptr.85, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @kmx61_pm_ops, !195, !"kmx61_pm_ops", i1 false, i1 false}
!195 = !{!"../drivers/iio/imu/kmx61.c", i32 1501, i32 32}
!196 = !{ptr @kmx61_id, !197, !"kmx61_id", i1 false, i1 false}
!197 = !{!"../drivers/iio/imu/kmx61.c", i32 1513, i32 35}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i8 0, i8 2}
!208 = !{i64 2148374351}
!209 = !{i64 859971, i64 859996, i64 860018, i64 860034, i64 860046, i64 860066, i64 860090, i64 860106, i64 860118}
!210 = !{i64 2148374539}
