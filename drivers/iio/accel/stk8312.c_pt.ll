; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/stk8312.c_pt.bc'
source_filename = "../drivers/iio/accel/stk8312.c"
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
%struct.anon.88 = type { i32, i32 }
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
%struct.stk8312_data = type { ptr, %struct.mutex, i8, i8, i8, ptr, i8, %struct.anon.87 }
%struct.anon.87 = type { [3 x i8], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_stk8312__288_658_stk8312_driver_init6 = internal global ptr @stk8312_driver_init, section ".initcall6.init", align 4
@stk8312_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @stk8312_probe, ptr @stk8312_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk8312_pm_ops, ptr null, ptr null }, ptr @stk8312_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stk8312_driver_exit = internal global ptr @stk8312_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"stk8312.author=Tiberiu Breana <tiberiu.a.breana@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"stk8312.description=STK8312 3-Axis Accelerometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"stk8312.file=drivers/iio/accel/stk8312\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"stk8312.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stk8312\00", [24 x i8] zeroinitializer }, align 32
@stk8312_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stk8312_suspend, ptr @stk8312_resume, ptr @stk8312_suspend, ptr @stk8312_resume, ptr @stk8312_suspend, ptr @stk8312_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stk8312_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"STK8312\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"stk8312\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stk8312_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iio allocation failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stk8312_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/accel/stk8312.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stk8312_probe._entry_ptr = internal global ptr @stk8312_probe._entry, section ".printk_index", align 4
@stk8312_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@stk8312_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @stk8312_attribute_group, ptr @stk8312_read_raw, ptr null, ptr null, ptr @stk8312_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@stk8312_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 1, i32 1, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 2, i32 2, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@stk8312_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset sensor\0A\00", [40 x i8] zeroinitializer }, align 32
@stk8312_probe._entry_ptr.9 = internal global ptr @stk8312_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stk8312_event\00", [18 x i8] zeroinitializer }, align 32
@stk8312_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request irq %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@stk8312_probe._entry_ptr.13 = internal global ptr @stk8312_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@stk8312_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @stk8312_data_rdy_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@stk8312_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iio trigger register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@stk8312_probe._entry_ptr.17 = internal global ptr @stk8312_probe._entry.15, section ".printk_index", align 4
@stk8312_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @stk8312_buffer_preenable, ptr null, ptr null, ptr @stk8312_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@stk8312_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@stk8312_probe._entry_ptr.20 = internal global ptr @stk8312_probe._entry.18, section ".printk_index", align 4
@stk8312_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device_register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@stk8312_probe._entry_ptr.23 = internal global ptr @stk8312_probe._entry.21, section ".printk_index", align 4
@stk8312_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @stk8312_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@stk8312_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_accel_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.24, %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.26, %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0.4616 1.2311\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"3.125 6.25 12.5 25 50 100 200 400\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@stk8312_scale_table = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 0, i32 461600], [2 x i32] [i32 1, i32 231100]], [16 x i8] zeroinitializer }, align 32
@stk8312_samp_freq_table = internal constant { [8 x %struct.anon.88], [32 x i8] } { [8 x %struct.anon.88] [%struct.anon.88 { i32 400, i32 0 }, %struct.anon.88 { i32 200, i32 0 }, %struct.anon.88 { i32 100, i32 0 }, %struct.anon.88 { i32 50, i32 0 }, %struct.anon.88 { i32 25, i32 0 }, %struct.anon.88 { i32 12, i32 500000 }, %struct.anon.88 { i32 6, i32 250000 }, %struct.anon.88 { i32 3, i32 125000 }], [32 x i8] zeroinitializer }, align 32
@stk8312_read_accel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register read failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stk8312_read_accel\00", [45 x i8] zeroinitializer }, align 32
@stk8312_read_accel._entry_ptr = internal global ptr @stk8312_read_accel._entry, section ".printk_index", align 4
@stk8312_set_sample_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set sampling rate\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stk8312_set_sample_rate\00", [40 x i8] zeroinitializer }, align 32
@stk8312_set_sample_rate._entry_ptr = internal global ptr @stk8312_set_sample_rate._entry, section ".printk_index", align 4
@stk8312_set_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to change sensor range\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stk8312_set_range\00", [46 x i8] zeroinitializer }, align 32
@stk8312_set_range._entry_ptr = internal global ptr @stk8312_set_range._entry, section ".printk_index", align 4
@stk8312_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to change sensor mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk8312_set_mode\00", [47 x i8] zeroinitializer }, align 32
@stk8312_set_mode._entry_ptr = internal global ptr @stk8312_set_mode._entry, section ".printk_index", align 4
@stk8312_otp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize sensor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk8312_otp_init\00", [47 x i8] zeroinitializer }, align 32
@stk8312_otp_init._entry_ptr = internal global ptr @stk8312_otp_init._entry, section ".printk_index", align 4
@stk8312_data_rdy_trigger_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set trigger state\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stk8312_data_rdy_trigger_set_state\00", [61 x i8] zeroinitializer }, align 32
@stk8312_data_rdy_trigger_set_state._entry_ptr = internal global ptr @stk8312_data_rdy_trigger_set_state._entry, section ".printk_index", align 4
@stk8312_set_interrupts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set interrupts\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stk8312_set_interrupts\00", [41 x i8] zeroinitializer }, align 32
@stk8312_set_interrupts._entry_ptr = internal global ptr @stk8312_set_interrupts._entry, section ".printk_index", align 4
@stk8312_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.42, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stk8312_trigger_handler\00", [40 x i8] zeroinitializer }, align 32
@stk8312_trigger_handler._entry_ptr = internal global ptr @stk8312_trigger_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.44 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 6, i64 12, i64 25, i64 50, i64 100, i64 200, i64 400]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"stk8312_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 648, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 650, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"stk8312_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 633, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"stk8312_i2c_id\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 640, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 510, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 517, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"stk8312_info\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 422, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"stk8312_channels\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 90, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 528, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 547, i32 7 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 550, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 556, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"stk8312_trigger_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 238, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 568, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [25 x i8] c"stk8312_buffer_setup_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 496, i32 42 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 578, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 584, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"stk8312_attribute_group\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 122, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"stk8312_attributes\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 116, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant [40 x i8] c"iio_const_attr_in_accel_scale_available\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 112, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 114, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"stk8312_scale_table\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 61, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant [24 x i8] c"stk8312_samp_freq_table\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 68, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 329, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 273, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 313, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 180, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 166, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 229, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 208, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [31 x i8] c"../drivers/iio/accel/stk8312.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 446, i32 4 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_stk8312_driver_exit, ptr @__initcall__kmod_stk8312__288_658_stk8312_driver_init6, ptr @stk8312_data_rdy_trigger_set_state._entry, ptr @stk8312_data_rdy_trigger_set_state._entry_ptr, ptr @stk8312_driver_exit, ptr @stk8312_otp_init._entry, ptr @stk8312_otp_init._entry_ptr, ptr @stk8312_probe._entry, ptr @stk8312_probe._entry.11, ptr @stk8312_probe._entry.15, ptr @stk8312_probe._entry.18, ptr @stk8312_probe._entry.21, ptr @stk8312_probe._entry.7, ptr @stk8312_probe._entry_ptr, ptr @stk8312_probe._entry_ptr.13, ptr @stk8312_probe._entry_ptr.17, ptr @stk8312_probe._entry_ptr.20, ptr @stk8312_probe._entry_ptr.23, ptr @stk8312_probe._entry_ptr.9, ptr @stk8312_read_accel._entry, ptr @stk8312_read_accel._entry_ptr, ptr @stk8312_set_interrupts._entry, ptr @stk8312_set_interrupts._entry_ptr, ptr @stk8312_set_mode._entry, ptr @stk8312_set_mode._entry_ptr, ptr @stk8312_set_range._entry, ptr @stk8312_set_range._entry_ptr, ptr @stk8312_set_sample_rate._entry, ptr @stk8312_set_sample_rate._entry_ptr, ptr @stk8312_trigger_handler._entry, ptr @stk8312_trigger_handler._entry_ptr, ptr @stk8312_driver, ptr @.str, ptr @stk8312_pm_ops, ptr @stk8312_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stk8312_probe.__key, ptr @.str.6, ptr @stk8312_info, ptr @stk8312_channels, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @stk8312_trigger_ops, ptr @.str.16, ptr @stk8312_buffer_setup_ops, ptr @.str.19, ptr @.str.22, ptr @stk8312_attribute_group, ptr @stk8312_attributes, ptr @iio_const_attr_in_accel_scale_available, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @stk8312_scale_table, ptr @stk8312_samp_freq_table, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_scale_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_samp_freq_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_read_accel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_set_sample_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_set_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_otp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_data_rdy_trigger_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_set_interrupts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk8312_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stk8312_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stk8312_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @stk8312_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @stk8312_probe.__key) #4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @stk8312_info, ptr %info, align 8
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
  store ptr @stk8312_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %num_channels, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 32, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %sample_rate_idx = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %sample_rate_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sample_rate_idx, align 1
  %call15 = tail call fastcc i32 @stk8312_set_range(ptr noundef %1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %1, i8 noundef zeroext -63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23 = icmp sgt i32 %13, 0
  br i1 %cmp23, label %if.then24, label %if.end22.if.end55_crit_edge

if.end22.if.end55_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then24:                                        ; preds = %if.end22
  %call27 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %13, ptr noundef nonnull @stk8312_data_rdy_trig_poll, ptr noundef null, i32 noundef 8193, ptr noundef nonnull @.str.10, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %15) #7
  br label %err_power_off

if.end35:                                         ; preds = %if.then24
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 8
  %call38 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #4
  %call39 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %17, i32 noundef %call38) #4
  %dready_trig = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %dready_trig to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call39, ptr %dready_trig, align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %if.end35.err_power_off_crit_edge, label %if.end43

if.end35.err_power_off_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_power_off

if.end43:                                         ; preds = %if.end35
  %19 = ptrtoint ptr %call39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @stk8312_trigger_ops, ptr %call39, align 8
  %20 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dready_trig, align 4
  %driver_data.i.i131 = getelementptr inbounds %struct.iio_trigger, ptr %21, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %driver_data.i.i131 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %driver_data.i.i131, align 4
  %23 = load ptr, ptr %dready_trig, align 4
  %call47 = tail call i32 @__iio_trigger_register(ptr noundef %23, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end43.if.end55_crit_edge, label %do.end52

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  br label %err_power_off

if.end55:                                         ; preds = %if.end43.if.end55_crit_edge, %if.end22.if.end55_crit_edge
  %call56 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @stk8312_trigger_handler, i32 noundef 0, ptr noundef nonnull @stk8312_buffer_setup_ops, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %if.end63

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %err_trigger_unregister

if.end63:                                         ; preds = %if.end55
  %call64 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %do.end69, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #7
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #4
  br label %err_trigger_unregister

err_trigger_unregister:                           ; preds = %do.end69, %do.end61
  %ret.0 = phi i32 [ %call56, %do.end61 ], [ %call64, %do.end69 ]
  %dready_trig72 = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %dready_trig72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dready_trig72, align 4
  %tobool73.not = icmp eq ptr %25, null
  br i1 %tobool73.not, label %err_trigger_unregister.err_power_off_crit_edge, label %if.then74

err_trigger_unregister.err_power_off_crit_edge:   ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_power_off

if.then74:                                        ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iio_trigger_unregister(ptr noundef nonnull %25) #4
  br label %err_power_off

err_power_off:                                    ; preds = %if.then74, %err_trigger_unregister.err_power_off_crit_edge, %do.end52, %if.end35.err_power_off_crit_edge, %do.end32
  %ret.1 = phi i32 [ %call27, %do.end32 ], [ %call47, %do.end52 ], [ %ret.0, %if.then74 ], [ %ret.0, %err_trigger_unregister.err_power_off_crit_edge ], [ -12, %if.end35.err_power_off_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %mode2.i = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mode2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i = icmp eq i8 %29, 0
  br i1 %cmp.i, label %err_power_off.cleanup_crit_edge, label %if.end.i

err_power_off.cleanup_crit_edge:                  ; preds = %err_power_off
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %err_power_off
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 7, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34) #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %mode2.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %do.end.i, %err_power_off.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %call8, %do.end12 ], [ -12, %do.end ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ %ret.1, %err_power_off.cleanup_crit_edge ], [ %ret.1, %do.end.i ], [ %ret.1, %if.end8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_remove(ptr nocapture noundef readonly %client) #2 align 64 {
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
  %dready_trig = getelementptr inbounds %struct.stk8312_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dready_trig, align 4
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
  %mode2.i = getelementptr inbounds %struct.stk8312_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  br i1 %cmp.i, label %if.end.stk8312_set_mode.exit_crit_edge, label %if.end.i

if.end.stk8312_set_mode.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk8312_set_mode.exit

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 7, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34) #7
  br label %stk8312_set_mode.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %mode2.i, align 2
  br label %stk8312_set_mode.exit

stk8312_set_mode.exit:                            ; preds = %if.end8.i, %do.end.i, %if.end.stk8312_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end.stk8312_set_mode.exit_crit_edge ], [ %call.i, %if.end8.i ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk8312_set_range(ptr nocapture noundef %data, i8 noundef zeroext %range) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %conv = zext i8 %range to i32
  %range.off = add i8 %range, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %range.off)
  %switch = icmp ult i8 %range.off, 2
  br i1 %switch, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %range7 = getelementptr inbounds %struct.stk8312_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %range7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %range7, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %range)
  %cmp9 = icmp eq i8 %3, %range
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %mode13 = getelementptr inbounds %struct.stk8312_data, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %mode13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.end12.if.end17_crit_edge, label %if.end.i

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end.i:                                         ; preds = %if.end12
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %stk8312_set_mode.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %mode13 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mode13, align 2
  br label %if.end17

stk8312_set_mode.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end8.i, %if.end12.if.end17_crit_edge
  %call18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.do.end_crit_edge, label %if.end22

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end22:                                         ; preds = %if.end17
  %conv23 = and i32 %call18, 63
  %shl = shl nuw nsw i32 %conv, 6
  %or = or i32 %conv23, %shl
  %conv26 = trunc i32 %or to i8
  %call27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 19, i8 noundef zeroext %conv26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end22.do.end_crit_edge, label %if.end31

if.end22.do.end_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %range7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %range, ptr %range7, align 8
  %call33 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %data, i8 noundef zeroext %5)
  br label %cleanup

do.end:                                           ; preds = %if.end22.do.end_crit_edge, %if.end17.do.end_crit_edge
  %ret.0 = phi i32 [ %call18, %if.end17.do.end_crit_edge ], [ %call27, %if.end22.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #7
  %call34 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %data, i8 noundef zeroext %5)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end31, %stk8312_set_mode.exit, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ %call33, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %call.i, %stk8312_set_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk8312_set_mode(ptr nocapture noundef %data, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %mode2 = getelementptr inbounds %struct.stk8312_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %mode2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode2, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %mode)
  %cmp = icmp eq i8 %3, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext %mode) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %mode2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %mode, ptr %mode2, align 2
  %5 = and i8 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 61, i8 noundef zeroext 112) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then11.do.end29.i_crit_edge, label %if.end.i

if.then11.do.end29.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.i

if.end.i:                                         ; preds = %if.then11
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 63, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.do.end29.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

if.end.i.do.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.i

do.body.i:                                        ; preds = %if.end9.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %count.0.i = phi i32 [ %dec.i, %if.end9.i.do.body.i_crit_edge ], [ 10, %if.end.i.do.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #4
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 63) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.body.i.do.end29.i_crit_edge, label %if.end9.i

do.body.i.do.end29.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.i

if.end9.i:                                        ; preds = %do.body.i
  %dec.i = add nsw i32 %count.0.i, -1
  %and.i = and i32 %call6.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp10.i = icmp ne i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %if.end9.i.do.body.i_crit_edge, label %do.end.i

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp11.i = icmp eq i32 %dec.i, 0
  br i1 %cmp11.i, label %do.end.i.do.end29.i_crit_edge, label %if.end13.i

do.end.i.do.end29.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.i

if.end13.i:                                       ; preds = %do.end.i
  %call14.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 62) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  %spec.store.select.i = select i1 %cmp15.i, i32 -22, i32 %call14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp18.i = icmp slt i32 %spec.store.select.i, 0
  br i1 %cmp18.i, label %if.end13.i.do.end29.i_crit_edge, label %if.end20.i

if.end13.i.do.end29.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.i

if.end20.i:                                       ; preds = %if.end13.i
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %conv.i = trunc i32 %spec.store.select.i to i8
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 36, i8 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end20.i.do.end29.i_crit_edge, label %if.end26.i

if.end20.i.do.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.i

if.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 150) #4
  br label %cleanup

do.end29.i:                                       ; preds = %if.end20.i.do.end29.i_crit_edge, %if.end13.i.do.end29.i_crit_edge, %do.end.i.do.end29.i_crit_edge, %do.body.i.do.end29.i_crit_edge, %if.end.i.do.end29.i_crit_edge, %if.then11.do.end29.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then11.do.end29.i_crit_edge ], [ %call2.i, %if.end.i.do.end29.i_crit_edge ], [ %spec.store.select.i, %if.end13.i.do.end29.i_crit_edge ], [ %call22.i, %if.end20.i.do.end29.i_crit_edge ], [ -110, %do.end.i.do.end29.i_crit_edge ], [ %call6.i, %do.body.i.do.end29.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end29.i, %if.end26.i, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ %ret.0.i, %do.end29.i ], [ 0, %if.end26.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_data_rdy_trig_poll(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dready_trigger_on = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dready_trigger_on, align 8, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dready_trig = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dready_trig, align 4
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
define internal i32 @stk8312_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.stk8312_data, ptr %3, i32 0, i32 1
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
  %scan = getelementptr inbounds %struct.stk8312_data, ptr %3, i32 0, i32 7
  %call2 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %scan) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 3
  br i1 %cmp3, label %do.end, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #7
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %err

if.else:                                          ; preds = %entry
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %masklength, align 8
  %call8 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %13, i32 noundef 0) #4
  %14 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %15)
  %cmp1054 = icmp ult i32 %call8, %15
  br i1 %cmp1054, label %for.body.lr.ph, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

for.body.lr.ph:                                   ; preds = %if.else
  %scan18 = getelementptr inbounds %struct.stk8312_data, ptr %3, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  %bit.055 = phi i32 [ %call8, %for.body.lr.ph ], [ %call22, %if.end16.for.body_crit_edge ]
  %conv = trunc i32 %bit.055 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 2
  br i1 %cmp.i, label %for.body.if.then14_crit_edge, label %if.end.i

for.body.if.then14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.end.i:                                         ; preds = %for.body
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end16

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #7
  br label %if.then14

if.then14:                                        ; preds = %do.end.i, %for.body.if.then14_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %err

if.end16:                                         ; preds = %if.end.i
  %conv17 = trunc i32 %call.i to i8
  %inc = add i32 %i.056, 1
  %arrayidx = getelementptr [3 x i8], ptr %scan18, i32 0, i32 %i.056
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv17, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %active_scan_mask, align 4
  %21 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.055, 1
  %call22 = tail call i32 @_find_next_bit_be(ptr noundef %20, i32 noundef %22, i32 noundef %add) #4
  %23 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %masklength, align 8
  %cmp10 = icmp ult i32 %call22, %24
  br i1 %cmp10, label %if.end16.for.body_crit_edge, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end23:                                         ; preds = %if.end16.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.then.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  %scan25 = getelementptr inbounds %struct.stk8312_data, ptr %3, i32 0, i32 7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %scan_timestamp.i, align 8, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end23.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end23.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %27 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %30, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan25, i32 %sub.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %28, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end23.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i49 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan25) #4
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.then14, %do.end
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %33) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
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
    i32 2, label %sw.bb31
    i32 12, label %sw.bb40
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
  %lock = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %mode = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode, align 2
  %7 = or i8 %6, 1
  %call3 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %1, i8 noundef zeroext %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address, align 4
  %conv8 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv8)
  %cmp.i = icmp ugt i8 %conv8, 2
  br i1 %cmp.i, label %if.end7.if.then12_crit_edge, label %if.end.i

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end.i:                                         ; preds = %if.end7
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext %conv8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end18

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #7
  br label %if.then12

if.then12:                                        ; preds = %do.end.i, %if.end7.if.then12_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %do.end.i ], [ -22, %if.end7.if.then12_crit_edge ]
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mode, align 2
  %14 = and i8 %13, -2
  %call16 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %1, i8 noundef zeroext %14)
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %realbits, align 1
  %17 = sub i8 32, %16
  %conv1.i = zext i8 %17 to i32
  %shl.i = shl i32 %call.i, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr.i, ptr %val, align 4
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mode, align 2
  %21 = and i8 %20, -2
  %call25 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %1, i8 noundef zeroext %21)
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp27 = icmp slt i32 %call25, 0
  %call25. = select i1 %cmp27, i32 %call25, i32 1
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %range = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %range to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %range, align 8
  %conv32 = zext i8 %23 to i32
  %sub33 = add nsw i32 %conv32, -1
  %arrayidx = getelementptr [2 x [2 x i32]], ptr @stk8312_scale_table, i32 0, i32 %sub33
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val, align 4
  %27 = load i8, ptr %range, align 8
  %conv36 = zext i8 %27 to i32
  %sub37 = add nsw i32 %conv36, -1
  %arrayidx39 = getelementptr [2 x [2 x i32]], ptr @stk8312_scale_table, i32 0, i32 %sub37, i32 1
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx39, align 4
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val2, align 4
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sample_rate_idx = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %sample_rate_idx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sample_rate_idx, align 1
  %idxprom = zext i8 %32 to i32
  %arrayidx41 = getelementptr [8 x %struct.anon.88], ptr @stk8312_samp_freq_table, i32 0, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx41, align 4
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val, align 4
  %36 = load i8, ptr %sample_rate_idx, align 1
  %idxprom44 = zext i8 %36 to i32
  %val246 = getelementptr [8 x %struct.anon.88], ptr @stk8312_samp_freq_table, i32 0, i32 %idxprom44, i32 1
  %37 = ptrtoint ptr %val246 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val246, align 4
  %39 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb40, %sw.bb31, %if.end18, %if.then12, %if.then5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb40 ], [ 2, %sw.bb31 ], [ %call3, %if.then5 ], [ %retval.0.i.ph, %if.then12 ], [ -16, %sw.bb.cleanup_crit_edge ], [ %call25., %if.end18 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %for.body.preheader
    i32 12, label %for.body15.preheader
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body15.preheader:                             ; preds = %entry
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %val, label %for.body15.preheader.cleanup_crit_edge [
    i32 400, label %land.lhs.true20
    i32 200, label %land.lhs.true20.1
    i32 100, label %land.lhs.true20.2
    i32 50, label %land.lhs.true20.3
    i32 25, label %land.lhs.true20.4
    i32 12, label %land.lhs.true20.5
    i32 6, label %land.lhs.true20.6
    i32 3, label %land.lhs.true20.7
  ]

for.body15.preheader.cleanup_crit_edge:           ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %4 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %val, label %for.body.preheader.cleanup_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true.1
  ]

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 461600, i32 %val2)
  %cmp5 = icmp eq i32 %val2, 461600
  br i1 %cmp5, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

land.lhs.true.1:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 231100, i32 %val2)
  %cmp5.1 = icmp eq i32 %val2, 231100
  br i1 %cmp5.1, label %land.lhs.true.1.if.end8_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.1.if.end8_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.1.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge
  %i.070.lcssa = phi i8 [ 1, %land.lhs.true.if.end8_crit_edge ], [ 2, %land.lhs.true.1.if.end8_crit_edge ]
  %lock = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %call9 = tail call fastcc i32 @stk8312_set_range(ptr noundef %1, i8 noundef zeroext %i.070.lcssa)
  br label %cleanup.sink.split

land.lhs.true20:                                  ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp23 = icmp eq i32 %val2, 0
  br i1 %cmp23, label %land.lhs.true20.if.end33_crit_edge, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true20.if.end33_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

land.lhs.true20.1:                                ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp23.1 = icmp eq i32 %val2, 0
  br i1 %cmp23.1, label %land.lhs.true20.1.if.end33_crit_edge, label %land.lhs.true20.1.cleanup_crit_edge

land.lhs.true20.1.cleanup_crit_edge:              ; preds = %land.lhs.true20.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true20.1.if.end33_crit_edge:             ; preds = %land.lhs.true20.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

land.lhs.true20.2:                                ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp23.2 = icmp eq i32 %val2, 0
  br i1 %cmp23.2, label %land.lhs.true20.2.if.end33_crit_edge, label %land.lhs.true20.2.cleanup_crit_edge

land.lhs.true20.2.cleanup_crit_edge:              ; preds = %land.lhs.true20.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true20.2.if.end33_crit_edge:             ; preds = %land.lhs.true20.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

land.lhs.true20.3:                                ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp23.3 = icmp eq i32 %val2, 0
  br i1 %cmp23.3, label %land.lhs.true20.3.if.end33_crit_edge, label %land.lhs.true20.3.cleanup_crit_edge

land.lhs.true20.3.cleanup_crit_edge:              ; preds = %land.lhs.true20.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true20.3.if.end33_crit_edge:             ; preds = %land.lhs.true20.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

land.lhs.true20.4:                                ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp23.4 = icmp eq i32 %val2, 0
  br i1 %cmp23.4, label %land.lhs.true20.4.if.end33_crit_edge, label %land.lhs.true20.4.cleanup_crit_edge

land.lhs.true20.4.cleanup_crit_edge:              ; preds = %land.lhs.true20.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true20.4.if.end33_crit_edge:             ; preds = %land.lhs.true20.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

land.lhs.true20.5:                                ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp23.5 = icmp eq i32 %val2, 500000
  br i1 %cmp23.5, label %land.lhs.true20.5.if.end33_crit_edge, label %land.lhs.true20.5.cleanup_crit_edge

land.lhs.true20.5.cleanup_crit_edge:              ; preds = %land.lhs.true20.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true20.5.if.end33_crit_edge:             ; preds = %land.lhs.true20.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

land.lhs.true20.6:                                ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp23.6 = icmp eq i32 %val2, 250000
  br i1 %cmp23.6, label %land.lhs.true20.6.if.end33_crit_edge, label %land.lhs.true20.6.cleanup_crit_edge

land.lhs.true20.6.cleanup_crit_edge:              ; preds = %land.lhs.true20.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true20.6.if.end33_crit_edge:             ; preds = %land.lhs.true20.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

land.lhs.true20.7:                                ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %val2)
  %cmp23.7 = icmp eq i32 %val2, 125000
  br i1 %cmp23.7, label %land.lhs.true20.7.if.end33_crit_edge, label %land.lhs.true20.7.cleanup_crit_edge

land.lhs.true20.7.cleanup_crit_edge:              ; preds = %land.lhs.true20.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true20.7.if.end33_crit_edge:             ; preds = %land.lhs.true20.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true20.7.if.end33_crit_edge, %land.lhs.true20.6.if.end33_crit_edge, %land.lhs.true20.5.if.end33_crit_edge, %land.lhs.true20.4.if.end33_crit_edge, %land.lhs.true20.3.if.end33_crit_edge, %land.lhs.true20.2.if.end33_crit_edge, %land.lhs.true20.1.if.end33_crit_edge, %land.lhs.true20.if.end33_crit_edge
  %i.168.lcssa = phi i8 [ 0, %land.lhs.true20.if.end33_crit_edge ], [ 1, %land.lhs.true20.1.if.end33_crit_edge ], [ 2, %land.lhs.true20.2.if.end33_crit_edge ], [ 3, %land.lhs.true20.3.if.end33_crit_edge ], [ 4, %land.lhs.true20.4.if.end33_crit_edge ], [ 5, %land.lhs.true20.5.if.end33_crit_edge ], [ 6, %land.lhs.true20.6.if.end33_crit_edge ], [ 7, %land.lhs.true20.7.if.end33_crit_edge ]
  %lock34 = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock34, i32 noundef 0) #4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %sample_rate_idx.i = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %sample_rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sample_rate_idx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %i.168.lcssa)
  %cmp.i = icmp eq i8 %8, %i.168.lcssa
  br i1 %cmp.i, label %if.end33.cleanup.sink.split_crit_edge, label %if.end.i

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end33
  %mode4.i = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %mode4.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i.i = icmp eq i8 %10, 0
  br i1 %cmp.i.i, label %if.end.i.if.end8.i_crit_edge, label %if.end.i.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

if.end.i.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 7, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %stk8312_set_mode.exit.i, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %mode4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %mode4.i, align 2
  br label %if.end8.i

stk8312_set_mode.exit.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.34) #7
  br label %cleanup.sink.split

if.end8.i:                                        ; preds = %if.end8.i.i, %if.end.i.if.end8.i_crit_edge
  %call9.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.do.end.i_crit_edge, label %if.end13.i

if.end8.i.do.end.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end13.i:                                       ; preds = %if.end8.i
  %12 = trunc i32 %call9.i to i8
  %13 = and i8 %12, -8
  %conv15.i = or i8 %13, %i.168.lcssa
  %call16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 8, i8 noundef zeroext %conv15.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end13.i.do.end.i_crit_edge, label %if.end20.i

if.end13.i.do.end.i_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %sample_rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %i.168.lcssa, ptr %sample_rate_idx.i, align 1
  %call22.i = tail call fastcc i32 @stk8312_set_mode(ptr noundef %1, i8 noundef zeroext %10) #4
  br label %cleanup.sink.split

do.end.i:                                         ; preds = %if.end13.i.do.end.i_crit_edge, %if.end8.i.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call9.i, %if.end8.i.do.end.i_crit_edge ], [ %call16.i, %if.end13.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.30) #7
  %call23.i = tail call fastcc i32 @stk8312_set_mode(ptr noundef %1, i8 noundef zeroext %10) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end.i, %if.end20.i, %stk8312_set_mode.exit.i, %if.end33.cleanup.sink.split_crit_edge, %if.end8
  %lock34.sink = phi ptr [ %lock, %if.end8 ], [ %lock34, %if.end33.cleanup.sink.split_crit_edge ], [ %lock34, %stk8312_set_mode.exit.i ], [ %lock34, %if.end20.i ], [ %lock34, %do.end.i ]
  %retval.0.ph = phi i32 [ %call9, %if.end8 ], [ 0, %if.end33.cleanup.sink.split_crit_edge ], [ %call.i.i, %stk8312_set_mode.exit.i ], [ %call22.i, %if.end20.i ], [ %ret.0.i, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %lock34.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true20.7.cleanup_crit_edge, %land.lhs.true20.6.cleanup_crit_edge, %land.lhs.true20.5.cleanup_crit_edge, %land.lhs.true20.4.cleanup_crit_edge, %land.lhs.true20.3.cleanup_crit_edge, %land.lhs.true20.2.cleanup_crit_edge, %land.lhs.true20.1.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %for.body15.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.1.cleanup_crit_edge ], [ -22, %land.lhs.true20.7.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true20.6.cleanup_crit_edge ], [ -22, %land.lhs.true20.5.cleanup_crit_edge ], [ -22, %land.lhs.true20.4.cleanup_crit_edge ], [ -22, %land.lhs.true20.3.cleanup_crit_edge ], [ -22, %land.lhs.true20.2.cleanup_crit_edge ], [ -22, %land.lhs.true20.1.cleanup_crit_edge ], [ -22, %land.lhs.true20.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -22, %for.body15.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
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
  %. = select i1 %state, i8 16, i8 0
  %call3 = tail call fastcc i32 @stk8312_set_interrupts(ptr noundef %3, i8 noundef zeroext %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #7
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %frombool = zext i1 %state to i8
  %dready_trigger_on = getelementptr inbounds %struct.stk8312_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %dready_trigger_on, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk8312_set_interrupts(ptr nocapture noundef %data, i8 noundef zeroext %int_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %mode2 = getelementptr inbounds %struct.stk8312_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %mode2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %stk8312_set_mode.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %mode2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mode2, align 2
  br label %if.end

stk8312_set_mode.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34) #7
  br label %cleanup

if.end:                                           ; preds = %if.end8.i, %entry.if.end_crit_edge
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %int_mask) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #7
  %call6 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %data, i8 noundef zeroext %3)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %data, i8 noundef zeroext %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %stk8312_set_mode.exit
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call8, %if.end7 ], [ %call.i, %stk8312_set_mode.exit ]
  ret i32 %retval.0
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
define internal i32 @stk8312_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mode = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 2
  %4 = or i8 %3, 1
  %call2 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %1, i8 noundef zeroext %4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mode = getelementptr inbounds %struct.stk8312_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 2
  %4 = and i8 %3, -2
  %call2 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %1, i8 noundef zeroext %4)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %mode = getelementptr inbounds %struct.stk8312_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 2
  %6 = and i8 %5, -2
  %call3 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %3, i8 noundef zeroext %6)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk8312_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %mode = getelementptr inbounds %struct.stk8312_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 2
  %6 = or i8 %5, 1
  %call3 = tail call fastcc i32 @stk8312_set_mode(ptr noundef %3, i8 noundef zeroext %6)
  ret i32 %call3
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_stk8312__288_658_stk8312_driver_init6, !1, !"__initcall__kmod_stk8312__288_658_stk8312_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/stk8312.c", i32 658, i32 1}
!2 = !{ptr @__exitcall_stk8312_driver_exit, !1, !"__exitcall_stk8312_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/stk8312.c", i32 660, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/stk8312.c", i32 661, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/stk8312.c", i32 662, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/stk8312.c", i32 650, i32 11}
!12 = !{ptr @stk8312_driver, !13, !"stk8312_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/stk8312.c", i32 648, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/stk8312.c", i32 510, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stk8312_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @stk8312_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @stk8312_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/accel/stk8312.c", i32 517, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/stk8312.c", i32 528, i32 3}
!27 = !{ptr @stk8312_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @stk8312_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/stk8312.c", i32 547, i32 7}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/accel/stk8312.c", i32 550, i32 4}
!33 = !{ptr @stk8312_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @stk8312_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/accel/stk8312.c", i32 556, i32 11}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/accel/stk8312.c", i32 568, i32 4}
!39 = !{ptr @stk8312_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @stk8312_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/accel/stk8312.c", i32 578, i32 3}
!43 = !{ptr @stk8312_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @stk8312_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/accel/stk8312.c", i32 584, i32 3}
!47 = !{ptr @stk8312_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @stk8312_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @stk8312_info, !50, !"stk8312_info", i1 false, i1 false}
!50 = !{!"../drivers/iio/accel/stk8312.c", i32 422, i32 30}
!51 = !{ptr @stk8312_attribute_group, !52, !"stk8312_attribute_group", i1 false, i1 false}
!52 = !{!"../drivers/iio/accel/stk8312.c", i32 122, i32 37}
!53 = !{ptr @stk8312_attributes, !54, !"stk8312_attributes", i1 false, i1 false}
!54 = !{!"../drivers/iio/accel/stk8312.c", i32 116, i32 26}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/accel/stk8312.c", i32 112, i32 8}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @iio_const_attr_in_accel_scale_available, !56, !"iio_const_attr_in_accel_scale_available", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/accel/stk8312.c", i32 114, i32 8}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @iio_const_attr_sampling_frequency_available, !60, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/accel/stk8312.c", i32 329, i32 3}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @stk8312_read_accel._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @stk8312_read_accel._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @stk8312_scale_table, !69, !"stk8312_scale_table", i1 false, i1 false}
!69 = !{!"../drivers/iio/accel/stk8312.c", i32 61, i32 18}
!70 = !{ptr @stk8312_samp_freq_table, !71, !"stk8312_samp_freq_table", i1 false, i1 false}
!71 = !{!"../drivers/iio/accel/stk8312.c", i32 68, i32 3}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/accel/stk8312.c", i32 273, i32 2}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @stk8312_set_sample_rate._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @stk8312_set_sample_rate._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @stk8312_channels, !78, !"stk8312_channels", i1 false, i1 false}
!78 = !{!"../drivers/iio/accel/stk8312.c", i32 90, i32 35}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/accel/stk8312.c", i32 313, i32 2}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @stk8312_set_range._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @stk8312_set_range._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/accel/stk8312.c", i32 180, i32 3}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @stk8312_set_mode._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @stk8312_set_mode._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/accel/stk8312.c", i32 166, i32 2}
!91 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @stk8312_otp_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @stk8312_otp_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @stk8312_trigger_ops, !95, !"stk8312_trigger_ops", i1 false, i1 false}
!95 = !{!"../drivers/iio/accel/stk8312.c", i32 238, i32 37}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/accel/stk8312.c", i32 229, i32 3}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @stk8312_data_rdy_trigger_set_state._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @stk8312_data_rdy_trigger_set_state._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/accel/stk8312.c", i32 208, i32 3}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @stk8312_set_interrupts._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @stk8312_set_interrupts._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/accel/stk8312.c", i32 446, i32 4}
!108 = !{ptr @stk8312_trigger_handler._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @stk8312_trigger_handler._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @stk8312_buffer_setup_ops, !111, !"stk8312_buffer_setup_ops", i1 false, i1 false}
!111 = !{!"../drivers/iio/accel/stk8312.c", i32 496, i32 42}
!112 = !{ptr @stk8312_pm_ops, !113, !"stk8312_pm_ops", i1 false, i1 false}
!113 = !{!"../drivers/iio/accel/stk8312.c", i32 633, i32 8}
!114 = !{ptr @stk8312_i2c_id, !115, !"stk8312_i2c_id", i1 false, i1 false}
!115 = !{!"../drivers/iio/accel/stk8312.c", i32 640, i32 35}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i8 0, i8 2}
