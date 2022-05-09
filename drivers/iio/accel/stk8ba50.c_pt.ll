; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/stk8ba50.c_pt.bc'
source_filename = "../drivers/iio/accel/stk8ba50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.88 = type { i8, i32 }
%struct.anon.89 = type { i8, i16 }
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
%struct.stk8ba50_data = type { ptr, %struct.mutex, i32, i8, ptr, i8, %struct.anon.87 }
%struct.anon.87 = type { [3 x i16], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_stk8ba50__288_557_stk8ba50_driver_init6 = internal global ptr @stk8ba50_driver_init, section ".initcall6.init", align 4
@stk8ba50_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @stk8ba50_probe, ptr @stk8ba50_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk8ba50_pm_ops, ptr null, ptr null }, ptr @stk8ba50_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stk8ba50_driver_exit = internal global ptr @stk8ba50_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [60 x i8] c"stk8ba50.author=Tiberiu Breana <tiberiu.a.breana@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [58 x i8] c"stk8ba50.description=STK8BA50 3-Axis Accelerometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"stk8ba50.file=drivers/iio/accel/stk8ba50\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"stk8ba50.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stk8ba50\00", [23 x i8] zeroinitializer }, align 32
@stk8ba50_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stk8ba50_suspend, ptr @stk8ba50_resume, ptr @stk8ba50_suspend, ptr @stk8ba50_resume, ptr @stk8ba50_suspend, ptr @stk8ba50_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stk8ba50_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"stk8ba50\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iio allocation failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stk8ba50_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/accel/stk8ba50.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry_ptr = internal global ptr @stk8ba50_probe._entry, section ".printk_index", align 4
@stk8ba50_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@stk8ba50_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @stk8ba50_attribute_group, ptr @stk8ba50_read_raw, ptr null, ptr null, ptr @stk8ba50_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@stk8ba50_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 2, i32 0, %struct.anon.86 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 4096, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 4, i32 1, %struct.anon.86 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 4096, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 6, i32 2, %struct.anon.86 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 4096, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset sensor\0A\00", [40 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry_ptr.9 = internal global ptr @stk8ba50_probe._entry.7, section ".printk_index", align 4
@stk8ba50_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set up interrupts\0A\00", [35 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry_ptr.12 = internal global ptr @stk8ba50_probe._entry.10, section ".printk_index", align 4
@stk8ba50_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry_ptr.14 = internal global ptr @stk8ba50_probe._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stk8ba50_event\00", [17 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request irq %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry_ptr.18 = internal global ptr @stk8ba50_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@stk8ba50_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @stk8ba50_data_rdy_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iio trigger register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry_ptr.22 = internal global ptr @stk8ba50_probe._entry.20, section ".printk_index", align 4
@stk8ba50_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @stk8ba50_buffer_preenable, ptr null, ptr null, ptr @stk8ba50_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry_ptr.25 = internal global ptr @stk8ba50_probe._entry.23, section ".printk_index", align 4
@stk8ba50_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device_register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@stk8ba50_probe._entry_ptr.28 = internal global ptr @stk8ba50_probe._entry.26, section ".printk_index", align 4
@stk8ba50_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @stk8ba50_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@stk8ba50_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_accel_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.29, %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.31, %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0.0384 0.0767 0.1534 0.3069\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"14 25 56 112 224 448 896 1792\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@stk8ba50_scale_table = internal constant { [4 x %struct.anon.88], [32 x i8] } { [4 x %struct.anon.88] [%struct.anon.88 { i8 3, i32 38400 }, %struct.anon.88 { i8 5, i32 76700 }, %struct.anon.88 { i8 8, i32 153400 }, %struct.anon.88 { i8 12, i32 306900 }], [32 x i8] zeroinitializer }, align 32
@stk8ba50_samp_freq_table = internal constant { [8 x %struct.anon.89], [32 x i8] } { [8 x %struct.anon.89] [%struct.anon.89 { i8 8, i16 14 }, %struct.anon.89 { i8 9, i16 25 }, %struct.anon.89 { i8 10, i16 56 }, %struct.anon.89 { i8 11, i16 112 }, %struct.anon.89 { i8 12, i16 224 }, %struct.anon.89 { i8 13, i16 448 }, %struct.anon.89 { i8 14, i16 896 }, %struct.anon.89 { i8 15, i16 1792 }], [32 x i8] zeroinitializer }, align 32
@stk8ba50_read_accel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register read failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stk8ba50_read_accel\00", [44 x i8] zeroinitializer }, align 32
@stk8ba50_read_accel._entry_ptr = internal global ptr @stk8ba50_read_accel._entry, section ".printk_index", align 4
@stk8ba50_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set measurement range\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stk8ba50_write_raw\00", [45 x i8] zeroinitializer }, align 32
@stk8ba50_write_raw._entry_ptr = internal global ptr @stk8ba50_write_raw._entry, section ".printk_index", align 4
@stk8ba50_write_raw._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set sampling rate\0A\00", [35 x i8] zeroinitializer }, align 32
@stk8ba50_write_raw._entry_ptr.39 = internal global ptr @stk8ba50_write_raw._entry.37, section ".printk_index", align 4
@stk8ba50_data_rdy_trigger_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set trigger state\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"stk8ba50_data_rdy_trigger_set_state\00", [60 x i8] zeroinitializer }, align 32
@stk8ba50_data_rdy_trigger_set_state._entry_ptr = internal global ptr @stk8ba50_data_rdy_trigger_set_state._entry, section ".printk_index", align 4
@stk8ba50_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.42, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stk8ba50_trigger_handler\00", [39 x i8] zeroinitializer }, align 32
@stk8ba50_trigger_handler._entry_ptr = internal global ptr @stk8ba50_trigger_handler._entry, section ".printk_index", align 4
@stk8ba50_channel_table = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 6], [20 x i8] zeroinitializer }, align 32
@stk8ba50_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to change sensor mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stk8ba50_set_power\00", [45 x i8] zeroinitializer }, align 32
@stk8ba50_set_power._entry_ptr = internal global ptr @stk8ba50_set_power._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.46 = internal global [10 x i64] [i64 8, i64 32, i64 14, i64 25, i64 56, i64 112, i64 224, i64 448, i64 896, i64 1792]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 38400, i64 76700, i64 153400, i64 306900]
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"stk8ba50_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 546, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 548, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"stk8ba50_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 526, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"stk8ba50_i2c_id\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 533, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 391, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 398, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"stk8ba50_info\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 305, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"stk8ba50_channels\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 119, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 410, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 424, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 430, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 440, i32 7 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 443, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 449, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"stk8ba50_trigger_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 176, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 461, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"stk8ba50_buffer_setup_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 377, i32 42 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 471, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 477, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"stk8ba50_attribute_group\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 136, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"stk8ba50_attributes\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 130, i32 26 }
@___asan_gen_.147 = private unnamed_addr constant [40 x i8] c"iio_const_attr_in_accel_scale_available\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 126, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 128, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant [21 x i8] c"stk8ba50_scale_table\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 67, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [25 x i8] c"stk8ba50_samp_freq_table\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 75, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 147, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 275, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 294, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 169, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 329, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant [23 x i8] c"stk8ba50_channel_table\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 81, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private constant [32 x i8] c"../drivers/iio/accel/stk8ba50.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 203, i32 2 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_stk8ba50_driver_exit, ptr @__initcall__kmod_stk8ba50__288_557_stk8ba50_driver_init6, ptr @stk8ba50_data_rdy_trigger_set_state._entry, ptr @stk8ba50_data_rdy_trigger_set_state._entry_ptr, ptr @stk8ba50_driver_exit, ptr @stk8ba50_probe._entry, ptr @stk8ba50_probe._entry.10, ptr @stk8ba50_probe._entry.13, ptr @stk8ba50_probe._entry.16, ptr @stk8ba50_probe._entry.20, ptr @stk8ba50_probe._entry.23, ptr @stk8ba50_probe._entry.26, ptr @stk8ba50_probe._entry.7, ptr @stk8ba50_probe._entry_ptr, ptr @stk8ba50_probe._entry_ptr.12, ptr @stk8ba50_probe._entry_ptr.14, ptr @stk8ba50_probe._entry_ptr.18, ptr @stk8ba50_probe._entry_ptr.22, ptr @stk8ba50_probe._entry_ptr.25, ptr @stk8ba50_probe._entry_ptr.28, ptr @stk8ba50_probe._entry_ptr.9, ptr @stk8ba50_read_accel._entry, ptr @stk8ba50_read_accel._entry_ptr, ptr @stk8ba50_set_power._entry, ptr @stk8ba50_set_power._entry_ptr, ptr @stk8ba50_trigger_handler._entry, ptr @stk8ba50_trigger_handler._entry_ptr, ptr @stk8ba50_write_raw._entry, ptr @stk8ba50_write_raw._entry.37, ptr @stk8ba50_write_raw._entry_ptr, ptr @stk8ba50_write_raw._entry_ptr.39, ptr @stk8ba50_driver, ptr @.str, ptr @stk8ba50_pm_ops, ptr @stk8ba50_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stk8ba50_probe.__key, ptr @.str.6, ptr @stk8ba50_info, ptr @stk8ba50_channels, ptr @.str.8, ptr @.str.11, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @stk8ba50_trigger_ops, ptr @.str.21, ptr @stk8ba50_buffer_setup_ops, ptr @.str.24, ptr @.str.27, ptr @stk8ba50_attribute_group, ptr @stk8ba50_attributes, ptr @iio_const_attr_in_accel_scale_available, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @stk8ba50_scale_table, ptr @stk8ba50_samp_freq_table, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @stk8ba50_channel_table, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_scale_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_samp_freq_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_read_accel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_write_raw._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_data_rdy_trigger_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_channel_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8ba50_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stk8ba50_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stk8ba50_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @stk8ba50_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 128) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
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
  %lock = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @stk8ba50_probe.__key) #4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @stk8ba50_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name, align 8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @stk8ba50_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %num_channels, align 4
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 20, i8 noundef zeroext -74) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  br label %err_power_off

if.end13:                                         ; preds = %if.end
  %range = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %range, align 8
  %sample_rate_idx = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sample_rate_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %sample_rate_idx, align 4
  %call14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 23, i8 noundef zeroext 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %err_power_off

if.end21:                                         ; preds = %if.end13
  %call22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 26, i8 noundef zeroext -127) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %err_power_off

if.end29:                                         ; preds = %if.end21
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp30 = icmp sgt i32 %12, 0
  br i1 %cmp30, label %if.then31, label %if.end29.if.end62_crit_edge

if.end29.if.end62_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then31:                                        ; preds = %if.end29
  %call34 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @stk8ba50_data_rdy_trig_poll, ptr noundef null, i32 noundef 8193, ptr noundef nonnull @.str.15, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %14) #7
  br label %err_power_off

if.end42:                                         ; preds = %if.then31
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 8
  %call45 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #4
  %call46 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %16, i32 noundef %call45) #4
  %dready_trig = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %dready_trig to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call46, ptr %dready_trig, align 8
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %if.end42.err_power_off_crit_edge, label %if.end50

if.end42.err_power_off_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_power_off

if.end50:                                         ; preds = %if.end42
  %18 = ptrtoint ptr %call46 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @stk8ba50_trigger_ops, ptr %call46, align 8
  %19 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dready_trig, align 8
  %driver_data.i.i139 = getelementptr inbounds %struct.iio_trigger, ptr %20, i32 0, i32 4, i32 8
  %21 = ptrtoint ptr %driver_data.i.i139 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %driver_data.i.i139, align 4
  %22 = load ptr, ptr %dready_trig, align 8
  %call54 = tail call i32 @__iio_trigger_register(ptr noundef %22, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end50.if.end62_crit_edge, label %do.end59

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

do.end59:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  br label %err_power_off

if.end62:                                         ; preds = %if.end50.if.end62_crit_edge, %if.end29.if.end62_crit_edge
  %call63 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @stk8ba50_trigger_handler, i32 noundef 0, ptr noundef nonnull @stk8ba50_buffer_setup_ops, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end68, label %if.end70

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #7
  br label %err_trigger_unregister

if.end70:                                         ; preds = %if.end62
  %call71 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end76, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #7
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #4
  br label %err_trigger_unregister

err_trigger_unregister:                           ; preds = %do.end76, %do.end68
  %ret.0 = phi i32 [ %call63, %do.end68 ], [ %call71, %do.end76 ]
  %dready_trig79 = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %dready_trig79 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dready_trig79, align 8
  %tobool80.not = icmp eq ptr %24, null
  br i1 %tobool80.not, label %err_trigger_unregister.err_power_off_crit_edge, label %if.then81

err_trigger_unregister.err_power_off_crit_edge:   ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_power_off

if.then81:                                        ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iio_trigger_unregister(ptr noundef nonnull %24) #4
  br label %err_power_off

err_power_off:                                    ; preds = %if.then81, %err_trigger_unregister.err_power_off_crit_edge, %do.end59, %if.end42.err_power_off_crit_edge, %do.end39, %do.end27, %do.end19, %do.end11
  %ret.1 = phi i32 [ %call7, %do.end11 ], [ %call14, %do.end19 ], [ %call22, %do.end27 ], [ %call34, %do.end39 ], [ %call54, %do.end59 ], [ %ret.0, %if.then81 ], [ %ret.0, %err_trigger_unregister.err_power_off_crit_edge ], [ -12, %if.end42.err_power_off_crit_edge ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %err_power_off.do.end.i_crit_edge, label %if.end.i

err_power_off.do.end.i_crit_edge:                 ; preds = %err_power_off
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i:                                         ; preds = %err_power_off
  %27 = trunc i32 %call.i to i8
  %masked_reg.0.i = or i8 %27, -128
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 17, i8 noundef zeroext %masked_reg.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %err_power_off.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call71, %if.end70.cleanup_crit_edge ], [ %ret.1, %if.end.i.cleanup_crit_edge ], [ %ret.1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #4
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #4
  %dready_trig = getelementptr inbounds %struct.stk8ba50_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dready_trig, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iio_trigger_unregister(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.end.i_crit_edge, label %if.end.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i:                                         ; preds = %if.end
  %8 = trunc i32 %call.i to i8
  %masked_reg.0.i = or i8 %8, -128
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 17, i8 noundef zeroext %masked_reg.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.stk8ba50_set_power.exit_crit_edge

if.end.i.stk8ba50_set_power.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk8ba50_set_power.exit

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end.do.end.i_crit_edge ], [ %call5.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #7
  br label %stk8ba50_set_power.exit

stk8ba50_set_power.exit:                          ; preds = %do.end.i, %if.end.i.stk8ba50_set_power.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %do.end.i ], [ %call5.i, %if.end.i.stk8ba50_set_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_data_rdy_trig_poll(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dready_trigger_on = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dready_trigger_on, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dready_trig = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dready_trig, align 8
  tail call void @iio_trigger_poll(ptr noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.stk8ba50_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp = icmp eq i32 %7, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %scan = getelementptr inbounds %struct.stk8ba50_data, ptr %3, i32 0, i32 6
  %call2 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %9, i8 noundef zeroext 2, i8 noundef zeroext 6, ptr noundef %scan) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 6
  br i1 %cmp3, label %do.end, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #7
  br label %err

if.else:                                          ; preds = %entry
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %masklength, align 8
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %13, i32 noundef 0) #4
  %14 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %15)
  %cmp947 = icmp ult i32 %call7, %15
  br i1 %cmp947, label %for.body.lr.ph, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

for.body.lr.ph:                                   ; preds = %if.else
  %scan16 = getelementptr inbounds %struct.stk8ba50_data, ptr %3, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %bit.048 = phi i32 [ %call7, %for.body.lr.ph ], [ %call21, %if.end14.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr @stk8ba50_channel_table, i32 0, i32 %bit.048
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %17 to i8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %19, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %stk8ba50_read_accel.exit.thread, label %if.end14

stk8ba50_read_accel.exit.thread:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33) #7
  br label %err

if.end14:                                         ; preds = %for.body
  %conv15 = trunc i32 %call.i to i16
  %inc = add i32 %i.049, 1
  %arrayidx18 = getelementptr [3 x i16], ptr %scan16, i32 0, i32 %i.049
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv15, ptr %arrayidx18, align 2
  %21 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_scan_mask, align 4
  %23 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.048, 1
  %call21 = tail call i32 @_find_next_bit_be(ptr noundef %22, i32 noundef %24, i32 noundef %add) #4
  %25 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %masklength, align 8
  %cmp9 = icmp ult i32 %call21, %26
  br i1 %cmp9, label %if.end14.for.body_crit_edge, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end22:                                         ; preds = %if.end14.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.then.if.end22_crit_edge
  %scan23 = getelementptr inbounds %struct.stk8ba50_data, ptr %3, i32 0, i32 6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %scan_timestamp.i, align 8, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.end22.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end22.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %29 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %32, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan23, i32 %sub.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %30, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end22.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i46 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan23) #4
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %stk8ba50_read_accel.exit.thread, %do.end
  tail call void @mutex_unlock(ptr noundef %lock) #4
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %35) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb19
    i32 12, label %sw.bb20
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %3 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %4, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %7 = trunc i32 %call.i to i8
  %conv3.i = and i8 %7, 127
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.if.then3_crit_edge, label %if.end5

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %if.end.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #7
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address, align 4
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i41 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %11, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp.i42, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  %dev.i43 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i43, ptr noundef nonnull @.str.33) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i45 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %if.then9.do.end.i53_crit_edge, label %if.end.i50

if.then9.do.end.i53_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i53

if.end.i50:                                       ; preds = %if.then9
  %14 = trunc i32 %call.i45 to i8
  %masked_reg.0.i = or i8 %14, -128
  %call5.i48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 17, i8 noundef zeroext %masked_reg.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i48)
  %cmp6.i49 = icmp slt i32 %call5.i48, 0
  br i1 %cmp6.i49, label %if.end.i50.do.end.i53_crit_edge, label %if.end.i50.stk8ba50_set_power.exit55_crit_edge

if.end.i50.stk8ba50_set_power.exit55_crit_edge:   ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk8ba50_set_power.exit55

if.end.i50.do.end.i53_crit_edge:                  ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i53

do.end.i53:                                       ; preds = %if.end.i50.do.end.i53_crit_edge, %if.then9.do.end.i53_crit_edge
  %dev.i52 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i52, ptr noundef nonnull @.str.43) #7
  br label %stk8ba50_set_power.exit55

stk8ba50_set_power.exit55:                        ; preds = %do.end.i53, %if.end.i50.stk8ba50_set_power.exit55_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shift, align 1
  %conv13 = zext i8 %16 to i32
  %shr70 = lshr i32 %call.i41, %conv13
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %realbits, align 1
  %19 = sub i8 32, %18
  %conv1.i = zext i8 %19 to i32
  %shl.i = shl i32 %shr70, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %val, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %call.i56 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %if.end12.do.end.i65_crit_edge, label %if.end.i62

if.end12.do.end.i65_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i65

if.end.i62:                                       ; preds = %if.end12
  %23 = trunc i32 %call.i56 to i8
  %masked_reg.0.i59 = or i8 %23, -128
  %call5.i60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 17, i8 noundef zeroext %masked_reg.0.i59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i60)
  %cmp6.i61 = icmp slt i32 %call5.i60, 0
  br i1 %cmp6.i61, label %if.end.i62.do.end.i65_crit_edge, label %if.end.i62.stk8ba50_set_power.exit67_crit_edge

if.end.i62.stk8ba50_set_power.exit67_crit_edge:   ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk8ba50_set_power.exit67

if.end.i62.do.end.i65_crit_edge:                  ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i65

do.end.i65:                                       ; preds = %if.end.i62.do.end.i65_crit_edge, %if.end12.do.end.i65_crit_edge
  %dev.i64 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i64, ptr noundef nonnull @.str.43) #7
  br label %stk8ba50_set_power.exit67

stk8ba50_set_power.exit67:                        ; preds = %do.end.i65, %if.end.i62.stk8ba50_set_power.exit67_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %val, align 4
  %range = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %range, align 8
  %scale_val = getelementptr [4 x %struct.anon.88], ptr @stk8ba50_scale_table, i32 0, i32 %26, i32 1
  %27 = ptrtoint ptr %scale_val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scale_val, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val2, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sample_rate_idx = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %sample_rate_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sample_rate_idx, align 4
  %idxprom = zext i8 %31 to i32
  %samp_freq = getelementptr [8 x %struct.anon.89], ptr @stk8ba50_samp_freq_table, i32 0, i32 %idxprom, i32 1
  %32 = ptrtoint ptr %samp_freq to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %samp_freq, align 2
  %conv22 = zext i16 %33 to i32
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv22, ptr %val, align 4
  %35 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb20, %sw.bb19, %stk8ba50_set_power.exit67, %stk8ba50_set_power.exit55, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb20 ], [ 2, %sw.bb19 ], [ -22, %if.then3 ], [ -22, %stk8ba50_set_power.exit55 ], [ 1, %stk8ba50_set_power.exit67 ], [ -16, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %for.body17.preheader
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body17.preheader:                             ; preds = %entry
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %val, label %for.body17.preheader.cleanup_crit_edge [
    i32 14, label %for.body17.preheader.if.end29_crit_edge
    i32 25, label %if.end29.fold.split
    i32 56, label %if.end29.fold.split83
    i32 112, label %if.end29.fold.split84
    i32 224, label %if.end29.fold.split85
    i32 448, label %if.end29.fold.split86
    i32 896, label %if.end29.fold.split87
    i32 1792, label %if.end29.fold.split88
  ]

for.body17.preheader.if.end29_crit_edge:          ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

for.body17.preheader.cleanup_crit_edge:           ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  br i1 %cmp.not, label %for.body.preheader, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb
  %4 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %val2, label %for.body.preheader.cleanup_crit_edge [
    i32 38400, label %for.body.preheader.if.end7_crit_edge
    i32 76700, label %if.end7.fold.split
    i32 153400, label %if.end7.fold.split81
    i32 306900, label %if.end7.fold.split82
  ]

for.body.preheader.if.end7_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7.fold.split:                               ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7.fold.split81:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7.fold.split82:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %if.end7.fold.split82, %if.end7.fold.split81, %if.end7.fold.split, %for.body.preheader.if.end7_crit_edge
  %i.077.lcssa = phi i32 [ 0, %for.body.preheader.if.end7_crit_edge ], [ 1, %if.end7.fold.split ], [ 2, %if.end7.fold.split81 ], [ 3, %if.end7.fold.split82 ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %arrayidx8 = getelementptr [4 x %struct.anon.88], ptr @stk8ba50_scale_table, i32 0, i32 %i.077.lcssa
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8, align 4
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 15, i8 noundef zeroext %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end, label %if.else

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #7
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %range = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.077.lcssa, ptr %range, align 8
  br label %cleanup

if.end29.fold.split:                              ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29.fold.split83:                            ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29.fold.split84:                            ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29.fold.split85:                            ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29.fold.split86:                            ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29.fold.split87:                            ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29.fold.split88:                            ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29:                                         ; preds = %if.end29.fold.split88, %if.end29.fold.split87, %if.end29.fold.split86, %if.end29.fold.split85, %if.end29.fold.split84, %if.end29.fold.split83, %if.end29.fold.split, %for.body17.preheader.if.end29_crit_edge
  %i.176.lcssa = phi i32 [ 0, %for.body17.preheader.if.end29_crit_edge ], [ 1, %if.end29.fold.split ], [ 2, %if.end29.fold.split83 ], [ 3, %if.end29.fold.split84 ], [ 4, %if.end29.fold.split85 ], [ 5, %if.end29.fold.split86 ], [ 6, %if.end29.fold.split87 ], [ 7, %if.end29.fold.split88 ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %arrayidx31 = getelementptr [8 x %struct.anon.89], ptr @stk8ba50_samp_freq_table, i32 0, i32 %i.176.lcssa
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx31, align 2
  %call33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 16, i8 noundef zeroext %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end39, label %if.else42

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.38) #7
  br label %cleanup

if.else42:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %conv43 = trunc i32 %i.176.lcssa to i8
  %sample_rate_idx = getelementptr inbounds %struct.stk8ba50_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %sample_rate_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv43, ptr %sample_rate_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else42, %do.end39, %if.else, %do.end, %for.body.preheader.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %for.body17.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ %call9, %if.else ], [ %call9, %do.end ], [ %call33, %if.else42 ], [ %call33, %do.end39 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -22, %for.body17.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
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
  %. = select i1 %state, i8 16, i8 0
  %call4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 23, i8 noundef zeroext %.) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.else7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #7
  br label %if.end10

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %frombool = zext i1 %state to i8
  %dready_trigger_on = getelementptr inbounds %struct.stk8ba50_data, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %dready_trigger_on, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %do.end
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %4 = trunc i32 %call.i to i8
  %conv3.i = and i8 %4, 127
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.stk8ba50_set_power.exit_crit_edge

if.end.i.stk8ba50_set_power.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk8ba50_set_power.exit

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call5.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #7
  br label %stk8ba50_set_power.exit

stk8ba50_set_power.exit:                          ; preds = %do.end.i, %if.end.i.stk8ba50_set_power.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %do.end.i ], [ %call5.i, %if.end.i.stk8ba50_set_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %4 = trunc i32 %call.i to i8
  %masked_reg.0.i = or i8 %4, -128
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext %masked_reg.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.stk8ba50_set_power.exit_crit_edge

if.end.i.stk8ba50_set_power.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk8ba50_set_power.exit

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call5.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #7
  br label %stk8ba50_set_power.exit

stk8ba50_set_power.exit:                          ; preds = %do.end.i, %if.end.i.stk8ba50_set_power.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %do.end.i ], [ %call5.i, %if.end.i.stk8ba50_set_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %6 = trunc i32 %call.i to i8
  %masked_reg.0.i = or i8 %6, -128
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 17, i8 noundef zeroext %masked_reg.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.stk8ba50_set_power.exit_crit_edge

if.end.i.stk8ba50_set_power.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk8ba50_set_power.exit

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call5.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #7
  br label %stk8ba50_set_power.exit

stk8ba50_set_power.exit:                          ; preds = %do.end.i, %if.end.i.stk8ba50_set_power.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %do.end.i ], [ %call5.i, %if.end.i.stk8ba50_set_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8ba50_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %6 = trunc i32 %call.i to i8
  %conv3.i = and i8 %6, 127
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.stk8ba50_set_power.exit_crit_edge

if.end.i.stk8ba50_set_power.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk8ba50_set_power.exit

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call5.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #7
  br label %stk8ba50_set_power.exit

stk8ba50_set_power.exit:                          ; preds = %do.end.i, %if.end.i.stk8ba50_set_power.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %do.end.i ], [ %call5.i, %if.end.i.stk8ba50_set_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !109, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_stk8ba50__288_557_stk8ba50_driver_init6, !1, !"__initcall__kmod_stk8ba50__288_557_stk8ba50_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/stk8ba50.c", i32 557, i32 1}
!2 = !{ptr @__exitcall_stk8ba50_driver_exit, !1, !"__exitcall_stk8ba50_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/stk8ba50.c", i32 559, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/stk8ba50.c", i32 560, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/stk8ba50.c", i32 561, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/stk8ba50.c", i32 548, i32 11}
!12 = !{ptr @stk8ba50_driver, !13, !"stk8ba50_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/stk8ba50.c", i32 546, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/stk8ba50.c", i32 391, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stk8ba50_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @stk8ba50_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @stk8ba50_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/accel/stk8ba50.c", i32 398, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/stk8ba50.c", i32 410, i32 3}
!27 = !{ptr @stk8ba50_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @stk8ba50_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/stk8ba50.c", i32 424, i32 3}
!31 = !{ptr @stk8ba50_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @stk8ba50_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @stk8ba50_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/iio/accel/stk8ba50.c", i32 430, i32 3}
!35 = !{ptr @stk8ba50_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/stk8ba50.c", i32 440, i32 7}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/accel/stk8ba50.c", i32 443, i32 4}
!40 = !{ptr @stk8ba50_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @stk8ba50_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/accel/stk8ba50.c", i32 449, i32 11}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/accel/stk8ba50.c", i32 461, i32 4}
!46 = !{ptr @stk8ba50_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @stk8ba50_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/stk8ba50.c", i32 471, i32 3}
!50 = !{ptr @stk8ba50_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @stk8ba50_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/accel/stk8ba50.c", i32 477, i32 3}
!54 = !{ptr @stk8ba50_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @stk8ba50_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @stk8ba50_info, !57, !"stk8ba50_info", i1 false, i1 false}
!57 = !{!"../drivers/iio/accel/stk8ba50.c", i32 305, i32 30}
!58 = !{ptr @stk8ba50_attribute_group, !59, !"stk8ba50_attribute_group", i1 false, i1 false}
!59 = !{!"../drivers/iio/accel/stk8ba50.c", i32 136, i32 37}
!60 = !{ptr @stk8ba50_attributes, !61, !"stk8ba50_attributes", i1 false, i1 false}
!61 = !{!"../drivers/iio/accel/stk8ba50.c", i32 130, i32 26}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/accel/stk8ba50.c", i32 126, i32 8}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @iio_const_attr_in_accel_scale_available, !63, !"iio_const_attr_in_accel_scale_available", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/accel/stk8ba50.c", i32 128, i32 8}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @iio_const_attr_sampling_frequency_available, !67, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/accel/stk8ba50.c", i32 147, i32 3}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @stk8ba50_read_accel._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @stk8ba50_read_accel._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @stk8ba50_scale_table, !76, !"stk8ba50_scale_table", i1 false, i1 false}
!76 = !{!"../drivers/iio/accel/stk8ba50.c", i32 67, i32 3}
!77 = !{ptr @stk8ba50_samp_freq_table, !78, !"stk8ba50_samp_freq_table", i1 false, i1 false}
!78 = !{!"../drivers/iio/accel/stk8ba50.c", i32 75, i32 3}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/accel/stk8ba50.c", i32 275, i32 4}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @stk8ba50_write_raw._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @stk8ba50_write_raw._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/accel/stk8ba50.c", i32 294, i32 4}
!86 = !{ptr @stk8ba50_write_raw._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @stk8ba50_write_raw._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @stk8ba50_channels, !89, !"stk8ba50_channels", i1 false, i1 false}
!89 = !{!"../drivers/iio/accel/stk8ba50.c", i32 119, i32 35}
!90 = !{ptr @stk8ba50_trigger_ops, !91, !"stk8ba50_trigger_ops", i1 false, i1 false}
!91 = !{!"../drivers/iio/accel/stk8ba50.c", i32 176, i32 37}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/accel/stk8ba50.c", i32 169, i32 3}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @stk8ba50_data_rdy_trigger_set_state._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @stk8ba50_data_rdy_trigger_set_state._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/accel/stk8ba50.c", i32 329, i32 4}
!99 = !{ptr @stk8ba50_trigger_handler._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @stk8ba50_trigger_handler._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @stk8ba50_channel_table, !102, !"stk8ba50_channel_table", i1 false, i1 false}
!102 = !{!"../drivers/iio/accel/stk8ba50.c", i32 81, i32 18}
!103 = !{ptr @stk8ba50_buffer_setup_ops, !104, !"stk8ba50_buffer_setup_ops", i1 false, i1 false}
!104 = !{!"../drivers/iio/accel/stk8ba50.c", i32 377, i32 42}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/accel/stk8ba50.c", i32 203, i32 2}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @stk8ba50_set_power._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @stk8ba50_set_power._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @stk8ba50_pm_ops, !111, !"stk8ba50_pm_ops", i1 false, i1 false}
!111 = !{!"../drivers/iio/accel/stk8ba50.c", i32 526, i32 8}
!112 = !{ptr @stk8ba50_i2c_id, !113, !"stk8ba50_i2c_id", i1 false, i1 false}
!113 = !{!"../drivers/iio/accel/stk8ba50.c", i32 533, i32 35}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i8 0, i8 2}
